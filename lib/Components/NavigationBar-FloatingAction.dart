
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/Controllers/BottomNavController.dart';

class MyBottomNav extends StatelessWidget {
  const MyBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavController Controller = Get.put(BottomNavController());
    return Padding(
      padding: const EdgeInsets.all(7.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.star,
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            // margin: EdgeInsets.only(top: ),
            width: 220,
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white24,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Padding(
              padding: const EdgeInsets.only(right: 5,left: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Controller.index.value = 0;
                    },
                    child: Obx(() => AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                        height: 40,
                        width: 40,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Controller.index.value == 0? Colors.orange : null,
                        ),
                        child: Icon(
                          Icons.home,
                          size: 30,
                          color: Controller.index.value == 0
                              ?Colors.white
                              :Colors.orange,
                        )
                    ),)
                  ),

                  GestureDetector(
                    onTap: () {
                      Controller.index.value = 1;
                    },
                    child: Obx(() => AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                        // curve: ,
                        height: 40,
                        width: 40,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Controller.index.value == 1
                              ?Colors.orange
                              :null,
                        ),
                        child: Icon(
                            Icons.book,
                            size: 30,
                            color: Controller.index.value == 1
                                ?Colors.white
                                :Colors.orange
                        )),)
                  ),

                  GestureDetector(
                    onTap: () {
                      Controller.index.value = 2;
                    },
                    child: Obx(() => AnimatedContainer(
                      duration: Duration(milliseconds: 200),
                        height: 40,
                        width: 40,
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Controller.index.value == 2
                                ?Colors.orange
                                :null
                        ),
                        child: Icon(
                          Icons.settings,
                          size:30,
                          color: Controller.index.value == 2
                              ?Colors.white
                              :Colors.orange,
                        )
                    ),)
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
