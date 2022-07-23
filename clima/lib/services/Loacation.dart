import 'package:geolocator/geolocator.dart';

class Location {
  double _longitude=0;
  double _latitude=0;

  Future getCurrentLocation() async{
    try{
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      _longitude=position.longitude;
      _latitude=position.latitude;
    }catch(e){
      print(e);
    }
  }

  getLongitude() => _longitude;
  getLatitiude() => _latitude;
}

