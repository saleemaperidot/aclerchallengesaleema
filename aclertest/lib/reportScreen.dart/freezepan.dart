import 'package:aclertest/Models/exersiseList.dart';
import 'package:aclertest/Models/weekModel.dart';
import 'package:aclertest/constants.dart';
import 'package:aclertest/employeedatasourse.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:syncfusion_flutter_datagrid/datagrid.dart';

class Freezedpane extends StatefulWidget {
  Freezedpane({super.key});

  @override
  @override
  State<Freezedpane> createState() => _FreezedpaneState();
}

class _FreezedpaneState extends State<Freezedpane> {
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
        body: SfDataGridTheme(
      data: SfDataGridThemeData(
          currentCellStyle: DataGridCurrentCellStyle(
              borderColor: Colors.yellow, borderWidth: 10),
          rowHoverColor: Colors.grey,
          rowHoverTextStyle: TextStyle(
            color: Colors.red,
            fontSize: 14,
          ),
          frozenPaneElevation: 2.0,
          frozenPaneLineColor: Colors.blueAccent,
          headerColor: Colors.blueGrey,
          // frozenPaneElevation: 2.0,
          headerHoverColor: Colors.yellow),
      child: SfDataGrid(
          // navigationMode: ori,
          defaultColumnWidth: 110,
          headerRowHeight: 80,
          source: employeeDataSource,
          frozenColumnsCount: 1,
          columns: <GridColumn>[
            GridColumn(
                columnName: '',
                label: Container(
                    // decoration: gridcolor(),
                    padding: EdgeInsets.symmetric(horizontal: 16.0),
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Total info',
                      overflow: TextOverflow.ellipsis,
                    ))),
            GridColumn(
                columnName: 'total',
                label: Container(
                  // decoration: gridcolor(),
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: gridchildWidget(
                    name: "Total",
                    date: "16/04/2023",
                  ),
                )),
            GridColumn(
                columnName: 'sunday',
                label: Container(
                  //   decoration: gridcolor(),
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerRight,
                  child: gridchildWidget(
                    name: "Sunday",
                    date: "17/04/2023",
                  ),
                )),
            GridColumn(
                columnName: 'monday',
                label: Container(
                  // decoration: gridcolor(),
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: gridchildWidget(
                    name: "Monday",
                    date: "18/04/2023",
                  ),
                )),
            GridColumn(
                columnName: 'tuesaday',
                label: Container(
                  //    decoration: gridcolor(),
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: gridchildWidget(
                    name: "Tuesday",
                    date: "19/04/2023",
                  ),
                )),
            GridColumn(
                columnName: 'wednesday',
                label: Container(
                  //    decoration: gridcolor(),
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.center,
                  child: gridchildWidget(
                    name: "Wednessday",
                    date: "20/04/2023",
                  ),
                )),
            GridColumn(
                columnName: 'thursday',
                label: Container(
                  //   decoration: gridcolor(),
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerRight,
                  child: gridchildWidget(
                    name: "Thursday",
                    date: "21/04/2023",
                  ),
                )),
            GridColumn(
                columnName: 'friday',
                label: Container(
                  // decoration: gridcolor(),
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerLeft,
                  child: gridchildWidget(
                    name: "Friday",
                    date: "22/04/2023",
                  ),
                )),
            GridColumn(
                columnName: 'saturday',
                label: Container(
                  // decoration: gridcolor(),
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  alignment: Alignment.centerRight,
                  child: gridchildWidget(
                    name: "Saturday",
                    date: "23/04/2023",
                  ),
                )),
          ]),
    ));
  }
}

class gridchildWidget extends StatelessWidget {
  const gridchildWidget({super.key, required this.name, required this.date});
  final String name;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          overflow: TextOverflow.ellipsis,
        ),
        Divider(),
        Text(date)
      ],
    );
  }
}
