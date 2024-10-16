import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared/src/core/exceptions/app_exception.dart';
import 'package:shared/src/domain/blocs/app/app_state.dart';
import 'package:shared/src/l10n/generated/l10n.dart';
import 'package:shared/src/core/exceptions/app_exception_enum.dart';

class AppErrorWidget extends StatelessWidget {
  final AppException exception;
  final Function({AppException? exception})? retry;
  final AppState appState;
  const AppErrorWidget(this.exception,this.appState, {super.key,this.retry});

  Color primaryColor(BuildContext context) => Theme.of(context).primaryColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(Icons.error_outline_rounded,color: primaryColor(context),size: 80.r),
        Text(localizations(context).weAreSorry,style: TextStyle(fontSize: appState.fontSizeHuge)),
        Text(exception.exceptionEnum.getMessage(localizations(context)),style: TextStyle(fontSize: appState.fontSizeLarge)),
        Text(exception.message,style: TextStyle(fontSize: appState.fontSizeLarge)),
        if(retry!=null)
          TextButton(onPressed: ()=>retry!(), child: Text(localizations(context).tryAgain,style: TextStyle(fontSize: appState.fontSizeLarge)))
      ],
    );
  }
  SharedLocalizations localizations(BuildContext context) => SharedLocalizations.of(context);
}


