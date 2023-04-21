import 'package:aclertest/Models/weekModel.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class EmployeeDataSource extends DataGridSource {
  /// Creates the employee data source class with required details.
  EmployeeDataSource({required List<WeekModel> employeeData}) {
    _weekModelData = employeeData
        .map<DataGridRow>((e) => DataGridRow(cells: [
              DataGridCell<String>(
                  columnName: 'Exersise', value: e.exersiseType),
              DataGridCell<int>(columnName: 'total', value: e.total),
              DataGridCell<int>(columnName: 'sunday', value: e.sunday),
              DataGridCell<int>(columnName: 'monday', value: e.monday),
              DataGridCell<int>(columnName: 'tuesday', value: e.tuesday),
              DataGridCell<String>(
                  columnName: 'wednessday', value: e.wednessday),
              DataGridCell<String>(columnName: 'thursday', value: e.thursday),
              DataGridCell<String>(columnName: 'friday', value: e.friday),
              DataGridCell<String>(columnName: 'satuday', value: e.saturday),
            ]))
        .toList();
  }

  List<DataGridRow> _weekModelData = [];

  @override
  List<DataGridRow> get rows => _weekModelData;

  @override
  DataGridRowAdapter buildRow(DataGridRow row) {
    Color? backgroundColor;
    return DataGridRowAdapter(
        color: backgroundColor,
        cells: row.getCells().map<Widget>((e) {
          if (e.columnName == 'total') {
            backgroundColor = Colors.grey;
          }
          return Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(8.0),
            child: Text(e.value.toString()),
          );
        }).toList());
  }

  @override
  Widget? buildTableSummaryCellWidget(
      GridTableSummaryRow summaryRow,
      GridSummaryColumn? summaryColumn,
      RowColumnIndex rowColumnIndex,
      String summaryValue) {
    return Container(
      padding: EdgeInsets.all(15.0),
      child: Text(summaryValue),
    );
  }
}
