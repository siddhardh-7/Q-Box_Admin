import 'package:flutter/material.dart';

class VideoManagement extends StatefulWidget {
  const VideoManagement({Key? key}) : super(key: key);

  @override
  State<VideoManagement> createState() => _VideoManagementState();
}

class _VideoManagementState extends State<VideoManagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            EdgeInsets.all(MediaQuery.of(context).size.width * (1 / 153.6)),
        child: Column(
          children: [
            Text(
              'Videos',
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
                          SingleChildScrollView(
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
                        title: const Text('Completed Videos'),
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: MediaQuery.of(context).size.width *
                                    (1 / 153.6)),
                            child: const Divider(
                              color: Colors.amber,
                            ),
                          ),
                          SingleChildScrollView(
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
                                    DataCell(Text('Software')),
                                    DataCell(Text('Batch S')),
                                    DataCell(Text('xx-xx-20xx')),
                                    DataCell(Text('xx.xx')),
                                    DataCell(Material(
                                        type: MaterialType.canvas,
                                        color: Colors.green,
                                        child: Text('Done'))),
                                    DataCell(Text('xx.xx')),
                                    DataCell(Text(
                                        '--------------------------------------------------------')),
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text('HTML Syntax')),
                                    DataCell(Text('WEB DEVELOPMENT')),
                                    DataCell(Text('Software')),
                                    DataCell(Text('Batch S')),
                                    DataCell(Text('xx-xx-20xx')),
                                    DataCell(Text('xx.xx')),
                                    DataCell(Material(
                                        type: MaterialType.canvas,
                                        color: Colors.green,
                                        child: Text('Done'))),
                                    DataCell(Text('xx.xx')),
                                    DataCell(Text(
                                        '--------------------------------------------------------')),
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text('HTML Syntax')),
                                    DataCell(Text('WEB DEVELOPMENT')),
                                    DataCell(Text('Software')),
                                    DataCell(Text('Batch S')),
                                    DataCell(Text('xx-xx-20xx')),
                                    DataCell(Text('xx.xx')),
                                    DataCell(Material(
                                        type: MaterialType.canvas,
                                        color: Colors.red,
                                        child: Text('Cancelled'))),
                                    DataCell(Text('xx.xx')),
                                    DataCell(Text(
                                        '--------------------------------------------------------')),
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text('HTML Syntax')),
                                    DataCell(Text('WEB DEVELOPMENT')),
                                    DataCell(Text('Software')),
                                    DataCell(Text('Batch S')),
                                    DataCell(Text('xx-xx-20xx')),
                                    DataCell(Text('xx.xx')),
                                    DataCell(Material(
                                        type: MaterialType.canvas,
                                        color: Colors.green,
                                        child: Text('Done'))),
                                    DataCell(Text('xx.xx')),
                                    DataCell(Text(
                                        '--------------------------------------------------------')),
                                  ]),
                                ],
                              ),
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
                        title: const Text('Future Videos'),
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: MediaQuery.of(context).size.width *
                                    (1 / 153.6)),
                            child: const Divider(
                              color: Colors.amber,
                            ),
                          ),
                          SingleChildScrollView(
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
                                    DataCell(Text('Software')),
                                    DataCell(Text('Batch S')),
                                    DataCell(Text('xx-xx-20xx')),
                                    DataCell(Text('xx.xx')),
                                    DataCell(Material(
                                        type: MaterialType.canvas,
                                        color: Colors.green,
                                        child: Text('Done'))),
                                    DataCell(Text('xx.xx')),
                                    DataCell(Text(
                                        '--------------------------------')),
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text('HTML Syntax')),
                                    DataCell(Text('WEB DEVELOPMENT')),
                                    DataCell(Text('Software')),
                                    DataCell(Text('Batch S')),
                                    DataCell(Text('xx-xx-20xx')),
                                    DataCell(Text('xx.xx')),
                                    DataCell(Material(
                                        type: MaterialType.canvas,
                                        color: Colors.green,
                                        child: Text('Done'))),
                                    DataCell(Text('xx.xx')),
                                    DataCell(Text(
                                        '--------------------------------')),
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text('HTML Syntax')),
                                    DataCell(Text('WEB DEVELOPMENT')),
                                    DataCell(Text('Software')),
                                    DataCell(Text('Batch S')),
                                    DataCell(Text('xx-xx-20xx')),
                                    DataCell(Text('xx.xx')),
                                    DataCell(Material(
                                        type: MaterialType.canvas,
                                        color: Colors.red,
                                        child: Text('Cancel'))),
                                    DataCell(Text('xx.xx')),
                                    DataCell(Text(
                                        '--------------------------------')),
                                  ]),
                                  DataRow(cells: [
                                    DataCell(Text('HTML Syntax')),
                                    DataCell(Text('WEB DEVELOPMENT')),
                                    DataCell(Text('Software')),
                                    DataCell(Text('Batch S')),
                                    DataCell(Text('xx-xx-20xx')),
                                    DataCell(Text('xx.xx')),
                                    DataCell(Material(
                                        type: MaterialType.canvas,
                                        color: Colors.green,
                                        child: Text('Done'))),
                                    DataCell(Text('xx.xx')),
                                    DataCell(Text(
                                        '--------------------------------')),
                                  ]),
                                ],
                              ),
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
              child: Material(
                color: Colors.amberAccent,
                elevation: 4,
                type: MaterialType.button,
                child: MaterialButton(
                  onPressed: () {},
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width / 76.8),
                  child: Text(
                    'Add Video',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width / 64,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
