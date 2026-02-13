import 'package:flutter_application_1/features/gold/data/models/goldmodel.dart';

abstract class GoldStates{}
class GoldInitialState extends GoldStates{}
class GoldLoadingState extends GoldStates{}
class GoldSuccessState extends GoldStates{
  final goldmodel goldModel;
  GoldSuccessState( this.goldModel);
}
class GoldErrorState extends GoldStates{
  final String error;
  GoldErrorState(this.error);
}