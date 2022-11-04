import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider((_) => DioCreator().builder());

class DioCreator {
  Dio builder() {
    return Dio(BaseOptions(
      connectTimeout: 5000,
      receiveTimeout: 3000,
    ));
  }
}
