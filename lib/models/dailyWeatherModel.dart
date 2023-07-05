import 'dart:convert';

DailyWeatherModel dailyWeatherModelFromJson(String str) => DailyWeatherModel.fromJson(json.decode(str));

String dailyWeatherModelToJson(DailyWeatherModel data) => json.encode(data.toJson());

class DailyWeatherModel {
  String? cityName;
  String? countryCode;
  List<DailyWeatherData>? data;
  dynamic lat;
  dynamic lon;
  String? stateCode;
  String? timezone;

  DailyWeatherModel({
    this.cityName,
    this.countryCode,
    this.data,
    this.lat,
    this.lon,
    this.stateCode,
    this.timezone,
  });

  factory DailyWeatherModel.fromJson(Map<String, dynamic> json) => DailyWeatherModel(
    cityName: json["city_name"],
    countryCode: json["country_code"],
    data: List<DailyWeatherData>.from(json["data"].map((x) => DailyWeatherData.fromJson(x))),
    lat: json["lat"],
    lon: json["lon"],
    stateCode: json["state_code"],
    timezone: json["timezone"],
  );

  Map<String, dynamic> toJson() => {
    "city_name": cityName,
    "country_code": countryCode,
    "data": List<dynamic>.from(data!.map((x) => x.toJson())),
    "lat": lat,
    "lon": lon,
    "state_code": stateCode,
    "timezone": timezone,
  };
}

class DailyWeatherData {
  double? appMaxTemp;
  double? appMinTemp;
  int? clouds;
  int? cloudsHi;
  int? cloudsLow;
  int? cloudsMid;
  DateTime? datetime;
  double? dewpt;
  double? highTemp;
  double? lowTemp;
  dynamic maxDhi;
  double? maxTemp;
  double? minTemp;
  double? moonPhase;
  double? moonPhaseLunation;
  int? moonriseTs;
  int? moonsetTs;
  double? ozone;
  int? pop;
  double? precip;
  double? pres;
  int? rh;
  double? slp;
  int? snow;
  int? snowDepth;
  int? sunriseTs;
  int? sunsetTs;
  double? temp;
  int? ts;
  double? uv;
  DateTime? validDate;
  double? vis;
  Weather? weather;
  String? windCdir;
  String? windCdirFull;
  int? windDir;
  double? windGustSpd;
  double ?windSpd;

  DailyWeatherData({
    this.appMaxTemp,
    this.appMinTemp,
    this.clouds,
    this.cloudsHi,
    this.cloudsLow,
    this.cloudsMid,
    this.datetime,
    this.dewpt,
    this.highTemp,
    this.lowTemp,
    this.maxDhi,
    this.maxTemp,
    this.minTemp,
    this.moonPhase,
    this.moonPhaseLunation,
    this.moonriseTs,
    this.moonsetTs,
    this.ozone,
    this.pop,
    this.precip,
    this.pres,
    this.rh,
    this.slp,
    this.snow,
    this.snowDepth,
    this.sunriseTs,
    this.sunsetTs,
    this.temp,
    this.ts,
    this.uv,
    this.validDate,
    this.vis,
    this.weather,
    this.windCdir,
    this.windCdirFull,
    this.windDir,
    this.windGustSpd,
    this.windSpd,
  });

  factory DailyWeatherData.fromJson(Map<String, dynamic> json) => DailyWeatherData(
    appMaxTemp: json["app_max_temp"].toDouble(),
    appMinTemp: json["app_min_temp"].toDouble(),
    clouds: json["clouds"],
    cloudsHi: json["clouds_hi"],
    cloudsLow: json["clouds_low"],
    cloudsMid: json["clouds_mid"],
    datetime: DateTime.parse(json["datetime"]),
    dewpt: json["dewpt"].toDouble(),
    highTemp: json["high_temp"].toDouble(),
    lowTemp: json["low_temp"].toDouble(),
    maxDhi: json["max_dhi"],
    maxTemp: json["max_temp"].toDouble(),
    minTemp: json["min_temp"].toDouble(),
    moonPhase: json["moon_phase"].toDouble(),
    moonPhaseLunation: json["moon_phase_lunation"].toDouble(),
    moonriseTs: json["moonrise_ts"],
    moonsetTs: json["moonset_ts"],
    ozone: json["ozone"].toDouble(),
    pop: json["pop"],
    precip: json["precip"].toDouble(),
    pres: json["pres"].toDouble(),
    rh: json["rh"],
    slp: json["slp"].toDouble(),
    snow: json["snow"],
    snowDepth: json["snow_depth"],
    sunriseTs: json["sunrise_ts"],
    sunsetTs: json["sunset_ts"],
    temp: json["temp"].toDouble(),
    ts: json["ts"],
    uv: json["uv"].toDouble(),
    validDate: DateTime.parse(json["valid_date"]),
    vis: json["vis"].toDouble(),
    weather: Weather.fromJson(json["weather"]),
    windCdir: json["wind_cdir"],
    windCdirFull: json["wind_cdir_full"],
    windDir: json["wind_dir"],
    windGustSpd: json["wind_gust_spd"].toDouble(),
    windSpd: json["wind_spd"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "app_max_temp": appMaxTemp,
    "app_min_temp": appMinTemp,
    "clouds": clouds,
    "clouds_hi": cloudsHi,
    "clouds_low": cloudsLow,
    "clouds_mid": cloudsMid,
    "datetime": "${datetime!.year.toString().padLeft(4, '0')}-${datetime!.month.toString().padLeft(2, '0')}-${datetime!.day.toString().padLeft(2, '0')}",
    "dewpt": dewpt,
    "high_temp": highTemp,
    "low_temp": lowTemp,
    "max_dhi": maxDhi,
    "max_temp": maxTemp,
    "min_temp": minTemp,
    "moon_phase": moonPhase,
    "moon_phase_lunation": moonPhaseLunation,
    "moonrise_ts": moonriseTs,
    "moonset_ts": moonsetTs,
    "ozone": ozone,
    "pop": pop,
    "precip": precip,
    "pres": pres,
    "rh": rh,
    "slp": slp,
    "snow": snow,
    "snow_depth": snowDepth,
    "sunrise_ts": sunriseTs,
    "sunset_ts": sunsetTs,
    "temp": temp,
    "ts": ts,
    "uv": uv,
    "valid_date": "${validDate!.year.toString().padLeft(4, '0')}-${validDate!.month.toString().padLeft(2, '0')}-${validDate!.day.toString().padLeft(2, '0')}",
    "vis": vis,
    "weather": weather!.toJson(),
    "wind_cdir": windCdir,
    "wind_cdir_full": windCdirFull,
    "wind_dir": windDir,
    "wind_gust_spd": windGustSpd,
    "wind_spd": windSpd,
  };
}

class Weather {
  String? description;
  int? code;
  Icon? icon;

  Weather({
    this.description,
    this.code,
    this.icon,
  });

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
    // description: descriptionValues.map[json["description"]],
    description: json["description"],
    code: json["code"],
    icon: iconValues.map[json["icon"]],
  );

  Map<String, dynamic> toJson() => {
    "description": description,
    "code": code,
    "icon": iconValues.reverse[icon],
  };
}

// enum Description { FEW_CLOUDS, SCATTERED_CLOUDS, CLEAR_SKY }
//
// final descriptionValues = EnumValues({
//   "Clear Sky": Description.CLEAR_SKY,
//   "Few clouds": Description.FEW_CLOUDS,
//   "Scattered clouds": Description.SCATTERED_CLOUDS
// });

enum Icon { C02_D, C01_D }

final iconValues = EnumValues({
  "c01d": Icon.C01_D,
  "c02d": Icon.C02_D
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}