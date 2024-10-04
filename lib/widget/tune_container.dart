import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:tunes_player/models/container_model.dart';

class TuneContainer extends StatelessWidget {
   const TuneContainer({
    super.key, required this.containerModel,
  });
final ContainerModel containerModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
            onTap: () async {
              final player = AudioPlayer();
              await player.play(AssetSource(containerModel.sound));
            },
            child: Container(
              width: double.infinity,
              color: containerModel.color,
            )));
  }
}
