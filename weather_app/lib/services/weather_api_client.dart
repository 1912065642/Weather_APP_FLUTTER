import 'package:http/http.dart' as http;
import 'package:weather_app/model/weather_model.dart';
import 'dart:convert';

class WeatherApiClient{
  Future<Weather>? getCurrentWeather(String? location) async{
    var endpoint = Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=$location&appid=46fd5f9fd387bb5125fd14b124ce5d69&units=metric');
    var response = await http.get(endpoint);
    var body = jsonDecode(response.body);
    print(Weather.fromJson(body).cityName);
    return Weather.fromJson(body);

  }
}