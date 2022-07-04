class Controller {
    final String path;
    final List<String> paths;
    final String version;
    final List<String> versions;
    const Controller({this.path = '/', this.paths = const [], this.version = '', this.versions = const []});
}