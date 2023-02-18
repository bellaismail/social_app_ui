import 'package:equatable/equatable.dart';

class Story extends Equatable{
  final String profileName;
  final String storyImage;

  const Story({
    required this.profileName,
    required this.storyImage,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [profileName, storyImage];
}
