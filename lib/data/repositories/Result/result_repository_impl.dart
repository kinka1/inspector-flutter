import 'package:logger/logger.dart';
import 'package:maintenanceApp/data/models/Result/result_model.dart';
import 'package:maintenanceApp/data/repositories/Result/result_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ResultRepositoryImpl extends ResultRepository {
  final logger = Logger();
  final _dio = Dio();

  @override
  Future<ResultModel> addResult(ResultAdd result) async {
    final prefs = await SharedPreferences.getInstance();
    try {
      logger.i("masuk try repository ADD RESULT");
      final rawToken = prefs.getString('token');
      if (rawToken == null) {
        throw Exception('Token not found in SharedPreferences');
      }

      final token = rawToken.replaceAll('"', '');
      var response = await _dio.post(
        '${dotenv.env['API_BASE_URL']}/result',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
        data: {
          'status': result.status,
          'machineId': result.machineId,
          'buId': result.buId,
        },
      );

      if (response.statusCode == 200) {
        final responseData = response.data;
        logger.i("response data : $responseData");

        // ✅ Periksa apakah responseData adalah Map
        if (responseData is Map<String, dynamic> &&
            responseData['status'] == true) {
          var data = responseData['data'];
          ResultModel item = ResultModel.fromJson(data);

          return item; // Mengembalikan hasil jika sukses
        } else {
          throw Exception('Invalid response structure');
        }
      } else {
        throw Exception('Unexpected status code: ${response.statusCode}');
      }
    } on DioException catch (error) {
      if (error.response != null &&
          (error.response!.statusCode == 401 ||
              error.response!.statusCode == 404)) {
        throw Exception('Unauthorized or resource not found');
      } else {
        throw Exception(error.message ?? 'Unknown DioException');
      }
    } catch (error) {
      // Menangani error lainnya yang mungkin terjadi
      throw Exception('An unexpected error occurred: $error');
    }
  }

  Future<void> updateResultStatus(ResultModel model) async {
    final prefs = await SharedPreferences.getInstance();
    try {
      // logger.i("masuk try repository");
      // logger.i("model : $model");
      // logger.i("")
      final rawToken = prefs.getString('token');
      final token = rawToken?.replaceAll('"', '');
      final response = await _dio.put(
        '${dotenv.env['API_BASE_URL']}/result/${model.resultId}',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
        data: {
          'status': model.status,
          'machineId': model.machineId,
          'buId': model.buId,
        },
      );
      // logger.i("response status code UPDATE STATUS : ${response.statusCode}");
      if (response.statusCode != 200) {
        throw Exception(
            'Failed to update result status: ${response.statusMessage}');
      }
    } on DioException catch (error) {
      // logger.e("status code : ${error.response?.statusCode},error : $error");
      if (error.response!.statusCode == 401 ||
          error.response!.statusCode == 404) {
        throw Exception('terjadi Kesalahan salah');
      } else {
        throw Exception(error.message);
      }
    }
  }

  Future<ResultModel> getResultByDate(String machineId,String tanggal) async {
    final prefs = await SharedPreferences.getInstance();
    logger.i("masuk try repository, TANGGAL : $tanggal");
    // String date = '2025-04-11';
    try {
      final rawToken = prefs.getString('token');
      final token = rawToken?.replaceAll('"', '');
      // logger.i('${dotenv.env['API_BASE_URL']}/result/machineId=$machineId/date=$tanggal');
      final response = await _dio.get(
          '${dotenv.env['API_BASE_URL']}/result/machineId=$machineId/date=$tanggal',
          options: Options(headers: {'Authorization': 'Bearer $token'}));
      // logger.i("RESPONSE MACHINE INSPECTION : ${response}");

      await Future.delayed(Duration(seconds: 2));

      if (response.statusCode == 200) {
        final responseData = response.data;
        logger.i("response data : $responseData");

        // ✅ Periksa apakah responseData adalah Map
        if (responseData is Map<String, dynamic> &&
            responseData['status'] == true) {
          var data = responseData['data'];
          var item = ResultModel.fromJson(data);
          // logger.i("RESPONSE MACHINE INSPECTION: $item");
          return item;
        } else {
          throw Exception('Invalid response structure');
        }
      } else {
        throw Exception('Failed to get Inspection Items');
      }
    } on DioException catch (error) {
      logger.e("ERROR MACHINE INSPECTION : ${error.message}");
      throw Exception(error.message);
    }
  }

  Future<List<ResultGet>> getResultByDatelist(String buId,String tanggal) async {
    final prefs = await SharedPreferences.getInstance();
    try {
      final rawToken = prefs.getString('token');
      final token = rawToken?.replaceAll('"', '');
      // logger.i("masuk try repository, TANGGAL : $tanggal, buId : $buId");
      final response = await _dio.get(
        '${dotenv.env['API_BASE_URL']}/result/$buId/$tanggal',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      // logger.i("response api : ${response.data}");

      await Future.delayed(Duration(seconds: 2));
      if (response.statusCode == 200) {
        final responseData = response.data;

        // ✅ Periksa apakah responseData adalah Map
        // logger.i("HIT BERHASIL , response data = $responseData");
        if (responseData is Map<String, dynamic> &&
            responseData['status'] == true) {
          final List<dynamic> ResponseGet = responseData['data'];
          // logger.d("response data : $ResponseGet");
          if (ResponseGet is List) {
            List<ResultGet> items =
                ResponseGet.map((item) => ResultGet.fromJson(item)).toList();
            // logger.d("item :$items");
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

  @override
  Future<ResultModel> getResult() async {
    final prefs = await SharedPreferences.getInstance();
    // logger.i("masuk try repository");
    try {
      final rawToken = prefs.getString('token');
      final token = rawToken?.replaceAll('"', '');
      final response = await _dio.get(
        '${dotenv.env['API_BASE_URL']}/result',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );
      // logger.i("hit berhasil");
      // logger.d("status code : ${response.statusCode}");

      // await Future.delayed(Duration(seconds: 2));
      if (response.statusCode == 200) {
        final responseData = response.data;
        // logger.i("response data : $responseData");
        final ResponseGet = responseData['data'];
        // logger.i("response data : $ResponseGet");
        ResultModel items = ResultModel.fromJson(ResponseGet);
        // logger.d("item :$items");
        return items;
      } else {
        throw Exception('Failed to get Inspection Items');
      }
    } on DioException catch (error) {
      throw Exception(error.message);
    }
  }

  @override
  Future<List<ResultModel>> getResultAll() async {
    final prefs = await SharedPreferences.getInstance();
    try {
      final rawToken = prefs.getString('token');
      final token = rawToken?.replaceAll('"', '');
      // logger.i("masuk try repository");
      final response = await _dio.get(
        '${dotenv.env['API_BASE_URL']}/result/all',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      // logger.i("response api : ${response.data}");

      await Future.delayed(Duration(seconds: 2));
      if (response.statusCode == 200) {
        final List<dynamic> responseData = response.data['data'];

        // ✅ Periksa apakah responseData adalah Map
        // logger.i("HIT BERHASIL ");
        // logger.i("status code : ${response.statusCode}");

        // logger.i("response data : $responseData");
        // catatan seletah ini masuk mana cok??????????
        if (responseData is List) {
          // logger.i("masuk list");
          List<ResultModel> items =
              responseData.map((item) => ResultModel.fromJson(item)).toList();
          // logger.d("item :$items");
          return items;
        } else {
          // logger.e("ERROR MACHINE INSPECTION: Invalid 'data' structure");
          throw Exception('Invalid data format: Expected a List');
        }
      } else {
        // logger.e("status code : ${response.statusCode}");
        throw Exception('Failed to get Inspection Items');
      }
    } on DioException catch (error) {
      // logger.e("ERROR MACHINE INSPECTION : ${error.message}");
      // logger.e("status code : ${error.response?.statusCode},error : $error");
      throw Exception(error.message);
    }
  }
}
