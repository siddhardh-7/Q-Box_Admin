import 'package:flutter/material.dart';
import 'package:qbox_admin/widgets/bottom_material_button.dart';
import 'package:qbox_admin/widgets/container_with_label.dart';
import 'package:qbox_admin/widgets/pop_up_text_field.dart';
import 'package:qbox_admin/widgets/submit_button.dart';

class PracticeManagement extends StatefulWidget {
  const PracticeManagement({Key? key}) : super(key: key);

  @override
  State<PracticeManagement> createState() => _PracticeManagementState();
}

class _PracticeManagementState extends State<PracticeManagement> {
  String courseDropDownValue = 'Web Development';
  String categoryDropDownValue = 'HTML/CSS';
  String chapterDropDownValue = 'Variables';

  var courseItems = [
    'Web Development',
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  var categoryItems = [
    'HTML/CSS',
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];
  var chapterItems = [
    'Variables',
    'Item 1',
    'Item 2',
    'Item 3',
    'Item 4',
    'Item 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            EdgeInsets.all(MediaQuery.of(context).size.width * (1 / 153.6)),
        child: Column(
          children: [
            Text(
              'Practice Questions',
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
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    ConatinerWithLabel(
                      title: 'Course Name',
                      widthRatio: 1,
                      children: [
                        DropdownButton(
                          underline: SizedBox(),
                          elevation: 0,
                          dropdownColor: Colors.amberAccent.withOpacity(0.7),
                          focusColor: Colors.white,
                          value: courseDropDownValue,
                          items: courseItems.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              courseDropDownValue = newValue!;
                            });
                          },
                        ),
                      ],
                    ),
                    ConatinerWithLabel(
                      title: 'Course Category',
                      widthRatio: 1,
                      children: [
                        DropdownButton(
                          underline: SizedBox(),
                          elevation: 0,
                          dropdownColor: Colors.amberAccent.withOpacity(0.7),
                          focusColor: Colors.white,
                          value: categoryDropDownValue,
                          items: categoryItems.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              categoryDropDownValue = newValue!;
                            });
                          },
                        ),
                      ],
                    ),
                    ConatinerWithLabel(
                      title: 'Chapter',
                      widthRatio: 2,
                      children: [
                        DropdownButton(
                          underline: SizedBox(),
                          elevation: 0,
                          dropdownColor: Colors.amberAccent.withOpacity(0.7),
                          focusColor: Colors.white,
                          value: chapterDropDownValue,
                          items: chapterItems.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(items),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              chapterDropDownValue = newValue!;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BottomMaterialButton(
                  text: 'Add Chapter',
                  popUpactions: [
                    SubmitButton(text: 'Add Chapter', onPressed: () {})
                  ],
                  popUpChild: Wrap(
                    children: [
                      PopUpTextField(
                          hint: 'Course', label: 'Course Name', widthRatio: 2),
                      PopUpTextField(
                          hint: 'Category',
                          label: 'Category Name',
                          widthRatio: 2),
                      PopUpTextField(
                          hint: 'Chapter',
                          label: 'Chapter Name',
                          widthRatio: 2),
                    ],
                  ),
                ),
                BottomMaterialButton(
                  text: 'Add Question',
                  popUpChild: Wrap(
                    crossAxisAlignment: WrapCrossAlignment.center,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
