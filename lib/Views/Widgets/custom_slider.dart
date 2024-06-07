import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math' as math;

class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});

  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  double _sliderValue = 2;
  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderTheme.of(context).copyWith(
          thumbShape: EmojiSliderThumb(emoji: "😃"),
          trackHeight: MediaQuery.of(context).size.width / 19.5,
          activeTrackColor: const Color(0xff2E959E),
          inactiveTrackColor: const Color(0xffF1EDE3)),
      child: RotatedBox(
        quarterTurns: 3,
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Slider(
            min: 0,
            max: 5,
            divisions: 5,
            value: _sliderValue,
            onChanged: (value) {
              setState(() {
                _sliderValue = value;
              });
            },
          ),
        ),
      ),
    );
  }
}

// class EmojiSliderThumb extends SliderComponentShape {
//   final String emoji;
//   EmojiSliderThumb({required this.emoji});

//   @override
//   Size getPreferredSize(bool isEnabled, bool isDiscrete) {
//     return Size(30, 30);
//   }

//   @override
//   void paint(
//     PaintingContext context,
//     Offset center, {
//     required Animation<double> activationAnimation,
//     required Animation<double> enableAnimation,
//     required bool isDiscrete,
//     required TextPainter labelPainter,
//     required RenderBox parentBox,
//     required SliderThemeData sliderTheme,
//     required TextDirection textDirection,
//     required double value,
//     required double textScaleFactor,
//     required Size sizeWithOverflow,
//   }) {
//     final Canvas canvas = context.canvas;
//     final TextPainter painter = TextPainter(
//       text: TextSpan(
//         text: emoji,
//         style: const TextStyle(fontSize: 55),
//       ),
//       textAlign: TextAlign.center,
//       textDirection: TextDirection.ltr,
//     );
//     painter.layout();
//     painter.paint(
//       canvas,
//       Offset(center.dx - painter.width / 2, center.dy - painter.height / 2),
//     );
//   }
// }

class EmojiSliderThumb extends SliderComponentShape {
  final String emoji;

  EmojiSliderThumb({required this.emoji});

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size(30.0, 30.0);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final Canvas canvas = context.canvas;

    final TextPainter painter = TextPainter(
      text: TextSpan(
        text: emoji,
        style: TextStyle(fontSize: 45),
      ),
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );

    painter.layout();

    canvas.save();
    canvas.translate(center.dx, center.dy);
    canvas.rotate(90 * math.pi / 180);

    painter.paint(
      canvas,
      Offset(-painter.width / 2, -painter.height / 2),
    );

    canvas.restore();
  }
}
