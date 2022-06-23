import 'package:flutter/material.dart';
import 'package:qbox_admin/widgets/pop_up_text_field.dart';
import 'package:qbox_admin/widgets/submit_button.dart';

class PracticeManagement extends StatefulWidget {
  const PracticeManagement({Key? key}) : super(key: key);

  @override
  State<PracticeManagement> createState() => _PracticeManagementState();
}

class _PracticeManagementState extends State<PracticeManagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SubmitButton(text: 'Add New Chapter', onPressed: () {}),
              Material(
                color: Colors.amberAccent,
                elevation: 4,
                type: MaterialType.button,
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return SingleChildScrollView(
                            child: AlertDialog(
                              title: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Add New Question'),
                                  IconButton(
                                      onPressed: () {
                                        Navigator.of(context,
                                                rootNavigator: true)
                                            .pop();
                                      },
                                      icon: const Icon(Icons.close_rounded))
                                ],
                              ),
                              contentPadding: EdgeInsets.all(
                                  MediaQuery.of(context).size.width *
                                      (2 / 153.6)),
                              content: Form(
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width *
                                      (700 / 1536),
                                  child: Wrap(
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    children: const [
                                      Divider(
                                        color: Colors.amber,
                                      ),
                                      PopUpTextField(
                                        hint: 'web',
                                        label: 'Course Name',
                                        widthRatio: 1,
                                      ),
                                      PopUpTextField(
                                        hint: 'web',
                                        label: 'Chapter Name',
                                        widthRatio: 1,
                                      ),
                                      PopUpTextField(
                                        hint: 'B.Tech',
                                        label: 'Category',
                                        widthRatio: 1,
                                      ),
                                      PopUpTextField(
                                        hint: 'easy',
                                        label: 'Level',
                                        widthRatio: 1,
                                      ),
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
                                ),
                              ),
                              actions: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
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
                          );
                        });
                  },
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width / 76.8),
                  child: Text(
                    'Add New Question',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 64,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
