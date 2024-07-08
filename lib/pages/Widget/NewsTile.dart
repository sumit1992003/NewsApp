
import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  final String imageUrl;
  // final String tag;
  final String time;
  final String title;
  final String author;
  const NewsTile({super.key,
    required this.imageUrl,
    // required this.tag,
    required this.time,
    required this.title,
    required this.author
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      // width: 390,
      // height: 135,
      // color: Colors.blueGrey,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white12,
      ),
      child: Row(
        children: [
          Container(
            // padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(10),
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(20),
              color: Colors.blue
            ),
            child: ClipRRect(
              borderRadius: BorderRadiusDirectional.circular(20),
                child: Image.network(imageUrl,fit: BoxFit.cover,)),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.yellow,
                      radius: 12,
                    ),
                    SizedBox(width: 10,),
                    Text('$author',style: TextStyle(color: Colors.white),)
                  ],
                ),
                SizedBox(height: 10,),
                Text('$title',style: TextStyle(color: Colors.white,fontSize: 16),maxLines: 2,),
                SizedBox(height: 10,),
                Text('$time',style: TextStyle(color: Colors.grey),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
