import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  CardWidget({required this.colour, required this.cardChild, this.onPress});
  final Color colour;
  final Widget cardChild;
  final void Function()? onPress; // Specify the type as void Function()?

  @override
  State<CardWidget> createState() => _CardState();
}

class _CardState extends State<CardWidget> {
  late void Function()? _onPress; // Define a local variable

  @override
  void initState() {
    super.initState();
    _onPress = widget.onPress; // Initialize _onPress in the initState
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onPress, // Use _onPress here
      child: Container(
        child: widget.cardChild, // Use widget.cardChild here
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: widget.colour, // Use widget.colour here
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
