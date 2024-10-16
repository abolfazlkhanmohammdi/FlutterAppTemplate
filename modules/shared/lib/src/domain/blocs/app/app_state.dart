
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared/src/domain/blocs/base/base_bloc_state.dart';

sealed class AppState extends BaseBlocState {
  AppState({required super.shouldRebuild,required super.shouldListen});

  double get fontSizeTiny => 4.r;
  double get fontSizeVerySmall => 6.r;
  double get fontSizeSmall => 8.r;
  double get fontSizeMedium => 10.r;
  double get fontSizeBase => 12.r;
  double get fontSizeLarge => 14.r;
  double get fontSizeXLarge => 16.r;
  double get fontSizeXXLarge => 18.r;
  double get fontSizeXXXLarge => 20.r;
  double get fontSizeXXXXLarge => 22.r;
  double get fontSizeHuge => 24.r;

}

final class AppInitial extends AppState {
  AppInitial() : super(shouldListen: false,shouldRebuild: true);
}

final class AppStateDisplaySnackBar extends AppState{
  final String message;
  AppStateDisplaySnackBar(this.message) : super(shouldRebuild: false, shouldListen: true);
}
