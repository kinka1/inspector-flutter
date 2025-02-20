  import 'dart:convert';

  import 'package:application/data/models/DetailInspection/DetailInspection_model.dart';
  import 'package:application/data/models/InspectionItem/InspectionItem_model.dart';
  import 'package:application/data/repositories/DetailInspection/detailInspection_repository.dart';
  import 'package:dio/dio.dart';
  import 'package:flutter_dotenv/flutter_dotenv.dart';
  import 'package:intl/intl.dart';
  import 'package:logger/logger.dart';
  import 'package:shared_preferences/shared_preferences.dart';

  class DetailinspectionRepositoryImpl extends DetailinspectionRepository {
    final logger = Logger();
    final _dio = Dio();

    @override
    Future<void> addDetailInspection(DetailInspectionModel model) async {
      final prefs = await SharedPreferences.getInstance();
      String imageName = Uri.parse(model.imageName).pathSegments.last;
      try {
        final rawToken = prefs.getString('token');
        final token = rawToken?.replaceAll('"', '');
        final response = await _dio.post(
          '${dotenv.env['API_BASE_URL']}/detail',
          options: Options(headers: {'Authorization': 'Bearer $token'}),
          data: {
            'itemName': model.itemName,
            'specification': model.specification,
            'method': model.method,
            'frequency': model.frequency,
            'number': model.number,
            'description': model.description,
            'status': model.status,
            'machineId': model.machineId,
            'imageName': imageName,
          },
        );
        response.statusCode;

        if (response.statusCode == 200) {
          final data = response.data['data'];
          final user = data['user'];

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
    Future<DetailInspectionModel> getDetailInspectionItem() async {
      try {
        final response = await _dio.get('${dotenv.env['API_BASE_URL']}/detail/1');

        await Future.delayed(Duration(seconds: 2));

        if (response.statusCode == 200) {
          final responseData = response.data;

          // ✅ Periksa apakah responseData adalah Map
          if (responseData is Map<String, dynamic> &&
              responseData['status'] == true) {
            final machineData = responseData['data'];

            DetailInspectionModel items = machineData
                .map((item) => InspectionitemModel.fromJson(item))
                .toList();
            logger.i("item : $items");
            return items;
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
    Future<List<DetailInspectionGetModel>> getDetailInspectionList(
      int machineId, String tanggal) async {
    final prefs = await SharedPreferences.getInstance();
    try {
      // Ambil token dari SharedPreferences
      final rawToken = prefs.getString('token');
      if (rawToken == null) {
        throw Exception('Token not found');
      }
      final token = rawToken.replaceAll('"', '');

      // Buat URL dengan parameter machineId dan tanggal
      final url =
          '${dotenv.env['API_BASE_URL']}/detail/$machineId/tanggal=$tanggal';
          logger.i("url : $url");

      // Kirim permintaan GET ke API
      final response = await _dio.get(
        url,
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );
      logger.d("response : $response");
      // Periksa status code
      if (response.statusCode == 200) {
        final responseData = response.data;
      logger.i("responseData : $responseData");

        // Pastikan respons adalah Map<String, dynamic> dan memiliki status true
        if (responseData is Map<String, dynamic> &&
            responseData['status'] == true) {
          final machineData = responseData['data'];
          logger.i("machineData : $machineData");

          // Pastikan machineData adalah List<dynamic>
          if (machineData is List<dynamic>) {
            // Parse setiap item ke InspectionitemModel
            final items = machineData
                .map((item) => DetailInspectionGetModel.fromJson(item))
                .toList();
            logger.i("Items fetched successfully: $items");
            return items;
          } else {
            throw Exception('Invalid data structure: data is not a list');
          }
        } else {
          throw Exception('Invalid response: status is not true');
        }
      } else {
        throw Exception('Failed to fetch inspection items: ${response.statusMessage}');
      }
    } on DioException catch (error) {
      // Tangani error dari Dio
      logger.e('DioException: ${error.message}');
      throw Exception('Network error: ${error.message}');
    } catch (error) {
      // Tangani error umum
      logger.e('General error: $error');
      throw Exception('An unexpected error occurred: $error');
    }
  }
  }
