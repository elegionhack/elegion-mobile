import 'package:auto_route/auto_route.dart';
import 'package:elegion/models/project/project.dart';
import 'package:elegion/ui/router/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({Key? key, required this.project}) : super(key: key);

  final Project project;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 7),
      child: GestureDetector(
        onTap: () {
          AutoRouter.of(context).push(ProjectScreenRoute(project: project));
        },
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
                          child: project.photo != null
                              ? Image.network(
                                  project.photo!,
                                  height: 50,
                                  width: 50,
                                  fit: BoxFit.cover,
                                )
                              : const SizedBox(
                                  height: 50,
                                  width: 50,
                                ),
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        project.title,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: size.width * 0.5,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5),
                          child: Text(
                            project.description,
                            style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
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
                            onTap: () {
                              launchTelegram();
                            },
                            child: Container(
                                margin: EdgeInsets.only(right: 15),
                                child: SvgPicture.asset(
                                  'assets/icons/tlg.svg',
                                  height: 25,
                                  width: 25,
                                ))),
                        GestureDetector(
                            onTap: () {},
                            child: SvgPicture.asset(
                              'assets/icons/cal.svg',
                              height: 25,
                              width: 25,
                            )),
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

void launchTelegram() async {
  String url = "https://telegram.me/probka00";
  print("launchingUrl: $url");
  if (await canLaunch(url)) {
    await launch(url);
  }
}
