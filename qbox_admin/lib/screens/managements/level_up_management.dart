import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qbox_admin/models/level_up_series_model.dart';
import 'package:qbox_admin/screens/level_up_question_adding_screen.dart';
import 'package:qbox_admin/widgets/bottom_material_button.dart';
import 'package:qbox_admin/widgets/level_up_horizontal_card.dart';
import 'package:qbox_admin/widgets/pop_up_text_field.dart';

class LevelUpManagement extends StatefulWidget {
  const LevelUpManagement({Key? key}) : super(key: key);

  @override
  State<LevelUpManagement> createState() => _LevelUpManagementState();
}

class _LevelUpManagementState extends State<LevelUpManagement> {
  final GlobalKey<FormState> _levelUpTestFormKey = GlobalKey<FormState>();
  final _testNameController = TextEditingController();
  final _chapterController = TextEditingController();
  final _courseController = TextEditingController();
  final _categoryController = TextEditingController();
  final _paperSetController = TextEditingController();
  final _durationController = TextEditingController();
  final _examTimeController = TextEditingController();

  List<LevelUpTestModel> levelUpModelList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            EdgeInsets.all(MediaQuery.of(context).size.width * (1 / 153.6)),
        child: Column(
          children: [
            Text(
              'Level Up Tests',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.width / 32,
              ),
            ),
            const Divider(
              color: Colors.amberAccent,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: double.infinity,
                margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.width * (1 / 153.6),
                ),
                child: SingleChildScrollView(
                  child: StreamBuilder<QuerySnapshot>(
                      stream: FirebaseFirestore.instance
                          .collection('levelUpTest')
                          .where("uploadedTeacher",
                              isEqualTo: FirebaseAuth
                                  .instance.currentUser!.email
                                  .toString())
                          .snapshots(),
                      builder: (BuildContext context,
                          AsyncSnapshot<QuerySnapshot> snapshot) {
                        if (snapshot.hasError) {
                          return const Text('Something went wrong!');
                        }
                        if (snapshot.connectionState ==
                            ConnectionState.waiting) {
                          return const Center(
                              child: CircularProgressIndicator());
                        }
                        return Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          alignment: WrapAlignment.center,
                          runSpacing: 10,
                          spacing: 10,
                          children: snapshot.data!.docs
                              .map((DocumentSnapshot document) {
                            Map<String, dynamic> data =
                                document.data()! as Map<String, dynamic>;
                            LevelUpTestModel model =
                                LevelUpTestModel.fromJson(data);
                            levelUpModelList.add(model);
                            return LevelUpHorizontalCard(
                              model: model,
                            );
                          }).toList(),
                        );
                      }),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: BottomMaterialButton(
                text: 'Add Test',
                popUpChild: Form(
                  key: _levelUpTestFormKey,
                  child: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      const Divider(
                        color: Colors.amber,
                      ),
                      PopUpTextField(
                        controller: _testNameController,
                        hint: '',
                        label: 'Test Name',
                        widthRatio: 2,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("Field cannot be empty");
                          }
                          return null;
                        },
                      ),
                      PopUpTextField(
                        controller: _categoryController,
                        hint: 'web',
                        label: 'Category',
                        widthRatio: 1,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("Field cannot be empty");
                          }
                          return null;
                        },
                      ),
                      PopUpTextField(
                        controller: _courseController,
                        hint: 'B.Tech',
                        label: 'Course',
                        widthRatio: 1,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("Field cannot be empty");
                          }
                          return null;
                        },
                      ),
                      PopUpTextField(
                        controller: _chapterController,
                        hint: 'web',
                        label: 'Chapter Name',
                        widthRatio: 1,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("Field cannot be empty");
                          }
                          return null;
                        },
                      ),
                      PopUpTextField(
                        controller: _paperSetController,
                        hint: 'Set 1',
                        label: 'Paper Set',
                        widthRatio: 1,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("Field cannot be empty");
                          }
                          return null;
                        },
                      ),
                      PopUpTextField(
                        controller: _durationController,
                        hint: '90 minutes',
                        label: 'Duration',
                        widthRatio: 1,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("Field cannot be empty");
                          }
                          return null;
                        },
                      ),
                      PopUpTextField(
                        controller: _examTimeController,
                        hint: '2022-07-08 19:30:00',
                        label: 'Exam Date',
                        widthRatio: 1,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("Field cannot be empty");
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
                popUpactions: [
                  Material(
                    color: Colors.amberAccent,
                    elevation: 4,
                    type: MaterialType.button,
                    child: MaterialButton(
                      onPressed: () {
                        if (_levelUpTestFormKey.currentState!.validate()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LevelUpQuestionAddingScreen(
                                category: _categoryController.text.trim(),
                                course: _courseController.text.trim(),
                                chapter: _chapterController.text.trim(),
                                testName: _testNameController.text.trim(),
                                duration:
                                    int.parse(_durationController.text.trim()),
                                paperSet:
                                    int.parse(_paperSetController.text.trim()),
                                examTime: _examTimeController.text.trim(),
                              ),
                            ),
                          );
                        }
                      },
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width / 76.8),
                      child: Text(
                        'Next',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.width / 86,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//
// ListView(
// padding: EdgeInsets.all(
// MediaQuery.of(context).size.width * (1 / 153.6)),
// children: [
// Container(
// margin: EdgeInsets.only(
// bottom:
// MediaQuery.of(context).size.width * (1 / 153.6)),
// child: ExpansionTile(
// backgroundColor: Colors.white,
// title: const Text('Engineering Course'),
// trailing: CourseManagementExpansionTailWidget(
// customTileExpanded: _customTileExpanded),
// onExpansionChanged: (bool expanded) {
// setState(() => _customTileExpanded = expanded);
// },
// children: [
// Padding(
// padding: EdgeInsets.symmetric(
// horizontal: MediaQuery.of(context).size.width *
// (1 / 153.6)),
// child: const Divider(
// color: Colors.amber,
// ),
// ),
// ListTile(
// title: const Text('B.Tech CSE Course'),
// trailing: IconButton(
// onPressed: () {},
// icon: const Icon(Icons.mode_edit_rounded),
// ),
// ),
// ListTile(
// title: const Text('B.Tech ECE Course'),
// trailing: IconButton(
// onPressed: () {},
// icon: const Icon(Icons.mode_edit_rounded),
// ),
// ),
// ListTile(
// title: const Text('B.Tech EEE Course'),
// trailing: IconButton(
// onPressed: () {},
// icon: const Icon(Icons.mode_edit_rounded),
// ),
// ),
// const SizedBox(),
// ],
// ),
// ),
// Container(
// margin: EdgeInsets.only(
// bottom:
// MediaQuery.of(context).size.width * (1 / 153.6)),
// child: ExpansionTile(
// backgroundColor: Colors.white,
// title: const Text('Web Development Course'),
// trailing: CourseManagementExpansionTailWidget(
// customTileExpanded: _customTileExpanded),
// onExpansionChanged: (bool expanded) {
// setState(() => _customTileExpanded = expanded);
// },
// children: [
// Padding(
// padding: EdgeInsets.symmetric(
// horizontal: MediaQuery.of(context).size.width *
// (1 / 153.6)),
// child: const Divider(
// color: Colors.amber,
// ),
// ),
// ListTile(
// title: const Text('HTML/CSS/Javascript'),
// trailing: IconButton(
// onPressed: () {},
// icon: const Icon(Icons.mode_edit_rounded),
// ),
// ),
// ListTile(
// title: const Text('Angular'),
// trailing: IconButton(
// onPressed: () {},
// icon: const Icon(Icons.mode_edit_rounded),
// ),
// ),
// ListTile(
// title: const Text('Vue'),
// trailing: IconButton(
// onPressed: () {},
// icon: const Icon(Icons.mode_edit_rounded),
// ),
// ),
// const SizedBox(),
// ],
// ),
// ),
// Container(
// margin: EdgeInsets.only(
// bottom:
// MediaQuery.of(context).size.width * (1 / 153.6)),
// child: ExpansionTile(
// backgroundColor: Colors.white,
// title: const Text('Backend Development Course'),
// trailing: CourseManagementExpansionTailWidget(
// customTileExpanded: _customTileExpanded),
// onExpansionChanged: (bool expanded) {
// setState(() => _customTileExpanded = expanded);
// },
// children: [
// Padding(
// padding: EdgeInsets.symmetric(
// horizontal: MediaQuery.of(context).size.width *
// (1 / 153.6)),
// child: const Divider(
// color: Colors.amber,
// ),
// ),
// ListTile(
// title: const Text('Node.js'),
// trailing: IconButton(
// onPressed: () {},
// icon: const Icon(Icons.mode_edit_rounded),
// ),
// ),
// ListTile(
// title: const Text('django'),
// trailing: IconButton(
// onPressed: () {},
// icon: const Icon(Icons.mode_edit_rounded),
// ),
// ),
// ListTile(
// title: const Text('Mysql'),
// trailing: IconButton(
// onPressed: () {},
// icon: const Icon(Icons.mode_edit_rounded),
// ),
// ),
// ],
// ),
// ),
// ],
// ),
