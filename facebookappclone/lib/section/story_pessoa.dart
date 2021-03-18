import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class StoryPessoa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: 150,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage("https://images.pexels.com/photos/6999527/pexels-photo-6999527.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                  fit: BoxFit.cover
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(15, 5, 0, 015),
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.blue
                              ),
                              child: Center(
                                child: Container(
                                  height: 45,
                                  width: 45,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.blue
                                  ),
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundImage: NetworkImage("https://images.pexels.com/photos/6773313/pexels-photo-6773313.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                                  ),
                                ),
                              ),
                            )
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 50, 0, 5),
                    child: Container(
                      child: AutoSizeText(
                        "Ana Maria",
                        style: TextStyle(
                          color: Colors.white,
                            fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        minFontSize: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
