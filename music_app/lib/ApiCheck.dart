import 'dart:convert';
import 'dart:io';
import 'package:music_app/exception.dart';
import 'package:http/http.dart' as http;

class ApiCheck {
  Future<dynamic> get(url) async {
    Uri _Url =Uri.parse('https://api.musixmatch.com/ws/1.1/chart.tracks.get?apikey='+url);
    var responseJson;
    try {
      final response = await http.get(_Url);
      responseJson = _response(response);
    } on SocketException {
      throw FetchData('No Internet connection');
    }
    return responseJson;
  }

  dynamic _response(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body.toString());
        print(responseJson);
        return responseJson;
      case 400:
        throw BadRequest(response.body.toString());
      case 401:

      case 404:
        throw InvalidRequest(response.body.toString());
      case 500:

      default:
        throw FetchData(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }
}