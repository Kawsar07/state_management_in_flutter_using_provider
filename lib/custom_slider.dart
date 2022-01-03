import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/progress_value.dart';

class CustomSlider extends StatefulWidget {
  const CustomSlider({Key? key}) : super(key: key);

  @override
  _CustomSliderState createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  void onValueChange(double val){
    Provider.of<ProgressValue>(context, listen: false).progress = val;
  }
  @override
  Widget build(BuildContext context) {
    final progress = Provider.of<ProgressValue>(context).progress;
    return Container(
        height: 50.0,
        margin: EdgeInsets.symmetric(vertical: 30.0),
        child: Slider(
          onChanged: onValueChange,
          value: progress,
        ),
    );
  }
}
