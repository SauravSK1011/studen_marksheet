import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:studen_marksheet/home_page.dart';

class Auth_page extends StatefulWidget {
  const Auth_page({super.key});

  @override
  State<Auth_page> createState() => _Auth_pageState();
}

class _Auth_pageState extends State<Auth_page> {
  final googlesignin = GoogleSignIn();
  late GoogleSignInAccount guser;
  late final GoogleSignInAccount googleuser;
  bool isloading = true;
  Future isSignedIn() async {
    final user = await gsignin();
    if (user == null) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Auth failed")));
    } else {
      googleuser = user;
      setState(() {
        isloading = false;
      });
    }
  }

  Future<GoogleSignInAccount?> gsignin() {
    final guser = googlesignin.signIn();
    print(guser);
    return guser;
  }

  Future<void> signout() => googlesignin.disconnect();

  @override
  void initState() {
    isSignedIn();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isloading
          ? CircularProgressIndicator()
          : Column(children: [
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
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8, right: 8, top: 16, bottom: 16),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  googleuser.displayName.toString(),
                                  style: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                                ElevatedButton(
                                    onPressed: ()  {
                                       signout;
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Home()),
                                      );
                                    },
                                    child: Text("Signout"))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                  child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width / 1.25,
                    width: MediaQuery.of(context).size.width / 1.02,
                    child: Card(
                        elevation: 25,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        color: Colors.blueAccent.withOpacity(0.15),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(googleuser
                                        .photoUrl ??
                                    "https://t4.ftcdn.net/jpg/04/70/29/97/360_F_470299797_UD0eoVMMSUbHCcNJCdv2t8B2g1GVqYgs.jpg"),
                                radius: 40,
                              ),
                            ),
                            Text(
                              "Name : " + googleuser.displayName.toString(),
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                            Text(
                              "Email : " + googleuser.email.toString(),
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.blue),
                            ),
                          ],
                        )),
                  ),
                ],
              ))
            ]),
    );
  }
}
