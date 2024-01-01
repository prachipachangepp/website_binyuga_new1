import 'package:flutter/material.dart';

typedef void OnFilledButtonClick();

class AppFilledButton extends StatefulWidget {
  const AppFilledButton({
    super.key,
    required this.onClick,
    required this.text,
    required this.padding,
    required this.color,
    required this.textStyle,
  });
  final String text;
  final EdgeInsets padding;
  final Color color;
  final OnFilledButtonClick? onClick;
  final TextStyle textStyle;

  @override
  State<AppFilledButton> createState() => _AppFilledButtonState();
}

class _AppFilledButtonState extends State<AppFilledButton> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0),
      child:
      // isLoading
      //     ? Center(
      //     child: Container(
      //       height: 20,
      //       width: 20,
      //       child: CircularProgressIndicator(
      //         color: widget.color,
      //       ),
      //     ))
      //     :
      MaterialButton(
        color: widget.color,
        onPressed: () {
          setState(() {
            isLoading = true;
          });
          Future.delayed(Duration(seconds: 3), () {
            widget.onClick!();
            setState(() {
              isLoading = false;
            });
          });
        },
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30)),
        padding: widget.padding,
        child: Text(widget.text, style: widget.textStyle),
      ),
    );
  }
}
