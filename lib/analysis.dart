import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class AnalysisPage extends StatefulWidget {
  AnalysisPage(
      {super.key,
      required this.mathsm,
      required this.physicsm,
      required this.chemistrym,
      required this.englishm,
      required this.biologym});
  String mathsm, physicsm, chemistrym, englishm, biologym;

  @override
  State<AnalysisPage> createState() => _AnalysisPageState();
}

class _AnalysisPageState extends State<AnalysisPage> {
  late List<StudentMarks> mathschartdata;
  late List<StudentMarks> phychartdata;
  late List<StudentMarks> chemchartdata;
  late List<StudentMarks> engchartdata;
  late List<StudentMarks> biochartdata;

  List<StudentMarks> getmathsmarks() {
    final List<StudentMarks> markslist = [
      StudentMarks(
          int.parse(widget.mathsm), "Maths", Colors.blue.withOpacity(0.2)),
      StudentMarks(100 - int.parse(widget.mathsm), "Maths", Colors.transparent),
    ];
    return markslist;
  }

  List<StudentMarks> getchemmarks() {
    final List<StudentMarks> markslist = [
      StudentMarks(int.parse(widget.chemistrym), "Chemistry",
          Colors.blue.withOpacity(0.2)),
      StudentMarks(
          100 - int.parse(widget.chemistrym), "Chemistry", Colors.transparent),
    ];
    return markslist;
  }

  List<StudentMarks> getphymarks() {
    final List<StudentMarks> markslist = [
      StudentMarks(
          int.parse(widget.physicsm), "Physics", Colors.blue.withOpacity(0.2)),
      StudentMarks(
          100 - int.parse(widget.physicsm), "Physics", Colors.transparent),
    ];
    return markslist;
  }

  List<StudentMarks> getengmarks() {
    final List<StudentMarks> markslist = [
      StudentMarks(
          int.parse(widget.englishm), "English", Colors.blue.withOpacity(0.2)),
      StudentMarks(
          100 - int.parse(widget.englishm), "English", Colors.transparent),
    ];
    return markslist;
  }

  List<StudentMarks> getbiomarks() {
    final List<StudentMarks> markslist = [
      StudentMarks(
          int.parse(widget.biologym), "Biology", Colors.blue.withOpacity(0.2)),
      StudentMarks(
          100 - int.parse(widget.biologym), "Biology", Colors.transparent),
    ];
    return markslist;
  }

  @override
  void initState() {
    mathschartdata = getmathsmarks();
    biochartdata = getbiomarks();
    phychartdata = getphymarks();
    engchartdata = getengmarks();
    chemchartdata = getchemmarks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Container(
                height: 80,
                width: MediaQuery.of(context).size.width * 0.9,
                child: Expanded(
                  child: Card(
                    elevation: 25,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.blueAccent.withOpacity(0.15),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 8, right: 8, top: 16, bottom: 16),
                        child: Text(
                          "Student Performance",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Graphical Representation of Marks",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width / 1.5,
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Card(
                    elevation: 25,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.blueAccent.withOpacity(0.15),
                    child: SfCircularChart(
                      annotations: <CircularChartAnnotation>[
                        CircularChartAnnotation(
                            widget: Container(
                                width: 100,
                                height: 100,
                                child: PhysicalModel(
                                    child: Container(),
                                    shape: BoxShape.circle,
                                    elevation: 10,
                                    shadowColor: Colors.black,
                                    color: const Color.fromRGBO(
                                        230, 230, 230, 1)))),
                        CircularChartAnnotation(
                            widget: Container(
                                child: Text(widget.mathsm + "%",
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 0.5),
                                        fontSize: 25))))
                      ],
                      series: [
                        DoughnutSeries<StudentMarks, String>(
                            innerRadius: "50",
                            strokeWidth: 2.0,
                            dataSource: mathschartdata,
                            xValueMapper: (StudentMarks data, _) =>
                                data.subjectname,
                            yValueMapper: (StudentMarks data, _) => data.marks,
                            pointColorMapper: (StudentMarks data, _) =>
                                data.color,
                            radius: '60%')
                      ],
                    ),
                  ),
                ),
                Text(
                  "Maths",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                              height: MediaQuery.of(context).size.width / 1.5,
                  width: MediaQuery.of(context).size.width / 1.5,

                  child: Card(
                    elevation: 25,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.blueAccent.withOpacity(0.15),
                    child: SfCircularChart(
                      annotations: <CircularChartAnnotation>[
                        CircularChartAnnotation(
                            widget: Container(
                                width: 100,
                                height: 100,
                                child: PhysicalModel(
                                    child: Container(),
                                    shape: BoxShape.circle,
                                    elevation: 10,
                                    shadowColor: Colors.black,
                                    color: const Color.fromRGBO(
                                        230, 230, 230, 1)))),
                        CircularChartAnnotation(
                            widget: Container(
                                child: Text(widget.physicsm + "%",
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 0.5),
                                        fontSize: 25))))
                      ],
                      series: [
                        DoughnutSeries<StudentMarks, String>(
                            innerRadius: "50",
                            strokeWidth: 2.0,
                            dataSource: phychartdata,
                            xValueMapper: (StudentMarks data, _) =>
                                data.subjectname,
                            yValueMapper: (StudentMarks data, _) => data.marks,
                            pointColorMapper: (StudentMarks data, _) =>
                                data.color,
                            radius: '60%')
                      ],
                    ),
                  ),
                ),
                Text(
                  "Physics",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                                  height: MediaQuery.of(context).size.width / 1.5,
                  width: MediaQuery.of(context).size.width / 1.5,

                  child: Card(
                    elevation: 25,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.blueAccent.withOpacity(0.15),
                    child: SfCircularChart(
                      annotations: <CircularChartAnnotation>[
                        CircularChartAnnotation(
                            widget: Container(
                                width: 100,
                                height: 100,
                                child: PhysicalModel(
                                    child: Container(),
                                    shape: BoxShape.circle,
                                    elevation: 10,
                                    shadowColor: Colors.black,
                                    color: const Color.fromRGBO(
                                        230, 230, 230, 1)))),
                        CircularChartAnnotation(
                            widget: Container(
                                child: Text(widget.chemistrym + "%",
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 0.5),
                                        fontSize: 25))))
                      ],
                      series: [
                        DoughnutSeries<StudentMarks, String>(
                            innerRadius: "50",
                            strokeWidth: 2.0,
                            dataSource: chemchartdata,
                            xValueMapper: (StudentMarks data, _) =>
                                data.subjectname,
                            yValueMapper: (StudentMarks data, _) => data.marks,
                            pointColorMapper: (StudentMarks data, _) =>
                                data.color,
                            radius: '60%')
                      ],
                    ),
                  ),
                ),
                Text(
                  "Chemistry",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                                   height: MediaQuery.of(context).size.width / 1.5,
                  width: MediaQuery.of(context).size.width / 1.5,

                  child: Card(
                    elevation: 25,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.blueAccent.withOpacity(0.15),
                    child: SfCircularChart(
                      annotations: <CircularChartAnnotation>[
                        CircularChartAnnotation(
                            widget: Container(
                                width: 100,
                                height: 100,
                                child: PhysicalModel(
                                    child: Container(),
                                    shape: BoxShape.circle,
                                    elevation: 10,
                                    shadowColor: Colors.black,
                                    color: const Color.fromRGBO(
                                        230, 230, 230, 1)))),
                        CircularChartAnnotation(
                            widget: Container(
                                child: Text(widget.biologym + "%",
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 0.5),
                                        fontSize: 25))))
                      ],
                      series: [
                        DoughnutSeries<StudentMarks, String>(
                            innerRadius: "50",
                            strokeWidth: 2.0,
                            dataSource: biochartdata,
                            xValueMapper: (StudentMarks data, _) =>
                                data.subjectname,
                            yValueMapper: (StudentMarks data, _) => data.marks,
                            pointColorMapper: (StudentMarks data, _) =>
                                data.color,
                            radius: '60%')
                      ],
                    ),
                  ),
                ),
                Text(
                  "Biology",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                SizedBox(
                  height: 25,
                ),
                SizedBox(                  height: MediaQuery.of(context).size.width / 1.5,
                  width: MediaQuery.of(context).size.width / 1.5,

                  child: Card(
                    elevation: 25,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    color: Colors.blueAccent.withOpacity(0.15),
                    child: SfCircularChart(
                      annotations: <CircularChartAnnotation>[
                        CircularChartAnnotation(
                            widget: Container(
                                width: 100,
                                height: 100,
                                child: PhysicalModel(
                                    child: Container(),
                                    shape: BoxShape.circle,
                                    elevation: 10,
                                    shadowColor: Colors.black,
                                    color: const Color.fromRGBO(
                                        230, 230, 230, 1)))),
                        CircularChartAnnotation(
                            widget: Container(
                                child: Text(widget.englishm + "%",
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 0.5),
                                        fontSize: 25))))
                      ],
                      series: [
                        DoughnutSeries<StudentMarks, String>(
                            innerRadius: "50",
                            strokeWidth: 2.0,
                            dataSource: engchartdata,
                            xValueMapper: (StudentMarks data, _) =>
                                data.subjectname,
                            yValueMapper: (StudentMarks data, _) => data.marks,
                            pointColorMapper: (StudentMarks data, _) =>
                                data.color,
                            radius: '60%')
                      ],
                    ),
                  ),
                ),
                Text(
                  "English",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

class StudentMarks {
  StudentMarks(this.marks, this.subjectname, this.color);
  final int marks;
  final String subjectname;
  final Color color;
}