import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  const BlueButton({
    super.key,
    required this.name,
    required this.sizeW,
    required this.sizeH,
    required this.onpresed,
  });
  final String name;
  final double sizeW;
  final double sizeH;
  final Function()? onpresed;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
            height: sizeH, //height of button
            width: sizeW, //width of button
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 3, //elevation of button
                    shape: RoundedRectangleBorder(
                        //to set border radius to button
                        borderRadius: BorderRadius.circular(30)),
                    padding:
                        const EdgeInsets.all(10) //content padding inside button
                    ),
                onPressed: () {
                  //code to execute when this button is pressed.
                },
                child: Text(name))));
  }
}
