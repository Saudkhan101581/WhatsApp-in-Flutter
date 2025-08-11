import 'package:flutter/material.dart';
class Individualchat extends StatefulWidget {
  String name;
  String image;
  String time;
 Individualchat({super.key,required this.name, required this.image, required this.time});

  @override
  State<Individualchat> createState() => _IndividualchatState();
}

class _IndividualchatState extends State<Individualchat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 8,top: 8),
          child: CircleAvatar(
            backgroundImage: AssetImage(widget.image),
          ),
        ),
        title: Text(widget.name),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Center(child: Text(widget.time,style: TextStyle(fontSize: 16),)),
          )
        ],
      )
    );
  }
}
