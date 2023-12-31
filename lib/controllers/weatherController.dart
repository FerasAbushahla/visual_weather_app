import 'package:get/get.dart';
import 'package:weather_app/models/weatherModel.dart';
import 'package:weather_app/services/apiServices.dart';

class WeatherController extends GetxController {
  static var isLoading = true.obs;
  var _currentWeather = WeatherModel().obs;

  WeatherModel get currentWeather => _currentWeather.value;

  void onInit() async {
    getCurrentWeather();
  }

  Future getCurrentWeather({String? word, String? lat, String? lon}) async {
    try {
      isLoading(true);

      WeatherModel weatherModel = await ApiServices.getCurrentWeather(
        cityName: word ?? '',
        lat: lat ?? '',
        lon: lon ?? '',
      );

      _currentWeather(weatherModel);
    } finally {
      isLoading(false);
    }
  }
}
