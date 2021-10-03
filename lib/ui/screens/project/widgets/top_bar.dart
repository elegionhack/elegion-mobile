import 'package:elegion/models/project/project.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TopProjectBar extends StatelessWidget {
  const TopProjectBar({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 240,
          decoration: project.photo != null
              ? BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      project.photo!,
                    ),
                    fit: BoxFit.cover,
                  ),
                )
              : null,
        ),
        Container(
          height: 240,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.transparent, Colors.black.withOpacity(0.3)],
            ),
          ),
        ),
        SizedBox(
          height: 240,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Text(
                      project.title,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                      softWrap: true,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: GestureDetector(
                        onTap: () {},
                        child: SvgPicture.asset(
                          'assets/icons/cal.svg',
                          height: 25,
                          width: 25,
                        )),
                  )
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
