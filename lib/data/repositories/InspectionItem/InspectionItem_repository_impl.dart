import 'package:application/data/models/InspectionItem/InspectionItem_model.dart';
import 'package:application/data/repositories/InspectionItem/inspectionItem.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class InspectionitemRepositoryImpl extends InspectionitemRepository {
  final _dio = Dio();

  @override
  Future<List<InspectionitemModel>> getInspectionItem() async {
    try {
      final response = await _dio.get(
          '${dotenv.env['API_BASE_URL']}/InspectionItems/1}');

      if (response.statusCode == 200) {
        InspectionitemResponse inspectionitemResponse =
            InspectionitemResponse.fromJson(response.data);
        InspectionItemData inspectionItemData = inspectionitemResponse.data;
        return inspectionItemData.item;
      } else {
        throw Exception('Failed to get Inspection Items');
      }
    } on DioException catch (error) {
      throw Exception(error.message);
    }
  }
}
