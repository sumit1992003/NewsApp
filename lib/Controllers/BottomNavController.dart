
import 'package:get/get.dart';
import 'package:news_app/pages/ArticlePage/ArticlePage.dart';
import 'package:news_app/pages/Profile/ProfilePage.dart';
import 'package:news_app/pages/Widget/HOME_PAGE.dart';

class BottomNavController extends GetxController{

  RxInt index = 0.obs;
  var pages = [
     HomePage(),
     ArticlePage(),
     ProfilePage(),
  ];
}