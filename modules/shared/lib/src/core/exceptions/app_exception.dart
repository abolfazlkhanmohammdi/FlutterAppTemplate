import 'package:shared/src/core/exceptions/app_exception_enum.dart';

class AppException implements Exception{
  final AppExceptionEnum exceptionEnum;
  final dynamic data;
  final String message;
  final int? serverErrorCode;
  AppException({required this.exceptionEnum, required this.data, required this.message, required this.serverErrorCode});
}