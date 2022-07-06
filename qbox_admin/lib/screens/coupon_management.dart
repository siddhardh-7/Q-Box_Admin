import 'package:flutter/material.dart';
import 'package:qbox_admin/widgets/bottom_material_button.dart';
import 'package:qbox_admin/widgets/pop_up_text_field.dart';
import 'package:qbox_admin/widgets/submit_button.dart';

class CouponManagement extends StatefulWidget {
  const CouponManagement({Key? key}) : super(key: key);

  @override
  State<CouponManagement> createState() => _CouponManagementState();
}

class _CouponManagementState extends State<CouponManagement> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding:
            EdgeInsets.all(MediaQuery.of(context).size.width * (1 / 153.6)),
        child: Column(
          children: [
            Text(
              'Coupons',
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
                child: BottomMaterialButton(
                  text: 'Add Coupon',
                  popUpChild: Wrap(
                    children: const [
                      Divider(
                        color: Colors.amber,
                      ),
                      PopUpTextField(
                          hint: 'Title', label: 'Title', widthRatio: 2),
                      PopUpTextField(
                          hint: '12%', label: 'Discount', widthRatio: 1),
                      PopUpTextField(
                          hint: 'ZSCVFGV', label: 'Coupon Code', widthRatio: 1),
                      PopUpTextField(
                          hint: 'Jee', label: 'Category', widthRatio: 1),
                      PopUpTextField(
                          hint: 'DD-MM-YYYY',
                          label: 'Expiry Date',
                          widthRatio: 1),
                      PopUpTextField(
                          hint: '', label: 'Description', widthRatio: 2),
                    ],
                  ),
                  popUpactions: [
                    SubmitButton(text: 'Add Coupon', onPressed: () async {})
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
