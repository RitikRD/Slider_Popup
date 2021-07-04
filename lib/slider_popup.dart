import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SliderPopup extends StatefulWidget {

  double height = 300;
   Color color = Colors.white;
   Widget child = Container();
   Alignment alignment = Alignment.center;
   double borderRadius  = 20;
   Duration duration = Duration(milliseconds: 500);
   bool barrierDismissible = true;
  SliderPopup({
    required this.height,
    required this.color,
    required this.child,
    required this.alignment,
    required this.borderRadius,
    required this.duration,
    required this.barrierDismissible,
});

  @override
  _SliderPopupState createState() => _SliderPopupState();
}

class _SliderPopupState extends State<SliderPopup> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: MaterialButton(
        minWidth: 100,
        height: 50,
        color: Colors.purple,
        onPressed: (){
          // Slider Popup
          _sliderPopup(context);
        },
        child: Text("Open",
          style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w700,
              color: Colors.white
          ),),
      ),
    );
  }

  // Slider Popup
  _sliderPopup(BuildContext context){
    showGeneralDialog(
      barrierLabel: "Label",
      barrierDismissible: widget.barrierDismissible,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: widget.duration,
      context: context,
      pageBuilder: (context, anim1, anim2) {
        return Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            alignment: widget.alignment,
            height: widget.height,
            child: widget.child,
            margin: EdgeInsets.only(bottom: 200, left: 12, right: 12),
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: BorderRadius.circular(widget.borderRadius),
            ),
          ),
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position: Tween(
              begin: Offset(1, 0),
              end: Offset(0, 0)).animate(anim1),
          child: child,
        );
      },
    );
  }

}
