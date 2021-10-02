import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: 600,
      child: SafeArea(
        child: Column(
          children: [
            TopPhotoStack(),
            Container(
              child: Column(
                children: [Divider()],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class TopPhotoStack extends StatelessWidget {
  const TopPhotoStack({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(children: [
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(vertical: 30),
            decoration: BoxDecoration(
              border: Border.all(
                width: 4,
                color: Theme.of(context).primaryColor,
              ),
              borderRadius: BorderRadius.circular(300.0),
            ),
            child: ClipRRect(
                borderRadius: BorderRadius.circular(300.0),
                child: Image.network(
                  "https://sun9-13.userapi.com/impg/ZBHCI8lzxXifZgZUHFs9HC0Qcq_2r_n0dZ9l5w/TdvIgLwXksA.jpg?size=810x1080&quality=96&sign=f87bea738721b5d94fa8c5555cc12211&type=album",
                  height: 150,
                  width: 150,
                  fit: BoxFit.cover,
                )),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 170, 0, 10),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 8),
              child: Text(
                "437",
                style: TextStyle(
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
                borderRadius: BorderRadius.all(Radius.circular(400))),
          ),
          Container(
            child: Text(
              "Марина Сергеевна Ильина",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ])
      ],
    );
  }
}
