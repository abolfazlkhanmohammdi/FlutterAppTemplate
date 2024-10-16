

import 'base_bloc_state.dart';

class BaseDisplayBlocState extends BaseBlocState{
  final bool isLoadingData;

  BaseDisplayBlocState(this.isLoadingData,{required super.shouldRebuild,required super.shouldListen});
}