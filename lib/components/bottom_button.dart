import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final VoidCallback navigation;
  final String calculate;
  const BottomButton({required this.navigation, required this.calculate});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: navigation, //(){
      // Navigator.pushNamed(context, '/result');
      // },
      child: Container(
        color: kbottomContainerColor,
        width: double.infinity,
        height: kbottomContainerHeight,
        margin: const EdgeInsets.only(top: 10.0),
        child: Center(
          child: Text(calculate, style: kLargeButtonTextStyle),
        ),
      ),
    );
  }
}
