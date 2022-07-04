import '../constants/status-code.dart';

class ResponseStatus {
  /// Response status code
  final int code;

  /// This would be the message when error is sent
  final String reason;

  /// Http Response Status
  const ResponseStatus({this.code = StatusCode.OK, this.reason = ''});
}

