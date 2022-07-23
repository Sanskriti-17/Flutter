import 'package:clima/services/Loacation.dart';
import 'package:clima/services/networking.dart';
import 'package:clima/constrains.dart';// for api

class WeatherModel {
  Future getWeatherbyCityName(String cityName) async{
    Uri url=Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$kMyApi');
    Network network=Network(url: url);
    var cityData= await network.getData();
    return cityData;

}


  Future getWeatherData() async{
    Location location=Location() ;
    await location.getCurrentLocation();

    Uri url= Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat=${location.getLatitiude()}&lon=${location.getLongitude()}&appid=$kMyApi&units=metric');
    Network network=Network(url: url);
    var  weatherData= await network.getData();

    return weatherData;
  }
  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
