import 'package:shared/src/l10n/generated/l10n.dart';

enum AppExceptionEnum{
  //server
   failedServerResponse(1000),
  //runtime
   runtimeError(2000);
   final int code;
  const AppExceptionEnum(this.code);
}

extension ExceptionUtils on AppExceptionEnum {
  String getMessage(SharedLocalizations localizations) {
    switch(this){
      case AppExceptionEnum.failedServerResponse:
        return localizations.serverErrorOccurred;
      case AppExceptionEnum.runtimeError:
        return localizations.runtimeErrorOccurred;
    }
  }
}