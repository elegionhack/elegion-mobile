import 'package:elegion/ui/widgets/profiles/profiles.dart';
import 'package:flutter/material.dart';

class ProfilesScreen extends StatelessWidget {
  const ProfilesScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                        style: TextStyle(color: Theme.of(context).primaryColor),
                      ),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Theme.of(context).primaryColor,
                      )
                    ],
                  )),
            ],
          ),
          SizedBox(
            height: 600,
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (BuildContext context, int itemCount) {
                return ProfileCard();
              },
            ),
          )
        ],
      ),
    );
  }
}
