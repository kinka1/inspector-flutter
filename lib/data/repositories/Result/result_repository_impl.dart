import 'package:application/data/models/Result/result_model.dart';
import 'package:application/data/repositories/Result/result_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ResultRepositoryImpl extends ResultRepository {
  final logger = Logger();
  final _dio = Dio();

  @override
  Future<void> addResult(int machineId,String status,String description) async {
    final prefs = await SharedPreferences.getInstance();
    try {
      logger.i("machineId : $machineId");
      logger.i("description : $description");
      logger.i("status : $status");
      final rawToken = prefs.getString('token');
      final token = rawToken?.replaceAll('"', '');
      final response = await _dio.post(
        '${dotenv.env['API_BASE_URL']}/result',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
        data: {
          'machineId': machineId,
          'description': description,
          'status':status,
        },
      );
      logger.i("status code : ${response.statusCode}");
      logger.d("response : $response");

      if (response.statusCode == 200) {
        return response.data;
      }
    } on DioException catch (error) {
      if (error.response!.statusCode == 401 ||
          error.response!.statusCode == 404) {
        throw Exception('terjadi Kesalahan salah');
      } else {
        throw Exception(error.message);
      }
    }
  }

  @override
  Future<List<ResultData>> getResult() async {
    final prefs = await SharedPreferences.getInstance();
    try {
      final rawToken = prefs.getString('token');
      final token = rawToken?.replaceAll('"', '');
      logger.d("token : $token");
      final response = await _dio.get(
        '${dotenv.env['API_BASE_URL']}/result',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );
      logger.d("response : $response");

      await Future.delayed(Duration(seconds: 2));
      if (response.statusCode == 200) {
        final responseData = response.data;

        // ✅ Periksa apakah responseData adalah Map
        if (responseData is Map<String, dynamic> &&
            responseData['status'] == true) {
          final List<dynamic> ResponseGet = responseData['data'];
          if (ResponseGet is List) {
            List<ResultData> items =
                ResponseGet.map((item) => ResultData.fromJson(item)).toList();
            logger.d("item : $items");
            return items;

          } else {
            throw Exception('Invalid data format: Expected a List');
          }
        } else {
          throw Exception('Invalid response structure');
        }
      } else {
        throw Exception('Failed to get Inspection Items');
      }
    } on DioException catch (error) {
      throw Exception(error.message);
    }
  }
}
