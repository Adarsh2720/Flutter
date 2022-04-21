// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:newsapp/views/article_veiw.dart';
import 'package:newsapp/views/login.dart';
// import 'package:newsapp/views/model.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final barColor = const Color(0xFF000000);
  final bgColor = const Color(0xFFFFFFFF);
  List<ArticleModel> articles = <ArticleModel>[];

  // bool loading = true;
  // getNews() async {
  //   // News newsClass = News();
  //   await newsClass.getNews();
  //   articles = newsClass.news;
  //   setState(() {
  //     loading = false;
  //   });
  // }

  // void getLogin() async {
  //   WidgetsFlutterBinding.ensureInitialized();
  //   await Firebase.initializeApp();
  // }

  @override
  void initState() {
    super.initState();
    // getNews();
    // getLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                "Hindustan Times",
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              FloatingActionButton(
                  child: Icon(Icons.account_circle, color: barColor),
                  backgroundColor: bgColor,
                  elevation: 0.0,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  }),
            ],
          ),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: [
            CategoryTile(),
            Blogtitle()
          ],
        )));
  }
}

class CategoryTile extends StatelessWidget {
  CategoryTile({Key? key}) : super(key: key);
  // List<NewsQueryModel> newsModelList = <NewsQueryModel>[];
  final List<String> navbarItems = [
    "Top News",
    "India",
    "Worlds",
    "Finance",
    "Health"
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: navbarItems.length,
          itemBuilder: (context, index) {
            return InkWell(
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15)),
                child: Center(
                  child: Text(
                    navbarItems[index],
                    style: const TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}



class Blogtitle extends StatelessWidget {
  const Blogtitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: Container(
                child: Column(
              children: [
                SizedBox(height: 20),
                Card(
                  color: Colors.yellow[50],
                  child: Container(
                    width: 300,
                    height: 450,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Container(
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://akm-img-a-in.tosshub.com/indiatoday/images/story/202204/brinda_karat_india_today_1200x768.jpeg?PcpK58h141Xca6UxB3IAygfGPoRnap5.&size=770:433",scale: 1),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            height: 5,
                          ), //SizedBox
                          Text(
                            "Before Jahangirpuri, 5 times Brinda Karat stood out as a neta",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ), //Textstyle
                          ), //Text
                          SizedBox(
                            height: 10,
                          ), //SizedBox
                          Text(
                            "CPM leader Brinda Karat has previously forced Air India to withdraw mini-skirts as mandatory uniform for women",

                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.green[900],
                            ), //Textstyle
                          ), //Text
                          SizedBox(
                            height: 10,
                          ), //SizedBox
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.circle_notifications,
                                  )),
                              Text("Hindustan Times",
                                  style: TextStyle(
                                      color: Colors.blueGrey.withOpacity(0.6),
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold)),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.add_comment_outlined),
                              ),
                              Text("25"),
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.share)),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_vert),
                              ),
                            ],
                          ) //Row
                        ],
                      ), //Column
                    ), //Padding
                  ),
                ),
                SizedBox(height: 20),
                Card(
                  color: Colors.yellow[50],
                  child: Container(
                    width: 300,
                    height: 450,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Container(
                            width: 150.0,
                            height: 150.0,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://imgeng.jagran.com/images/2022/apr/covid-19-21650469005689.jpg",scale: 1),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            height: 10,
                          ), //SizedBox
                          Text(
                            'Nifty & Sensex',
                            style: TextStyle(
                              fontSize: 30,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ), //Textstyle
                          ), //Text
                          SizedBox(
                            height: 8,
                          ), //SizedBox
                          Text(
                            "Indian indices may witness a flat to negative start on Thursday, extending gains amid positive global cues. Investors, will have their eyes on Reserve Bank of India's Monetary Policy Committee scheduled to announce interest rates.",

                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.green[900],
                            ), //Textstyle
                          ), //Text
                          SizedBox(
                            height: 10,
                          ), //SizedBox
                          Row(
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.circle_notifications,
                                  )),
                              Text("Hindustan Times",
                                  style: TextStyle(
                                      color: Colors.blueGrey.withOpacity(0.6),
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold)),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.add_comment_outlined),
                              ),
                              Text("25"),
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.share)),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.more_vert),
                              ),
                            ],
                          ),
                        ],
                      ),
//ElevatedButton
                    ), //Column
                  ), //Padding
                ),
              ],
            )
/** Card Widget **/
//Card
                ),
          ), //Center
        ],
      ),
    );
  }
}

