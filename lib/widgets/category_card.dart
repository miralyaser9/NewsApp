import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:news_app/views/category_view.dart';

import '../models/category_model.dart';


class Category_card extends StatelessWidget{


 final Category_model category;
 const Category_card({super.key,required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: (){
      Navigator.of(context).push(MaterialPageRoute(builder: (context){
        return Category_View(category: category.categoryName);
      }));

    },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          child: Center(child: Text( category.categoryName,style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),)),
          height: 100,width: 150,
          decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(16),color: Colors.cyanAccent
              ,image:DecorationImage(image: AssetImage(category.image)
              ,fit: BoxFit.fill  )
          ),

        ),
      ),
    );
  }

}