import '../../models/game_map.dart';

class LocationsData {
  static List<GameLocation> getAllLocations() {
    return [
      // Athens - Starting location
      const GameLocation(
        id: 'athens',
        name: 'Athens',
        description: 'The birthplace of democracy and philosophy. Home to the Acropolis and great thinkers.',
        type: LocationType.cityState,
        latitude: 37.9755,
        longitude: 23.7348,
        region: 'Attica',
        specialties: ['Philosophy', 'Democracy', 'Art', 'Trade'],
        availableServices: ['Market', 'Academy', 'Harbor', 'Quests'],
        isUnlocked: true,
        isVisited: true,
        reputation: 50,
        connectedLocations: ['marathon', 'thebes', 'corinth', 'aegina'],
      ),


      // Sparta - Military powerhouse
      const GameLocation(
        id: 'sparta',
        name: 'Sparta',
        description: 'The legendary warrior city-state, known for its military discipline and fearsome soldiers.',
        type: LocationType.cityState,
        latitude: 37.0810,
        longitude: 22.4208,
        region: 'Laconia',
        specialties: ['Military', 'Training', 'Discipline', 'Honor'],
        availableServices: ['Training Grounds', 'Armory', 'Barracks'],
        isUnlocked: true,
        reputation: 0,
        connectedLocations: ['gythium', 'tegea', 'messene'],
      ),

      // Corinth - Trade hub
      const GameLocation(
        id: 'corinth',
        name: 'Corinth',
        description: 'A wealthy trading city controlling the isthmus between mainland Greece and the Peloponnese.',
        type: LocationType.cityState,
        latitude: 37.9061,
        longitude: 22.8786,
        region: 'Corinthia',
        specialties: ['Trade', 'Craftsmanship', 'Engineering', 'Wealth'],
        availableServices: ['Market', 'Workshop', 'Port', 'Canal'],
        isUnlocked: true,
        reputation: 0,
        connectedLocations: ['athens', 'megara', 'sicyon', 'cenchreae'],
      ),

      // Delphi - Oracle and religious center
      const GameLocation(
        id: 'delphi',
        name: 'Delphi',
        description: 'Sacred sanctuary of Apollo, home to the famous Oracle who speaks the will of the gods.',
        type: LocationType.sanctuary,
        latitude: 38.4824,
        longitude: 22.5009,
        region: 'Phocis',
        specialties: ['Prophecy', 'Religion', 'Wisdom', 'Sacred Rites'],
        availableServices: ['Oracle', 'Temple', 'Sacred Treasury'],
        isUnlocked: true,
        reputation: 0,
        connectedLocations: ['amphissa', 'thebes', 'phocaea'],
      ),

      // Olympia - Athletic competitions
      const GameLocation(
        id: 'olympia',
        name: 'Olympia',
        description: 'Sacred sanctuary of Zeus, where athletes compete in the Olympic Games every four years.',
        type: LocationType.sanctuary,
        latitude: 37.6379,
        longitude: 21.6300,
        region: 'Elis',
        specialties: ['Athletics', 'Competition', 'Zeus Worship', 'Glory'],
        availableServices: ['Stadium', 'Gymnasium', 'Temple of Zeus'],
        isUnlocked: false,
        reputation: 0,
        connectedLocations: ['elis', 'pisa', 'pyrgos'],
      ),

      // Thebes - Ancient rival
      const GameLocation(
        id: 'thebes',
        name: 'Thebes',
        description: 'Ancient city-state in Boeotia, famous for its military might and mythical history.',
        type: LocationType.cityState,
        latitude: 38.3215,
        longitude: 23.3194,
        region: 'Boeotia',
        specialties: ['Military', 'Mythology', 'Agriculture', 'Sacred Band'],
        availableServices: ['Citadel', 'Market', 'Training'],
        isUnlocked: true,
        reputation: 0,
        connectedLocations: ['athens', 'delphi', 'plataea', 'orchomenus'],
      ),

      // Marathon - Historic battlefield
      const GameLocation(
        id: 'marathon',
        name: 'Marathon',
        description: 'Plains where the Athenians defeated the Persians, site of legendary heroism.',
        type: LocationType.battlefield,
        latitude: 38.1549,
        longitude: 23.9706,
        region: 'Attica',
        specialties: ['History', 'Military Glory', 'Persian Wars'],
        availableServices: ['Memorial', 'Historic Site'],
        isUnlocked: true,
        reputation: 0,
        connectedLocations: ['athens', 'rhamnous'],
      ),

      // Aegina - Island trading post
      const GameLocation(
        id: 'aegina',
        name: 'Aegina',
        description: 'Prosperous island known for its silver coins and temple of Aphaia.',
        type: LocationType.cityState,
        latitude: 37.7461,
        longitude: 23.4286,
        region: 'Saronic Gulf',
        specialties: ['Silver', 'Island Trade', 'Temple Architecture'],
        availableServices: ['Mint', 'Harbor', 'Temple'],
        isUnlocked: false,
        reputation: 0,
        connectedLocations: ['athens', 'piraeus', 'epidaurus'],
      ),

      // Rhodes - Distant island
      const GameLocation(
        id: 'rhodes',
        name: 'Rhodes',
        description: 'Magnificent island city with the famous Colossus, gateway to the eastern Mediterranean.',
        type: LocationType.cityState,
        latitude: 36.4341,
        longitude: 28.2176,
        region: 'Dodecanese',
        specialties: ['Colossus', 'Naval Power', 'Eastern Trade', 'Art'],
        availableServices: ['Great Harbor', 'Colossus', 'Academy'],
        isUnlocked: false,
        reputation: 0,
        connectedLocations: ['alexandria', 'ephesus', 'crete'],
      ),

      // Crete - Minoan heritage
      const GameLocation(
        id: 'crete',
        name: 'Crete',
        description: 'Ancient island of the Minoans, rich in history and mysterious labyrinths.',
        type: LocationType.cityState,
        latitude: 35.2401,
        longitude: 24.8093,
        region: 'Aegean Sea',
        specialties: ['Minoan Culture', 'Labyrinth', 'Bronze Working', 'Sea Trade'],
        availableServices: ['Palace of Knossos', 'Harbor', 'Ancient Ruins'],
        isUnlocked: false,
        reputation: 0,
        connectedLocations: ['rhodes', 'cyrene', 'alexandria'],
      ),
    ];
  }

  static GameLocation? getLocationById(String id) {
    try {
      return getAllLocations().firstWhere((location) => location.id == id);
    } catch (e) {
      return null;
    }
  }

  static List<GameLocation> getUnlockedLocations() {
    return getAllLocations().where((location) => location.isUnlocked).toList();
  }

  static List<GameLocation> getConnectedLocations(String locationId) {
    final location = getLocationById(locationId);
    if (location == null) return [];

    return location.connectedLocations
        .map((id) => getLocationById(id))
        .where((loc) => loc != null)
        .cast<GameLocation>()
        .toList();
  }

  static List<GameLocation> getLocationsByType(LocationType type) {
    return getAllLocations().where((location) => location.type == type).toList();
  }

  static List<GameLocation> getLocationsByRegion(String region) {
    return getAllLocations().where((location) => location.region == region).toList();
  }

  static String getLocationTypeDescription(LocationType type) {
    switch (type) {
      case LocationType.cityState:
        return 'A powerful independent city with its own government and military';
      case LocationType.village:
        return 'A small settlement focused on agriculture and local trade';
      case LocationType.port:
        return 'A harbor town specializing in maritime trade and shipping';
      case LocationType.sanctuary:
        return 'A sacred site dedicated to the gods with temples and oracles';
      case LocationType.battlefield:
        return 'A historic site of great battles and military significance';
      case LocationType.wilderness:
        return 'Untamed lands filled with natural resources and dangers';
      case LocationType.ruin:
        return 'Ancient ruins holding secrets and treasures of the past';
    }
  }
}