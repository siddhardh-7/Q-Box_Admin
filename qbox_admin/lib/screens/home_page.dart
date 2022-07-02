import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
  List<Widget> displayList = [];
  List<String> sideDisplayList = [];
  List sideManagementList = [];

  Future<String> getUserRole() async {
    final user = FirebaseAuth.instance.currentUser;
    String userEmail = user!.email.toString();
    final docData =
        FirebaseFirestore.instance.collection('teachers').doc(userEmail);
    final snapshot = await docData.get();
    if (snapshot.exists) {
      var data = snapshot.data() as Map<String, dynamic>;
      // UserModel UserCurr = UserModel.fromJson(snapshot.data()!);
      return data['role'] as String;
    }
    return '';
  }

  Future<List> getHomeList() async {
    String role = await getUserRole();
    if (role == 'teacher') {
      displayList = <Widget>[] + teachersList;
      sideDisplayList = <String>[] + sideTeachersList;
      sideManagementList = [] + sideTeachersManagementList;
      return [teachersList, sideTeachersList, sideTeachersManagementList];
    } else if (role == 'admin') {
      displayList = <Widget>[] + adminList;
      sideDisplayList = <String>[] + sideAdminList;
      sideManagementList = [] + sideAdminManagementList;
      return [adminList, sideAdminList, sideAdminManagementList];
    } else if (role == 'superAdmin') {
      displayList = <Widget>[] + teachersList + adminList;
      sideDisplayList = <String>[] + sideTeachersList + sideAdminList;
      sideManagementList =
          [] + sideTeachersManagementList + sideAdminManagementList;
      return [displayList, sideDisplayList, sideManagementList];
    }
    return [];
  }

  // Left Panel Display Name
  List<String> sideTeachersList = [
    'Test',
    'Live Videos',
    'Free Videos',
    'Level Up Tests',
    'Practice'
  ];

  List<String> sideAdminList = [
    'Courses ',
    'Batch',
    'Students',
    'Tests',
    'Teachers',
    'Coupons',
  ];
  // Left Panel Management List
  List sideTeachersManagementList = [
    Management.testManagement,
    Management.videoManagement,
    Management.freeVideosManagement,
    Management.levelUpSeriesManagement,
    Management.practiceQuestionManagement,
  ];

  List sideAdminManagementList = [
    Management.courseManagement,
    Management.batchManagement,
    Management.studentManagement,
    Management.testManagement,
    Management.teacherManagement,
    Management.couponManagement,
  ];

  // Right Panel Display List
  List<Widget> teachersList = [
    const TestManagement(),
    const VideoManagement(),
    const FreeVideoManagement(),
    const LevelUpManagement(),
    const PracticeManagement(),
  ];

  List<Widget> adminList = [
    const CourseManagement(),
    const BatchManagement(),
    const StudentManagement(),
    const TestManagement(),
    const TeacherManagement(),
    const CouponManagement(),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getUserRole();
  }

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
                      FutureBuilder(
                          future: getHomeList(),
                          builder: (context, snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
                              return const Center(
                                  child: CircularProgressIndicator());
                            }
                            return ListView(
                              shrinkWrap: true,
                              physics: const ClampingScrollPhysics(),
                              padding: EdgeInsets.all(
                                  MediaQuery.of(context).size.width / 153.6),
                              children: [
                                for (int i = 0; i < sideDisplayList.length; i++)
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        bodyIndex = i;
                                        selectManagement =
                                            sideManagementList[i];
                                      });
                                    },
                                    child: HomeTile(
                                      title: sideDisplayList[i],
                                      color: selectManagement ==
                                              sideManagementList[i]
                                          ? Colors.amber
                                          : Colors.white,
                                    ),
                                  ),
                              ],
                            );
                          }),
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
                child: FutureBuilder(
                    future: getHomeList(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      return displayList[bodyIndex];
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
