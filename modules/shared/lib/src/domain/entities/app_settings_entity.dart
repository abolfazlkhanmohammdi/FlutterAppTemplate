import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_settings_entity.freezed.dart';

@Freezed(fromJson: false,toJson: false)
class AppSettingsEntity with _$AppSettingsEntity {
  const factory AppSettingsEntity({
    @Default("en")String locale,
  }) = _AppSettingsEntity;
}
