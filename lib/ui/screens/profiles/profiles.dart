import 'package:elegion/bloc/profiles/profiles_bloc.dart';
import 'package:elegion/ui/widgets/profiles/profiles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProfilesScreen extends StatelessWidget {
  const ProfilesScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Работники',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Row(
                children: [
                  Text(
                    'Сортировать по',
                    style: theme.textTheme.bodyText1!.copyWith(
                      color: theme.hintColor,
                    ),
                  ),
                  BlocBuilder<ProfilesBloc, ProfilesState>(
                    builder: (context, state) {
                      return DropdownButton<ProfileSortingType>(
                        value: state.filter.sortingType,
                        underline: const SizedBox(),
                        icon: Icon(
                          Icons.keyboard_arrow_down,
                          color: Theme.of(context).primaryColor,
                        ),
                        items: ProfileSortingType.values.map((value) {
                          return DropdownMenuItem<ProfileSortingType>(
                            value: value,
                            child: Text(value.title),
                          );
                        }).toList(),
                        onChanged: (value) {
                          _updateFilter(context, value!);
                        },
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          Flexible(child: BlocBuilder<ProfilesBloc, ProfilesState>(
            builder: (context, state) {
              if (state is ProfilesLoaded) {
                return ListView.builder(
                  itemCount: state.profiles.length,
                  itemBuilder: (_, int i) {
                    return ProfileCard(
                      profile: state.profiles[i],
                    );
                  },
                );
              }
              return const Center(child: CircularProgressIndicator());
            },
          )),
        ],
      ),
    );
  }

  void _updateFilter(BuildContext context, ProfileSortingType sortingType) {
    final state = BlocProvider.of<ProfilesBloc>(context).state;
    BlocProvider.of<ProfilesBloc>(context).add(
      UpdateProfilesfilter(
        state.filter.copyWith(
          sortingType: sortingType,
        ),
      ),
    );
  }
}
