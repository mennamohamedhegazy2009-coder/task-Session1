
import 'package:flutter_application_1/features/gold/data/models/goldmodel.dart';
import 'package:flutter_application_1/features/gold/data/repo/gold_repo.dart';
import 'package:flutter_application_1/features/gold/peresentaion/cubit/gold_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class GoldCubit extends Cubit<GoldStates> {
  final GoldRepo goldRepo;

  GoldCubit({required this.goldRepo}) : super(GoldInitialState());

  void getGold() async {
    emit(GoldLoadingState());
    try {
      final result = await goldRepo.getGold();
      result.fold((Error) {
        emit(GoldErrorState(Error));
      }, (goldmodel) {
        emit(GoldSuccessState(goldmodel));
      });
     
    } catch (e) {
      emit(GoldErrorState(e.toString()));
    }
  }
}


