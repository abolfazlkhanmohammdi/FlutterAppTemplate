import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import "shared_get_it.config.dart";
GetIt sharedGetIt = GetIt.instance;

@InjectableInit(
    initializerName: 'init', // default
    preferRelativeImports: true, // default
    asExtension: true,
)
void configureSharedDependencies(){
  sharedGetIt.init();
}

@module
abstract class SharedModule{

}
