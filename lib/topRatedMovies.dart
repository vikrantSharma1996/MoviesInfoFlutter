import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class TopRatedMovies extends StatefulWidget {
  @override
  _TopRatedMoviesState createState() => _TopRatedMoviesState();
}

class _TopRatedMoviesState extends State<TopRatedMovies> {

  int _currentPage = 0;
  PageController _pageController = PageController(initialPage: 0);
  var movies;
  var imageUrl = 'https://image.tmdb.org/t/p/w500/';
  Color mainColor = const Color(0xff3C3261);

  @override
  void initState() {
    
    super.initState();
    Timer.periodic(Duration(seconds: 5), (timer) 
    { 
      if(_currentPage < 20){
        _currentPage++;
      } else 
      {
        _currentPage = 0;
      }
      _pageController.animateToPage(_currentPage, duration: Duration(milliseconds: 350), curve: Curves.ease,);
    });
  }
  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(
        elevation: 0.3,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: new Icon(
          Icons.menu,
          color: mainColor,
        ),
        title: new Text(
          'Movies',
          style: new TextStyle(
              color: mainColor,
              fontFamily: 'Arvo',
              fontWeight: FontWeight.bold),
        ),
      ),
      body: new Padding(
        padding: const EdgeInsets.all(16.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            //new MovieTitle(mainColor),
            Container(
              height: 200,
              child: PageView.builder(
                controller: _pageController,
                pageSnapping: true,
                itemBuilder: (context, i) {
                  return new Card(
                    semanticContainer: true,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.network(
                      imageUrl + movies[i]['poster_path'],
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    elevation: 5,
                    margin: EdgeInsets.all(10),
                  );
                },
                itemCount: 20,
              ),
            ),

            SizedBox(height: 200, child: Text("Heloooooo..........!!!!!!!!"))
          ],
        ),
      ),
    );
  }

  autoScrollCard(){
    
  }

  Future<Map> getJson() async {
    var url =
        'http://api.themoviedb.org/3/discover/movie?api_key=a243b4bafa08f2397b6d401ab4154cc0';
    http.Response response = await http.get(url);
    return json.decode(response.body);
  }

  void getData() async {
    var data = await getJson();

    setState(() {
      movies = data['results'];
    });
  }
}


