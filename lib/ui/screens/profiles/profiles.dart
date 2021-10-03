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
              TextButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Text(
                      'Сортировать по',
                      style: theme.textTheme.bodyText1!.copyWith(
                        color: theme.hintColor,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Theme.of(context).primaryColor,
                    )
                  ],
                ),
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
}
