import 'package:flutter_test/flutter_test.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:mockito/mockito.dart';
import 'package:xylophone/main.dart';

class MockAudioPlayer extends Mock implements AudioPlayer {}

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group('XylophoneApp Tests', () {
    test('playsound plays the correct sound', () {
      final player = MockAudioPlayer();
      // final xylophoneApp = XylophoneApp(audioPlayer: player);
      final xylophoneApp = XylophoneApp();
      xylophoneApp.playsound(1);
      verify(player.play(AssetSource('note1.wav'))).called(1);
    });
  });
}
