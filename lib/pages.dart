import 'package:flutter/material.dart';
import 'date_base.dart';
import 'page_user.dart';

class PageStore extends StatefulWidget {
  const PageStore({super.key});




  @override
  State<PageStore> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<PageStore> {
  int selectIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold (
        appBar: AppBar(title: Text("Назад"),),
    body: ListView.builder(
      itemCount: catalog_cars.length,
      itemBuilder: _createListView,
    ),
    );
  }




  Widget _createListView(BuildContext context, int index) {

   return GestureDetector(

      onTap: () {
        setState(() {
          Navigator.push(context, MaterialPageRoute(builder: (context) => MyWidget(id: selectIndex),));
          selectIndex = index;
        });
      },
      child: Card(
        color: index == selectIndex
            ? const Color.fromARGB(122, 79, 175, 30) : const Color.fromARGB(
            122, 32, 105, 21),
        child: ListTile(
          title: Image.asset(catalog_cars[index].carsPhoto[0]),
          subtitle: Column(
            children: [
              Text(
                catalog_cars[index].name,
                style: const TextStyle(color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold, backgroundColor: Color.fromRGBO(
                    169, 187, 165, 1.0)),
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                catalog_cars[index].discription,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: const TextStyle(fontSize: 16, color: Colors.black), textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                catalog_cars[index].price.toString() + " ₽",
                style: const TextStyle(fontSize: 20, color: Colors.black, backgroundColor: Color.fromRGBO(
                    169, 106, 106, 1.0)),
              ),
              const SizedBox(
                height: 8,
              )
            ],
          ),
        ),
      ),
    );
  }
}
