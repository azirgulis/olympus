import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/puzzle.dart';
import '../data/puzzles/starter_puzzles.dart';
import 'player_provider.dart';

class PuzzleState {
  final List<EconomicPuzzle> availablePuzzles;
  final List<String> completedPuzzleIds;
  final EconomicPuzzle? currentPuzzle;
  final int currentQuestionIndex;
  final List<String> selectedAnswers;
  final bool isPuzzleActive;

  PuzzleState({
    this.availablePuzzles = const [],
    this.completedPuzzleIds = const [],
    this.currentPuzzle,
    this.currentQuestionIndex = 0,
    this.selectedAnswers = const [],
    this.isPuzzleActive = false,
  });

  PuzzleState copyWith({
    List<EconomicPuzzle>? availablePuzzles,
    List<String>? completedPuzzleIds,
    EconomicPuzzle? currentPuzzle,
    int? currentQuestionIndex,
    List<String>? selectedAnswers,
    bool? isPuzzleActive,
  }) {
    return PuzzleState(
      availablePuzzles: availablePuzzles ?? this.availablePuzzles,
      completedPuzzleIds: completedPuzzleIds ?? this.completedPuzzleIds,
      currentPuzzle: currentPuzzle ?? this.currentPuzzle,
      currentQuestionIndex: currentQuestionIndex ?? this.currentQuestionIndex,
      selectedAnswers: selectedAnswers ?? this.selectedAnswers,
      isPuzzleActive: isPuzzleActive ?? this.isPuzzleActive,
    );
  }
}

class PuzzleNotifier extends StateNotifier<PuzzleState> {
  PuzzleNotifier() : super(PuzzleState()) {
    _initializePuzzles();
  }

  void _initializePuzzles() {
    final puzzles = StarterPuzzles.getAllPuzzles();
    state = state.copyWith(availablePuzzles: puzzles);
  }

  void startPuzzle(String puzzleId) {
    final puzzle = state.availablePuzzles.firstWhere(
      (p) => p.id == puzzleId,
      orElse: () => throw Exception('Puzzle not found'),
    );

    if (state.completedPuzzleIds.contains(puzzleId)) {
      return; // Already completed
    }

    state = state.copyWith(
      currentPuzzle: puzzle,
      currentQuestionIndex: 0,
      selectedAnswers: [],
      isPuzzleActive: true,
    );
  }

  void selectAnswer(String answerId) {
    if (state.currentPuzzle == null) return;

    final currentQuestion = state.currentPuzzle!.questions[state.currentQuestionIndex];

    // Update selected answers
    final updatedAnswers = [...state.selectedAnswers, answerId];
    state = state.copyWith(selectedAnswers: updatedAnswers);
  }

  bool submitAnswer(WidgetRef ref) {
    if (state.currentPuzzle == null || state.selectedAnswers.isEmpty) return false;

    final currentQuestion = state.currentPuzzle!.questions[state.currentQuestionIndex];
    final selectedAnswerId = state.selectedAnswers.last;

    // Check if answer is correct
    final selectedAnswer = currentQuestion.answers.firstWhere(
      (a) => a.id == selectedAnswerId,
    );

    if (!selectedAnswer.isCorrect) {
      return false; // Wrong answer
    }

    // Move to next question or complete puzzle
    if (state.currentQuestionIndex < state.currentPuzzle!.questions.length - 1) {
      state = state.copyWith(
        currentQuestionIndex: state.currentQuestionIndex + 1,
      );
      return true;
    } else {
      // Puzzle completed
      _completePuzzle(ref);
      return true;
    }
  }

  void _completePuzzle(WidgetRef ref) {
    if (state.currentPuzzle == null) return;

    // Award rewards
    for (final reward in state.currentPuzzle!.rewards) {
      switch (reward.type) {
        case RewardType.drachmae:
          ref.read(playerProvider.notifier).addDrachmae(reward.value);
          break;
        case RewardType.experience:
          ref.read(playerProvider.notifier).addExperience(reward.value);
          break;
        case RewardType.reputation:
          ref.read(playerProvider.notifier).addReputation(reward.value);
          break;
        default:
          break;
      }
    }

    // Mark as completed
    state = state.copyWith(
      completedPuzzleIds: [...state.completedPuzzleIds, state.currentPuzzle!.id],
      currentPuzzle: null,
      currentQuestionIndex: 0,
      selectedAnswers: [],
      isPuzzleActive: false,
    );
  }

  void cancelPuzzle() {
    state = state.copyWith(
      currentPuzzle: null,
      currentQuestionIndex: 0,
      selectedAnswers: [],
      isPuzzleActive: false,
    );
  }

  EconomicPuzzle? getPuzzleById(String id) {
    try {
      return state.availablePuzzles.firstWhere((p) => p.id == id);
    } catch (e) {
      return null;
    }
  }

  List<EconomicPuzzle> getAvailablePuzzles(int playerLevel) {
    return state.availablePuzzles
        .where((p) =>
            !state.completedPuzzleIds.contains(p.id) && p.minLevel <= playerLevel)
        .toList();
  }
}

final puzzleProvider = StateNotifierProvider<PuzzleNotifier, PuzzleState>((ref) {
  return PuzzleNotifier();
});

final availablePuzzlesProvider = Provider<List<EconomicPuzzle>>((ref) {
  final player = ref.watch(playerProvider);
  return ref.watch(puzzleProvider.notifier).getAvailablePuzzles(player.level);
});

final currentPuzzleProvider = Provider<EconomicPuzzle?>((ref) {
  return ref.watch(puzzleProvider).currentPuzzle;
});

final currentPuzzleQuestionProvider = Provider<PuzzleQuestion?>((ref) {
  final state = ref.watch(puzzleProvider);
  if (state.currentPuzzle == null) return null;

  return state.currentPuzzle!.questions[state.currentQuestionIndex];
});
