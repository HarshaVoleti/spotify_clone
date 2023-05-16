import 'package:clone_spotify/demo_data.dart';
import 'package:flutter/material.dart';

class LibrabryPage extends StatefulWidget {
  const LibrabryPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LibrabryPage> createState() => _LibrabryPageState();
}

class _LibrabryPageState extends State<LibrabryPage> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        backgroundColor: Colors.black87,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  "assets/categories/newreleases.jpeg",
                ),
              ),
            ),
          ),
        ),
        leadingWidth: 50,
        title: Text("Your Library"),
        centerTitle: false,
        actions: [
          Icon(
            Icons.search,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.add,
          ),
          SizedBox(
            width: 10,
          )
        ],
        bottom: PreferredSize(
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              children: List.generate(
                  types.length,
                  (index) => Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Container(
                          padding: EdgeInsets.only(
                            right: 10,
                            left: 10,
                            top: 5,
                            bottom: 5,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 1,
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Text(
                            types[index],
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      )),
            ),
          ),
          preferredSize: Size.fromHeight(50),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.sort,
                      color: Colors.white,
                    ),
                    Text(
                      "Most recent",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Icon(
                  Icons.more_vert,
                  color: Colors.white,
                )
              ],
            ),
            Container(
              height: size.height - 276,
              child: SingleChildScrollView(
                child: Column(
                  children: List.generate(
                      libraryitems.length,
                      (index) => Container(
                            padding: EdgeInsets.all(5),
                            child: Row(
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                        libraryitems[index]["img"],
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  '  ' + libraryitems[index]['title'],
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
