import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
class UserResponse with _$UserResponse {
    const factory UserResponse({
      required bool status,
      required UserData data,
    }) = _UserResponse;
  
    factory UserResponse.fromJson(Map<String, dynamic> json) =>
        _$UserResponseFromJson(json);
  }

  @freezed
class UserData with _$UserData {
  const factory UserData({
    required UserModel item,
  }) = _UserData;

  factory UserData.fromJson(Map<String, Object?> json) =>
      _$UserDataFromJson(json);
}

@freezed
class UserModel with _$UserModel{
  const factory UserModel({
    required int userId,
    required String userName,
    required String buId,
    // required String password,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}