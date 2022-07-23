import 'package:music_app/constants.dart';
import 'models/music_details.dart';
import 'ApiCheck.dart';
import 'dart:convert';
import 'constants.dart';

class MusicDetail {
  final int trackID;
  MusicDetails({required this.trackID});
  ApiCheck _api = ApiCheck();
  Future<MusicDetail> fetchMusicDetailsData() async {
    final response =
    await _api.get("track.get?track_id=$trackID&apikey=$kMyapi");
    return MusicDetails.fromJson(response);
  }
