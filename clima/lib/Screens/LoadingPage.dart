import 'package:flutter/material.dart';
import 'LocationPage.dart';
import 'package:clima/constrains.dart';
import 'package:clima/services/weather.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);
  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override

  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async{
    try{

      WeatherModel weatherModel= WeatherModel();
      var weatherData= await weatherModel.getWeatherData();
      Navigator.push(context, MaterialPageRoute(builder: (context){return LocationPage(weatherData: weatherData,);}));
    }catch(e){
      print(e);
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitFadingCircle(
          color: kMainColor,
        ),
      ),
    );
  }
}
