import 'package:flutter/material.dart';

class roundbutton extends StatelessWidget {
  roundbutton({super.key, required this.onPress, required this.icon});
  final IconData icon;
  final Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Color(0xFF4C4F5c),
      shape: CircleBorder(),
      onPressed: onPress,
      constraints: BoxConstraints.tightFor(
        width: 56,
        height: 56,
      ),
      elevation: 0,
      child: Icon(icon),
    );
  }
}
