import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared/src/domain/blocs/app/app_bloc.dart';
import 'package:shared/src/domain/blocs/app/app_state.dart';

abstract class BaseStatelessWidget extends StatelessWidget {
  const BaseStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppBloc, AppState>(
      builder: buildNinoWidget,
      buildWhen: (_, c) => c.shouldRebuild,
      listener: ninoBlocListener,
      listenWhen: (_, c) => c.shouldListen
    );
  }

  Widget buildNinoWidget(BuildContext context, AppState state);

  void ninoBlocListener(BuildContext context, AppState state) {}
}
