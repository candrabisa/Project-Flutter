import 'package:asu/widget/container_atas.dart';
import 'package:asu/widget/skill.dart';
import 'package:asu/widget/task_column.dart';
import 'package:flutter/material.dart';

import 'package:percent_indicator/percent_indicator.dart';

import 'color/color.dart';

class HomePage extends StatelessWidget {
  Text subheading(String title) {
    return Text(
      title,
      style: TextStyle(
          color: LightColors.abuabu,
          fontSize: 20.0,
          fontWeight: FontWeight.w700,
          letterSpacing: 1.2),
    );
  }

  static CircleAvatar calendarIcon() {
    return CircleAvatar(
      radius: 25.0,
      backgroundColor: LightColors.kGreen,
      child: Icon(
        Icons.calendar_today,
        size: 20.0,
        color: Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: LightColors.bakground,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TopContainer(
              height: 200,
              width: width,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 0, vertical: 0.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          CircularPercentIndicator(
                            radius: 90.0,
                            lineWidth: 5.0,
                            animation: true,
                            percent: 0.0,
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: LightColors.kRed,
                            backgroundColor: LightColors.kDarkYellow,
                            center: CircleAvatar(
                              backgroundColor: LightColors.kBlue,
                              radius: 35.0,
                              backgroundImage: AssetImage(
                                'assets/images/12.png',
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                child: Text(
                                  'Fariq Faturachman',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 22.0,
                                    color: LightColors.abuabu,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              Container(
                                child: Text(
                                  'Universitas Pelita Bangsa',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.black45,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Container(
                      color: Colors.transparent,
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: Column(
                        children: <Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              subheading('DATA DIRI'),
                            ],
                          ),
                          SizedBox(height: 15.0),
                          TaskColumn(
                            icon: Icons.person,
                            iconBackgroundColor: LightColors.kRed,
                            title: 'Nama Lengkap',
                            subtitle: 'Fariq Faturachman',
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                          TaskColumn(
                            icon: Icons.card_membership,
                            iconBackgroundColor: LightColors.kDarkYellow,
                            title: 'Nim',
                            subtitle: '311710491',
                          ),
                          SizedBox(height: 15.0),
                          TaskColumn(
                            icon: Icons.check_circle_outline,
                            iconBackgroundColor: LightColors.kBlue,
                            title: 'Kelas',
                            subtitle: 'TI.17.D2',
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.transparent,
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          subheading('KEMAMPUAN'),
                          SizedBox(height: 5.0),
                          Row(
                            children: <Widget>[
                              SkillCard(
                                cardColor: LightColors.kGreen,
                                loadingPercent: 0.20,
                                title: 'Basis Data',
                                subtitle: 'MySQL',
                              ),
                              SizedBox(width: 20.0),
                              SkillCard(
                                cardColor: LightColors.kRed,
                                loadingPercent: 0.30,
                                title: 'Web',
                                subtitle: 'CMS',
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              SkillCard(
                                cardColor: LightColors.kivy,
                                loadingPercent: 0.30,
                                title: 'MS. Office',
                                subtitle: 'Word, Excel, PowerPoint',
                              ),
                              SizedBox(width: 20.0),
                              SkillCard(
                                cardColor: LightColors.kBlue,
                                loadingPercent: 0.20,
                                title: 'Visual Studio',
                                subtitle: 'VB.NET Programming',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
