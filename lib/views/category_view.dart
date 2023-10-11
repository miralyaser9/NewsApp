import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

import '../widgets/Newslistview_builder.dart';

class Category_View extends StatelessWidget {

 final String category;

 Category_View({required this.category});

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(backgroundColor: Colors.white,
       leading: IconButton(icon: Icon(Icons.arrow_back,size: 30,color: Colors.purple,),onPressed: (){
     Navigator.pop(context);
   },),),
     body:
     CustomScrollView(physics: BouncingScrollPhysics()
       ,slivers: [
       NewsListview_builder(category: category,)
     ],
     ),
   );
  }

}
