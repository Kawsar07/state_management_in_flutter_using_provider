import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/progress_value.dart';

class VideoProgress extends StatefulWidget {
  const VideoProgress({Key? key}) : super(key: key);

  @override
  _VideoProgressState createState() => _VideoProgressState();
}

class _VideoProgressState extends State<VideoProgress> {
  @override
  Widget build(BuildContext context) {
    final progress = Provider.of<ProgressValue>(context).progress *100;
    return Container(
          child: Text("Video Progress\n ${progress.toStringAsFixed(2)}%",
            style: TextStyle(fontSize: 30.0,fontWeight: FontWeight.w700),),

    );
  }
}
