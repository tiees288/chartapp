import 'package:chartapp/Models/MachineTemperature_Model.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<MachineTemperatureModel> temperatureData = [
    MachineTemperatureModel(name: "Machine1", dateTime: "08:00", value: 28),
    MachineTemperatureModel(name: "Machine2", dateTime: "09:00", value: 24),
    MachineTemperatureModel(name: "Machine3", dateTime: "10:00", value: 32),
    MachineTemperatureModel(name: "Machine4", dateTime: "11:00", value: 30),
    MachineTemperatureModel(name: "Machine5", dateTime: "12:00", value: 28),
    MachineTemperatureModel(name: "Machine6", dateTime: "13:00", value: 38),
    MachineTemperatureModel(name: "Machine7", dateTime: "14:00", value: 40),
    MachineTemperatureModel(name: "Machine8", dateTime: "15:00", value: 38),
    MachineTemperatureModel(name: "Machine9", dateTime: "16:00", value: 32),
    MachineTemperatureModel(name: "Machine10", dateTime: "17:00", value: 25),
  ];
  List<MachineTemperatureModel> temperatureData2 = [
    MachineTemperatureModel(name: "Machine1", dateTime: "08:00", value: 38),
    MachineTemperatureModel(name: "Machine2", dateTime: "09:00", value: 34),
    MachineTemperatureModel(name: "Machine3", dateTime: "10:00", value: 35),
    MachineTemperatureModel(name: "Machine4", dateTime: "11:00", value: 30),
    MachineTemperatureModel(name: "Machine5", dateTime: "12:00", value: 28),
    MachineTemperatureModel(name: "Machine6", dateTime: "13:00", value: 36),
    MachineTemperatureModel(name: "Machine7", dateTime: "14:00", value: 40),
    MachineTemperatureModel(name: "Machine8", dateTime: "15:00", value: 38),
    MachineTemperatureModel(name: "Machine9", dateTime: "16:00", value: 32),
    MachineTemperatureModel(name: "Machine10", dateTime: "17:00", value: 50),
  ];

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SfCartesianChart(
            // legend: Legend(
            //   isVisible: true,
            //   position: LegendPosition.bottom,
            //   textStyle: const TextStyle(
            //     color: Colors.black,
            //     fontWeight: FontWeight.bold,
            //   ),
            // ),
            tooltipBehavior: TooltipBehavior(
              enable: true,
              color: Colors.black,
              textStyle: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            title: ChartTitle(
              text: "Machine Temperature",
              textStyle: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            // borderColor: Colors.black,
            // borderWidth: 3,
            backgroundColor: Colors.transparent,
            primaryXAxis: CategoryAxis(
              majorGridLines: const MajorGridLines(
                color: Colors.black,
                width: 3,
              ),
              labelStyle: const TextStyle(
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
              title: AxisTitle(
                text: "Time of 19/11/2023",
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            primaryYAxis: NumericAxis(
              majorGridLines: const MajorGridLines(
                color: Colors.black,
                width: 3,
              ),
              labelStyle: const TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
              title: AxisTitle(
                text: "Temperature",
                textStyle: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            plotAreaBackgroundColor: Colors.blue.shade100,
            plotAreaBorderColor: Colors.black,
            plotAreaBorderWidth: 3,
            borderColor: Colors.black,
            borderWidth: 3,
            series: <ChartSeries>[
              LineSeries<MachineTemperatureModel, String>(
                name: "S1",
                color: Colors.red,
                markerSettings: const MarkerSettings(
                  isVisible: true,
                  // กำหนดรูปแบบและสีของจุด marker
                  shape: DataMarkerType.circle,
                  color: Colors.red,
                ),
                dataSource: temperatureData,
                xValueMapper: (MachineTemperatureModel machine, _) =>
                    machine.dateTime,
                yValueMapper: (MachineTemperatureModel machine, _) =>
                    machine.value,
                // dataLabelMapper: (MachineTemperatureModel machine, _) =>
                //     "${machine.name} C",
                yAxisName: "Temperature",
                // pointColorMapper: (MachineTemperatureModel machine, _) =>
                //     machine.value > 30 ? Colors.red : Colors.blue,
                // dataLabelSettings: const DataLabelSettings(
                //   isVisible: true,
                //   textStyle: TextStyle(
                //     color: Colors.blue,
                //     fontWeight: FontWeight.bold,
                //   ),
                // ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
