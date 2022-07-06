import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:qbox_admin/models/batch_model.dart';
import 'package:qbox_admin/models/category_model.dart';
import 'package:qbox_admin/utilities/dimensions.dart';
import 'package:qbox_admin/widgets/pop_up_text_field.dart';
import 'package:qbox_admin/widgets/submit_button.dart';

class BatchManagement extends StatefulWidget {
  const BatchManagement({Key? key}) : super(key: key);

  @override
  State<BatchManagement> createState() => _BatchManagementState();
}

class _BatchManagementState extends State<BatchManagement> {
  String? errorMessage;
  List<Courses> courseModelsList = [];
  Set<String> teachersList = {};
  String teacherDropDownValue = 'Teacher 1';
  final _batchController = TextEditingController();
  final GlobalKey<FormState> _batchFormKey = GlobalKey<FormState>();

  var teacherItems = [
    'Teacher 1',
    'Teacher 2',
    'Teacher 3',
    'Teacher 4',
    'Teacher 5'
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
              'Batches',
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
                child: StreamBuilder<QuerySnapshot>(
                    stream: FirebaseFirestore.instance
                        .collection('cat')
                        .snapshots(),
                    builder: (BuildContext context,
                        AsyncSnapshot<QuerySnapshot> snapshot) {
                      if (snapshot.hasError) {
                        return const Text('Something went wrong!');
                      }
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      return ListView(
                        shrinkWrap: true,
                        physics: const ClampingScrollPhysics(),
                        children: snapshot.data!.docs
                            .map((DocumentSnapshot document) {
                          Map<String, dynamic> data =
                              document.data()! as Map<String, dynamic>;
                          var courses = data['courses'];
                          print(courses);
                          courses.forEach((key, value) {
                            Courses course = Courses.fromJson(value);
                            courseModelsList.add(course);
                          });
                          return ExpansionTile(
                            backgroundColor: Colors.white,
                            title: ListTile(
                              title: Text(
                                data['title'].toUpperCase(),
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal:
                                        MediaQuery.of(context).size.width *
                                            (1 / 153.6)),
                                child: const Divider(
                                  color: Colors.amber,
                                ),
                              ),
                              for (Courses course in courseModelsList)
                                ExpansionTile(
                                  title: ListTile(
                                    title: Text(course.courseName!),
                                    trailing: IconButton(
                                      onPressed: () {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return Center(
                                                child: SingleChildScrollView(
                                                  child: StatefulBuilder(
                                                      builder:
                                                          (BuildContext context,
                                                              StateSetter
                                                                  setState) {
                                                    return AlertDialog(
                                                      title: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          const Text(
                                                              'Add New Course Category'),
                                                          IconButton(
                                                              onPressed: () {
                                                                Navigator.of(
                                                                        context,
                                                                        rootNavigator:
                                                                            true)
                                                                    .pop();
                                                              },
                                                              icon: const Icon(Icons
                                                                  .close_rounded))
                                                        ],
                                                      ),
                                                      contentPadding: EdgeInsets
                                                          .all(MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              (2 / 153.6)),
                                                      content: SizedBox(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            (700 / 1563),
                                                        child: Form(
                                                          key: _batchFormKey,
                                                          child: Column(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              const Divider(
                                                                color: Colors
                                                                    .amber,
                                                              ),
                                                              PopUpTextField(
                                                                controller:
                                                                    _batchController,
                                                                validator:
                                                                    (value) {
                                                                  if (value!
                                                                      .isEmpty) {
                                                                    return ("Field cannot be empty");
                                                                  }
                                                                  return null;
                                                                },
                                                                hint: 'Batch S',
                                                                label:
                                                                    'Batch Name',
                                                                widthRatio: 2,
                                                              ),
                                                              Container(
                                                                margin: EdgeInsets.all(MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width *
                                                                    (1 /
                                                                        153.6)),
                                                                width: double
                                                                    .maxFinite,
                                                                padding: EdgeInsets.symmetric(
                                                                    horizontal: MediaQuery.of(context)
                                                                            .size
                                                                            .width *
                                                                        (1 /
                                                                            153.6),
                                                                    vertical: MediaQuery.of(context)
                                                                            .size
                                                                            .height *
                                                                        (5 /
                                                                            792)),
                                                                decoration:
                                                                    BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              12),
                                                                  color: Colors
                                                                      .grey
                                                                      .withOpacity(
                                                                          0.15),
                                                                ),
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .spaceBetween,
                                                                  children: [
                                                                    Text(
                                                                      'Teachers  :',
                                                                      style:
                                                                          TextStyle(
                                                                        fontSize:
                                                                            MediaQuery.of(context).size.width *
                                                                                (18 / 1536),
                                                                      ),
                                                                    ),
                                                                    DropdownButton(
                                                                      elevation:
                                                                          0,
                                                                      dropdownColor:
                                                                          Colors
                                                                              .white,
                                                                      focusColor:
                                                                          Colors
                                                                              .white,
                                                                      value:
                                                                          teacherDropDownValue,
                                                                      items: teacherItems.map(
                                                                          (String
                                                                              items) {
                                                                        return DropdownMenuItem(
                                                                          value:
                                                                              items,
                                                                          child:
                                                                              Text(items),
                                                                        );
                                                                      }).toList(),
                                                                      onChanged:
                                                                          (String?
                                                                              newValue) {
                                                                        setState(
                                                                            () {
                                                                          teacherDropDownValue =
                                                                              newValue!;
                                                                          teachersList
                                                                              .add(newValue);
                                                                        });
                                                                      },
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              Wrap(
                                                                direction: Axis
                                                                    .horizontal,
                                                                alignment:
                                                                    WrapAlignment
                                                                        .center,
                                                                crossAxisAlignment:
                                                                    WrapCrossAlignment
                                                                        .center,
                                                                children: [
                                                                  for (String teacher
                                                                      in teachersList)
                                                                    UnconstrainedBox(
                                                                      child:
                                                                          Container(
                                                                        margin: EdgeInsets.all(Dimensions.padding20 /
                                                                            10),
                                                                        padding:
                                                                            EdgeInsets.only(left: Dimensions.padding20 / 10),
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          borderRadius:
                                                                              BorderRadius.circular(50),
                                                                          color:
                                                                              Colors.amberAccent,
                                                                          border:
                                                                              Border.all(color: Colors.black87),
                                                                        ),
                                                                        child:
                                                                            Row(
                                                                          children: [
                                                                            Text(teacher),
                                                                            IconButton(
                                                                              onPressed: () {
                                                                                setState(() {
                                                                                  teachersList.remove(teacher);
                                                                                });
                                                                              },
                                                                              icon: const Icon(
                                                                                Icons.close_rounded,
                                                                                color: Colors.black87,
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      actions: [
                                                        Material(
                                                          color: Colors
                                                              .amberAccent,
                                                          elevation: 4,
                                                          type: MaterialType
                                                              .button,
                                                          child: MaterialButton(
                                                            onPressed:
                                                                () async {
                                                              if (_batchFormKey
                                                                  .currentState!
                                                                  .validate()) {
                                                                final title =
                                                                    document.id;
                                                                try {
                                                                  final documentReference = FirebaseFirestore
                                                                      .instance
                                                                      .collection(
                                                                          'category')
                                                                      .doc(
                                                                          title);
                                                                  final documentPayments = course
                                                                      .payment!
                                                                      .toJson();
                                                                  final documentBatches =
                                                                      course
                                                                          .batches;
                                                                  await documentReference
                                                                      .update({
                                                                        "courses":
                                                                            FieldValue.arrayRemove([
                                                                          {
                                                                            "courseName":
                                                                                course.courseName!,
                                                                            "payments":
                                                                                documentPayments,
                                                                            "batches":
                                                                                documentBatches!
                                                                          }
                                                                        ])
                                                                      })
                                                                      .then((value) =>
                                                                          print(
                                                                              'course Removed ${course.courseName} , ${documentPayments} , ${documentBatches}'))
                                                                      .catchError(
                                                                          (error) =>
                                                                              print("Failed to add batch: $error"));
                                                                  await documentReference.update({
                                                                    "courses":
                                                                        FieldValue
                                                                            .arrayUnion([
                                                                      {
                                                                        "courseName":
                                                                            course.courseName!,
                                                                        "payments":
                                                                            documentPayments,
                                                                        "batches":
                                                                            documentBatches +
                                                                                [
                                                                                  _batchController.text.trim()
                                                                                ]
                                                                      }
                                                                    ])
                                                                  }).catchError(
                                                                      (error) =>
                                                                          print(
                                                                              "Failed to add batch: $error"));
                                                                  await FirebaseFirestore
                                                                      .instance
                                                                      .collection(
                                                                          'batches')
                                                                      .doc(_batchController
                                                                          .text
                                                                          .trim())
                                                                      .update(BatchModel(
                                                                              batchName: _batchController.text
                                                                                  .trim(),
                                                                              teachers: teachersList
                                                                                  .toList())
                                                                          .toJson())
                                                                      .catchError(
                                                                          (error) =>
                                                                              print("Failed to add category: $error"));
                                                                } on FirebaseAuthException catch (error) {
                                                                  switch (error
                                                                      .code) {
                                                                    default:
                                                                      errorMessage =
                                                                          "An undefined Error happened.+$error";
                                                                  }
                                                                  Fluttertoast
                                                                      .showToast(
                                                                          msg:
                                                                              errorMessage!);
                                                                }
                                                                Fluttertoast
                                                                    .showToast(
                                                                        msg:
                                                                            "Category Added Successfully");
                                                                if (!mounted)
                                                                  return;
                                                                Navigator.of(
                                                                        context,
                                                                        rootNavigator:
                                                                            true)
                                                                    .pop();
                                                              }
                                                            },
                                                            padding: EdgeInsets
                                                                .all(MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width /
                                                                    76.8),
                                                            child: Text(
                                                              'Add Batch',
                                                              style: TextStyle(
                                                                fontSize: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width /
                                                                    86,
                                                                color: Colors
                                                                    .black,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    );
                                                  }),
                                                ),
                                              );
                                            });
                                      },
                                      icon:
                                          const Icon(Icons.add_circle_outline),
                                    ),
                                  ),
                                  children: [
                                    if (course.batches != null &&
                                        course.batches!.isNotEmpty)
                                      for (var batch in course.batches!)
                                        ListTile(
                                          title: Text(batch),
                                        )
                                  ],
                                ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    (10 / 792),
                              ),
                            ],
                          );
                        }).toList(),
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
