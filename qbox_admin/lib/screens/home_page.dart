import 'package:flutter/material.dart';
import 'package:qbox_admin/screens/batch_management.dart';
import 'package:qbox_admin/screens/coupon_management.dart';
import 'package:qbox_admin/screens/course_management.dart';
import 'package:qbox_admin/screens/free_video_management.dart';
import 'package:qbox_admin/screens/level_up_management.dart';
import 'package:qbox_admin/screens/practice_management.dart';
import 'package:qbox_admin/screens/student_management.dart';
import 'package:qbox_admin/screens/teacher_management.dart';
import 'package:qbox_admin/screens/test_management.dart';
import 'package:qbox_admin/screens/videos_management.dart';
import 'package:qbox_admin/widgets/home_tile.dart';

enum Management {
  courseManagement,
  batchManagement,
  studentManagement,
  testManagement,
  teacherManagement,
  couponManagement,
  videoManagement,
  freeVideosManagement,
  levelUpSeriesManagement,
  practiceQuestionManagement,
}

class HomePage extends StatefulWidget {
  static String routeName = 'homePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int bodyIndex = 0;
  Management selectManagement = Management.courseManagement;

  List<Widget> displayBody = [
    const CourseManagement(),
    const BatchManagement(),
    const StudentManagement(),
    const TestManagement(),
    const TeacherManagement(),
    const CouponManagement(),
    const VideoManagement(),
    const FreeVideoManagement(),
    const LevelUpManagement(),
    const PracticeManagement(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: SizedBox(
                height: MediaQuery.of(context).size.height,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        color: Colors.amber,
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width / 537.6,
                            vertical: MediaQuery.of(context).size.height / 198),
                        margin: EdgeInsets.symmetric(
                            horizontal:
                                MediaQuery.of(context).size.width / 537.6,
                            vertical: MediaQuery.of(context).size.height / 198),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: MediaQuery.of(context).size.width / 48,
                              child: Icon(
                                Icons.person,
                                size: MediaQuery.of(context).size.width / 48,
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width / 153.6,
                            ),
                            Text(
                              'Indrajit Sikdar',
                              style: TextStyle(
                                  fontSize: MediaQuery.of(context).size.width /
                                      69.8181818,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      ListView(
                        shrinkWrap: true,
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width / 153.6),
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                bodyIndex = 0;
                                selectManagement = Management.courseManagement;
                              });
                            },
                            child: HomeTile(
                              title: 'Course Management',
                              color: selectManagement ==
                                      Management.courseManagement
                                  ? Colors.amber
                                  : Colors.white,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                bodyIndex = 1;
                                selectManagement = Management.batchManagement;
                              });
                            },
                            child: HomeTile(
                              title: 'Batch Management',
                              color:
                                  selectManagement == Management.batchManagement
                                      ? Colors.amber
                                      : Colors.white,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                bodyIndex = 2;
                                selectManagement = Management.studentManagement;
                              });
                            },
                            child: HomeTile(
                              title: 'Student Management',
                              color: selectManagement ==
                                      Management.studentManagement
                                  ? Colors.amber
                                  : Colors.white,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                bodyIndex = 3;
                                selectManagement = Management.testManagement;
                              });
                            },
                            child: HomeTile(
                              title: 'Test Management',
                              color:
                                  selectManagement == Management.testManagement
                                      ? Colors.amber
                                      : Colors.white,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                bodyIndex = 4;
                                selectManagement = Management.teacherManagement;
                              });
                            },
                            child: HomeTile(
                              title: 'Teacher Management',
                              color: selectManagement ==
                                      Management.teacherManagement
                                  ? Colors.amber
                                  : Colors.white,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                bodyIndex = 5;
                                selectManagement = Management.couponManagement;
                              });
                            },
                            child: HomeTile(
                              title: 'Coupon Management',
                              color: selectManagement ==
                                      Management.couponManagement
                                  ? Colors.amber
                                  : Colors.white,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                bodyIndex = 6;
                                selectManagement = Management.videoManagement;
                              });
                            },
                            child: HomeTile(
                              title: 'Videos',
                              color:
                                  selectManagement == Management.videoManagement
                                      ? Colors.amber
                                      : Colors.white,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                bodyIndex = 7;
                                selectManagement =
                                    Management.freeVideosManagement;
                              });
                            },
                            child: HomeTile(
                              title: 'Free Videos',
                              color: selectManagement ==
                                      Management.freeVideosManagement
                                  ? Colors.amber
                                  : Colors.white,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                bodyIndex = 8;
                                selectManagement =
                                    Management.levelUpSeriesManagement;
                              });
                            },
                            child: HomeTile(
                              title: 'Level Up Series',
                              color: selectManagement ==
                                      Management.levelUpSeriesManagement
                                  ? Colors.amber
                                  : Colors.white,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                bodyIndex = 9;
                                selectManagement =
                                    Management.practiceQuestionManagement;
                              });
                            },
                            child: HomeTile(
                              title: 'Practice Question',
                              color: selectManagement ==
                                      Management.practiceQuestionManagement
                                  ? Colors.amber
                                  : Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: Container(
                margin: EdgeInsets.all(
                    MediaQuery.of(context).size.width * (2 / 153.6)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.08),
                      offset: const Offset(0, 19),
                      blurRadius: 28,
                    ),
                    BoxShadow(
                      color: Colors.black.withOpacity(0.38),
                      offset: const Offset(0, 15),
                      blurRadius: 12,
                    ),
                  ],
                ),
                child: displayBody[bodyIndex],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
