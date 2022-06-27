import 'package:flutter/material.dart';
import 'package:qbox_admin/widgets/bottom_material_button.dart';
import 'package:qbox_admin/widgets/pop_up_text_field.dart';
import 'package:qbox_admin/widgets/submit_button.dart';

class FreeVideoManagement extends StatefulWidget {
  const FreeVideoManagement({Key? key}) : super(key: key);

  @override
  State<FreeVideoManagement> createState() => _FreeVideoManagementState();
}

class _FreeVideoManagementState extends State<FreeVideoManagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            EdgeInsets.all(MediaQuery.of(context).size.width * (1 / 153.6)),
        child: Column(
          children: [
            Text(
              'Free Videos',
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
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SingleChildScrollView(
                    child: DataTable(
                      headingRowColor: MaterialStateColor.resolveWith(
                        (states) {
                          return Colors.amber;
                        },
                      ),
                      columns: const [
                        DataColumn(
                          label: Text('Title'),
                        ),
                        DataColumn(
                            label: Text(
                          'Course Name',
                        )),
                        DataColumn(
                            label: Text(
                          'Category',
                        )),
                        DataColumn(
                            label: Text(
                          'Batch',
                        )),
                        DataColumn(
                            label: Text(
                          'Date',
                        )),
                        DataColumn(
                            label: Text(
                          'Time',
                        )),
                        DataColumn(
                            label: Text(
                          'Status',
                        )),
                        DataColumn(
                            label: Text(
                          'Upload Time',
                        )),
                        DataColumn(
                            label: Text(
                          'Description',
                        )),
                      ],
                      rows: const [
                        DataRow(cells: [
                          DataCell(Text('HTML Syntax')),
                          DataCell(Text('WEB DEVELOPMENT')),
                          DataCell(Text('Paid')),
                          DataCell(Text('Batch S')),
                          DataCell(Text('xx-xx-20xx')),
                          DataCell(Text('xx.xx')),
                          DataCell(Material(
                              type: MaterialType.canvas,
                              color: Colors.green,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Done'),
                              ))),
                          DataCell(Text('xx.xx')),
                          DataCell(Text(
                              '--------------------------------------------------------')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('HTML Syntax')),
                          DataCell(Text('WEB DEVELOPMENT')),
                          DataCell(Text('Free')),
                          DataCell(Text('Batch S')),
                          DataCell(Text('xx-xx-20xx')),
                          DataCell(Text('xx.xx')),
                          DataCell(Material(
                              type: MaterialType.canvas,
                              color: Colors.red,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Cancel'),
                              ))),
                          DataCell(Text('xx.xx')),
                          DataCell(Text(
                              '--------------------------------------------------------')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('HTML Syntax')),
                          DataCell(Text('WEB DEVELOPMENT')),
                          DataCell(Text('Paid')),
                          DataCell(Text('Batch S')),
                          DataCell(Text('xx-xx-20xx')),
                          DataCell(Text('xx.xx')),
                          DataCell(Material(
                              type: MaterialType.canvas,
                              color: Colors.green,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Done'),
                              ))),
                          DataCell(Text('xx.xx')),
                          DataCell(Text(
                              '--------------------------------------------------------')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('HTML Syntax')),
                          DataCell(Text('WEB DEVELOPMENT')),
                          DataCell(Text('Free')),
                          DataCell(Text('Batch S')),
                          DataCell(Text('xx-xx-20xx')),
                          DataCell(Text('xx.xx')),
                          DataCell(Material(
                              type: MaterialType.canvas,
                              color: Colors.green,
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('Done'),
                              ))),
                          DataCell(Text('xx.xx')),
                          DataCell(Text(
                              '--------------------------------------------------------')),
                        ]),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: BottomMaterialButton(
                text: 'Add Video',
                popUpactions: [
                  SubmitButton(
                    text: 'Add Video',
                    onPressed: () {},
                  )
                ],
                popUpChild: Wrap(
                  children: const [
                    Divider(
                      color: Colors.amber,
                    ),
                    PopUpTextField(
                        hint: 'WEB DEVELOPMENT | PART-1 ',
                        label: 'Title',
                        widthRatio: 2),
                    PopUpTextField(
                        hint: 'WEB DEVELOPMENT',
                        label: 'Course Name',
                        widthRatio: 2),
                    PopUpTextField(
                        hint: 'Web', label: 'Category', widthRatio: 1),
                    PopUpTextField(
                        hint: 'Batch S', label: 'Batch', widthRatio: 1),
                    PopUpTextField(
                        hint: 'DD-MM-YYYY', label: 'Date', widthRatio: 1),
                    PopUpTextField(hint: 'HH-MM', label: 'Time', widthRatio: 1),
                    PopUpTextField(
                        hint: 'Pick A File',
                        label: 'Upload Video',
                        widthRatio: 2),
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
