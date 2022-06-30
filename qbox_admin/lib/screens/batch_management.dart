import 'package:flutter/material.dart';
import 'package:qbox_admin/widgets/Tailing%20Widgets/batch_management_expansion_tail_widget.dart';

class BatchManagement extends StatefulWidget {
  const BatchManagement({Key? key}) : super(key: key);

  @override
  State<BatchManagement> createState() => _BatchManagementState();
}

class _BatchManagementState extends State<BatchManagement> {
  bool _customTileExpanded = false;

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
                        title: const Text('Engineering'),
                        children: [
                          ExpansionTile(
                            backgroundColor: Colors.white,
                            title: const Text('CSE Batch'),
                            trailing: BatchManagementExpansionTailWidget(
                                customTileExpanded: _customTileExpanded),
                            onExpansionChanged: (bool expanded) {
                              setState(() => _customTileExpanded = expanded);
                            },
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
                          ExpansionTile(
                            backgroundColor: Colors.white,
                            title: const Text('CSE Batch'),
                            trailing: BatchManagementExpansionTailWidget(
                                customTileExpanded: _customTileExpanded),
                            onExpansionChanged: (bool expanded) {
                              setState(() => _customTileExpanded = expanded);
                            },
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
                              ListTile(
                                title: const Text('Batch 1 ECE'),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.mode_edit_rounded),
                                ),
                              ),
                              ListTile(
                                title: const Text('Batch 2 ECE'),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.mode_edit_rounded),
                                ),
                              ),
                              ListTile(
                                title: const Text('Batch 3 ECE'),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.mode_edit_rounded),
                                ),
                              ),
                              const SizedBox(),
                            ],
                          ),
                          ExpansionTile(
                            backgroundColor: Colors.white,
                            title: const Text('EEE Batch'),
                            trailing: BatchManagementExpansionTailWidget(
                                customTileExpanded: _customTileExpanded),
                            onExpansionChanged: (bool expanded) {
                              setState(() => _customTileExpanded = expanded);
                            },
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
                              ListTile(
                                title: const Text('Batch 1 EEE'),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.mode_edit_rounded),
                                ),
                              ),
                              ListTile(
                                title: const Text('Batch 2 EEE'),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.mode_edit_rounded),
                                ),
                              ),
                              ListTile(
                                title: const Text('Batch 3 EEE'),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.mode_edit_rounded),
                                ),
                              ),
                              const SizedBox(),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          bottom:
                              MediaQuery.of(context).size.width * (1 / 153.6)),
                      child: ExpansionTile(
                        title: const Text('Web Development Batch'),
                        children: [
                          ExpansionTile(
                            backgroundColor: Colors.white,
                            title: const Text('HTML Batch'),
                            trailing: BatchManagementExpansionTailWidget(
                                customTileExpanded: _customTileExpanded),
                            onExpansionChanged: (bool expanded) {
                              setState(() => _customTileExpanded = expanded);
                            },
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
                              ListTile(
                                title: const Text('HTML Batch 1'),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.mode_edit_rounded),
                                ),
                              ),
                              ListTile(
                                title: const Text('HTML Batch 2'),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.mode_edit_rounded),
                                ),
                              ),
                              ListTile(
                                title: const Text('HTML Batch 3'),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.mode_edit_rounded),
                                ),
                              ),
                              const SizedBox(),
                            ],
                          ),
                          ExpansionTile(
                            backgroundColor: Colors.white,
                            title: const Text('Angular Batch'),
                            trailing: BatchManagementExpansionTailWidget(
                                customTileExpanded: _customTileExpanded),
                            onExpansionChanged: (bool expanded) {
                              setState(() => _customTileExpanded = expanded);
                            },
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
                              ListTile(
                                title: const Text('Angular Batch 1'),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.mode_edit_rounded),
                                ),
                              ),
                              ListTile(
                                title: const Text('Angular Batch 2'),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.mode_edit_rounded),
                                ),
                              ),
                              ListTile(
                                title: const Text('Angular Batch 3'),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.mode_edit_rounded),
                                ),
                              ),
                              const SizedBox(),
                            ],
                          ),
                          ExpansionTile(
                            backgroundColor: Colors.white,
                            title: const Text('Vue Batch'),
                            trailing: BatchManagementExpansionTailWidget(
                                customTileExpanded: _customTileExpanded),
                            onExpansionChanged: (bool expanded) {
                              setState(() => _customTileExpanded = expanded);
                            },
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
                              ListTile(
                                title: const Text('Vue Batch 1'),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.mode_edit_rounded),
                                ),
                              ),
                              ListTile(
                                title: const Text('Vue Batch 2'),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.mode_edit_rounded),
                                ),
                              ),
                              ListTile(
                                title: const Text('Vue Batch 3'),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.mode_edit_rounded),
                                ),
                              ),
                              const SizedBox(),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                          bottom:
                              MediaQuery.of(context).size.width * (1 / 153.6)),
                      child: ExpansionTile(
                        title: const Text('Backend Development'),
                        children: [
                          ExpansionTile(
                            backgroundColor: Colors.white,
                            title: const Text('Node.js Development Course'),
                            trailing: BatchManagementExpansionTailWidget(
                                customTileExpanded: _customTileExpanded),
                            onExpansionChanged: (bool expanded) {
                              setState(() => _customTileExpanded = expanded);
                            },
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
                              ListTile(
                                title: const Text('Node.js Batch 1'),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.mode_edit_rounded),
                                ),
                              ),
                              ListTile(
                                title: const Text('Node.js Batch 2'),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.mode_edit_rounded),
                                ),
                              ),
                              ListTile(
                                title: const Text('Node.js Batch 3'),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.mode_edit_rounded),
                                ),
                              ),
                            ],
                          ),
                          ExpansionTile(
                            backgroundColor: Colors.white,
                            title: const Text('django Development Course'),
                            trailing: BatchManagementExpansionTailWidget(
                                customTileExpanded: _customTileExpanded),
                            onExpansionChanged: (bool expanded) {
                              setState(() => _customTileExpanded = expanded);
                            },
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
                              ListTile(
                                title: const Text('django Batch 1'),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.mode_edit_rounded),
                                ),
                              ),
                              ListTile(
                                title: const Text('django Batch 2'),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.mode_edit_rounded),
                                ),
                              ),
                              ListTile(
                                title: const Text('django Batch 3'),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.mode_edit_rounded),
                                ),
                              ),
                            ],
                          ),
                          ExpansionTile(
                            backgroundColor: Colors.white,
                            title: const Text('MYSQL Development Course'),
                            trailing: BatchManagementExpansionTailWidget(
                                customTileExpanded: _customTileExpanded),
                            onExpansionChanged: (bool expanded) {
                              setState(() => _customTileExpanded = expanded);
                            },
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
                              ListTile(
                                title: const Text('MYSQL Batch 1'),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.mode_edit_rounded),
                                ),
                              ),
                              ListTile(
                                title: const Text('MYSQL Batch 2'),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.mode_edit_rounded),
                                ),
                              ),
                              ListTile(
                                title: const Text('MYSQL Batch 3'),
                                trailing: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.mode_edit_rounded),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
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
