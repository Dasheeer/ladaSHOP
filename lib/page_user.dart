import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'date_base.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';



class MyWidget extends StatefulWidget {
  final int id;
  //MyWidget({this.id});
  const MyWidget({Key? key, required this.id}) : super(key: key);




  @override
  State<MyWidget> createState() => _MyWidgetState();
}


class _MyWidgetState extends State<MyWidget> {
  int activeIndex = 0;

  Object? get index => null;
  @override
  Widget build(BuildContext context) {
    YoutubePlayerController controller = YoutubePlayerController(
        initialVideoId: catalog_cars[widget.id].linkYoutube,
        flags: const YoutubePlayerFlags(
          autoPlay: false,
        ));
    return Scaffold(
      backgroundColor: Color.fromRGBO(118, 157, 132, 1),
      appBar: AppBar(title: Text(catalog_cars[widget.id].name)
      ),
      body: Card(
        child: Column(
          children: [
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 200,
                autoPlay: true,
                enlargeCenterPage: true,
                onPageChanged: (boba, reason) {
                  setState(() {
                    activeIndex = boba;
                  });
                },
              ),
              itemCount: catalog_cars[widget.id].carsPhoto.length,
              itemBuilder: (context, index, realIndex) {
                return Container(

                  margin: const EdgeInsets.symmetric(horizontal: 2),
                  child: Image.asset(catalog_cars[widget.id].carsPhoto[index]),
                );
              },
            ),
            const SizedBox(
              height: 5,
            ),
            AnimatedSmoothIndicator(
              activeIndex: activeIndex,
              count: catalog_cars[widget.id].carsPhoto.length,
            ),
            Text(
              catalog_cars[widget.id].price.toString() + " рублей",
              style: const TextStyle(fontSize: 25),
            ),
            const SizedBox(
              height: 4,
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // shop button
                ElevatedButton.icon(
                  onPressed: () {
                    //if (false == shopList.contains(activeIndex)) {

                    //}
                  },
                  label: const Text(
                    "Добавить в корзину",
                    style: TextStyle(fontSize: 24, color:Color(0xFF0B5615)),

                  ),
                  icon: const Icon(
                    Icons.shopping_basket,
                    color:Color(0xFF0B5615),
                    size: 32,
                  ),
                ),

                const SizedBox(
                  width: 16,
                ),

                //add to favorite
                IconButton(
                  onPressed: () {

                    icon: null;
                  },
                  icon: const Icon(
                    Icons.favorite,
                    color:Color(0xFF981010),
                    size: 32,
                  ),
                ),
              ],
            ),

            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromRGBO(162, 182, 160, 1.0),
                  border: Border.all(color: Color.fromARGB(255, 74, 89, 71), width: 2)),
              margin: EdgeInsets.all(15.0),
              height: 120,
              padding: EdgeInsets.all(3.0),
              child: Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Flexible(
                    fit: FlexFit.loose,
                    child: Text(
                      catalog_cars[widget.id].discription,
                      style: const TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),

      const SizedBox(
        height: 16,
          width:16
      ),

      // add to basket
   Row(
          children: [
      Expanded(
      child: Padding(
      padding:
      const EdgeInsets.symmetric(horizontal: 8.0),
      child:
        YoutubePlayer(
          controller: controller,
        ),


      ),
    ),



          ],
        ),
      ],
      ),
    ),
    );
  }
}


// class PageUser extends StatelessWidget {
//   int activeIndex = 0;
//   final int pid;
//   PageUser({Key? key, required this.id}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     YoutubePlayerController controller = YoutubePlayerController(
//         initialVideoId: catalog_cars[id].linkYoutube,
//         flags: const YoutubePlayerFlags(
//           autoPlay: false,
//         ));
//     return Scaffold(
//       appBar: AppBar(title: Text(catalog_cars[id].name)),
//       body: Card(
//         child: Column(
//           children: [
//             CarouselSlider.builder(
//               options: CarouselOptions(
//                 height: 200,
//                 autoPlay: true,
//                 enlargeCenterPage: true,
//                 onPageChanged: (boba, reason) { SetState
//                   (() {
//                     activeIndex = boba;
//                   });
//                 },
//               ),
//               itemCount: catalog_cars[id].carsPhoto.length,
//               itemBuilder: (context, index, realIndex) {
//                 return Container(
//                   margin: const EdgeInsets.symmetric(horizontal: 2),
//                   child: Image.asset(catalog_cars[id].carsPhoto[index]),
//                 );
//               },
//             ),
//             AnimatedSmoothIndicator(
//               activeIndex: activeIndex,
//               count: catalog_cars[id].carsPhoto.length,
//             ),
//             const SizedBox(
//               height: 4,
//             ),
//             Container(
//               decoration: BoxDecoration(
//                   border: Border.all(color: Colors.black, width: 2)),
//               margin: EdgeInsets.all(15.0),
//               height: 120,
//               padding: EdgeInsets.all(3.0),
//               child: Expanded(
//                 child: SingleChildScrollView(
//                   scrollDirection: Axis.vertical,
//                   child: Flexible(
//                     fit: FlexFit.loose,
//                     child: Text(
//                       catalog_cars[id].discription,
//                       style: const TextStyle(fontSize: 16),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(
//               height: 4,
//             ),
//             Text(
//               catalog_cars[id].price.toString() + " Рублей",
//               style: const TextStyle(fontSize: 32),
//             ),
//             const SizedBox(
//               height: 16,
//             ),
//             YoutubePlayer(
//               controller: controller,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
