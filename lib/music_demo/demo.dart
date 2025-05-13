import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:ui' as ui;

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  final AudioPlayer audioPlayer = AudioPlayer();
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
  bool isPlaying = false;
  bool isDragging = false;

  @override
  void initState() {
    super.initState();

    // Load audio from assets
    audioPlayer.setSource(AssetSource("music/Tere Bin - Pritam.mp3"));

    // Track duration
    audioPlayer.onDurationChanged.listen((newDuration) {
      setState(() {
        duration = newDuration;
      });
    });

    // Track position
    audioPlayer.onPositionChanged.listen((p) {
      if (!isDragging) {
        setState(() {
          position = p;
        });
      }
    });

    // Track player state
    audioPlayer.onPlayerStateChanged.listen((state) {
      setState(() {
        isPlaying = state == PlayerState.playing;
      });
    });
  }

  String formatTime(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, '0');
    final minutes = twoDigits(duration.inMinutes.remainder(60));
    final seconds = twoDigits(duration.inSeconds.remainder(60));
    return "$minutes:$seconds";
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //
            Container(
              height: 170,
              color: Colors.yellow,
              child: Column(
                children: [
                  // Time display
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text(formatTime(position)), Text(formatTime(duration))],
                  ),
                  // Slider
                  Slider(
                    min: 0,
                    max: duration.inSeconds.toDouble(),
                    value: position.inSeconds.toDouble().clamp(0, duration.inSeconds.toDouble()),
                    onChangeStart: (value) {
                      setState(() {
                        isDragging = true;
                      });
                    },
                    onChanged: (value) {
                      setState(() {
                        position = Duration(seconds: value.toInt());
                      });
                    },
                    onChangeEnd: (value) async {
                      await audioPlayer.seek(Duration(seconds: value.toInt()));
                      await audioPlayer.resume();
                      setState(() {
                        isDragging = false;
                      });
                    },
                  ),
                  // Play/Pause button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 0, 195, 255),
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(16),
                    ),
                    onPressed: () async {
                      if (isPlaying) {
                        await audioPlayer.pause();
                      } else {
                        await audioPlayer.resume();
                      }
                    },
                    child: Icon(isPlaying ? Icons.pause : Icons.play_arrow, size: 50, color: Colors.white),
                  ),
                ],
              ),
            ),
            //
            //
            Container(height: 150, width: 370, child: CustomPaint(painter: PlayerPainter())),
          ],
        ),
      ),
    );
  }
}

class PlayerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..shader = ui.Gradient.linear(
        Offset(0, 0),
        Offset(size.width, size.height),
        [
          Color.fromRGBO(219, 40, 169, 0.75),
          Color.fromRGBO(145, 38, 209, 0.75),
          Color.fromRGBO(157, 29, 202, 0.75),
        ],
      )
      ..style = PaintingStyle.fill;

    canvas.drawRect(Rect.fromLTWH(0, 0, size.width, size.height), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}