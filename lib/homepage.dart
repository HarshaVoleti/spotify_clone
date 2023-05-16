import 'package:flutter/material.dart';
import 'package:clone_spotify/album.dart';
import 'demo_data.dart';
import 'package:page_transition/page_transition.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var activemenu1 = 0;
  var activemenu2 = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Explore',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.list),
          ],
        ),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.black,
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    song_type_1.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            activemenu1 = index;
                          });
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              song_type_1[index],
                              style: TextStyle(
                                color: activemenu1 == index
                                    ? Colors.green
                                    : Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            activemenu1 == index
                                ? Container(
                                    width: 10,
                                    height: 3,
                                    decoration: const BoxDecoration(
                                      color: Colors.green,
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 0),
              //song album box
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    children: List.generate(
                      songs.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                child: AlbumPage(
                                  song: songs[index],
                                ),
                                type: PageTransitionType.scale,
                                alignment: Alignment.bottomCenter,
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                width: 180,
                                height: 180,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(songs[index]['img']),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                songs[index]['title'],
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: 180,
                                child: Text(
                                  songs[index]['description'],
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    song_type_2.length,
                    (index) => Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            activemenu2 = index;
                          });
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              song_type_2[index],
                              style: TextStyle(
                                color: activemenu2 == index
                                    ? Colors.green
                                    : Colors.grey,
                              ),
                            ),
                            const SizedBox(
                              height: 3,
                            ),
                            activemenu2 == index
                                ? Container(
                                    width: 10,
                                    height: 3,
                                    decoration: const BoxDecoration(
                                      color: Colors.green,
                                    ),
                                  )
                                : Container(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 0),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30.0),
                  child: Row(
                    children: List.generate(
                      songs.length - 5,
                      (index) => Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              PageTransition(
                                child: AlbumPage(
                                  song: songs[index + 5],
                                ),
                                type: PageTransitionType.scale,
                                alignment: Alignment.bottomCenter,
                              ),
                            );
                          },
                          child: Column(
                            children: [
                              Container(
                                width: 180,
                                height: 180,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(songs[index + 5]['img']),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                songs[index + 5]['title'],
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              SizedBox(
                                width: 180,
                                child: Text(
                                  songs[index + 5]['description'],
                                  maxLines: 1,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
