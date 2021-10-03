import 'package:auto_route/auto_route.dart';
import 'package:elegion/models/profile/profile.dart';
import 'package:elegion/ui/router/router.gr.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
    required this.profile,
  }) : super(key: key);

  final Profile profile;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
      child: GestureDetector(
        onTap: () {
          AutoRouter.of(context).push(ProfileScreenRoute(profile: profile));
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 4,
                            color: Theme.of(context).primaryColor,
                          ),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: profile.avatarUrl != null
                              ? Image.network(
                                  profile.avatarUrl!,
                                  height: 50,
                                  width: 50,
                                  fit: BoxFit.cover,
                                )
                              : const SizedBox(),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    width: size.width * 0.45,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          profile.fullName,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            profile.position,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                        Container(
                          child: Container(
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 5),
                            child: Text(
                              profile.status,
                              style: const TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey[400],
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15),
                child: RichText(
                  text: TextSpan(
                    text: '${profile.frozenBonuses}',
                    style: TextStyle(fontSize: 14, color: Colors.grey[500]),
                    children: <TextSpan>[
                      TextSpan(
                          text: "  ",
                          style: TextStyle(
                              fontSize: 14,
                              color: Theme.of(context).primaryColor)),
                      TextSpan(
                          text: '${profile.bonuses}',
                          style: TextStyle(
                              fontSize: 14,
                              color: Theme.of(context).primaryColor)),
                    ],
                  ),
                ),
              ),
            ],
          ),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
