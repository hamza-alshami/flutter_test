import 'package:audioplayers/audioplayers.dart';

class Number {
  final String img;
  final String jpName;
  final String enName;
  final String audio;

  const Number({
    required this.img,
    required this.jpName,
    required this.enName,
    required this.audio,
  });
  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(audio));
  }
}

