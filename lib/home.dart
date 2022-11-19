import 'package:flutter/material.dart';
import 'package:studen_marksheet/analysis.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final backgroundcolor = Color.fromARGB(255, 208, 205, 205);

  bool ispressed = true;

  @override
  Widget build(BuildContext context) {
    Offset dist = ispressed ? Offset(-10, -10) : Offset(28, 28);
    double blur = ispressed ? 5.0 : 30;
    String mathsm = "",
        physicsm = "",
        chemistrym = "",
        englishm = "",
        biologym = "";
    final mathcontroller = TextEditingController();
    final physicscontroller = TextEditingController();
    final chemistrycontroller = TextEditingController();
    final englishcontroller = TextEditingController();
    final biologycontroller = TextEditingController();

    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 208, 205, 205),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Expanded(
                child: Container(
                  height: 75,
                  width: MediaQuery.of(context).size.width * 0.8,
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
              
Expanded(child: Column(children: [const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Welcome",
                  style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(right: 8.0, left: 8),
                child: Text(
                  "Enter Your Marks",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 8.0, left: 8),
                child: Text(
                  "Maths",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                // color: Colors.blue.withOpacity(0.2),
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8),
                  child: TextField(
                    controller: mathcontroller,
                    onChanged: (value) => mathsm = value,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: "Enter Your Marks Here",
                        fillColor: Colors.blue.withOpacity(0.2)),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 8.0, left: 8),
                child: Text(
                  "Physics",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                // color: Colors.blue.withOpacity(0.2),
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8),
                  child: TextField(
                    controller: physicscontroller,
                    onChanged: (value) => physicsm = value,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: "Enter Your Marks Here",
                        fillColor: Colors.blue.withOpacity(0.2)),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 8.0, left: 8),
                child: Text(
                  "Chemistry",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                // color: Colors.blue.withOpacity(0.2),
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8),
                  child: TextField(
                    controller: chemistrycontroller,
                    onChanged: (value) => chemistrym = value,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: "Enter Your Marks Here",
                        fillColor: Colors.blue.withOpacity(0.2)),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 8.0, left: 8),
                child: Text(
                  "Biology",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                // color: Colors.blue.withOpacity(0.2),
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8),
                  child: TextField(
                    controller: biologycontroller,
                    onChanged: (value) => {biologym = value},
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: "Enter Your Marks Here",
                        fillColor: Colors.blue.withOpacity(0.2)),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 8.0, left: 8),
                child: Text(
                  "English",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                // color: Colors.blue.withOpacity(0.2),
                child: Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8),
                  child: TextField(
                    controller: englishcontroller,
                    onChanged: (value) => englishm = value,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        hintText: "Enter Your Marks Here",
                        fillColor: Colors.blue.withOpacity(0.2)),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    onPressed: () {
                      print(mathsm);
                      if (mathsm == "" ||
                          physicsm == "" ||
                          chemistrym == "" ||
                          englishm == "" ||
                          biologym == "") {
                        final snackBar = SnackBar(
                          content: Text("Please Enter Marks"),
                        );
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AnalysisPage(
                                  mathsm: mathsm,
                                  physicsm: physicsm,
                                  chemistrym: chemistrym,
                                  englishm: englishm,
                                  biologym: biologym)),
                        );
                      }
                      mathcontroller.clear();
                      physicscontroller.clear();
                      chemistrycontroller.clear();
                      biologycontroller.clear();
                      englishcontroller.clear();
                    },
                    child: Text("See The Visual representation")),
              ),
              const SizedBox(
                height: 15,
              ),],))


              // Center(
              //   child: GestureDetector(
              //     onTap: () => setState(() {
              //       ispressed = !ispressed;
              //     }),
              //     child: AnimatedContainer(
              //       duration: const Duration(milliseconds: 50000),
              //       child: Container(
              //         width: MediaQuery.of(context).size.width*0.9, height: 50,
              //         // child: Text("ABC",style: TextStyle(fontSize: 25),),
              //         decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(20),
              //             color: Color.fromARGB(255, 208, 205, 205),
              //             boxShadow: [
              //               BoxShadow(
              //                 offset: -dist,
              //                 color: Colors.blue.withOpacity(0.2),
              //                 blurRadius: blur,
              //                 spreadRadius: ispressed ? -0.0 : -40,
              //               ),
              //               BoxShadow(
              //                 offset: dist,
              //                 color: Colors.blue.withOpacity(0.2),
              //                 blurRadius: blur,
              //                 spreadRadius: ispressed ? -0.0 : -40,
              //               )
              //             ]),
              //         child: const Padding(
              //           padding: EdgeInsets.all(8.0),
              //           child: Text(
              //             "See The Visual representation",
              //             style: TextStyle(fontSize: 25, color: Colors.blue),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
