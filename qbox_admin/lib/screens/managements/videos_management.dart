import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:qbox_admin/models/live_video_model.dart';
import 'package:qbox_admin/widgets/bottom_material_button.dart';
import 'package:qbox_admin/widgets/pop_up_text_field.dart';
import 'package:qbox_admin/widgets/submit_button.dart';

class VideoManagement extends StatefulWidget {
  const VideoManagement({Key? key}) : super(key: key);

  @override
  State<VideoManagement> createState() => _VideoManagementState();
}

class _VideoManagementState extends State<VideoManagement> {
  final _titleController = TextEditingController();
  final _categoryController = TextEditingController();
  final _courseController = TextEditingController();
  final _scheduleDateController = TextEditingController();
  final _endDateController = TextEditingController();
  final GlobalKey<FormState> _liveVideoFormKey = GlobalKey<FormState>();
  final freeVideoRef = FirebaseStorage.instance.ref();
  late String videoFileName;
  double progress = 0.0;
  String? errorMessage;

  Future uploadFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      Uint8List? file = result.files.first.bytes;
      String fileName = result.files.first.name;
      UploadTask task = FirebaseStorage.instance
          .ref()
          .child("Videos/video/$fileName")
          .putData(
              file!,
              SettableMetadata(
                contentType: "video",
              ));
      task.snapshotEvents.listen((event) {
        setState(() {
          progress = ((event.bytesTransferred.toDouble() /
                      event.totalBytes.toDouble()) *
                  100)
              .roundToDouble();
          if (progress == 100) {
            event.ref.getDownloadURL().then((downloadUrl) {
              videoFileName = downloadUrl.toString();
              return Fluttertoast.showToast(msg: "video Added Successfully");
            });
          }
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            EdgeInsets.all(MediaQuery.of(context).size.width * (1 / 153.6)),
        child: Column(
          children: [
            Text(
              'Live Videos',
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
                        title: const Text('Upcoming'),
                        children: [
                          SingleChildScrollView(
                            child: StreamBuilder<QuerySnapshot>(
                                stream: FirebaseFirestore.instance
                                    .collection('liveVideos')
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
                                  return ListView(
                                    shrinkWrap: true,
                                    physics: ClampingScrollPhysics(),
                                    children: snapshot.data!.docs
                                        .map((DocumentSnapshot document) {
                                      Map<String, dynamic> data = document
                                          .data()! as Map<String, dynamic>;
                                      DateTime endTime =
                                          DateTime.parse(data['endDate']);
                                      DateTime now = DateTime.now();
                                      if (DateTime(
                                                  endTime.year,
                                                  endTime.month,
                                                  endTime.day,
                                                  endTime.hour,
                                                  endTime.minute,
                                                  endTime.second)
                                              .difference(DateTime(
                                                  now.year,
                                                  now.month,
                                                  now.day,
                                                  now.hour,
                                                  now.second))
                                              .inSeconds >=
                                          0) {
                                        return ListTile(
                                          title: ListTile(
                                            title: Text(data['title']),
                                            subtitle: Row(
                                              children: [
                                                Text(
                                                    'category : ${data['category']} - course : ${data['course']}')
                                              ],
                                            ),
                                            trailing: Text(
                                                'Schedule Date : ${data['scheduleDate']}'),
                                          ),
                                          leading: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons
                                                .play_circle_outline_rounded),
                                          ),
                                          trailing: MaterialButton(
                                            color: Colors.amber,
                                            onPressed: () {},
                                            child: Text('Edit'),
                                          ),
                                        );
                                      } else {
                                        return Container();
                                      }
                                    }).toList(),
                                  );
                                }),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          bottom:
                              MediaQuery.of(context).size.width * (1 / 153.6)),
                      child: ExpansionTile(
                        backgroundColor: Colors.white,
                        title: const Text('Completed'),
                        children: [
                          SingleChildScrollView(
                            child: StreamBuilder<QuerySnapshot>(
                                stream: FirebaseFirestore.instance
                                    .collection('liveVideos')
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
                                  return ListView(
                                    shrinkWrap: true,
                                    physics: ClampingScrollPhysics(),
                                    children: snapshot.data!.docs
                                        .map((DocumentSnapshot document) {
                                      Map<String, dynamic> data = document
                                          .data()! as Map<String, dynamic>;
                                      DateTime endTime =
                                          DateTime.parse(data['endDate']);
                                      DateTime now = DateTime.now();
                                      if (DateTime(
                                                  endTime.year,
                                                  endTime.month,
                                                  endTime.day,
                                                  endTime.hour,
                                                  endTime.minute,
                                                  endTime.second)
                                              .difference(DateTime(
                                                  now.year,
                                                  now.month,
                                                  now.day,
                                                  now.hour,
                                                  now.second))
                                              .inSeconds <
                                          0) {
                                        return ListTile(
                                          title: ListTile(
                                            title: Text(data['title']),
                                            subtitle: Row(
                                              children: [
                                                Text(
                                                    'category : ${data['category']} - course : ${data['course']}')
                                              ],
                                            ),
                                            trailing: Text(
                                                'Schedule Date : ${data['scheduleDate']}'),
                                          ),
                                          leading: IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons
                                                .play_circle_outline_rounded),
                                          ),
                                          trailing: MaterialButton(
                                            color: Colors.amber,
                                            onPressed: () {},
                                            child: Text('Edit'),
                                          ),
                                        );
                                      } else {
                                        return Container();
                                      }
                                    }).toList(),
                                  );
                                }),
                          ),
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
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(),
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
                text: 'Schedule Video',
                popUpChild: Form(
                  key: _liveVideoFormKey,
                  child: Wrap(
                    children: [
                      const Divider(
                        color: Colors.amber,
                      ),
                      PopUpTextField(
                        controller: _titleController,
                        hint: 'WEB DEVELOPMENT | PART-1 ',
                        label: 'Title',
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
                        hint: 'Web',
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
                        hint: 'WEB DEVELOPMENT',
                        label: 'Course Name',
                        widthRatio: 1,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("Field cannot be empty");
                          }
                          return null;
                        },
                      ),
                      PopUpTextField(
                        controller: _scheduleDateController,
                        hint: 'YYYY-MM-DD hh:mm:ss',
                        label: 'Schedule Date & Time',
                        widthRatio: 1,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("Field cannot be empty");
                          }
                          return null;
                        },
                      ),
                      PopUpTextField(
                        controller: _endDateController,
                        hint: 'YYYY-MM-DD hh:mm:ss',
                        label: 'Excepted End Date&Time',
                        widthRatio: 1,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return ("Field cannot be empty");
                          }
                          return null;
                        },
                      ),
                      // Material(
                      //   type: MaterialType.button,
                      //   color: Colors.amber,
                      //   borderRadius: BorderRadius.circular(50),
                      //   child: MaterialButton(
                      //     padding: const EdgeInsets.all(20),
                      //     onPressed: () async {
                      //       await uploadFile();
                      //     },
                      //     child: const Text('Pick Image'),
                      //   ),
                      // ),
                    ],
                  ),
                ),
                popUpactions: [
                  Material(
                    color: Colors.amberAccent,
                    elevation: 4,
                    type: MaterialType.button,
                    child: MaterialButton(
                      onPressed: () async {
                        if (_liveVideoFormKey.currentState!.validate()) {
                          try {
                            await FirebaseFirestore.instance
                                .collection('liveVideos')
                                .doc()
                                .set(LiveVideoModel(
                                        title: _titleController.text.trim(),
                                        category:
                                            _categoryController.text.trim(),
                                        course: _courseController.text.trim(),
                                        scheduleDate:
                                            _scheduleDateController.text.trim(),
                                        endDate: _endDateController.text.trim(),
                                        link: "")
                                    .toJson())
                                .then((value) => print("Video Added"))
                                .catchError((error) =>
                                    print("Failed to add Video: $error"));
                          } on FirebaseAuthException catch (error) {
                            switch (error.code) {
                              default:
                                errorMessage =
                                    "An undefined Error happened.+$error";
                            }
                            Fluttertoast.showToast(msg: errorMessage!);
                          }
                          Fluttertoast.showToast(
                              msg: "Free Video Added Successfully");
                          if (!mounted) {
                            return;
                          }
                          Navigator.of(context, rootNavigator: true).pop();
                        }
                      },
                      padding: EdgeInsets.all(
                          MediaQuery.of(context).size.width / 76.8),
                      child: Text(
                        'Add Video',
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
