import 'package:david_hyll/app/domain/entities/adventure.dart';
import 'package:david_hyll/core/services/http_service.dart';
import 'package:david_hyll/core/utils/dependency_injection.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AdventureService{
  late Response response;
  HttpService httpService = getIt<HttpService>();

  Future<List<Adventure>> getAdventures() async {
    response = await httpService.request(url: "adventures", method: Method.GET,);
    var adventureList = response.data['data'] as List;
    return adventureList.map((adventure) => Adventure.fromJson(adventure)).toList();
  }
}