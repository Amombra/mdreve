import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
import 'package:intl/intl.dart' as intl;


class Slides extends StatefulWidget {
  @override
  _SlidesState createState() => _SlidesState();
}

class _SlidesState extends State<Slides> {
   double _lowerValue = 50;
  double _upperValue = 180;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: SingleChildScrollView(
              child: Column(
          children: <Widget>[
         
           Container(
            margin: EdgeInsets.only(top: 50, left: 50, right: 50),
            alignment: Alignment.centerLeft,
            child: FlutterSlider(
              values: [60, 160],
//              ignoreSteps: [
//                FlutterSliderIgnoreSteps(from: 120, to: 150),
//                FlutterSliderIgnoreSteps(from: 160, to: 190),
//              ],
              max: 200,
              min: 50,
              maximumDistance: 300,
              rangeSlider: true,
              rtl: true,
              handlerAnimation: FlutterSliderHandlerAnimation(

                  curve: Curves.elasticOut,
                  reverseCurve: null,
                  duration: Duration(milliseconds: 700),
                  scale: 1.4),
              onDragging: (handlerIndex, lowerValue, upperValue) {
                _lowerValue = lowerValue;
                _upperValue = upperValue;
                setState(() {});
              },
            ),
          ),
           
           
            



            /*Fixed Values*/
           

            /*Hatch Mark Example*/

           
          ],
        ),
      ),
    );
  }

  customHandler(IconData icon) {
    return FlutterSliderHandler(
      decoration: BoxDecoration(),
      child: Container(
        child: Container(
          margin: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.3), shape: BoxShape.circle),
          child: Icon(
            icon,
            color: Colors.white,
            size: 23,
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.blue.withOpacity(0.3),
                spreadRadius: 0.05,
                blurRadius: 5,
                offset: Offset(0, 1))
          ],
        ),
      ),
    );
  }
}