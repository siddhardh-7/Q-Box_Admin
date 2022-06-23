import 'package:flutter/material.dart';

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
                        title: const Text('Engineering Course'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
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
                                              const Text(
                                                  'Add New Course Category'),
                                              IconButton(
                                                  onPressed: () {
                                                    Navigator.of(context,
                                                            rootNavigator: true)
                                                        .pop();
                                                  },
                                                  icon: const Icon(
                                                      Icons.close_rounded))
                                            ],
                                          ),
                                          contentPadding: EdgeInsets.all(
                                              MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  (2 / 153.6)),
                                          content: Form(
                                            key: _formKey,
                                            child: SizedBox(
                                              width: 700,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  const Divider(
                                                    color: Colors.amber,
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextFormField(
                                                      decoration:
                                                          InputDecoration(
                                                        hintText: 'Course Name',
                                                        label: const Text(
                                                            'Course Name'),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Colors.white,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(12),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Theme.of(
                                                                    context)
                                                                .primaryColor,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(12),
                                                        ),
                                                        fillColor:
                                                            Colors.grey[100],
                                                        filled: true,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextFormField(
                                                      decoration:
                                                          InputDecoration(
                                                        hintText:
                                                            'Course Category',
                                                        label: const Text(
                                                            'Course Category'),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Colors.white,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(12),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Theme.of(
                                                                    context)
                                                                .primaryColor,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(12),
                                                        ),
                                                        fillColor:
                                                            Colors.grey[100],
                                                        filled: true,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextFormField(
                                                      decoration:
                                                          InputDecoration(
                                                        hintText:
                                                            'Eg:3000 perm',
                                                        label: const Text(
                                                            'Course Payment Monthly'),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Colors.white,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(12),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Theme.of(
                                                                    context)
                                                                .primaryColor,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(12),
                                                        ),
                                                        fillColor:
                                                            Colors.grey[100],
                                                        filled: true,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextFormField(
                                                      decoration:
                                                          InputDecoration(
                                                        hintText:
                                                            'Eg:24k per year',
                                                        label: const Text(
                                                            'Course Payment Yearly'),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Colors.white,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(12),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Theme.of(
                                                                    context)
                                                                .primaryColor,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(12),
                                                        ),
                                                        fillColor:
                                                            Colors.grey[100],
                                                        filled: true,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextFormField(
                                                      decoration:
                                                          InputDecoration(
                                                        hintText: 'Eg:5k',
                                                        label: const Text(
                                                            'Course Payment Price'),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Colors.white,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(12),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Theme.of(
                                                                    context)
                                                                .primaryColor,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(12),
                                                        ),
                                                        fillColor:
                                                            Colors.grey[100],
                                                        filled: true,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: TextFormField(
                                                      decoration:
                                                          InputDecoration(
                                                        hintText: 'Eg:24months',
                                                        label: const Text(
                                                            'Course Duration'),
                                                        enabledBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              const BorderSide(
                                                            color: Colors.white,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(12),
                                                        ),
                                                        focusedBorder:
                                                            OutlineInputBorder(
                                                          borderSide:
                                                              BorderSide(
                                                            color: Theme.of(
                                                                    context)
                                                                .primaryColor,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(12),
                                                        ),
                                                        fillColor:
                                                            Colors.grey[100],
                                                        filled: true,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          actions: [
                                            Align(
                                              alignment: Alignment.bottomRight,
                                              child: Material(
                                                color: Colors.amberAccent,
                                                elevation: 4,
                                                type: MaterialType.button,
                                                child: MaterialButton(
                                                  onPressed: () {},
                                                  padding: EdgeInsets.all(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width /
                                                          76.8),
                                                  child: const Text(
                                                    'Add New Category',
                                                    style: TextStyle(),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    });
                              },
                              icon: const Icon(Icons.add_circle_outline),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width *
                                  (1 / 153.6),
                            ),
                            Icon(
                              _customTileExpanded
                                  ? Icons.keyboard_arrow_up_outlined
                                  : Icons.keyboard_arrow_down_outlined,
                            ),
                          ],
                        ),
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
              child: Material(
                color: Colors.amberAccent,
                elevation: 4,
                type: MaterialType.button,
                child: MaterialButton(
                  onPressed: () {},
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width / 76.8),
                  child: Text(
                    'Add New Course',
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
