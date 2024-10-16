part of 'error_bloc.dart';


sealed class ErrorEvent extends BaseBlocEvent{}
class ErrorOccurred extends ErrorEvent{
  final AppException exception;
  ErrorOccurred(this.exception);
}
class ErrorBeingResolved extends ErrorEvent{}