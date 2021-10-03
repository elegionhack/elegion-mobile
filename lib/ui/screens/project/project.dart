import 'package:elegion/bloc/project/project_bloc.dart';
import 'package:elegion/models/project/project.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProjectScreen extends StatelessWidget {
  const ProjectScreen({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopProjectBar(project: project),
          Flexible(
              child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: Text(
                    'Описание',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(
                      project.description,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    )),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: RichText(
                    text: TextSpan(
                      text: 'Заказчик: ',
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).primaryColor,
                        fontWeight: FontWeight.w300,
                      ),
                      children: <TextSpan>[
                        TextSpan(
                            text: '${project.customer}',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                      ],
                    ),
                  ),
                ),
                Divider(color: Colors.grey[400]),
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                    child: Text(
                      'Участники:',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Theme.of(context).primaryColor),
                    )),
                Container(
                  height: 170,
                  child: ListView(
                    children: [
                      MemberCard(project: project),
                      MemberCard(project: project),
                      MemberCard(project: project),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey[400],
                  indent: 15,
                  endIndent: 15,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          child: Text(
                        'Чат в Telegram:',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor),
                      )),
                      GestureDetector(
                          onTap: () {},
                          child: Container(
                              margin: EdgeInsets.only(right: 15),
                              child: SvgPicture.asset(
                                'assets/icons/tlg.svg',
                                height: 25,
                                width: 25,
                              ))),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey[400],
                  indent: 15,
                  endIndent: 15,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 7),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                          child: Text(
                        'Таск трекер:',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w300,
                            color: Theme.of(context).primaryColor),
                      )),
                      GestureDetector(
                          onTap: () {},
                          child: Container(
                              margin: EdgeInsets.only(right: 15),
                              child: SvgPicture.asset(
                                'assets/icons/task.svg',
                                height: 25,
                                width: 25,
                              ))),
                    ],
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    ));
  }
}

class MemberCard extends StatelessWidget {
  const MemberCard({
    Key? key,
    required this.project,
  }) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      child: GestureDetector(
        onTap: () {},
        child: Container(
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
                          child: project.avatarUrl != null
                              ? Image.network(
                                  project.avatarUrl!,
                                  height: 50,
                                  width: 50,
                                  fit: BoxFit.cover,
                                )
                              : const SizedBox(),
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child: Text(
                          project.title,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          project.description,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 20),
                    child: Row(
                      children: [
                        GestureDetector(
                            onTap: () {},
                            child: Container(
                                margin: EdgeInsets.only(right: 10),
                                child: SvgPicture.asset(
                                  'assets/icons/tlg.svg',
                                  height: 25,
                                  width: 25,
                                ))),
                      ],
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
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://images.spasibovsem.ru/catalog/original/operator-sotovoj-svyazi-tele2-moskva-otzyvy-1496938012.jpg"),
              fit: BoxFit.fitWidth,
            ),
          ),
        ),
        Container(
          height: 240,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      project.title,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                      softWrap: true,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
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
