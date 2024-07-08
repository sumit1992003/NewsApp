
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 2,
                  ),
                ),
                disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      // color: Colors.red,
                    )
                ),
                hintText: "Search news...",
                // fillColor: Colors.red
                prefixIcon: Icon(Icons.search),

                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                      // color: Colors.orange
                        style: BorderStyle.none
                    )
                )
            ),
          ),
        ),
        // Container(
        //   height: 50,
        //     width: 50,
        //   decoration: BoxDecoration(
        //     borderRadius: BorderRadius.circular(10),
        //     color: Colors.orange
        //   ),
        // )
      ],
    );
  }
}
