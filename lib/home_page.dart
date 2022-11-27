import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:studen_marksheet/authpage.dart';
import 'package:studen_marksheet/home.dart';
import 'package:studen_marksheet/imgpick.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
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
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Graphical Representation of Marks",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width / 5,
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Card(
                      elevation: 25,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Colors.blueAccent.withOpacity(0.15),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, top: 15, right: 25, left: 25),
                        child: ElevatedButton(
                          child: Center(child: Text("Graphical Representation")),
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            )
                          },
                        ),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Display photo",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width / 5,
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Card(
                      elevation: 25,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Colors.blueAccent.withOpacity(0.15),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, top: 15, right: 25, left: 25),
                        child: ElevatedButton(
                          child: Text("Display photo"),
                          onPressed: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Imgpick()),
                            )
                          },
                        ),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Authorization ",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.width / 5,
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: Card(
                      elevation: 25,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      color: Colors.blueAccent.withOpacity(0.15),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, top: 15, right: 25, left: 25),
                        child: ElevatedButton(
                          child: Text("Authorization"),
                          onPressed: () => {Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Auth_page()),
                            )},
                        ),
                      )),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
