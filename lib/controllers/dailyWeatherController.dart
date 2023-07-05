import 'package:get/get.dart';
import 'package:weather_app/models/dailyWeatherModel.dart';
import 'package:weather_app/services/apiServices.dart';

class DailyWeatherController extends GetxController{
  static var isLoading = true.obs;
  var dailyWeatherList = <DailyWeatherData>[].obs;

  void onInit() async {
    getDailyWeather();
  }

  Future getDailyWeather({String? word}) async {
    try {
      isLoading(true);

      DailyWeatherModel dailyWeatherModel =
      await ApiServices.getDailyWeather(
        cityName: word == null? "Gaza":word,
      );

      dailyWeatherList.value = dailyWeatherModel.data!;
    } finally {
      isLoading(false);
    }
  }


}