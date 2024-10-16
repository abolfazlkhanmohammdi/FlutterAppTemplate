import 'package:injectable/injectable.dart';
import 'package:shared/src/domain/blocs/base/base_bloc.dart';

import 'app_event.dart';
import 'app_state.dart';

@singleton
class AppBloc extends BaseBloc<AppEvent, AppState> {
  AppBloc() : super(AppInitial()) {
  }
}
