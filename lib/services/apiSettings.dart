class ApiSettings{
  static const String key = 'bf54a1f775c34a3698aef4220734cd76';
  //Base URL
  static const String baseUrl = 'https://api.weatherbit.io/v2.0/';
  static const String currentWeather = '${baseUrl}current?key=$key';
  static const String   dailyWeather = '${baseUrl}forecast/daily?key=$key';

}