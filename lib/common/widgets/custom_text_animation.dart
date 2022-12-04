import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomTextAnimation extends StatefulWidget {
  final String text;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;

  const CustomTextAnimation({
    Key? key,
    required this.text,
    required this.color,
    required this.fontSize,
    required this.fontWeight,
  }) : super(key: key);

  @override
  State<CustomTextAnimation> createState() => _CustomTextAnimationState();
}

class _CustomTextAnimationState extends State<CustomTextAnimation> {
  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      isRepeatingAnimation: false,
      animatedTexts: [
        TyperAnimatedText(
          widget.text,
          textStyle: TextStyle(
            color: widget.color,
            fontSize: widget.fontSize,
            fontWeight: widget.fontWeight,
          ),
        ),
      ],
    );
  }
}
