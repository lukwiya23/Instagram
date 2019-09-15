import 'package:first_app/insta_stories.dart';
import 'package:flutter/material.dart';


class InstaPosts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index)=>index==0?SizedBox(child: InstaStories(),
      height: deviceSize.height * 0.15,
      )
      : Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0, 16.0, 8.0, 16.0),
          )
        ],
      )
      
    );
  }
}

