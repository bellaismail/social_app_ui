

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app_project/features/add_post/presentation/screens/add_post_screen.dart';
import 'package:social_app_project/features/favorite/presentation/screens/favorite_screen.dart';
import 'package:social_app_project/features/home/presentation/screens/home_screen.dart';
import 'package:social_app_project/features/layout/presentation/cubit/layout_state.dart';
import 'package:social_app_project/features/layout/presentation/screens/layout_screen.dart';

import '../../../search/presentation/screens/search_screen.dart';

class LayoutCubit extends Cubit<LayoutStates>{
  LayoutCubit() : super(LayoutInitState());
  static LayoutCubit get(context) => BlocProvider.of<LayoutCubit>(context);

  int currentIndex = 0;
  List<Widget> layoutBodyWidgets = [
    const HomeScreen(),
    const SearchScreen(),
    const AddPostScreen(),
    const FavoriteScreen(),
  ];
  void changeBNBCurrentIndex({required int index}){
    if(currentIndex != index){
      currentIndex = index;
    }
    emit(LayoutBNBChangeCurrentIndexState());
  }

}