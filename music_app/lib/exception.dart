class exception implements Exception {
  final _message;
  final _prefix;

  exception([this._message, this._prefix]);

  String toString() {
    return "$_prefix$_message";
  }
}

class FetchData extends exception {
  FetchData([message])
      : super(message, "Error During Communication: ");
}

class BadRequest extends exception {
  BadRequest([message]) : super(message, "Invalid Request: ");
}

class Unauthorised extends exception {
  Unauthorised([message]) : super(message, "Unauthorised: ");
}

class InvalidRequest extends exception {
  InvalidRequest([message]) : super(message, "Invalid Input: ");
}
