import 'package:flutter/material.dart';
import 'package:elegion/ui/theme/theme.dart';

class ProfilesScreen extends StatelessWidget {
  const ProfilesScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Работники',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Text(
                          'Сортировать по',
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          color: Theme.of(context).primaryColor,
                        )
                      ],
                    )),
              ],
            ),
            Container(
                height: 600,
                child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int itemCount) {
                      return ProfileCard();
                    }))
          ],
        ),
      ),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 7),
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
                    Container(
                      child: Text(
                        "Мария Сергеевна Ильина",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: Text(
                        "Junior разработчик Kotlin",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    Container(
                      child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Text(
                          "РАБОТАЕТ",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 25),
                      child: RichText(
                        text: TextSpan(
                          text: "5",
                          style: TextStyle(fontSize: 14, color: Colors.grey[500]),
                          children: <TextSpan>[
                            TextSpan(
                                text: "  ",
                                style: TextStyle(fontSize: 14, color: Theme.of(context).primaryColor)),
                            TextSpan(
                                text: "435",
                                style: TextStyle(fontSize: 14, color: Theme.of(context).primaryColor)),
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
                borderRadius: BorderRadius.all(Radius.circular(10)))),
      ),
    );
  }
}
