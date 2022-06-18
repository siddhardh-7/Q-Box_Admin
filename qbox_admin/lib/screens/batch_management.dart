import 'package:flutter/material.dart';

class BatchManagement extends StatefulWidget {
  const BatchManagement({Key? key}) : super(key: key);

  @override
  State<BatchManagement> createState() => _BatchManagementState();
}

class _BatchManagementState extends State<BatchManagement> {
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
                        title: const Text('CSE Batch'),
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
                            title: const Text('Batch 1 CSE'),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.mode_edit_rounded),
                            ),
                          ),
                          ListTile(
                            title: const Text('Batch 2 CSE'),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.mode_edit_rounded),
                            ),
                          ),
                          ListTile(
                            title: const Text('Batch 3 CSE'),
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
                        title: const Text('Web Development Batch'),
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
                            title: const Text('HTML Batch 1'),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.mode_edit_rounded),
                            ),
                          ),
                          ListTile(
                            title: const Text('Angular Batch 1'),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.mode_edit_rounded),
                            ),
                          ),
                          ListTile(
                            title: const Text('Vue Batch 1'),
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
                            title: const Text('Node.js Batch 1'),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.mode_edit_rounded),
                            ),
                          ),
                          ListTile(
                            title: const Text('django Batch 1'),
                            trailing: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.mode_edit_rounded),
                            ),
                          ),
                          ListTile(
                            title: const Text('Mysql Batch 1'),
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
                    'Add New Batch',
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
