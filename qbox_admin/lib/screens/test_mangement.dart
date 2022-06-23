import 'package:flutter/material.dart';
import 'package:qbox_admin/widgets/bottom_material_button.dart';
import 'package:qbox_admin/widgets/pop_up_text_field.dart';
import 'package:qbox_admin/widgets/submit_button.dart';
import 'package:qbox_admin/widgets/test_tile.dart';

class TestManagement extends StatefulWidget {
  const TestManagement({Key? key}) : super(key: key);

  @override
  State<TestManagement> createState() => _TestManagementState();
}

class _TestManagementState extends State<TestManagement> {
  bool download = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            EdgeInsets.all(MediaQuery.of(context).size.width * (1 / 153.6)),
        child: Column(
          children: [
            Text(
              'Tests',
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
                //color: Colors.amberAccent,
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
                        title: const Text('OnGoing'),
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: MediaQuery.of(context).size.width *
                                    (1 / 153.6)),
                            child: const Divider(
                              color: Colors.amber,
                            ),
                          ),
                          TestTile(title: 'CSE test'),
                          TestTile(title: 'ECE Test'),
                          TestTile(title: 'EEE test'),
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
                        title: const Text('Completed Tests'),
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: MediaQuery.of(context).size.width *
                                    (1 / 153.6)),
                            child: const Divider(
                              color: Colors.amber,
                            ),
                          ),
                          TestTile(
                            title: 'HTML/CSS/Javascript',
                            download: true,
                          ),
                          TestTile(
                            title: 'Angular',
                            download: true,
                          ),
                          TestTile(
                            title: 'Vue',
                            download: true,
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
                        title: const Text('Future Test'),
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: MediaQuery.of(context).size.width *
                                    (1 / 153.6)),
                            child: const Divider(
                              color: Colors.amber,
                            ),
                          ),
                          TestTile(title: 'Node.js'),
                          TestTile(title: 'django'),
                          TestTile(
                            title: 'MySql',
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
                text: 'Add New Test',
                popUpChild: Wrap(
                  children: const [
                    Divider(
                      color: Colors.amber,
                    ),
                    PopUpTextField(
                        hint: 'Monthly Test 1',
                        label: 'Test Name',
                        widthRatio: 2),
                    PopUpTextField(
                        hint: '60 min', label: 'Test Duration', widthRatio: 1),
                    PopUpTextField(
                        hint: 'DD-MM-YYYY-HH-mm',
                        label: 'Start Date',
                        widthRatio: 1),
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
                ),
                popUpactions: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SubmitButton(
                        text: 'Preview Paper',
                        onPressed: () {},
                      ),
                      SubmitButton(
                        text: 'Add Question',
                        onPressed: () {},
                      ),
                      SubmitButton(
                        text: 'Submit',
                        onPressed: () {},
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
