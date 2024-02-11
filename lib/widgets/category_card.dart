import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String name;
  const CategoryCard(this.name, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width / 2,
      height: MediaQuery.sizeOf(context).height / 6,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.cover, image: AssetImage("assets/images/$name.jpg")),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
          child: Text(
        "${name[0].toUpperCase()}${name.substring(1)}",
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
      )),
    );
  }
}
