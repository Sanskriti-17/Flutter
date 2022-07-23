import 'dart:convert';

class MusicDetails {
  var message;

  MusicDetails({required this.message});

  fromJson(Map<String, dynamic> json) {
    message =
        json['message'] != null ? new Message.fromJson(json['message']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.message != null) {
      data['message'] = this.message.toJson();
    }
    return data;
  }
}

class Message {
  var header;
  var body;


  Message({required this.header, required this.body});

  Message.fromJson(Map<String, dynamic> json) {
    header = (json['header'] != null ? new Header.fromJson(json['header']) : null)!;
    body = (json['body'] != null ? new Body.fromJson(json['body']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.header != null) {
      data['header'] = this.header.toJson();
    }
    if (this.body != null) {
      data['body'] = this.body.toJson();
    }
    return data;
  }
}

class Header {
  int statusCode=0;
  double executeTime=0;

  Header({required this.statusCode, required this.executeTime});

  Header.fromJson(Map<String, dynamic> json) {
    statusCode = json['status_code'];
    executeTime = json['execute_time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status_code'] = this.statusCode;
    data['execute_time'] = this.executeTime;
    return data;
  }
}

class Body {
  var track;

  Body({required this.track});

  Body.fromJson(Map<String, dynamic> json) {
    track = json['track'] != null ? new Track.fromJson(json['track']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.track != null) {
      data['track'] = this.track.toJson();
    }
    return data;
  }
}

class Track {
  int trackId=0;
  String trackName='';
  int commontrackId=0;
  int hasLyrics=0;
  String albumName='';
  String artistName='';

  Track({required this.trackId,
    this.trackName = '',
    this.commontrackId = 0,
    this.hasLyrics = 0,
    this.albumName = '',
    this.artistName = '',
  });

  Track.fromJson(Map<String, dynamic> json) {
    trackId = json['track_id'];
    trackName = json['track_name'];
    commontrackId = json['commontrack_id'];
    hasLyrics = json['has_lyrics'];
    albumName = json['album_name'];
    artistName = json['artist_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['track_id'] = this.trackId;
    data['track_name'] = this.trackName;
    data['commontrack_id'] = this.commontrackId;
    data['has_lyrics'] = this.hasLyrics;
    data['album_name'] = this.albumName;
    data['artist_name'] = this.artistName;
    return data;
  }
}
