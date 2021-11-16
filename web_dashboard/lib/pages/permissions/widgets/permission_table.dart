import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:web_dashboard/constants/style.dart';
import 'package:web_dashboard/widgets/custom_text.dart';

class PermissionTable extends StatelessWidget {
  const PermissionTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: active.withOpacity(.4), width: .5),
        boxShadow: [
          BoxShadow(
              offset: const Offset(0, 6),
              color: lightGrey.withOpacity(.1),
              blurRadius: 12)
        ],
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(16),
      margin: const EdgeInsets.only(bottom: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 30,
            decoration: BoxDecoration(
              color: light,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: active, width: .5),
            ),
            child: Center(
              child: TextButton(
                child: Row(
                  children: const [
                    CustomText(text: 'Sync'),
                    SizedBox(width: 10),
                    Icon(
                      Icons.sync,
                      size: 18,
                      color: Colors.black,
                    )
                  ],
                ),
                onPressed: () {},
              ),
            ),
          ),
          DataTable2(
              columnSpacing: 12,
              horizontalMargin: 12,
              minWidth: 600,
              columns: const [
                DataColumn2(
                  label: Text('Name'),
                  size: ColumnSize.L,
                ),
                DataColumn(
                  label: Text('Display Name'),
                ),
                DataColumn(
                  label: Text('Action'),
                ),
              ],
              rows: List<DataRow>.generate(
                  50,
                  (index) => DataRow(cells: [
                        const DataCell(CustomText(text: 'Nguyen')),
                        const DataCell(CustomText(text: 'New York City')),
                        DataCell(Center(
                            child: Container(
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                            color: light,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(color: active, width: .5),
                          ),
                          child: Center(
                            child: TextButton(
                              child: Row(
                                children: const [
                                  CustomText(text: 'Edit'),
                                  SizedBox(width: 10),
                                  Icon(
                                    Icons.edit,
                                    size: 18,
                                    color: Colors.black,
                                  )
                                ],
                              ),
                              onPressed: () {},
                            ),
                          ),
                        ))),
                      ])))
        ],
      ),
    );
  }
}
