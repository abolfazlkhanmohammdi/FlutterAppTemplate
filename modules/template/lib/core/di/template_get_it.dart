import 'package:shared/get_it.dart';
import 'package:shared/injectable.dart';
import 'template_get_it.config.dart';
GetIt templateGetIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
Future<void> configureTemplateDependencies() async {
  templateGetIt.init();
}

@module
abstract class TemplateDiModule{}