import 'dart:async';

import 'package:flutter/material.dart';


class TypingAnimation extends StatefulWidget {

  final String text;
  final Duration duration;
  final TextStyle? textStyle;

  const TypingAnimation ({
    super.key, 
    required this.text,
    this.duration = const Duration(milliseconds: 100), 
    this.textStyle
  });

  @override
  State<TypingAnimation> createState() => _TypingAnimationState();
}

class _TypingAnimationState extends State<TypingAnimation> {

  String _displayText = '';
  int _charIndex = 0;
  Timer? _timer;

  void _startAnimation (){
    _charIndex = 0;
    _displayText = '';
    _timer = Timer.periodic(widget.duration, ( timer ){
      if ( _charIndex < widget.text.length ) {
        setState(() {
          _displayText = widget.text.substring(0, _charIndex +1);
          _charIndex++;
        });
      } else {
        _stopAnimation();
      }
    });
  }

  void _stopAnimation (){
    _timer?.cancel();
    _timer = null;
  }
  
  @override
  void initState() {
    super.initState();
    _startAnimation();
  }

  @override
  void didUpdateWidget(covariant TypingAnimation oldWidget) {
    super.didUpdateWidget(oldWidget);
    _startAnimation();
  }
  @override
  void dispose() {
    _stopAnimation();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _displayText,
      style: widget.textStyle,
    );
  }
}