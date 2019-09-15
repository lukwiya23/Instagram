import 'package:first_app/insta_stories.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


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
            child: Row(
              children: <Widget>[
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image:DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage("")
                    )
                  ),
                  
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Bonnie", style: TextStyle(fontWeight: FontWeight.bold),)
              ],
            ),
            
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Image.network("", fit: BoxFit.cover,),
          
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(FontAwesomeIcons.heart),
                    SizedBox(width: 16.0,),
                    Icon(FontAwesomeIcons.comment),
                    SizedBox(width: 16.0,),
                    Icon(FontAwesomeIcons.paperPlane),
                    SizedBox(width: 16.0,),
                    Icon(FontAwesomeIcons.bookmark)
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16.0,16.0,0.0,8.0),
            child : Row(
              
            )
          )
        ],
      )
      
    );
  }
}

