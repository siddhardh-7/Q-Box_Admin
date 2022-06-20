import 'package:flutter/material.dart';

class CouponManagement extends StatefulWidget {
  const CouponManagement({Key? key}) : super(key: key);

  @override
  State<CouponManagement> createState() => _CouponManagementState();
}

class _CouponManagementState extends State<CouponManagement> {
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
              'Tests',
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
                          label: Text('Serial No'),
                        ),
                        DataColumn(
                          label: Text('Title'),
                        ),
                        DataColumn(
                            label: Text(
                          'Discount',
                        )),
                        DataColumn(
                            label: Text(
                          'Coupon Code',
                        )),
                        DataColumn(
                            label: Text(
                          'Category',
                        )),
                        DataColumn(
                            label: Text(
                          'Expiry Date',
                        )),
                        DataColumn(
                            label: Text(
                          'Description',
                        )),
                      ],
                      rows: const [
                        DataRow(cells: [
                          DataCell(Text('1')),
                          DataCell(Text('First Day')),
                          DataCell(Text('12%')),
                          DataCell(Text('ZHSDHSASA')),
                          DataCell(Text('Jee')),
                          DataCell(Text('18.07.2022')),
                          DataCell(Text(
                              '--------------------------------------------------------')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('2')),
                          DataCell(Text('First Day')),
                          DataCell(Text('22%')),
                          DataCell(Text('ZHSDHSASA')),
                          DataCell(Text('Jee')),
                          DataCell(Text('18.07.2022')),
                          DataCell(Text(
                              '--------------------------------------------------------')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('3')),
                          DataCell(Text('Last Day')),
                          DataCell(Text('1%')),
                          DataCell(Text('ZHSDHSASA')),
                          DataCell(Text('Jee')),
                          DataCell(Text('18.07.2022')),
                          DataCell(Text(
                              '--------------------------------------------------------')),
                        ]),
                        DataRow(cells: [
                          DataCell(Text('4')),
                          DataCell(Text('Last Day')),
                          DataCell(Text('2%')),
                          DataCell(Text('ZHSDHSASA')),
                          DataCell(Text('Jee')),
                          DataCell(Text('18.07.2022')),
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
              child: Material(
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
                                  const Text('Add New Course Category'),
                                  IconButton(
                                      onPressed: () {
                                        Navigator.of(context,
                                                rootNavigator: true)
                                            .pop();
                                      },
                                      icon: Icon(Icons.close_rounded))
                                ],
                              ),
                              contentPadding: EdgeInsets.all(
                                  MediaQuery.of(context).size.width *
                                      (2 / 153.6)),
                              content: Form(
                                key: _formKey,
                                child: SizedBox(
                                  width: 700,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Divider(
                                        color: Colors.amber,
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            hintText: 'Title',
                                            label: const Text('Title'),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Colors.white,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            fillColor: Colors.grey[100],
                                            filled: true,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            hintText: 'Discount',
                                            label: const Text('Discount'),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Colors.white,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            fillColor: Colors.grey[100],
                                            filled: true,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            hintText: 'Coupon Code',
                                            label: const Text('Coupon Code'),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Colors.white,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            fillColor: Colors.grey[100],
                                            filled: true,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            hintText: 'Category',
                                            label: const Text('Category'),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Colors.white,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            fillColor: Colors.grey[100],
                                            filled: true,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            hintText: 'Expiry Date',
                                            label: const Text('Expiry Date'),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Colors.white,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            fillColor: Colors.grey[100],
                                            filled: true,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            hintText: 'Description',
                                            label: const Text('Description'),
                                            enabledBorder: OutlineInputBorder(
                                              borderSide: const BorderSide(
                                                color: Colors.white,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(12),
                                            ),
                                            fillColor: Colors.grey[100],
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
                                          MediaQuery.of(context).size.width /
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
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width / 76.8),
                  child: Text(
                    'Add Coupon',
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
