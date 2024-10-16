import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:shared/src/core/exceptions/app_exception.dart';
import 'package:shared/src/domain/blocs/base/base_bloc.dart';
import 'package:shared/src/domain/blocs/base/base_bloc_event.dart';
import 'package:shared/src/domain/blocs/base/base_bloc_state.dart';

part 'error_event.dart';
part 'error_state.dart';

class ErrorBloc extends BaseBloc<ErrorEvent,ErrorState> {
  ErrorBloc() : super(ErrorInitial()) {
    on<ErrorOccurred>(onErrorOccurred);
    on<ErrorBeingResolved>(onErrorBeingResolved);
  }

  FutureOr<void> onErrorOccurred(ErrorOccurred event, Emitter<ErrorState> emit) {
    emit(ErrorReceived(exception:event.exception));
  }


  FutureOr<void> onErrorBeingResolved(ErrorBeingResolved event, Emitter<ErrorState> emit) {
    emit(ErrorStateNone());
  }
}
