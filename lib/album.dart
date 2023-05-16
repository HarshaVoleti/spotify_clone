import 'package:flutter/material.dart';
import 'package:clone_spotify/musicdetail.dart';
import 'demo_data.dart';
import 'package:page_transition/page_transition.dart';

class AlbumPage extends StatefulWidget {
  const AlbumPage({Key? key, this.song}) : super(key: key);
  final dynamic song;

  @override
  State<AlbumPage> createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: getbody(),
    );
  }

  Widget getbody() {
    var size = MediaQuery.of(context).size;
    List songalbum = widget.song['songs'];
    return SingleChildScrollView(
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                width: size.width,
                height: 220,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(widget.song['img']),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 30,
                  right: 30,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.song['title'],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(
                            top: 8, bottom: 8, left: 20, right: 20),
                        child: Text(
                          "Subscribe",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
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
                                  child: MusicDetailPage(
                                      title: songs[index]['title'],
                                      description: songs[index]['description'],
                                      img: songs[index]['img'],
                                      color: songs[index]['color'],
                                      songUrl: songs[index]['song_url']),
                                  type: PageTransitionType.bottomToTop),
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
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      songs[index]['song_count'],
                                      maxLines: 1,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      songs[index]['date'],
                                      maxLines: 1,
                                      textAlign: TextAlign.center,
                                      style: const TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Column(
                children: List.generate(songalbum.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageTransition(
                            child: MusicDetailPage(
                                title: widget.song['title'],
                                description: widget.song['description'],
                                img: widget.song['img'],
                                color: widget.song['color'],
                                songUrl: widget.song['song_url']),
                            type: PageTransitionType.bottomToTop),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 20, left: 20, bottom: 10),
                      child: Row(
                        children: [
                          SizedBox(
                            width: (size.width - 40) * 0.77,
                            child: Text(
                              "${index + 1}  " + songalbum[index]['title'],
                              style: const TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: (size.width - 40) * 0.23,
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  songalbum[index]['duration'],
                                  style: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                Container(
                                  height: 25,
                                  width: 25,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey.withOpacity(0.8),
                                  ),
                                  child: const Center(
                                    child: Icon(
                                      Icons.play_arrow,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
              )
            ],
          ),
          SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  iconSize: 40,
                  icon: const Icon(
                    Icons.navigate_before,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.more_vert,
                      color: Colors.white,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
