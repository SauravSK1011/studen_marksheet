import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:image_picker/image_picker.dart';

class Imgpick extends StatefulWidget {
  const Imgpick({super.key});

  @override
  State<Imgpick> createState() => _ImgpickState();
}

class _ImgpickState extends State<Imgpick> {
  final imagepicker = ImagePicker();
  File _imagefile = File('assets/image.png');
  bool isImageLoded = false;
  @override
  Widget build(BuildContext context) {
    _imageformgallery() async {
      await Future.delayed(const Duration(seconds: 1), () {});
      var image = await imagepicker.pickImage(source: ImageSource.gallery);
      if (image == null) {
        return null;
      } else {
        setState(() {
          _imagefile = File(image.path);
          isImageLoded = true;
        });
      }
    }

    _imageformcamara() async {
      await Future.delayed(const Duration(seconds: 1), () {});
      var image = await imagepicker.pickImage(source: ImageSource.camera);
      if (image == null) {
        return null;
      } else {
        setState(() {
          _imagefile = File(image.path);
          isImageLoded = true;
        });
      }
    }

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
          Expanded(child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                    height: 50,
                  ),
                  isImageLoded
                      ? Center(
                          child: Container(
                            height: 250,
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: FileImage(_imagefile),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        )
                      : Container(),
                  const SizedBox(
                    height: 50,
                  ),
              ],
            ),
          ),)
        ]),
        floatingActionButton: Column(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height - 186,
          ),
          SpeedDial(
            animatedIcon: AnimatedIcons.menu_close,
            backgroundColor: Colors.blueAccent.withOpacity(0.5),
            overlayColor: Colors.black,
            overlayOpacity: 0.7,
            children: [
              SpeedDialChild(
                child: const Icon(Icons.add_a_photo),
                label: "Add Image from Camera",
                onTap: () {
                  _imageformcamara();
                },
              ),
              SpeedDialChild(
                child: const Icon(Icons.add_photo_alternate_rounded),
                label: "Add Image from Gallery",
                onTap: () {
                  _imageformgallery();
                },
              ),
            ],
          ),
        ]));
  }
}
