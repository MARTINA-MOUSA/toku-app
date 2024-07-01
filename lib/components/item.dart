import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import '../models/number.dart';

class Item extends StatelessWidget {
  const Item(
      {Key? key,
      required this.item,
      required this.color,
      required this.ItemType})
      : super(key: key);
  final InformationPage item;
  final Color color;
  final String ItemType;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: Row(children: [
        Container(color: Color(0xffFFF6DC), child: Image.asset(item.image!)),
        Expanded(child: ItemInfo(ItemModel: item)),
      ]),
    );
  }
}

class ItemInfo extends StatelessWidget {
  const ItemInfo({super.key, required this.ItemModel});
  final InformationPage ItemModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                ItemModel.jpName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
              Text(
                ItemModel.enName,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        ),
        const Spacer(
          flex: 1,
        ),
        IconButton(
          onPressed: () {
            final player = AudioPlayer();
            player.play(AssetSource(ItemModel.sound));
          },
          icon: const Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 30,
          ),
        )
      ],
    );
  }
}

class PhrasesItem extends StatelessWidget {
  const PhrasesItem({super.key, required this.item, required this.color});
  final InformationPage item;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: color,
      child: ItemInfo(
        ItemModel: item,
      ),
    );
  }
}
