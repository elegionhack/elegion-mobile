import 'package:elegion/bloc/profile/profile_bloc.dart';
import 'package:elegion/models/profile/profile.dart';
import 'package:elegion/utils/formaters/date_formater.dart';
import 'package:elegion/utils/url_launcher/launcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({
    Key? key,
    this.profile,
  }) : super(key: key);

  final Profile? profile;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    if (widget.profile == null) {
      BlocProvider.of<ProfileBloc>(context).add(LoadProfile());
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildSelectedProfile(),
    );
  }

  Widget _buildSelectedProfile() {
    if (widget.profile != null) {
      return _ProfileScreenBody(profile: widget.profile!);
    }

    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        if (state is ProfileLoaded) {
          return _ProfileScreenBody(profile: state.profile);
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}

class _ProfileScreenBody extends StatelessWidget {
  const _ProfileScreenBody({
    Key? key,
    required this.profile,
  }) : super(key: key);

  final Profile profile;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.symmetric(vertical: 30),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 4,
                            color: Theme.of(context).primaryColor,
                          ),
                          borderRadius: BorderRadius.circular(300.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(300.0),
                          child: profile.avatarUrl != null
                              ? Image.network(
                                  profile.avatarUrl!,
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                )
                              : const SizedBox(
                                  height: 150,
                                  width: 150,
                                ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.fromLTRB(25, 170, 0, 10),
                        child: Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 40, vertical: 8),
                          child: Text(
                            '${profile.bonuses}',
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            border: Border.all(
                              width: 3,
                              color: Colors.white,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(400))),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: Text(
                  profile.fullName,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10)
                    .copyWith(top: 30, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Divider(
                        color: Theme.of(context).primaryColor,
                        thickness: 1,
                      ),
                    ),
                    Text(
                      "ИНФОРМАЦИЯ",
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w700,
                          color: Theme.of(context).primaryColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text(
                  "День рождения:",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Theme.of(context).primaryColor),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text(
                  DateTimeFormater.date(profile.birthday),
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey[400],
            indent: 15,
            endIndent: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text(
                  "Должность:",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Theme.of(context).primaryColor),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text(
                  profile.position,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey[400],
            indent: 15,
            endIndent: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text(
                  "Отпуск:",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w300,
                      color: Theme.of(context).primaryColor),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text(
                  "24.24.2424 - 23.23.2323",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey[400],
            indent: 15,
            endIndent: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text(
                  "ПАМЯТКА ЛЕГИОНЕРА:",
                  style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w700,
                      color: Theme.of(context).primaryColor),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                child: IconButton(
                  icon: Icon(
                    Icons.open_in_new,
                    color: Theme.of(context).primaryColor,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.grey[400],
            indent: 15,
            endIndent: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Чат в Telegram',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              GestureDetector(
                onTap: () {
                  launchURL(profile.telegramLink);
                },
                child: Container(
                  margin: const EdgeInsets.only(right: 15),
                  child: SvgPicture.asset(
                    'assets/icons/tlg.svg',
                    height: 25,
                    width: 25,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
