import 'package:flutter/material.dart';
import 'package:clone_spotify/model.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((context, index) => SizedBox(
            height: 40,
            child: Text(categories[index]),
          )),
      itemCount: categories.length,
      scrollDirection: Axis.vertical,
    );
  }
}
