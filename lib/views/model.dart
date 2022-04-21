// // ignore_for_file: unused_local_variable

// import 'dart:convert';

// import 'package:newsapp/views/article_veiw.dart';
// import 'package:http/http.dart' as http;

// class News {
//   List<ArticleModel> news = [];

//   Future<void> getNews() async {
//     String url =
//         "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=7e0e739ad7c64866bb44b79fb87ebdb3";

//     // var response = await http.get(url);

//     var response = await http.get(Uri.parse(url));
//     var jsonData = jsonDecode(response.body);

//     if (jsonData['status'] == "ok") {
//       jsonData["articles"].forEach((element) {
//         if (element["urlToImage"] != null && element["description"] != null) {
//           ArticleModel articleModel = ArticleModel(
//             title: element["title"],
//             desc: element["desc"],
//             url: element["url"],
//             urlToImage: element["urlToImage"],
//           );
//           news.add(articleModel);
//         }
//       });
//     }
//   }
// }

















// <======================================>


// // class BlogTitle extends StatelessWidget {
// //   BlogTitle({Key? key}) : super(key: key);
// //   List<NewsQueryModel> newsModelList = <NewsQueryModel>[];

// //   bool isLoading = true;
// //   getNewsByQuery(String query) async {
// //     print("Inside the get");
// //     String url =
// //         "https://newsapi.org/v2/everything?q=$query&from=2022&sortBy=publishedAt&apiKey=7e0e739ad7c64866bb44b79fb87ebdb3";
// //     Response response = await get(Uri.parse(url));

// //     Map data = jsonDecode(response.body);
// //     int i = 1;
// //     data["articles"].forEach((element) {
// //       if (element["urlToImage"] != null) {
// //         // print("${i} ");
// //         // i++;
// //         // print(element["title"]);
// //         // print(element["description"]);
// //         NewsQueryModel newsModel = NewsQueryModel();
// //         newsModel = NewsQueryModel.fromMap(element);
// //         newsModelList.add(newsModel);
// //       }
// //     });

// //     // for (var item in newsModelList) {
// //     //   print(item.newsHead);
// //     // }
// //   }

// //   get crossAxisAlignment => null;

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container(
// //         margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
// //         child: Column(
// //           children: [
// //             Container(
// //               margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
// //               child: Row(
// //                 mainAxisAlignment: MainAxisAlignment.start,
// //                 children: [
// //                   Text(
// //                     "Latest News",
// //                     style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //             ListView.builder(
// //               physics: const NeverScrollableScrollPhysics(),
// //               shrinkWrap: true,
// //               itemCount: newsModelList.length,
// //               // itemCount: 4,
// //               itemBuilder: (context, index) {
// //                 return Container(
// //                   margin:
// //                       const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
// //                   child: Card(
// //                     shape: RoundedRectangleBorder(
// //                         borderRadius: BorderRadius.circular(15)),
// //                     elevation: 2.0,
// //                     child: Stack(
// //                       children: [
// //                         ClipRRect(
// //                           borderRadius: BorderRadius.circular(15),
// //                           child: Image.network(
// //                               "https://media.istockphoto.com/photos/breaking-news-world-news-with-map-backgorund-picture-id1182477852?k=20&m=1182477852&s=612x612&w=0&h=I3wdSzT_5h1y9dHq_YpZ9AqdIKg8epthr8Guva8FkPA="),
// //                         ),
// //                         Positioned(
// //                             left: 0,
// //                             right: 0,
// //                             bottom: 0,
// //                             child: Container(
// //                                 decoration: BoxDecoration(
// //                                     borderRadius: BorderRadius.circular(15),
// //                                     gradient: LinearGradient(
// //                                       colors: [
// //                                         Colors.black12.withOpacity(0),
// //                                         Colors.black,
// //                                       ],
// //                                       begin: Alignment.topCenter,
// //                                       end: Alignment.bottomCenter,
// //                                     )),
// //                                 padding:
// //                                     const EdgeInsets.fromLTRB(10, 15, 10, 15),
// //                                 child: Column(
// //                                   crossAxisAlignment: CrossAxisAlignment.start,
// //                                   children: [
// //                                     Text(
// //                                       // newsModelList[index].newsHead,
// //                                       "Hello",
// //                                       style: TextStyle(
// //                                           fontSize: 18,
// //                                           color: Colors.white,
// //                                           fontWeight: FontWeight.bold),
// //                                     ),
// //                                     const Text(
// //                                       "news desc",
// //                                       style: TextStyle(
// //                                         fontSize: 12,
// //                                         color: Colors.white,
// //                                       ),
// //                                     ),
// //                                   ],
// //                                 ))),
// //                       ],
// //                     ),
// //                   ),
// //                 );
// //               },
// //             ),
// //             Container(
// //               padding: EdgeInsets.fromLTRB(0, 10, 0, 15),
// //               child: Row(
// //                 mainAxisAlignment: MainAxisAlignment.center,
// //                 children: [
// //                   ElevatedButton(
// //                       onPressed: () {
// //                         getNewsByQuery("india");
// //                         // print("Hello");
// //                       },
// //                       child: Text("Show more")),
// //                 ],
// //               ),
// //             )
// //           ],
// //         ));
// //   }
// // }
