import 'package:meta/meta_meta.dart';

class ApiRepository {
  final String name;
  final String? basePath;

  const ApiRepository({required this.name, this.basePath});
}

class JsonResponseFormat {
  final String value;

  const JsonResponseFormat._(this.value);

  static const objectFormat = JsonResponseFormat._('ObjectFormat');
  static const dataPageFormat = JsonResponseFormat._('DataPageFormat');
  static const listFormat = JsonResponseFormat._('ListFormat');
}

class Method {
  final String path;
  final bool isDataPageResponse;
  final bool isListResponse;

  const Method({
    this.path = "",
    this.isDataPageResponse = false,
    this.isListResponse = false,
  });
}

@Target({TargetKind.method})
class Get extends Method {
  const Get({super.path, super.isDataPageResponse, super.isListResponse});
}

class Post extends Method {
  const Post({super.path, super.isDataPageResponse, super.isListResponse});
}

class Put extends Method {
  const Put({super.path, super.isDataPageResponse, super.isListResponse});
}

class Delete extends Method {
  const Delete({super.path, super.isDataPageResponse, super.isListResponse});
}

class Multipart {
  const Multipart();
}

class Body {
  const Body();
}

class QueryParam {
  final String name;

  const QueryParam({required this.name});
}

class UrlParam {
  final String name;

  const UrlParam({required this.name});
}
