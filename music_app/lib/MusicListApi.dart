import 'constants.dart';
import 'ApiCheck.dart';

class musicList{
 musicList({required this.trackID});
 ApiCheck _api =ApiCheck();
 final int trackID;
 Future<MusicDetails> fetchMusicDetailsData() async {
  final response =
  await _api.get("track.get?track_id=$trackID&apikey=$kMyapi");
  return MusicDetails.fromJson(response);
 }
}