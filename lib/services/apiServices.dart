import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/models/dailyWeatherModel.dart';
import 'package:weather_app/models/weatherModel.dart';
import 'package:weather_app/services/apiSettings.dart';

class ApiServices{
  static var client = http.Client();

  static Future<WeatherModel> getCurrentWeather(
      {String? cityName, String? lat,String? lon,}) async {
    print('${ApiSettings.currentWeather}&city=${cityName}');
    var response = await client.get(Uri.parse('${ApiSettings.currentWeather}&city=${cityName}'),
        headers: {
          "Accept": "application/json",

        });
    print(response.statusCode);
    if (response.statusCode == 200) {
      var jsonString = response.body;
      print('$jsonString');

      var mapOutput = json.decode(jsonString);
      print(mapOutput);

      WeatherModel weatherModelr =
      WeatherModel.fromJson(mapOutput);
      return weatherModelr;
    } else {
      var jsonString = response.body;

      var mapOutput = json.decode(jsonString);

      WeatherModel weatherModelr =
      WeatherModel.fromJson(mapOutput);
      return weatherModelr;
    }
  }

  static Future<DailyWeatherModel> getDailyWeather(
      {String? cityName, String? lat,String? lon,}) async {
    print('${ApiSettings.dailyWeather}&city=${cityName}');
    var response = await client.get(Uri.parse('${ApiSettings.dailyWeather}&city=${cityName}'),
        headers: {
          "Accept": "application/json",

        });
    print(response.statusCode);
    if (response.statusCode == 200) {
      var jsonString = response.body;
      print('$jsonString');

      var mapOutput = json.decode(jsonString);
      print(mapOutput);

      DailyWeatherModel dailyWeatherModel =
      DailyWeatherModel.fromJson(mapOutput);
      return dailyWeatherModel;
    } else {
      var jsonString = response.body;

      var mapOutput = json.decode(jsonString);

      DailyWeatherModel dailyWeatherModel =
      DailyWeatherModel.fromJson(mapOutput);
      return dailyWeatherModel;
    }
  }
}