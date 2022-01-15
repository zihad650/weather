import 'dart:convert';
import 'package:weatherapi/datamodel.dart';
import 'package:http/http.dart' as http;

class DataHelper{

  List<ModelData> modellist = <ModelData>[];
  String getUrl = "https://api.openweathermap.org/data/2.5/weather?q=Madaripur&appid=8c493207ad4338b203837eff8c9f196b";

  Future getWeather ()async{
    var response =await http.get(Uri.parse(getUrl));
    var jsonData = jsonDecode(response.body);

    jsonData['sys'];
    print(jsonData['sys']);
  }



}
