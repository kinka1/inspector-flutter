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
  Future<void> addResult(ResultModel model) async {
    final prefs = await SharedPreferences.getInstance();
    try {
      final rawToken = prefs.getString('token');
      final token = rawToken?.replaceAll('"', '');
      final response = await _dio.post(
        '${dotenv.env['API_BASE_URL']}/detail',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
        data: {
          // 'machineId': model.,
          'userId': model.userId,
          'description': model.description,
          'status': model.status,
        },
      );
      response.statusCode;

      if (response.statusCode == 200) {
        final data = response.data['data'];
        final user = data['user'];
        final token = data['token'];

        // Parse dan format created_at
        // final DateTime parsedCreatedAt = DateTime.parse(createdAt);
        // final String formattedDate = DateFormat('yyyy-MM-dd').format(parsedCreatedAt);
        // await prefs.setString('user', jsonEncode(user));
        // await prefs.setString('token', jsonEncode(token));
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
    try {
      final response = await _dio.get(
          '${dotenv.env['API_BASE_URL']}/result/ed4baa1e-3201-4211-49e9-08dd458b8e12');

      await Future.delayed(Duration(seconds: 2));
      logger.i("Get Inspection Items");
      logger.i("Response : ${response.statusCode}");
      if (response.statusCode == 200) {
        final responseData = response.data;

        // ✅ Periksa apakah responseData adalah Map
        if (responseData is Map<String, dynamic> &&
            responseData['status'] == true) {
          final List<dynamic> ResponseGet = responseData['data'];
          logger.i("ResponseGet : $ResponseGet");
          if (ResponseGet is List) {
            List<ResultData> items =
                ResponseGet.map((item) => ResultData.fromJson(item)).toList();
            logger.i("Items : $items");

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
