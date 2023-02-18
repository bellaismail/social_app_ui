import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app_project/core/utils/app_strings.dart';
import 'package:social_app_project/features/authentcation/presentation/cubit/auth_states.dart';

import '../../../../config/routes/routes_name.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitState());
  String toggle = AppStrings.signInButtomText;

  static AuthCubit get(context) => BlocProvider.of(context);
  toggleToSignup() {
    toggle = AppStrings.signUp;
    emit(AuthToggleState());
  }

  toggleToSignIn() {
    toggle = AppStrings.signInButtomText;
    emit(AuthToggleState());
  }

  SignInFunStates? signInFunStates = SignInFunStates.NOTWAITING;
  signInFun(BuildContext context){
    signInFunStates = SignInFunStates.WAITING;
    emit(AuthSignInButtonState());
    try{
      Future.delayed(const Duration(seconds: 2)).then((value) {
        signInFunStates = SignInFunStates.NOTWAITING;
        emit(AuthSignInButtonState());
        Navigator.pushNamed(
          context,
          RoutesName.layoutScreenName,
        );
      });
      emit(AuthSignInSuccessfulState());
    }catch(e){
      signInFunStates = SignInFunStates.NOTWAITING;
      log('''
      ==> someThing went wrong...!
      ''');
      emit(AuthSignInErrorState());
    }
  }

}

enum SignInFunStates{
  WAITING,
  NOTWAITING,
}
