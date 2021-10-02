import 'package:dio/dio.dart';
import 'package:elegion/models/event/event.dart';
import 'package:elegion/utils/utils.dart';

class ApiEventsRepository {
  ApiEventsRepository(this.httpClientFactory);
  final HttpClientFactory httpClientFactory;

  Dio get _dio => httpClientFactory.dio;

  Future<Event> get(String id) async {
    final res = await _dio.get('events/$id');
    return Event.fromJson(res.data);
  }

  Future<List<Event>> getAll() async {
    final res = await _dio.get('events');
    return (res.data as List<dynamic>).map((e) => Event.fromJson(e)).toList();
  }
}
