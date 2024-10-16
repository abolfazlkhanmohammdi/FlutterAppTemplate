
import 'base_bloc_state.dart';

class BaseRegisterBlocState extends BaseBlocState{
  final bool isRegistering;
  final String registerButtonText;

  BaseRegisterBlocState(this.isRegistering, this.registerButtonText,{required super.shouldRebuild,required super.shouldListen});
}