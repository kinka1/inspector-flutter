import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logger/logger.dart';
import 'package:logger/logger.dart';
import 'package:maintenanceApp/data/models/Other/other_model.dart';
import 'package:maintenanceApp/data/repositories/other/other_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OtherRepositoryImpl extends OtherRepository {
  final logger = Logger();
  final _dio = Dio();

  @override
  Future<void> addResult(OtherAddModel model) async {
    final prefs = await SharedPreferences.getInstance();

    try {
      logger.i('Adding result with model: $model');
      final rawToken = prefs.getString('token');
      final token = rawToken?.replaceAll('"', '');
      final response = await _dio.post(
        '${dotenv.env['API_BASE_URL']}/other',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
        data: {
          'description': model.description,
          'status': model.status,
          'tanggal': model.date,
          'resultId': model.resultId,
        },
      );

      if (response.statusCode == 201 || response.statusCode == 200) {
        // logger.i('Result added successfully');
        // await prefs.setString('created_at', formattedDate);
      }
    } on DioException catch (error) {
      if (error.response!.statusCode == 401 ||
          error.response!.statusCode == 404) {
        throw Exception(
            'TERJADI KESALAHAN, ${error.response!.statusCode}, error message: ${error}');
      } else {
        throw Exception(error.message);
      }
    }
  }

  @override
  Future<OtherModel> getResult(int otherId, String tanggal) async {
    final prefs = await SharedPreferences.getInstance();

    try {
      final rawToken = prefs.getString('token');
      final token = rawToken?.replaceAll('"', '');
      logger.d("ENDPOINT : ${dotenv.env['API_BASE_URL']}/other/$otherId/date=$tanggal");
      final response = await _dio.get(
          '${dotenv.env['API_BASE_URL']}/other/$otherId/date=$tanggal',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      // logger.i('Response get result: ${response.data}');
      // logger.i('Response status code: ${response.statusCode}');
      if (response.statusCode == 200) {
        final dataUser = response.data['data'];
        // logger.i('Data user other: $dataUser');
        OtherModel other = OtherModel.fromJson(dataUser);
        // logger.i('Other data: ${other}');
        return other;
      } else {
        // logger.e('Failed to fetch user data: ${response.statusCode}');
        throw Exception('Failed to fetch user data');
      }
    } on DioException catch (error) {
      // logger.e('Error fetching user data: ${error.message}');
      throw Exception(error.message);
    }
  }

  @override
  Future<List<OtherModel>> getResultAll() async {
    final prefs = await SharedPreferences.getInstance();

    try {
      final date = DateTime.now();
      final formattedDate = '${date.year}-${date.month}-${date.day}';
      final rawToken = prefs.getString('token');
      final token = rawToken?.replaceAll('"', '');
      final response = await _dio.get(
          '${dotenv.env['API_BASE_URL']}/other/date=$formattedDate',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      // logger.i("response  OTHER GET ALL : $response");

      if (response.statusCode != 200) {
        throw Exception(
            'Failed to fetch inspection items: ${response.statusMessage}');
      }

      final responseData = response.data;
      // logger.i("response data  OTHER GET ALL : $responseData");

      if (responseData['status'] == true) {
        final List<dynamic> machineData = responseData['data'];
        if (machineData is List) {
          List<OtherModel> items = machineData
              .map((item) => OtherModel.fromJson(item))
              .toList();
          // logger.i("response data yang berhasil OTHER GET ALL : $items");
          return items;
        } else {
          throw Exception('Invalid data format: Expected a List');
        }
      } else {
        throw Exception('Invalid response: status is not true');
      }
    } on DioException catch (error) {
      // logger.e('Error fetching user data: ${error.message}');
      throw Exception(error.message);
    }
  }
}
