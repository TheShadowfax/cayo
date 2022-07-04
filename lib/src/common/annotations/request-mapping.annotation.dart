import '../constants/request-types.dart';

class RequestMapping {
  final String path;
  final List<String> paths;
  final String version;
  final List<String> versions;
  final RequestTypes type;
  final Map<String, String> headers;
  const RequestMapping(
      {this.path = '/',
      this.paths = const [],
      this.version = '',
      this.versions = const [],
      this.type = const RequestTypes(RequestTypes.GET),
      this.headers = const {}});
}

class Get extends RequestMapping {
  const Get(
      {super.path = '/',
      super.paths = const [],
      super.version = '',
      super.versions = const [],
      super.headers = const {}})
      : super(type: const RequestTypes(RequestTypes.GET));
}

class Post extends RequestMapping {
  const Post(
      {super.path = '/',
      super.paths = const [],
      super.version = '',
      super.versions = const [],
      super.headers = const {}})
      : super(type: const RequestTypes(RequestTypes.POST));
}

class Patch extends RequestMapping {
  const Patch(
      {super.path = '/',
      super.paths = const [],
      super.version = '',
      super.versions = const [],
      super.headers = const {}})
      : super(type: const RequestTypes(RequestTypes.PATCH));
}

class Put extends RequestMapping {
  const Put(
      {super.path = '/',
      super.paths = const [],
      super.version = '',
      super.versions = const [],
      super.headers = const {}})
      : super(type: const RequestTypes(RequestTypes.PUT));
}

class Head extends RequestMapping {
  const Head(
      {super.path = '/',
      super.paths = const [],
      super.version = '',
      super.versions = const [],
      super.headers = const {}})
      : super(type: const RequestTypes(RequestTypes.HEAD));
}

class Delete extends RequestMapping {
  const Delete(
      {super.path = '/',
      super.paths = const [],
      super.version = '',
      super.versions = const [],
      super.headers = const {}})
      : super(type: const RequestTypes(RequestTypes.DELETE));
}

class Options extends RequestMapping {
  const Options(
      {super.path = '/',
      super.paths = const [],
      super.version = '',
      super.versions = const [],
      super.headers = const {}})
      : super(type: const RequestTypes(RequestTypes.OPTIONS));
}
