import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/custom_slider.dart';
import 'package:state_management/progress_value.dart';
import 'package:state_management/video_progress.dart';
void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Provider"),
        centerTitle: true,
      ),
      body: ChangeNotifierProvider(
        create: (context) => ProgressValue(),
        child: Column(
        children: [
          VideoProgress(),
          SizedBox(height: 80.0,),
        CustomSlider(),
        //  CustomSlider(),
        ],
        ),
      ),
    );
  }
}
