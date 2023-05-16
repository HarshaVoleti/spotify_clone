import 'package:flutter/material.dart';

class MusicDetailPage extends StatefulWidget {
  final String title;
  final String description;
  final String img;
  final String songUrl;
  final Color color;
  const MusicDetailPage({
    Key? key,
    required this.title,
    required this.description,
    required this.img,
    required this.color,
    required this.songUrl,
  }) : super(key: key);

  @override
  State<MusicDetailPage> createState() => _MusicDetailPageState();
}

class _MusicDetailPageState extends State<MusicDetailPage> {
  double _currentslider = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.more_vert,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: getBody(),
    );
  }

  Widget getBody() {
    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  right: 30,
                  left: 30,
                ),
                child: Container(
                  height: size.width - 100,
                  width: size.width - 100,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: widget.color,
                        spreadRadius: 5,
                        blurRadius: 30,
                        offset: const Offset(-10, 40),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  right: 30,
                  left: 30,
                ),
                child: Container(
                  height: size.width - 60,
                  width: size.width - 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(widget.img),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(
              right: 20,
              left: 20,
            ),
            child: SizedBox(
              height: 70,
              width: size.width - 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.library_add,
                    color: Colors.white,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        widget.title,
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: Text(
                          widget.description,
                          maxLines: 1,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Slider(
            value: _currentslider,
            min: 0,
            max: 200,
            activeColor: Colors.green,
            onChanged: ((value) => setState(
                  () {
                    _currentslider = value;
                  },
                )),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(right: 30, left: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "1:40",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "5:30",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.only(right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    size: 25,
                    Icons.shuffle,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    size: 25,
                    Icons.skip_previous,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  iconSize: 50,
                  onPressed: () {},
                  icon: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      size: 28,
                      color: Colors.white,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    size: 25,
                    Icons.skip_next,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    size: 25,
                    Icons.repeat,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.tv,
                color: Colors.green,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Chromecast is ready",
                style: TextStyle(
                  color: Colors.green,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
