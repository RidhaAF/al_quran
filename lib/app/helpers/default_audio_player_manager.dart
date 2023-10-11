import 'package:audioplayers/audioplayers.dart';

class DefaultAudioPlayerManager {
  DefaultAudioPlayerManager._();

  static final DefaultAudioPlayerManager instance =
      DefaultAudioPlayerManager._();

  final Map<String?, AudioPlayer> _players = {};

  AudioPlayer playerForVerse(String? verseNumber) {
    if (!_players.containsKey(verseNumber)) {
      _players[verseNumber] = AudioPlayer(playerId: verseNumber);
    }
    return _players[verseNumber]!;
  }

  void stopAllPlayersExcept(String? verseNumber) {
    _players.forEach((key, player) {
      if (key != verseNumber) {
        player.stop();
      }
    });
  }

  void stopAllPlayers() {
    _players.forEach((key, player) {
      player.stop();
    });
  }
}
