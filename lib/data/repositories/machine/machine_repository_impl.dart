import 'dart:convert';

import 'package:application/data/models/machine/machine_model.dart';
import 'package:application/data/repositories/machine/machine.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:logger/logger.dart';

class MachineRepositoryImpl extends MachineRepository {
  final _dio = Dio();
  final logger = Logger();
  @override
  Future<MachineModel> getMachines(int id) async {
    logger.i("id : $id");
    try {
      final response = await _dio.get('${dotenv.env['API_BASE_URL']}/machine/$id');
      await Future.delayed(Duration(seconds: 2));
      if (response.statusCode == 200) {
        final Map<dynamic, dynamic> responseData = response.data;

        if (responseData['status'] == true) {
          var machineData = responseData['data'];
          MachineModel machine = MachineModel.fromJson(machineData);
          return machine;
        } else {
          throw Exception('Failed to get Inspection Items');
        }
      } else {
        throw Exception('Failed to get Inspection Items');
      }
    } catch (error) {
      throw Exception(error);
    }
  }
}
