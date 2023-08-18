// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

class CustomTab extends StatefulWidget {
  const CustomTab({
    Key? key,
    this.width,
    this.height,
    required this.intext,
  }) : super(key: key);

  final double? width;
  final double? height;
  final String intext;

  @override
  _CustomTabState createState() => _CustomTabState();
}

class _CustomTabState extends State<CustomTab> {
  // @override
  // void initState() {
  //   super.initState();
  //   widget.intext = " ";
  //   }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(widget.intext),
          Row(
            children: [
              Flexible(
                child: Container(
                  height: 10,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ],
      ),
    );
    ;
  }
}
