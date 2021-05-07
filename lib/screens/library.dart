import 'package:flutter/material.dart';
import 'package:music_play_ui/constants.dart';
import 'package:music_play_ui/screens/nowplaying.dart';

class Library extends StatelessWidget {
  Widget genreCard(String img, String title, String foll) {
    return Container(
      padding: EdgeInsets.all(30),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(gcard),
        ),
      ),
      child: Column(
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(img),
            radius: 50,
          ),
          SizedBox(
            height: 15,
          ),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "$foll Followers",
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 13,
            ),
          ),
        ],
      ),
    );
  }

  Widget songsCard(
      int sr, String img, String title, String artist, String time) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('$sr'),
            SizedBox(
              width: 20,
            ),
            CircleAvatar(
              backgroundImage: AssetImage(img),
              radius: 30,
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  artist,
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
            Spacer(),
            Text(
              time,
            ),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cwhite,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 40,
            ),
            child: Text(
              'POPULAR',
              style: TextStyle(
                letterSpacing: 3,
                fontSize: 20,
                fontWeight: FontWeight.w300,
                color: cblue,
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                genreCard(pop, "POP", "124,567"),
                genreCard(hiphop, "HipHop", "156,756"),
                genreCard(country, "Country", "134,564"),
                genreCard(heavymetal, "Heavy Metal", "324,134"),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 40,
              top: 20,
            ),
            child: Text(
              'TRENDING ALBUMS',
              style: TextStyle(
                letterSpacing: 3,
                fontSize: 20,
                fontWeight: FontWeight.w300,
                color: cblue,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 330,
            padding: EdgeInsets.fromLTRB(
              45,
              30,
              45,
              25,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(scard),
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  songsCard(1, art1, "Blinding Lights", "The Weeknd", '3.11'),
                  songsCard(2, art2, "The Box", "Roddy Rich", '2.15'),
                  songsCard(3, art3, "Dont Start Now", "Dua Lipa", '3.52'),
                  songsCard(4, art4, "Circles", "Post Malone", '3.02'),
                  songsCard(5, art5, "Intensions", "Justin Bieber", '2.59'),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset(
                home,
                scale: 1.1,
              ),
              GestureDetector(
                child: Image.asset(
                  list,
                  scale: 1.1,
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NowPlaying(),
                    ),
                  );
                },
              ),
              Image.asset(
                podcast,
                scale: 1.1,
              ),
              Image.asset(
                search,
                scale: 1.1,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
