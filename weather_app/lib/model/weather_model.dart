

class Weather{
  String? cityName;
  double? temp;
  double? wind;
  double? humidity;
  double? feels_like;
  int? pressure;

  Weather({
    this.cityName,
    this.temp,
    this.wind,
    this.humidity,
    this.pressure,
    this.feels_like,
  });

  Weather.fromJson(Map<String, dynamic>json){
    // if(cityName!=null){
    //   cityName = json['name'];

    // }
    // if(temp!=null){
    //   temp = json['temp'];

    // }
    // if(wind!=null){
    //   wind = json['wind'];

    // }
    // if(pressure!=null){
    //   pressure = json['pressure'];

    // }
    // if(humidity!=null){
    //   humidity = json['humidity'];

    // }
    // if(feels_like!=null){
    //   feels_like = json['feels_like'];

    // }
    
    cityName = json['name']?? false;
    temp = json['main']['temp']?? false;
    wind = json['wind']['speed']?? false;
    pressure  = json['main']['pressure']?? false;
    humidity = json['main']['humidity']?? false;
    feels_like = json['main']['feels_like']?? false;
  }


}