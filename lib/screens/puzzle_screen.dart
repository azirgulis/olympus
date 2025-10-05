import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../providers/puzzle_provider.dart';
import '../models/puzzle.dart';

class PuzzleScreen extends ConsumerStatefulWidget {
  final String puzzleId;

  const PuzzleScreen({
    super.key,
    required this.puzzleId,
  });

  @override
  ConsumerState<PuzzleScreen> createState() => _PuzzleScreenState();
}

class _PuzzleScreenState extends ConsumerState<PuzzleScreen> {
  String? selectedAnswerId;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(puzzleProvider.notifier).startPuzzle(widget.puzzleId);
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentPuzzle = ref.watch(currentPuzzleProvider);
    final currentQuestion = ref.watch(currentPuzzleQuestionProvider);

    if (currentPuzzle == null || currentQuestion == null) {
      return Scaffold(
        appBar: AppBar(title: const Text('Puzzle')),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(currentPuzzle.title),
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            ref.read(puzzleProvider.notifier).cancelPuzzle();
            context.pop();
          },
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.blue.shade50,
              Colors.amber.shade50,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Progress indicator
              _buildProgressBar(currentPuzzle),

              // Puzzle description (only on first question)
              if (ref.watch(puzzleProvider).currentQuestionIndex == 0)
                _buildDescription(currentPuzzle),

              // Question
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      _buildQuestion(currentQuestion),
                      const SizedBox(height: 24),
                      _buildAnswers(currentQuestion),
                      if (currentQuestion.hint != null) ...[
                        const SizedBox(height: 16),
                        _buildHint(currentQuestion.hint!),
                      ],
                    ],
                  ),
                ),
              ),

              // Submit button
              _buildSubmitButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProgressBar(EconomicPuzzle puzzle) {
    final progress = (ref.watch(puzzleProvider).currentQuestionIndex + 1) /
        puzzle.questions.length;

    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Question ${ref.watch(puzzleProvider).currentQuestionIndex + 1}/${puzzle.questions.length}',
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: _getDifficultyColor(puzzle.difficulty),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  puzzle.difficulty.name.toUpperCase(),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          LinearProgressIndicator(
            value: progress,
            backgroundColor: Colors.grey.shade300,
            valueColor: AlwaysStoppedAnimation<Color>(
              _getDifficultyColor(puzzle.difficulty),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDescription(EconomicPuzzle puzzle) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blue.shade700,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(Icons.lightbulb, color: Colors.amber, size: 24),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Concept: ${puzzle.economicConcept}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            puzzle.description,
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
        ],
      ),
    );
  }

  Widget _buildQuestion(PuzzleQuestion question) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Text(
        question.questionText,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          height: 1.4,
        ),
      ),
    );
  }

  Widget _buildAnswers(PuzzleQuestion question) {
    return Column(
      children: question.answers.map((answer) {
        final isSelected = selectedAnswerId == answer.id;

        return GestureDetector(
          onTap: () {
            setState(() {
              selectedAnswerId = answer.id;
            });
            ref.read(puzzleProvider.notifier).selectAnswer(answer.id);
          },
          child: Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: isSelected ? Colors.blue.shade100 : Colors.white,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: isSelected ? Colors.blue.shade700 : Colors.grey.shade300,
                width: isSelected ? 2 : 1,
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: 24,
                  height: 24,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: isSelected ? Colors.blue.shade700 : Colors.grey,
                      width: 2,
                    ),
                    color: isSelected ? Colors.blue.shade700 : Colors.transparent,
                  ),
                  child: isSelected
                      ? const Icon(Icons.check, size: 16, color: Colors.white)
                      : null,
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Text(
                    answer.text,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildHint(String hint) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.amber.shade100,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.amber.shade300),
      ),
      child: Row(
        children: [
          Icon(Icons.help_outline, color: Colors.amber.shade900, size: 20),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              'Hint: $hint',
              style: TextStyle(
                fontSize: 14,
                color: Colors.amber.shade900,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSubmitButton() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: ElevatedButton(
        onPressed: selectedAnswerId == null
            ? null
            : () {
                final isCorrect = ref.read(puzzleProvider.notifier).submitAnswer(ref);

                if (isCorrect) {
                  final currentQuestion = ref.read(currentPuzzleQuestionProvider);
                  final answer = currentQuestion?.answers.firstWhere(
                    (a) => a.id == selectedAnswerId,
                  );

                  // Show feedback
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(answer?.feedback ?? 'Correct!'),
                      backgroundColor: Colors.green,
                      duration: const Duration(seconds: 2),
                    ),
                  );

                  // Reset selection for next question
                  setState(() {
                    selectedAnswerId = null;
                  });

                  // Check if puzzle is completed
                  if (ref.read(currentPuzzleProvider) == null) {
                    // Puzzle completed
                    _showCompletionDialog();
                  }
                } else {
                  final currentQuestion = ref.read(currentPuzzleQuestionProvider);
                  final answer = currentQuestion?.answers.firstWhere(
                    (a) => a.id == selectedAnswerId,
                  );

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(answer?.feedback ?? 'Incorrect. Try again!'),
                      backgroundColor: Colors.red,
                      duration: const Duration(seconds: 2),
                    ),
                  );

                  setState(() {
                    selectedAnswerId = null;
                  });
                }
              },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue.shade700,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Text(
          'Submit Answer',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  void _showCompletionDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Row(
          children: [
            Icon(Icons.emoji_events, color: Colors.amber, size: 32),
            SizedBox(width: 12),
            Text('Puzzle Completed!'),
          ],
        ),
        content: const Text(
          'Congratulations! You\'ve successfully completed this economic puzzle and earned rewards.',
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              context.pop();
            },
            child: const Text('Continue'),
          ),
        ],
      ),
    );
  }

  Color _getDifficultyColor(PuzzleDifficulty difficulty) {
    switch (difficulty) {
      case PuzzleDifficulty.easy:
        return Colors.green;
      case PuzzleDifficulty.medium:
        return Colors.orange;
      case PuzzleDifficulty.hard:
        return Colors.red;
      case PuzzleDifficulty.expert:
        return Colors.purple;
    }
  }
}
