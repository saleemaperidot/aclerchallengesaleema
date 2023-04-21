import 'package:aclertest/Models/exersiseList.dart';
import 'package:aclertest/Models/weekModel.dart';
import 'package:aclertest/constants.dart';
import 'package:aclertest/employeedatasourse.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  List<WeekModel> WeekExersise = <WeekModel>[];
  late EmployeeDataSource employeeDataSource;

  @override
  void initState() {
    WeekExersise = getExerrsiseData();
    employeeDataSource = EmployeeDataSource(employeeData: WeekExersise);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: Column(children: [
          TextButton(
            child: Text("click"),
            onPressed: () {},
          ),
          Expanded(
            child: SfDataGrid(
              isScrollbarAlwaysShown: true,
              //  controller: ,
              rowHeight: 100,
              headerRowHeight: 100,
              source: employeeDataSource,
              frozenColumnsCount: 2,
              footerFrozenColumnsCount: 1,
              //  frozenRowsCount: 1,
              columnWidthMode: ColumnWidthMode.fill,

              // tableSummaryRows: [
              //   GridTableSummaryRow(
              //       showSummaryInRow: true,
              //       title:
              //           'R+j+E:\t\t\t-{Sum}\t\t\t- {sun} \t\t\t-{mon}\t\t\t {tue}',
              //       columns: [
              //         GridSummaryColumn(
              //             name: 'Sum',
              //             columnName: 'total',
              //             summaryType: GridSummaryType.sum),
              //         GridSummaryColumn(
              //             name: "sun",
              //             columnName: 'sunday',
              //             summaryType: GridSummaryType.sum),
              //         GridSummaryColumn(
              //             name: 'mon',
              //             columnName: 'monday',
              //             summaryType: GridSummaryType.sum),
              //         GridSummaryColumn(
              //             name: 'tue',
              //             columnName: 'tuesday',
              //             summaryType: GridSummaryType.sum)
              //       ],
              //       position: GridTableSummaryRowPosition.bottom),
              //   GridTableSummaryRow(
              //       showSummaryInRow: true,
              //       title: 'Running time \nengagement: {Sum} ',
              //       columns: [
              //         GridSummaryColumn(
              //             name: 'Sum',
              //             columnName: 'total',
              //             summaryType: GridSummaryType.sum)
              //       ],
              //       position: GridTableSummaryRowPosition.bottom),

              //   ///
              //   ///
              //   GridTableSummaryRow(
              //       showSummaryInRow: true,
              //       title: 'jogging time \nengagement: {Sum} ',
              //       columns: [
              //         GridSummaryColumn(
              //             name: 'Sum',
              //             columnName: 'total',
              //             summaryType: GridSummaryType.average)
              //       ],
              //       position: GridTableSummaryRowPosition.bottom)
              // ],

              columns: <GridColumn>[
                GridColumn(
                    columnName: 'Exersise',
                    label: Container(
                        decoration: gridcolor(),
                        padding: EdgeInsets.all(16.0),
                        alignment: Alignment.center,
                        child: Text(
                          'Total info ',
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ))),
                GridColumn(
                    columnName: 'total',
                    label: Container(
                        decoration: gridcolor(),
                        padding: EdgeInsets.all(16.0),
                        alignment: Alignment.center,
                        child: Text(
                          'Total',
                          style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ))),
                GridColumn(
                    columnName: 'sunday',
                    label: Container(
                        decoration: gridcolor(),
                        // padding: EdgeInsets.all(8.0),
                        alignment: Alignment.center,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'Sunday',
                                style: TextStyle(
                                    color: Colors.red,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Divider(),
                              Text("16/04/2023")
                            ]))),
                GridColumn(
                  columnName: 'Monday',
                  label: Container(
                    decoration: gridcolor(),
                    padding: EdgeInsets.all(8.0),
                    alignment: Alignment.center,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            'Monday',
                            style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                            overflow: TextOverflow.ellipsis,
                          ),
                          Divider(),
                          Text("17/04/2023")
                        ]),
                  ),
                ),
                GridColumn(
                    columnName: 'Tuesday',
                    label: Container(
                      decoration: gridcolor(),
                      padding: EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Tuesday',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Divider(),
                            Text("18/04/2023")
                          ]),
                    )),
                GridColumn(
                    columnName: 'Wednesday',
                    label: Container(
                      decoration: gridcolor(),
                      padding: EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Wednesday',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Divider(),
                            Text("19/04/2023")
                          ]),
                    )),
                GridColumn(
                    columnName: 'Thursday',
                    label: Container(
                      decoration: gridcolor(),
                      //  padding: EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'thursday',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Divider(),
                            Text("20/04/2023")
                          ]),
                    )),
                GridColumn(
                    columnName: 'Friday',
                    label: Container(
                      decoration: gridcolor(),
                      //  padding: EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Friday',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Divider(),
                            Text("21/04/2023")
                          ]),
                    )),
                GridColumn(
                    columnName: 'Saturday',
                    label: Container(
                      decoration: gridcolor(),
                      padding: EdgeInsets.all(8.0),
                      alignment: Alignment.center,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Saturday',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                              overflow: TextOverflow.ellipsis,
                            ),
                            Divider(),
                            Text("22/04/2023")
                          ]),
                    )),
              ],
            ),
          )
        ]),
      )),
    );
  }
}
