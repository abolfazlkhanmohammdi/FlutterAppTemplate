import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared/shared_get_it.dart';
import 'package:shared/src/core/exceptions/app_exception.dart';
import 'package:shared/src/domain/blocs/app/app_bloc.dart';
import 'package:shared/src/domain/blocs/app/app_state.dart';
import 'package:shared/src/domain/blocs/error/error_bloc.dart';
import 'package:shared/src/presentation/widgets/app_error_widget/app_error_widget.dart';

abstract class BaseScreenState<T extends StatefulWidget> extends State<T> {
  ErrorBloc errorBloc = sharedGetIt<ErrorBloc>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppBloc, AppState>(
        builder: blocBuild, buildWhen: (_, c) => c.shouldRebuild, listener: ninoBlocListener, listenWhen: (_, c) => c.shouldListen);
  }

  Widget blocBuild(BuildContext context, AppState appState){
    return BlocProvider<ErrorBloc>(
      create: (c)=>errorBloc,
      child: BlocConsumer<ErrorBloc,ErrorState>(builder: (c,s)=>buildNinoWidget(c,s,appState), listener: errorBlocListener),
    );
  }

  void ninoBlocListener(BuildContext context, AppState appState) {}

  void errorBlocListener(BuildContext context, ErrorState state) {
    if(state is ErrorStateNone){
      retry(exception: state.exception);
    }
  }

  Widget buildErrorWidget(BuildContext context, ErrorState errorState, AppState appState){
      if(errorState is ErrorReceived){
        return AppErrorWidget(errorState.exception!, appState);
      }
      return buildNinoWidget(context, errorState, appState);
  }

  Color get primaryColor => Theme.of(context).colorScheme.primary;
  Color get secondaryColor => Theme.of(context).colorScheme.secondary;
  Color get canvasColor => Theme.of(context).canvasColor;
  Color get dividerColor => Theme.of(context).dividerColor;
  Color get onPrimary => Theme.of(context).colorScheme.onPrimaryContainer;

  retry({AppException? exception}) {
    errorBloc.add(ErrorBeingResolved());
  }

  buildNinoWidget(BuildContext context, ErrorState errorState, AppState appState);


}
