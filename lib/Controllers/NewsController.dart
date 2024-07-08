
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class NewsController extends GetxController{

  Future<void> getTrendingNews() async{
    var baseURL = "https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=API_KEY";
    var response = http.get(Uri.parse(baseURL));
    print(response);
    if(response.statusCode == 200){
      
    }
  }
}