import 'package:freezed_annotation/freezed_annotation.dart';

class DateTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String date) => DateTime.parse(date);

  @override
  String toJson(DateTime date) => date.toIso8601String();
}