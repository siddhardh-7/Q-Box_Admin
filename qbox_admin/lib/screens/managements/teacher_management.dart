import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:qbox_admin/models/category_model.dart';
import 'package:qbox_admin/widgets/pop_up_text_field.dart';

class TeacherManagement extends StatefulWidget {
  const TeacherManagement({Key? key}) : super(key: key);

  @override
  State<TeacherManagement> createState() => _TeacherManagementState();
}

class _TeacherManagementState extends State<TeacherManagement> {
  final _teacherFormKey = GlobalKey<FormState>();
  final _teacherController = TextEditingController();

  String? errorMessage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            EdgeInsets.all(MediaQuery.of(context).size.width * (1 / 153.6)),
        child: Column(
          children: [
            Text(
              'Teachers',
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
                          CategoryModel model = CategoryModel.fromJson(data);
                          List<String>? teachers = model.teachers;
                          return ExpansionTile(
                            backgroundColor: Colors.white,
                            title: ListTile(
                              title: Text(
                                '${data['title'].toString().toUpperCase()} TEACHERS',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              trailing: IconButton(
                                onPressed: () {
                                  showDialog(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Center(
                                          child: SingleChildScrollView(
                                            child: StatefulBuilder(builder:
                                                (BuildContext context,
                                                    StateSetter setState) {
                                              return AlertDialog(
                                                title: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    const Text('Add Teacher'),
                                                    IconButton(
                                                        onPressed: () {
                                                          Navigator.of(context,
                                                                  rootNavigator:
                                                                      true)
                                                              .pop();
                                                        },
                                                        icon: const Icon(Icons
                                                            .close_rounded))
                                                  ],
                                                ),
                                                contentPadding: EdgeInsets.all(
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        (2 / 153.6)),
                                                content: Form(
                                                  key: _teacherFormKey,
                                                  child: SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            (700 / 1563),
                                                    child: Column(
                                                      children: [
                                                        const Divider(
                                                          color: Colors.amber,
                                                        ),
                                                        PopUpTextField(
                                                          controller:
                                                              _teacherController,
                                                          hint: '',
                                                          label: 'Teacher Name',
                                                          widthRatio: 2,
                                                          validator: (value) {
                                                            if (value!
                                                                .isEmpty) {
                                                              return ("Field cannot be empty");
                                                            }
                                                            return null;
                                                          },
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                actions: [
                                                  Material(
                                                    color: Colors.amberAccent,
                                                    elevation: 4,
                                                    type: MaterialType.button,
                                                    child: MaterialButton(
                                                      onPressed: () async {
                                                        if (_teacherFormKey
                                                            .currentState!
                                                            .validate()) {
                                                          try {
                                                            final title =
                                                                document.id;
                                                            await FirebaseFirestore
                                                                .instance
                                                                .collection(
                                                                    'cat')
                                                                .doc(title)
                                                                .update({
                                                                  "teachers":
                                                                      FieldValue
                                                                          .arrayUnion([
                                                                    _teacherController
                                                                        .text
                                                                        .trim()
                                                                  ])
                                                                })
                                                                .then((value) =>
                                                                    print(
                                                                        "Teacher Added"))
                                                                .catchError(
                                                                    (error) =>
                                                                        print(
                                                                            "Failed to add teacher: $error"));
                                                          } on FirebaseAuthException catch (error) {
                                                            switch (
                                                                error.code) {
                                                              default:
                                                                errorMessage =
                                                                    "An undefined Error happened.+$error";
                                                            }
                                                            Fluttertoast.showToast(
                                                                msg:
                                                                    errorMessage!);
                                                          }
                                                          Fluttertoast.showToast(
                                                              msg:
                                                                  "Teacher Added Successfully");
                                                          if (!mounted) return;
                                                          Navigator.of(context,
                                                                  rootNavigator:
                                                                      true)
                                                              .pop();
                                                        }
                                                      },
                                                      padding: EdgeInsets.all(
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              76.8),
                                                      child: Text(
                                                        'Add Teacher',
                                                        style: TextStyle(
                                                          fontSize: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width /
                                                              86,
                                                          color: Colors.black,
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
                                icon: const Icon(Icons.add_circle_outline),
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
                              if (teachers != null)
                                for (String teacher in teachers)
                                  ListTile(
                                    title: Text(teacher),
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
