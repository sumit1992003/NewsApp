
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/pages/Widget/NewsTile.dart';
import 'package:news_app/pages/Widget/Trending_Card.dart';

import '../../Controllers/NewsController.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

    NewsController  newsController = Get.put(NewsController());

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My News',
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(50),
              color: Colors.white
            ),
              child: Icon(Icons.dashboard,size: 30,color: Colors.black54,)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white
              ),
              child: IconButton(
                onPressed: () {
                  newsController.getTrendingNews();
                },
                icon: Icon(Icons.person,size: 30,color: Colors.black45,) ),
            ),
          ),
        ],
        backgroundColor: Colors.grey,
      ),

      // floatingActionButton: MyBottomNav(),

      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Hottest news',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white)),
                  Text('See more',style: TextStyle(color: Colors.blueGrey),)
                ],
              ),
              SizedBox(height: 10,),
              SingleChildScrollView(
               scrollDirection: Axis.horizontal,
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TrendingCard(
                      imageUrl: "https://www.bhagwanbhagat.com/wp-content/uploads/2021/03/Ayodhya-Ram-Mandir-Pic.jpg",
                      tag: "Trending no 1",
                      time: "5 महीने पहले",
                      title: "कश्मीर से रामेश्वरम और विदेशों तक, कितनी अलग हैं रामकथाएं, पढ़िए कल से",
                      author: "Sumit Prajapati",
                    ),
                    TrendingCard(
                      imageUrl: "https://i.ibb.co/RHZ7P0r/Business-Investment-1-33.jpg",
                      tag: "Trending no 1",
                      time: "3 घंटे पहले",
                      title: "सेंसेक्स पहली बार 80,000 के पार, जियो का रिचार्ज 25% और एयरटेल का 21% तक महंगा",
                      author: "Sumit Prajapati",
                    ),
                    TrendingCard(
                      imageUrl: "https://i.pinimg.com/736x/20/e5/70/20e570a01b79baa8920361d7e3cb69fd.jpg",
                      tag: "Trending no 1",
                      time: "5 दिन पहले ",
                      title: "यह खिताब उठाने वाले सबसे उम्रदराज कैप्टन; इंडिया बिना हारे ट्रॉफी जीतने वाली पहली टीम",
                      author: "Sumit Prajapati",
                    ),
                  ],
                ),
              ),
              Padding(padding: EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('News for you',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),),
                        Text('See more',style: TextStyle(color: Colors.blueGrey),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Column(
                      children: [
                        NewsTile(
                          imageUrl: "https://i.ytimg.com/vi/CNTf5IOk16c/maxresdefault.jpg",
                          title: "MP-राजस्थान सहित 17 राज्यों में भारी बारिश का अलर्ट; कश्मीर में हीटवेव, 17 जुलाई तक स्कूल बंद",
                          time: '2 day ago',
                          author: 'Sumit Prajapati',
                          // tag: "",
                          // imageUrl: 'https://i.ytimg.com/vi/CNTf5IOk16c/maxresdefault.jpg', tag: '', time: '', title: '', author: '',
                        ),
                        NewsTile(
                          imageUrl: "https://himachalwatcher.com/wp-content/uploads/2020/04/Lockdown-extended-in-india-by-two-wees.jpg",
                          title: "थाने में 24 घंटे बिठा सकेंगे, FIR से पहले जांच, 90 दिनों की हिरासत",
                          time: '15 day ago',
                          author: 'Sumit Prajapati',
                          // tag: "",
                          // imageUrl: 'https://i.ytimg.com/vi/CNTf5IOk16c/maxresdefault.jpg', tag: '', time: '', title: '', author: '',
                        ),
                        NewsTile(
                          imageUrl: "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/07/04/champion_1720114223.jpeg",
                          title: "दिल्ली से मुंबई तक रोहित, हार्दिक, कोहली-कोहली; कप्तान बोले- यह ट्रॉफी पूरे देश की",
                          time: '2 day ago',
                          author: 'Sumit Prajapati',
                          // tag: "",
                          // imageUrl: 'https://i.ytimg.com/vi/CNTf5IOk16c/maxresdefault.jpg', tag: '', time: '', title: '', author: '',
                        ),
                        NewsTile(
                          imageUrl: "https://images.bhaskarassets.com/webp/thumb/512x0/web2images/521/2024/06/07/581717232335665ae2cfaaac6shutterstock582503356_1717770345.jpg",
                          title: "बढ़ जाएगी आपकी बचत, बस जीवनशैली में ले आएं ये बदलाव",
                          time: '28 दिन पहले',
                          author: 'Sumit Prajapati',
                          // tag: "",
                          // imageUrl: 'https://i.ytimg.com/vi/CNTf5IOk16c/maxresdefault.jpg', tag: '', time: '', title: '', author: '',
                        ),
                        // Container()
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      // backgroundColor: Colors.white10,
    );
  }
}
