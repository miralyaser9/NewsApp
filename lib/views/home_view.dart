import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/widgets/NewsListView.dart';
import 'package:news_app/widgets/Newslistview_builder.dart';
import 'package:news_app/widgets/category_card.dart';
import 'package:news_app/widgets/category_listview.dart';
import 'package:news_app/widgets/news_tile.dart';



class Home_view extends StatelessWidget{
   @override
   Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
    appBar: AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(statusBarColor: Colors.white),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("News",style: TextStyle(fontFamily:"Trash Talk",fontWeight: FontWeight.bold,fontSize: 35,color: Colors.black),),
       Text("Cloud",style: TextStyle(fontFamily:"Trash Talk",color: Colors.purple,fontSize: 35,fontWeight: FontWeight.bold),) ],
      )
      ,centerTitle: true,backgroundColor: Colors.transparent,elevation: 0,
    ),

      body:Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),

        child: CustomScrollView(
          physics: BouncingScrollPhysics(),slivers: [

         SliverToBoxAdapter(child:Category_listview(),),
          SliverToBoxAdapter(child: SizedBox(height: 32,),),
         NewsListview_builder(category: 'general',)
        ],)
      ),

    );
  }

}