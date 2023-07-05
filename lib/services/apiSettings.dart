class ApiSettings{
  static const String key = '14faccf8119f447a80e735b3b62f82b3';
  //Base URL
  static const String baseUrl = 'https://api.weatherbit.io/v2.0/';
  static const String currentWeather = '${baseUrl}current?key=$key';
  static const String   dailyWeather = '${baseUrl}forecast/daily?key=$key';

}