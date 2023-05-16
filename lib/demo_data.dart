import 'package:flutter/material.dart';

// ignore: constant_identifier_names
const List song_type_1 = [
  "Music",
  "Rock",
  "Soul",
  "Classic",
  "Pop",
  "R&B",
];
// ignore: constant_identifier_names
const List song_type_2 = [
  "Podcasts",
  "Made For You",
  "Charts",
  "New Releases",
  "Discover",
  "Concerts",
];
const List songs = [
  {
    "img": "assets/images/img_3.jpg",
    "title": "Feelin' Good",
    "description": "Feel good with this positively timeless playlist!",
    "song_count": "100 songs",
    "date": "about 19 hr",
    "color": Color(0xFFf69129),
    "song_url": "songs/1.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  },
  {
    "img": "assets/images/img_5.jpg",
    "title": "Peaceful Piano",
    "description": "Relax and indulge with beautiful piano pieces",
    "song_count": "324 songs",
    "date": "about 14 hr",
    "color": Color(0xFF64849c),
    "song_url": "songs/2.mp3",
    "songs": [
      {"title": "Kaleidoscope", "duration": "2:01"},
      {"title": "Larks", "duration": "2:54"},
      {"title": "Homeland", "duration": "2:22"},
      {"title": "Une Danse", "duration": "3:03"},
      {"title": "Almonte", "duration": "2:31"},
      {"title": "Days Like These", "duration": "4:09"},
      {"title": "In questo momento", "duration": "2:40"},
    ]
  },
  {
    "img": "assets/images/img_7.jpg",
    "title": "Deep Focus",
    "description": "Keep calm and focus with ambient and post-rock music.",
    "song_count": "195 songs",
    "date": "about 10 hr",
    "color": Color(0xFF58546c),
    "song_url": "songs/1.mp3",
    "songs": [
      {"title": "Escaping Time", "duration": "3:20"},
      {"title": "Just Look at You", "duration": "3:07"},
      {"title": "Flowing", "duration": "2:11"},
      {"title": "With Resolve", "duration": "2:09"},
      {"title": "Infinite Sustain", "duration": "2:29"},
      {"title": "Ingénue", "duration": "2:38"},
      {"title": "Hidden Chambers", "duration": "2:49"},
    ]
  },
  {
    "img": "assets/images/img_4.jpg",
    "title": "Lo-Fi Beats",
    "description": "Beats to relax, study and focus.",
    "song_count": "599 songs",
    "date": "about 21 hr",
    "color": Color(0xFFbad6ec),
    "song_url": "songs/2.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  },
  {
    "img": "assets/images/img_2.jpg",
    "title": "Chill Lofi Study Beats",
    "description": "The perfect study beats, twenty four seven.",
    "song_count": "317 songs",
    "date": "about 11 hr",
    "color": Color(0xFF93689a),
    "song_url": "songs/1.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  },
  {
    "img": "assets/images/img_6.jpg",
    "title": "Chill Hits",
    "description": "Kick back to the best new and recent chill tunes.",
    "song_count": "130 songs",
    "date": "about 7 hr",
    "color": Color(0xFFa4c4d3),
    "song_url": "songs/2.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  },
  {
    "img": "assets/images/img_1.jpg",
    "title": "Dark & Stormy",
    "description": "Beautifully dark, dramatic tracks.",
    "song_count": "50 songs",
    "date": "about 17 hr",
    "color": Color(0xFF5e4f78),
    "song_url": "songs/1.mp3",
    "songs": [
      {"title": "Kaleidoscope", "duration": "2:01"},
      {"title": "Larks", "duration": "2:54"},
      {"title": "Homeland", "duration": "2:22"},
      {"title": "Une Danse", "duration": "3:03"},
      {"title": "Almonte", "duration": "2:31"},
      {"title": "Days Like These", "duration": "4:09"},
      {"title": "In questo momento", "duration": "2:40"},
    ]
  },
  {
    "img": "assets/images/img_8.jpg",
    "title": "Feel Good Piano",
    "description": "Positive piano music",
    "song_count": "69 songs",
    "date": "2 hr 14 min",
    "color": Color(0xFFa4c1ad),
    "song_url": "songs/2.mp3",
    "songs": [
      {"title": "Escaping Time", "duration": "3:20"},
      {"title": "Just Look at You", "duration": "3:07"},
      {"title": "Flowing", "duration": "2:11"},
      {"title": "With Resolve", "duration": "2:09"},
      {"title": "Infinite Sustain", "duration": "2:29"},
      {"title": "Ingénue", "duration": "2:38"},
      {"title": "Hidden Chambers", "duration": "2:49"},
    ]
  },
  {
    "img": "assets/images/img_9.jpg",
    "title": "Sad Songs",
    "description": "Beautiful songs to break your heart...",
    "song_count": "60 songs",
    "date": "3 hr 25 min",
    "color": Color(0xFFd9e3ec),
    "song_url": "songs/1.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  },
  {
    "img": "assets/images/img_10.jpg",
    "title": "Mood Booster",
    "description": "Get happy with today's dose of feel-good songs",
    "song_count": "75 songs",
    "date": "3 hr 56 min",
    "color": Color(0xFF4e6171),
    "song_url": "songs/2.mp3",
    "songs": [
      {"title": "Imagination", "duration": "1:21"},
      {"title": "Home_", "duration": "2:17"},
      {"title": "Do I Wanna Know?", "duration": "1:31"},
      {"title": "Whiskey Sour", "duration": "1:42"},
      {"title": "Decisions", "duration": "1:29"},
      {"title": "Trees", "duration": "1:51"},
      {"title": "Earth", "duration": "1:39"},
    ]
  }
];

List searchcat = [
  {
    'title': 'Bollywood',
    'img': 'assets/categories/bollywood.jpeg',
  },
  {
    'title': 'Charts',
    'img': 'assets/categories/charts.jpeg',
  },
  {
    'title': 'Classical',
    'img': 'assets/categories/classical.jpeg',
  },
  {
    'title': 'Devotional',
    'img': 'assets/categories/devotional.jpeg',
  },
  {
    'title': 'Discover',
    'img': 'assets/categories/discover.jpeg',
  },
  {
    'title': 'Fresh Finds',
    'img': 'assets/categories/freshfinds.jpeg',
  },
  {
    'title': 'Gaming',
    'img': 'assets/categories/gaming.jpeg',
  },
  {
    'title': 'Indie',
    'img': 'assets/categories/indie.jpeg',
  },
  {
    'title': 'Made For You',
    'img': 'assets/categories/madeforyou.png',
  },
  {
    'title': 'Marathi',
    'img': 'assets/categories/marathi.jpeg',
  },
  {
    'title': 'New Releases',
    'img': 'assets/categories/newreleases.jpeg',
  },
  {
    'title': 'Podcasts',
    'img': 'assets/categories/podcasts.png',
  },
  {
    'title': 'Pop',
    'img': 'assets/categories/pop.jpeg',
  },
  {
    'title': 'Punjabi',
    'img': 'assets/categories/punjabi.jpeg',
  },
  {
    'title': 'Tamil',
    'img': 'assets/categories/tamil.jpeg',
  },
  {
    'title': 'Telugu',
    'img': 'assets/categories/telugu.jpeg',
  },
  {
    'title': 'Top Songs',
    'img': 'assets/categories/topsongs.jpeg',
  },
  {
    'title': 'Wellness',
    'img': 'assets/categories/wellness.jpeg',
  }
];

List libraryitems = [
  {
    'title': 'Liked Songs',
    "img": "assets/images/img_1.jpg",
  },
  {
    'title': 'Downloaded',
    "img": "assets/images/img_2.jpg",
  },
  {
    'title': 'Telugu Fav',
    "img": "assets/images/img_3.jpg",
  },
  {
    'title': 'English Fav ',
    "img": "assets/images/img_4.jpg",
  },
  {
    'title': 'Hindi Fav',
    "img": "assets/images/img_5.jpg",
  },
  {
    'title': 'Old Hits',
    "img": "assets/images/img_6.jpg",
  },
  {
    'title': 'Puri Podcast',
    "img": "assets/images/img_7.jpg",
  },
  {
    'title': 'Rock',
    "img": "assets/images/img_8.jpg",
  },
  {
    'title': 'pop',
    "img": "assets/images/img_9.jpg",
  },
  {
    'title': 'Devotional',
    "img": "assets/images/img_10.jpg",
  },
  {
    'title': 'Classicals',
    "img": "assets/images/img_2.jpg",
  },
];

List types = [
  'Playlists',
  'Podcasts & Shows',
  'Artists',
];

List settingitems = [
  "Account",
  "Data Saver",
  "Language",
  "Playback",
  "Explicit Content",
  "Devices",
  "Car",
  "Social",
  "Voice Assistant",
  "Audio Quality",
  "Video Quality",
  "Storage",
  "Notifications",
  "Ads",
  "Local Files",
  "About",
];
