import 'package:flutter/material.dart';
import 'package:tunes_player/models/container_model.dart';
import 'package:tunes_player/widget/tune_container.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
// ignore: non_constant_identifier_names
final  List<ContainerModel> container_model = [
    ContainerModel(color: const Color(0xffFE4039), sound: "note1.wav"),
    ContainerModel(color: const Color(0xffFD982B), sound: "note2.wav"),
    ContainerModel(color: const Color(0xffFDEB57), sound: "note3.wav"),
    ContainerModel(color:const  Color(0xff33AF57), sound: "note4.wav"),
    ContainerModel(color:const  Color(0xff009587), sound: "note5.wav"),
    ContainerModel(color:const  Color(0xff0097ED), sound: "note6.wav"),
    ContainerModel(color: const Color(0xff74217E), sound: "note7.wav"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff243139),
        centerTitle: true,
        title: const Text(
          "Flutter Tune",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body:
          Column(children: container_model.map((i) => TuneContainer(containerModel: i)).toList(),),
    );
  }
}
