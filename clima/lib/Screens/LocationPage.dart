import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:clima/constrains.dart';
import 'package:clima/services/weather.dart';
import 'city_screen.dart';

class LocationPage extends StatefulWidget {
  final weatherData;
  LocationPage({this.weatherData});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  int temprature=0;
  String message=' ';
  String city=' ';
  String weatherIcon= '+';
  var cityNameEntered=' ';
  @override
  void initState() {
    super.initState();
      updateUI(widget.weatherData);

  }

  void updateUI(dynamic weatherData){
    setState(() {
      if(weatherData==null){
        temprature=0;
        city='input';
        message='There is some error ';
        weatherIcon='Error';
        return;
      }
      double temp= weatherData['main']['temp'];
      temprature=temp.toInt();
      city = weatherData['name'];
      int conditionId = weatherData['weather'][0]['id'];

      WeatherModel weatherModel=WeatherModel();
      weatherIcon=weatherModel.getWeatherIcon(conditionId);
      message=weatherModel.getMessage(temprature);
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather'),
        backgroundColor: kMainColor,
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () async{
              cityNameEntered= await Navigator.push(context, MaterialPageRoute(builder: (context) {
                return CityScreen();

              }));
              if(cityNameEntered !=null){
                WeatherModel weather=WeatherModel();
                var weatherData= await weather.getWeatherbyCityName(cityNameEntered);
                updateUI(weatherData);
              };
            },
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:[
        Text(
          weatherIcon,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 170,
          ),

        ),

          Text(
            '$temprature°C',
            textAlign: TextAlign.center,
            style: kTempNumStyle,
          ),

          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color:  kMainColor,
              ),
            child: Text(
              '$message in $city',
              textAlign: TextAlign.center,
              style: kTempBodyText,)

          )
        ],
          ),
    );
  }
}
