import 'package:application/data/models/InspectionItem/InspectionItem_model.dart';
import 'package:application/data/repositories/InspectionItem/inspectionItem.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logger/logger.dart';

class InspectionitemRepositoryImpl extends InspectionitemRepository {
  final _dio = Dio();
  final logger = Logger();
  final String _url = 'http://10.0.2.2:5226/api/InspectionItems/1';
  @override
Future<List<InspectionitemModel>> getInspectionItem() async {
  try {
    logger.i("url : $_url");
    final response = await _dio.get(_url);
    logger.i("response : ${response.data}");

    await Future.delayed(Duration(seconds: 2));

    if (response.statusCode == 200) {
      final responseData = response.data;
      logger.d("Response Data: $responseData");

      // ✅ Periksa apakah responseData adalah Map
      if (responseData is Map<String, dynamic> && responseData['status'] == true) {
        final List<dynamic> machineData = responseData['data'];
        logger.d("Machine Data: $machineData");

        if (machineData is List) {
          List<InspectionitemModel> items = machineData
              .map((item) => InspectionitemModel.fromJson(item))
              .toList();

          logger.i("Parsed Items: $items");
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
