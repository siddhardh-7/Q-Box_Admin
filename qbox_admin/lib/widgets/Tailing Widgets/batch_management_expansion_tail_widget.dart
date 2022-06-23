import 'package:flutter/material.dart';
import 'package:qbox_admin/widgets/pop_up_text_field.dart';
import 'package:qbox_admin/widgets/submit_button.dart';

class BatchManagementExpansionTailWidget extends StatelessWidget {
  const BatchManagementExpansionTailWidget({
    Key? key,
    required GlobalKey<FormState> formKey,
    required bool customTileExpanded,
  })  : _formKey = formKey,
        _customTileExpanded = customTileExpanded,
        super(key: key);

  final GlobalKey<FormState> _formKey;
  final bool _customTileExpanded;

  @override
  Widget build(BuildContext context) {
    return Row(
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('Add New Course Category'),
                          IconButton(
                              onPressed: () {
                                Navigator.of(context, rootNavigator: true)
                                    .pop();
                              },
                              icon: const Icon(Icons.close_rounded))
                        ],
                      ),
                      contentPadding: EdgeInsets.all(
                          MediaQuery.of(context).size.width * (2 / 153.6)),
                      content: Form(
                        key: _formKey,
                        child: SizedBox(
                          width:
                              MediaQuery.of(context).size.width * (700 / 1563),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: const [
                              Divider(
                                color: Colors.amber,
                              ),
                              PopUpTextField(
                                  hint: 'Course Name',
                                  label: 'Course Name',
                                  widthRatio: 2),
                              PopUpTextField(
                                  hint: 'Category',
                                  label: 'Course Category',
                                  widthRatio: 2),
                              PopUpTextField(
                                  hint: 'Batch S',
                                  label: 'Batch Name',
                                  widthRatio: 2),
                              PopUpTextField(
                                  hint: '',
                                  label: 'Starting Date',
                                  widthRatio: 2),
                              PopUpTextField(
                                  hint: '',
                                  label: 'Ending Date',
                                  widthRatio: 2),
                              PopUpTextField(
                                  hint: '60',
                                  label: 'Batch Strength',
                                  widthRatio: 2),
                            ],
                          ),
                        ),
                      ),
                      actions: [
                        SubmitButton(text: 'Add Batch', onPressed: () {}),
                      ],
                    ),
                  );
                });
          },
          icon: const Icon(Icons.add_circle_outline),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * (1 / 153.6),
        ),
        Icon(
          _customTileExpanded
              ? Icons.keyboard_arrow_up_outlined
              : Icons.keyboard_arrow_down_outlined,
        ),
      ],
    );
  }
}
