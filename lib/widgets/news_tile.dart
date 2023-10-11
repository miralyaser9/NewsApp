import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:url_launcher/url_launcher.dart';


class News_tile extends StatelessWidget{

 late final ArticleModel articleModel;
  News_tile({required this.articleModel});

  @override
  Widget build(BuildContext context) {
    return
     Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Container(
          color: Colors.white,

            child:
               GestureDetector(onTap: _launchUrl,
                 child: Column(
                  mainAxisSize: MainAxisSize.min,
              children: [

                      ClipRRect(

                       borderRadius: BorderRadius.circular(8),
                       child: Image.network(articleModel.image??"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ2RZ659dqQUdpPWkmSZvC58VFkbdtruzm4VA&usqp=CAU",
                         height:200 ,width: double.infinity,
                         fit: BoxFit.cover,),
                   ),


                  SizedBox(height: 15,),
                  Text(articleModel.title,
                    style: TextStyle(fontFamily:"Monday Rain",fontSize: 24,fontWeight: FontWeight.bold,color:Colors.purple),
                    maxLines: 2,overflow: TextOverflow.ellipsis,),

                  SizedBox(height: 8,),
                  Text(articleModel.subTitle??" ",style: TextStyle(fontSize: 18,color: Colors.blueGrey),
                    maxLines: 1,overflow: TextOverflow.ellipsis,)
                    ,SizedBox(height: 10,)
                 , Divider(indent: 80,endIndent: 80,color: Colors.purple,thickness: 2,)

              ],
              ),
               ),

          ),
        );


  }
 Future<void> _launchUrl() async {
   final Uri _url = Uri.parse(articleModel.url);
   if (!await launchUrl(_url)) {
     throw Exception('Could not launch $_url');
   }
 }
 }

