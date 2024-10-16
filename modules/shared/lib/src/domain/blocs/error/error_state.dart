part of 'error_bloc.dart';

sealed class ErrorState extends BaseBlocState{
  final AppException? exception;
  ErrorState({this.exception,required super.shouldRebuild, required super.shouldListen});
}

final class ErrorInitial extends ErrorState {
  ErrorInitial() : super(shouldRebuild: true, shouldListen: false);
}
final class ErrorReceived extends ErrorState {
  ErrorReceived({required super.exception}) : super(shouldRebuild: true, shouldListen: true);
}

final class ErrorStateNone extends ErrorState{
  ErrorStateNone({super.exception}) : super(shouldRebuild: false, shouldListen: true);
}