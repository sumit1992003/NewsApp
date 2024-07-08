
import 'package:flutter/material.dart';

class TrendingCard extends StatelessWidget {
  final String imageUrl;
  final String tag;
  final String time;
  final String title;
  final String author;
  const TrendingCard({super.key,
    required this.imageUrl,
    required this.tag,
    required this.time,
    required this.title,
    required this.author
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      height: 340,
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white12,
      ),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
                height: 200,
                width: 280,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blueGrey
                ),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    // clipBehavior: Clip.antiAliasWithSaveLaye,
                    child: Image.network(imageUrl,fit: BoxFit.cover,))
            ),
          ),
          // SizedBox(height: 2,),
           Padding(
            padding: EdgeInsets.only(left: 5,right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // crossAxisAlignment: CrossAxisAlignment.,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  "$tag",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400,color: Colors.grey),
                ),
                Text("$time",
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          SizedBox(height: 1,),
           Padding(
            padding: EdgeInsets.only(right: 5,left: 5),
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text("$title",
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),
                    maxLines: 2,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 5,),
           Padding(
            padding: EdgeInsets.only(right: 5,left: 5),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.yellow,
                  radius: 15,
                ),
                SizedBox(width: 10,),
                Text('$author',style: TextStyle(fontWeight: FontWeight.w500,color: Colors.white),)
              ],
            ),
          )
        ],
      ),
    );
  }
}
