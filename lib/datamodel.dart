class ModelData{
  Coord? coord;
  List<Weather>? weather;
  String? base;
  int? visibility;
  Wind? wind;
  Clouds? clouds;
  int? dt;
  int? timezone;
  int? id;
  String? name;
  Sys? sys;

  ModelData(
      this.coord,
      this.weather,
      this.base,
      this.visibility,
      this.wind,
      this.clouds,
      this.dt,
      this.timezone,
      this.id,
      this.name,
      this.sys);
}

class Coord {
  double? lon;
  double? lat;

  Coord({this.lon, this.lat});

  }
  class Weather {
  int? id;
  String? main;
  String? description;
  String? icon;

  Weather({this.id, this.main, this.description, this.icon});

  }
class Wind {
  double? speed;
  int? deg;
  double? gust;

  Wind({this.speed, this.deg, this.gust});

  }
class Clouds {
  int? all;

  Clouds({this.all});

}
class Sys {
  String? country;
  int? sunrise;
  int? sunset;

  Sys({this.country, this.sunrise, this.sunset});

  Sys.fromJson(Map<String, dynamic> json) {
    country = json['country'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
  }


  }

