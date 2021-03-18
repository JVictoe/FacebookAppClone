import 'package:auto_size_text/auto_size_text.dart';
import 'package:facebookappclone/section/postagens/postagens.dart';
import 'package:facebookappclone/section/story.dart';
import 'package:facebookappclone/section/story_pessoa.dart';
import 'package:facebookappclone/section/top_section.dart';
import 'package:flutter/material.dart';

class AppBarFacebook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      initialIndex: 0,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(double.infinity, 120),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: Row(
              children: [
                AutoSizeText(
                  "Facebook",
                  style: TextStyle(
                    color: Colors.blue[800],
                    fontSize: 35,
                    fontWeight: FontWeight.bold
                  ),
                  minFontSize: 20,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                Expanded(child: Container()),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey[200],
                    ),
                    IconButton(
                      icon: Icon(Icons.search, color: Colors.black,),
                    ),
                  ],
                ),
                const SizedBox(width: 10,),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey[200],
                    ),
                    IconButton(
                      icon: Icon(Icons.messenger_outline, color: Colors.black,),
                    ),
                  ],
                ),
              ],
            ),
            bottom: TabBar(
              enableFeedback: true,
              tabs: [
                Tab(
                  child: IconButton(
                    icon: Icon(Icons.home, color: Colors.blue[800],),
                  ),
                ),
                Tab(
                  child: IconButton(
                    icon: Icon(Icons.people, color: Colors.blue[800],),
                  ),
                ),
                Tab(
                  child: IconButton(
                    icon: Icon(Icons.supervised_user_circle_outlined, color: Colors.blue[800],),
                  ),
                ),
                Tab(
                  child: IconButton(
                    icon: Icon(Icons.account_balance, color: Colors.blue[800],),
                  ),
                ),
                Tab(
                  child: IconButton(
                    icon: Icon(Icons.add_alert, color: Colors.blue[800],),
                  ),
                ),
                Tab(
                  child: IconButton(
                    icon: Icon(Icons.more_horiz_sharp, color: Colors.blue[800],),
                  ),
                ),
              ],
            ),
            ),
        ),

        body: TabBarView(
          children: [
            ListView(
              children: [
                TopSection(),
                Divider(color: Colors.grey[400],height: 10,thickness: 10,),
                const SizedBox(height: 5,),
                Container(
                  width: 9999,
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Story(),
                      const SizedBox(width: 10,),
                      StoryPessoa(),
                      const SizedBox(width: 10,),
                      StoryPessoa(),
                      const SizedBox(width: 10,),
                      StoryPessoa(),
                      const SizedBox(width: 10,),
                      StoryPessoa(),
                      const SizedBox(width: 10,),
                      StoryPessoa(),
                      const SizedBox(width: 10,),
                      StoryPessoa(),
                      const SizedBox(width: 10,),
                      StoryPessoa(),
                      const SizedBox(width: 10,),
                      StoryPessoa(),
                      const SizedBox(width: 10,),
                      StoryPessoa(),
                      const SizedBox(width: 10,),
                      StoryPessoa(),
                      const SizedBox(width: 10,),
                      StoryPessoa(),
                      const SizedBox(width: 10,),
                      StoryPessoa(),
                      const SizedBox(width: 10,),
                      StoryPessoa(),
                      const SizedBox(width: 10,),
                      StoryPessoa(),
                      const SizedBox(width: 10,),
                    ],
                  ),
                ),
                Divider(color: Colors.grey[400],height: 30,thickness: 10,),
                Postagens(),
                Divider(color: Colors.grey[400],height: 30,thickness: 10,),
                Postagens(),
                Divider(color: Colors.grey[400],height: 30,thickness: 10,),
                Postagens(),
                Divider(color: Colors.grey[400],height: 30,thickness: 10,),
                Postagens(),
              ],
            ),
            Container(color: Colors.red,height: 500,),
            Container(color: Colors.grey,),
            Container(color: Colors.green,),
            Container(color: Colors.deepOrange,),
            Container(color: Colors.lightGreen,),
          ],
        ),
      ),
    );
  }
}
