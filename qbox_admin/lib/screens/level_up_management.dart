import 'package:flutter/material.dart';
import 'package:qbox_admin/widgets/Tailing%20Widgets/course_management_expansion_tail_widget.dart';
import 'package:qbox_admin/widgets/bottom_material_button.dart';
import 'package:qbox_admin/widgets/pop_up_text_field.dart';
import 'package:qbox_admin/widgets/submit_button.dart';

class LevelUpManagement extends StatefulWidget {
  const LevelUpManagement({Key? key}) : super(key: key);

  @override
  State<LevelUpManagement> createState() => _LevelUpManagementState();
}

class _LevelUpManagementState extends State<LevelUpManagement> {
  bool _customTileExpanded = false;
  final _formKey = GlobalKey<FormState>();
  int questionCount = 1;

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
                child: ListView(
                  padding: EdgeInsets.all(
                      MediaQuery.of(context).size.width * (1 / 153.6)),
                  children: [
                    Container(
                      margin: EdgeInsets.only(
                          bottom:
                              MediaQuery.of(context).size.width * (1 / 153.6)),
                      child: ExpansionTile(
                        backgroundColor: Colors.white,
                        title: const Text('Engineering Course'),
                        trailing: CourseManagementExpansionTailWidget(
                            formKey: _formKey,
                            customTileExpanded: _customTileExpanded),
                        onExpansionChanged: (bool expanded) {
                          setState(() => _customTileExpanded = expanded);
                        },
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: MediaQuery.of(context).size.width *
                                    (1 / 153.6)),
                            child: const Divider(
                              color: Colors.amber,
                            ),
                          ),
                          ListTile(
                            title: const Text('B.Tech CSE Course'),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.mode_edit_rounded),
                            ),
                          ),
                          ListTile(
                            title: const Text('B.Tech ECE Course'),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.mode_edit_rounded),
                            ),
                          ),
                          ListTile(
                            title: const Text('B.Tech EEE Course'),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.mode_edit_rounded),
                            ),
                          ),
                          const SizedBox(),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          bottom:
                              MediaQuery.of(context).size.width * (1 / 153.6)),
                      child: ExpansionTile(
                        backgroundColor: Colors.white,
                        title: const Text('Web Development Course'),
                        trailing: CourseManagementExpansionTailWidget(
                            formKey: _formKey,
                            customTileExpanded: _customTileExpanded),
                        onExpansionChanged: (bool expanded) {
                          setState(() => _customTileExpanded = expanded);
                        },
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: MediaQuery.of(context).size.width *
                                    (1 / 153.6)),
                            child: const Divider(
                              color: Colors.amber,
                            ),
                          ),
                          ListTile(
                            title: const Text('HTML/CSS/Javascript'),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.mode_edit_rounded),
                            ),
                          ),
                          ListTile(
                            title: const Text('Angular'),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.mode_edit_rounded),
                            ),
                          ),
                          ListTile(
                            title: const Text('Vue'),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.mode_edit_rounded),
                            ),
                          ),
                          const SizedBox(),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          bottom:
                              MediaQuery.of(context).size.width * (1 / 153.6)),
                      child: ExpansionTile(
                        backgroundColor: Colors.white,
                        title: const Text('Backend Development Course'),
                        trailing: CourseManagementExpansionTailWidget(
                            formKey: _formKey,
                            customTileExpanded: _customTileExpanded),
                        onExpansionChanged: (bool expanded) {
                          setState(() => _customTileExpanded = expanded);
                        },
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: MediaQuery.of(context).size.width *
                                    (1 / 153.6)),
                            child: const Divider(
                              color: Colors.amber,
                            ),
                          ),
                          ListTile(
                            title: const Text('Node.js'),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.mode_edit_rounded),
                            ),
                          ),
                          ListTile(
                            title: const Text('django'),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.mode_edit_rounded),
                            ),
                          ),
                          ListTile(
                            title: const Text('Mysql'),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.mode_edit_rounded),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: BottomMaterialButton(
                text: 'Add Test',
                popUpChild: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: const [
                    Divider(
                      color: Colors.amber,
                    ),
                    PopUpTextField(
                      hint: '',
                      label: 'Test Name',
                      widthRatio: 2,
                    ),
                    PopUpTextField(
                      hint: 'web',
                      label: 'Course Name',
                      widthRatio: 1,
                    ),
                    PopUpTextField(
                      hint: 'B.Tech',
                      label: 'Category',
                      widthRatio: 1,
                    ),
                    PopUpTextField(
                      hint: 'web',
                      label: 'Chapter Name',
                      widthRatio: 1,
                    ),
                    PopUpTextField(
                      hint: 'easy',
                      label: 'Level',
                      widthRatio: 1,
                    ),
                    PopUpTextField(
                      hint: '90 minutes',
                      label: 'Duration',
                      widthRatio: 1,
                    ),
                    PopUpTextField(
                      hint: 'Set 1',
                      label: 'Paper Set',
                      widthRatio: 1,
                    ),
                  ],
                ),
                popUpactions: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      BottomMaterialButton(
                        text: 'Next',
                        popUpactions: [
                          SubmitButton(
                              text: 'Add Question',
                              onPressed: () {
                                setState(() {
                                  questionCount++;
                                });
                              }),
                          SubmitButton(text: 'Preview', onPressed: () {})
                        ],
                        popUpChild: ListView.builder(
                            itemCount: questionCount,
                            itemBuilder: (BuildContext context, int index) {
                              return Wrap(
                                children: const [
                                  Divider(
                                    color: Colors.amber,
                                  ),
                                  PopUpTextField(
                                    hint: 'API means',
                                    label: 'Question',
                                    widthRatio: 2,
                                  ),
                                  PopUpTextField(
                                    hint: '',
                                    label: 'Option 1',
                                    widthRatio: 1,
                                  ),
                                  PopUpTextField(
                                    hint: '',
                                    label: 'Option 2',
                                    widthRatio: 1,
                                  ),
                                  PopUpTextField(
                                    hint: '',
                                    label: 'Option 3',
                                    widthRatio: 1,
                                  ),
                                  PopUpTextField(
                                    hint: '',
                                    label: 'Option 4',
                                    widthRatio: 1,
                                  ),
                                ],
                              );
                            }),
                      ),
                    ],
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
