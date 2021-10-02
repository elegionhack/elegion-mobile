import 'package:elegion/models/profile/profile.dart';
import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
    required this.profile,
  }) : super(key: key);

  final Profile profile;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 4,
                        color: Theme.of(context).primaryColor,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.network(
                          "https://sun9-13.userapi.com/impg/ZBHCI8lzxXifZgZUHFs9HC0Qcq_2r_n0dZ9l5w/TdvIgLwXksA.jpg?size=810x1080&quality=96&sign=f87bea738721b5d94fa8c5555cc12211&type=album",
                          height: 50,
                          width: 50,
                          fit: BoxFit.cover,
                        )),
                  )
                ],
              ),
              Column(
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
                            color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey[400],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25),
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
                  )
                ],
              )
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
