import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

import '../services/news_services.dart';
import 'news_tile.dart';

class News_listView extends StatelessWidget{
   List<ArticleModel> articles=[];
   News_listView({required this.articles});


  @override
  Widget build(BuildContext context) {

    return SliverList(delegate: SliverChildBuilderDelegate(
        childCount:
        articles.length,(context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 32),
        child: News_tile(articleModel: articles[index],),
      );
    }));
  }
}