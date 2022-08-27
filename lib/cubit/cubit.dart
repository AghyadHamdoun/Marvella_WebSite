


import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvella/cubit/cubit_state.dart';

class AppCubit extends Cubit<AppState>{
  AppCubit(): super(AppInitial());

  static AppCubit get(context) => BlocProvider.of(context);

  List<bool> isHover =[false,false,false];
  List<bool> isHoverHome =[false];
  List<bool> isHoverCategories =[false,false,false,false,false,false];
  List<bool> isHoverPages =[false];
  bool isContainerHover=false;

  void onHover(bool x,int ind){
    isHover[ind] = x;
    emit(OnHover());
  }
  void onHoverCategories(bool x,int ind){
    isHoverCategories[ind] = x;
    emit(OnHoverCategories());
  }
  void onContainerHover(bool x){
    isContainerHover = x ;
    emit(OnHover());
  }


}