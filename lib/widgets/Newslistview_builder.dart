import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/widgets/NewsListView.dart';

import '../models/article_model.dart';
import '../services/news_services.dart';


class NewsListview_builder extends StatefulWidget {
  final String category;

  NewsListview_builder({required this.category});

  @override
  State<NewsListview_builder> createState() => _NewsListview_builderState();
}

class _NewsListview_builderState extends State<NewsListview_builder> {
  var futureNews;

  @override

  void initState() {
    super.initState();
   futureNews= NewsService().getNews( category: widget.category);
  }
  @override
  Widget build(BuildContext context) {

    return  FutureBuilder<List<ArticleModel>>(

        future: futureNews,
        builder: ( context,  snapshot)
        {
          if(snapshot.hasData){
            return News_listView(articles: snapshot.data!
            );
          }else if(snapshot.hasError){
            return const SliverToBoxAdapter(child: Text("oops there was en error,try later"));
          }else{
            return const SliverToBoxAdapter(child:
            Center(child: CircularProgressIndicator()));

          }


    });
  }
}