
import 'package:flutter/material.dart';
import '../Widget/NewsTile.dart';
import 'Widget/SearchWidget.dart';

class ArticlePage extends StatelessWidget {
  const ArticlePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: ListView(
          children: [
            SearchWidget(),
            SizedBox(height: 20,),
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

                // Container()
              ],
            )
          ],
        ),
      ),
    );
  }
}
