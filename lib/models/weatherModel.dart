import 'dart:convert';

WeatherModel weatherModelFromJson(String str) => WeatherModel.fromJson(json.decode(str));

String weatherModelToJson(WeatherModel data) => json.encode(data.toJson());

class WeatherModel {
  int? count;
  List<Datum>? data;

  WeatherModel({
    this.count,
    this.data,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) => WeatherModel(
    count: json["count"],
    data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "count": count,
    "data": List<dynamic>.from(data!.map((x) => x.toJson())),
  };
}

class Datum {
  double? appTemp;
  int? aqi;
  String? cityName;
  int? clouds;
  String? countryCode;
  String? datetime;
  int? dewpt;
  double? dhi;
  double? dni;
  double? elevAngle;
  double? ghi;
  dynamic gust;
  double? hAngle;
  double? lat;
  double? lon;
  String? obTime;
  String? pod;
  int? precip;
  double? pres;
  int? rh;
  double? slp;
  int? snow;
  double? solarRad;
  List<String>? sources;
  String? stateCode;
  String? station;
  String? sunrise;
  String? sunset;
  double? temp;
  String? timezone;
  int? ts;
  double? uv;
  int? vis;
  Weather? weather;
  String? windCdir;
  String? windCdirFull;
  int? windDir;
  double? windSpd;

  Datum({
    this.appTemp,
    this.aqi,
    this.cityName,
    this.clouds,
    this.countryCode,
    this.datetime,
    this.dewpt,
    this.dhi,
    this.dni,
    this.elevAngle,
    this.ghi,
    this.gust,
    this.hAngle,
    this.lat,
    this.lon,
    this.obTime,
    this.pod,
    this.precip,
    this.pres,
    this.rh,
    this.slp,
    this.snow,
    this.solarRad,
    this.sources,
    this.stateCode,
    this.station,
    this.sunrise,
    this.sunset,
    this.temp,
    this.timezone,
    this.ts,
    this.uv,
    this.vis,
    this.weather,
    this.windCdir,
    this.windCdirFull,
    this.windDir,
    this.windSpd,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    appTemp: json["app_temp"].toDouble(),
    aqi: json["aqi"],
    cityName: json["city_name"],
    clouds: json["clouds"],
    countryCode: json["country_code"],
    datetime: json["datetime"],
    dewpt: json["dewpt"],
    dhi: json["dhi"].toDouble(),
    dni: json["dni"].toDouble(),
    elevAngle: json["elev_angle"].toDouble(),
    ghi: json["ghi"].toDouble(),
    gust: json["gust"],
    hAngle: json["h_angle"].toDouble(),
    lat: json["lat"].toDouble(),
    lon: json["lon"].toDouble(),
    obTime: json["ob_time"],
    pod: json["pod"],
    precip: json["precip"],
    pres: json["pres"].toDouble(),
    rh: json["rh"],
    slp: json["slp"].toDouble(),
    snow: json["snow"],
    solarRad: json["solar_rad"].toDouble(),
    sources: List<String>.from(json["sources"].map((x) => x)),
    stateCode: json["state_code"],
    station: json["station"],
    sunrise: json["sunrise"],
    sunset: json["sunset"],
    temp: json["temp"].toDouble(),
    timezone: json["timezone"],
    ts: json["ts"],
    uv: json["uv"].toDouble(),
    vis: json["vis"],
    weather: Weather.fromJson(json["weather"]),
    windCdir: json["wind_cdir"],
    windCdirFull: json["wind_cdir_full"],
    windDir: json["wind_dir"],
    windSpd: json["wind_spd"].toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "app_temp": appTemp,
    "aqi": aqi,
    "city_name": cityName,
    "clouds": clouds,
    "country_code": countryCode,
    "datetime": datetime,
    "dewpt": dewpt,
    "dhi": dhi,
    "dni": dni,
    "elev_angle": elevAngle,
    "ghi": ghi,
    "gust": gust,
    "h_angle": hAngle,
    "lat": lat,
    "lon": lon,
    "ob_time": obTime,
    "pod": pod,
    "precip": precip,
    "pres": pres,
    "rh": rh,
    "slp": slp,
    "snow": snow,
    "solar_rad": solarRad,
    "sources": List<dynamic>.from(sources!.map((x) => x)),
    "state_code": stateCode,
    "station": station,
    "sunrise": sunrise,
    "sunset": sunset,
    "temp": temp,
    "timezone": timezone,
    "ts": ts,
    "uv": uv,
    "vis": vis,
    "weather": weather!.toJson(),
    "wind_cdir": windCdir,
    "wind_cdir_full": windCdirFull,
    "wind_dir": windDir,
    "wind_spd": windSpd,
  };
}

class Weather {
  String? description;
  int? code;
  String? icon;

  Weather({
    this.description,
    this.code,
    this.icon,
  });

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
    description: json["description"],
    code: json["code"],
    icon: json["icon"],
  );

  Map<String, dynamic> toJson() => {
    "description": description,
    "code": code,
    "icon": icon,
  };
}
