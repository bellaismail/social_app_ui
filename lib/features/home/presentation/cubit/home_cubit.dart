import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_app_project/features/home/domain/entities/story_entity.dart';
import 'package:social_app_project/features/home/presentation/cubit/home_states.dart';

class HomeCubit extends Cubit<HomeState>{
  HomeCubit() : super(HomeInitState());

  static HomeCubit get(context) => BlocProvider.of<HomeCubit>(context);
  List<Story> profileList = [
    const Story(profileName: 'bilal', storyImage: 'profile1',),
    const Story(profileName: 'zeyad', storyImage: 'profile2',),
    const Story(profileName: 'alaa', storyImage: 'profile3',),
    const Story(profileName: 'osman', storyImage: 'profile4',),
    const Story(profileName: 'amr', storyImage: 'profile5',),
    const Story(profileName: 'shahd', storyImage: 'profile6',),
    const Story(profileName: 'osama', storyImage: 'profile7',),
    const Story(profileName: 'abdalla', storyImage: 'profile8',),
  ];
}