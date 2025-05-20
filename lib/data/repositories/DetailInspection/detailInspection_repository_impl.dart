import 'package:logger/logger.dart';
import 'package:maintenanceApp/data/models/DetailInspection/DetailInspection_model.dart';
import 'package:maintenanceApp/data/repositories/DetailInspection/detailInspection_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DetailinspectionRepositoryImpl extends DetailinspectionRepository {
  // final logger = Logger();
  final _dio = Dio();

  @override
  Future<void> addDetailInspection(DetailInspectionModelAdd model) async {
    final prefs = await SharedPreferences.getInstance();
    try {
      final rawToken = prefs.getString('token');
      if (rawToken == null) {
        throw Exception('Token not found');
      }
      final token = rawToken.replaceAll('"', '');

      final response = await _dio.post(
        '${dotenv.env['API_BASE_URL']}/detail',
        options: Options(headers: {'Authorization': 'Bearer $token'}),
        data: {
          "InspectionId": model.InspectionId,
          "status": model.status,
          "remark": model.remark,
          "ResultId": model.ResultId,
        },
      );
      // logger.i("response : ${response.statusCode}");

      if (response.statusCode == 201 || response.statusCode == 200) {
        // logger.i('Detail inspection added successfully');
      } else if (response.statusCode != 200 || response.statusCode != 201) {
        throw Exception(
            'Failed to add detail inspection: ${response.statusMessage}');
      }
    } on DioException catch (error) {
      // logger.e("status code : ${error.response?.statusCode},error : $error");
      if (error.response?.statusCode == 401 ||
          error.response?.statusCode == 404) {
        throw Exception('Unauthorized or resource not found');
      } else {
        throw Exception('Network error: ${error.message}');
      }
    } catch (error) {
      // logger.e("error : $error");
      throw Exception('An unexpected error occurred: $error');
    }
  }

  @override
  Future<DetailInspectionGetModel> getDetailInspectionItem(
      String machineId, int number, String tanggal) async {
    final prefs = await SharedPreferences.getInstance();
    try {
      final rawToken = prefs.getString('token');
      if (rawToken == null) {
        throw Exception('Token not found');
      }
      final token = rawToken.replaceAll('"', '');
      final response = await _dio.get(
          '${dotenv.env['API_BASE_URL']}/detail/$machineId/$number/tanggal=$tanggal',
          options: Options(headers: {'Authorization': 'Bearer $token'}));

      if (response.statusCode != 200) {
        throw Exception(
            'Failed to fetch detail inspection item: ${response.statusMessage}');
      }

      final responseData = response.data;
      if (responseData is Map<String, dynamic> &&
          responseData['status'] == true) {
        final machineData = responseData['data'];
        final item = DetailInspectionGetModel.fromJson(machineData);
        return item;
      } else {
        throw Exception('Invalid response structure');
      }
    } on DioException catch (error) {
      throw Exception('Network error: ${error.message}');
    } catch (error) {
      throw Exception('An unexpected error occurred: $error');
    }
  }

  @override
  Future<List<DetailInspectionGetModel>> getDetailInspectionList(
      String ResultId) async {
    final prefs = await SharedPreferences.getInstance();
    try {
      // logger.d("masuk try get detail inspection list, resultId: $ResultId");
      final rawToken = prefs.getString('token');
      if (rawToken == null) {
        throw Exception('Token not found');
      }
      final token = rawToken.replaceAll('"', '');

      final url =
          '${dotenv.env['API_BASE_URL']}/detail/resultId=$ResultId';

      final response = await _dio.get(
        url,
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );
      // logger.i("response masuk mulu");

      // logger.i("response LIST DETAIL: $response");

      if (response.statusCode != 200) {
        throw Exception(
            'Failed to fetch inspection items: ${response.statusMessage}');
      }

      final responseData = response.data;
      // logger.i("response data : ${responseData['data']}");

      if (responseData['status'] == true) {
        final List<dynamic> machineData = responseData['data'];
        if (machineData is List) {
          List<DetailInspectionGetModel> items = machineData
              .map((item) => DetailInspectionGetModel.fromJson(item))
              .toList();
          // logger.i("response data yang berhasil : $items");
          return items;
        } else {
          throw Exception('Invalid data format: Expected a List');
        }
      } else {
        throw Exception('Invalid response: status is not true');
      }
    } on DioException catch (error) {
      // logger.e("status code : ${error.response?.statusCode},error : $error");
      if (error.response?.statusCode == 401 ||
          error.response?.statusCode == 404) {
        throw Exception('Unauthorized or resource not found');
      } else if (error.response?.statusCode == 500) {
        throw Exception('Internal server error');
      } else if (error.response?.statusCode == 400) {
        throw Exception('Bad request: ${error.message}');
      }
      throw Exception('Network error: ${error.message}');
    } catch (error) {
      // logger.e("error : $error");
      throw Exception('An unexpected error occurred: $error');
    }
  }

  @override
  Future<DetailInspectionGetModel> getDetailInspectionSingle(
      String machineId, String tanggal) async {
    final prefs = await SharedPreferences.getInstance();
    try {
      // logger.i("MASUK TRY REPO SINGLE DETAIL INSPECTION");
      final rawToken = prefs.getString('token');
      if (rawToken == null) {
        throw Exception('Token not found');
      }
      final token = rawToken.replaceAll('"', '');
      // logger.d(
      //     "ENDPOINT SINGLE : ${dotenv.env['API_BASE_URL']}/detail/machineId=$machineId/tanggal=$tanggal");
      final response = await _dio.get(
          '${dotenv.env['API_BASE_URL']}/detail/machineId=$machineId/tanggal=$tanggal',
          options: Options(headers: {'Authorization': 'Bearer $token'}));

      if (response.statusCode != 200) {
        throw Exception(
            'Failed to fetch detail inspection item: ${response.statusMessage}');
      }

      final responseData = response.data;
      if (responseData is Map<String, dynamic> &&
          responseData['status'] == true) {
        final machineData = responseData['data'];
        final item = DetailInspectionGetModel.fromJson(machineData);
        // logger.d("item single: $item");
        return item;
      } else {
        throw Exception('Invalid response structure');
      }
    } on DioException catch (error) {
      // logger.e("status code : ${error.response?.statusCode},error : $error");
      throw Exception('Network error: ${error.message}');
    } catch (error) {
      // logger.e("TERJADI MASALAH DI REPO DETAIL INSPECTION SINGLE : $error");
      throw Exception('An unexpected error occurred: $error');
    }
  }

  Future<List<DetailInspectionGetModel>> getDetailInspectionByDateList(
      String formattedDate) async {
    final prefs = await SharedPreferences.getInstance();
    try {
      // DateTime now = DateTime.now();
      // String formattedDate = "${now.year}-${now.month}-${now.day}";
      // logger.i("tanggal : $formattedDate");
      // logger.i("masuk try detail");
      final rawToken = prefs.getString('token');
      if (rawToken == null) {
        throw Exception('Token not found');
      }
      final token = rawToken.replaceAll('"', '');
      // logger.d(
      //     "ENDPOINT OTHER : ${dotenv.env['API_BASE_URL']}/detail/date=$formattedDate");

      final url = '${dotenv.env['API_BASE_URL']}/detail/date=$formattedDate';

      final response = await _dio.get(
        url,
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      // logger.i("response list: $response");

      if (response.statusCode != 200) {
        throw Exception(
            'Failed to fetch inspection items: ${response.statusMessage}');
      }

      final responseData = response.data;
      // logger.i("response data : $responseData");

      if (responseData['status'] == true) {
        final List<dynamic> machineData = responseData['data'];
        // logger.d("DATA RESPONSE : $machineData");
        if (machineData is List) {
          List<DetailInspectionGetModel> items = machineData
              .map((item) => DetailInspectionGetModel.fromJson(item))
              .toList();
          // logger.i("response data yang berhasil : $items");
          return items;
        } else {
          throw Exception('Invalid data format: Expected a List');
        }
      } else {
        throw Exception('Invalid response: status is not true');
      }
    } on DioException catch (error) {
      // logger.e("status code : ${error.response?.statusCode},error : $error");
      if (error.response?.statusCode == 401 ||
          error.response?.statusCode == 404) {
        throw Exception('Unauthorized or resource not found');
      } else if (error.response?.statusCode == 500) {
        throw Exception('Internal server error');
      } else if (error.response?.statusCode == 400) {
        throw Exception('Bad request: ${error.message}');
      }
      throw Exception('Network error: ${error.message}');
    } catch (error) {
      // logger.e("error : $error");
      throw Exception('An unexpected error occurred: $error');
    }
  }
}
