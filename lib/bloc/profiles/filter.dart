import 'package:elegion/bloc/profiles/sorting_type.dart';
import 'package:equatable/equatable.dart';

class ProfileFilter extends Equatable {
  const ProfileFilter({
    this.sortingType = ProfileSortingType.auto,
  });
  final ProfileSortingType sortingType;

  @override
  List<Object?> get props => [sortingType];

  ProfileFilter copyWith({
    ProfileSortingType? sortingType,
  }) {
    return ProfileFilter(
      sortingType: sortingType ?? this.sortingType,
    );
  }
}
