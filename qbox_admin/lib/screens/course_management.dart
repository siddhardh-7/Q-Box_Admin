import 'package:flutter/material.dart';
import 'package:qbox_admin/widgets/bottom_material_button.dart';
import 'package:qbox_admin/widgets/Tailing%20Widgets/course_management_expansion_tail_widget.dart';
import 'package:qbox_admin/widgets/pop_up_text_field.dart';
import 'package:qbox_admin/widgets/submit_button.dart';

class CourseManagement extends StatefulWidget {
  const CourseManagement({Key? key}) : super(key: key);

  @override
  State<CourseManagement> createState() => _CourseManagementState();
}

class _CourseManagementState extends State<CourseManagement> {
  bool _customTileExpanded = false;
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            EdgeInsets.all(MediaQuery.of(context).size.width * (1 / 153.6)),
        child: Column(
          children: [
            Text(
              'Courses',
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
                text: 'Add Course',
                popUpChild: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Divider(
                      color: Colors.amber,
                    ),
                    PopUpTextField(
                        hint: 'Title', label: 'Title', widthRatio: 2),
                  ],
                ),
                popUpactions: [
                  SubmitButton(text: 'Add Course', onPressed: () {}),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
