import 'package:flutter/cupertino.dart';
import 'package:news_app/models/category_model.dart';

import 'category_card.dart';

class Category_listview extends StatelessWidget{



  List<Category_model> myList=[
    Category_model(image: "assets/bus.jpg", categoryName: "business"),
    Category_model(image: "assets/eneteee.jpeg", categoryName: "entertainment",),
    Category_model(image: "assets/istockphoto-1201237630-612x612.jpg", categoryName: "sports",),
    Category_model(image: "assets/heee.jpg", categoryName: "health",),
    Category_model(image: "assets/technology.jpeg", categoryName: "technology",),

  ];


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
          scrollDirection: Axis.horizontal
          ,itemCount: myList.length,itemBuilder: (context,index){
        return Category_card(category: myList[index],);

      }),
    );
  }

}