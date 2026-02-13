
import 'package:flutter_application_1/features/gold/data/repo/silver_repo.dart';
import 'package:flutter_application_1/features/gold/peresentaion/cubit/silver_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SilverCubit extends Cubit<SilverStates> {
  final SilverRepo silverRepo;
  SilverCubit({required this.silverRepo}) : super(SilverInitialState());
  Future<void> getSilver()async{
    emit(SilverLoadingState());
    final res = await silverRepo.getSilver();
    res.fold((Error){
      emit(SilverErrorState(Error));
    },(SilverModel){
      emit(SilverSuccessState(SilverModel));
    });  
 } 
}