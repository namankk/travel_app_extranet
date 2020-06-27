import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'TextStyles.dart';
import 'package:flutter/foundation.dart';

import 'constants.dart';

class WideButton extends StatelessWidget {
  final String text;
  bool isBold=false;
  Color backgroundColor;
  final GestureTapCallback onPressed;
  WideButton(this.text, this.onPressed,{
    this.backgroundColor
  });
  WideButton.bold(this.text, this.onPressed,this.isBold,{
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: 350.0,
      height: 50.0,
      child: RaisedButton(
          color: backgroundColor??korange,
          shape: new RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)),
          child: isBold? BoldText(text,20.5,kwhite):NormalText(text, kwhite, 20.5),
        onPressed: onPressed,
    ));
  }
}
class SquaredIcon extends StatelessWidget {
  final IconData icon;
  final String text;

  SquaredIcon(this.icon, this.text);

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: ()=>null,
      child: Container(
        height: 80,
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        decoration: new BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade500,
              blurRadius: 5.0,
              spreadRadius: -2.0,
              offset: Offset(
                3.0,
                4.0,
              ),
            )
          ],

        ),
        child: Container(
            width: 90,
            height: 90,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10.0)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(icon,size: 50,color: kgreyDark,),
                SizedBox(
                  height: 5,
                ),
                NormalText(text,kblack,16.0)

              ],
            )),

      ),
    );
  }
}
