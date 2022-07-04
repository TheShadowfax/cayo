class RequestTypes {
  static const String GET = 'GET';
  static const String POST = 'POST';
  static const String PUT = 'PUT';
  static const String PATCH = 'PATCH';
  static const String DELETE = 'DELETE';
  static const String OPTIONS = 'OPTIONS';
  static const String HEAD = 'HEAD';
  final String type;
  factory RequestTypes.withRequestType(type){
     if (![RequestTypes.GET, RequestTypes.POST, RequestTypes.PATCH, RequestTypes.PUT, RequestTypes.DELETE, RequestTypes.HEAD, RequestTypes.OPTIONS]
        .contains(type)) {
      throw new InvalidRequestTypeException();
    }
    return new RequestTypes(type);
  }
  const RequestTypes(this.type);
}

class InvalidRequestTypeException implements Exception {
  String cause =
      'Invalid request type provided: Supports only\t ${RequestTypes.GET}, ${RequestTypes.POST}, ${RequestTypes.PATCH}, ${RequestTypes.PUT}, ${RequestTypes.DELETE}, ${RequestTypes.HEAD}, ${RequestTypes.OPTIONS} currently';
  @override
  String toString() {
    return this.cause;
  }
}
