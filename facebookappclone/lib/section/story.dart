import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          color: Colors.grey[200],
          height: 150,
          width: 100,
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
                              padding: const EdgeInsets.fromLTRB(5, 5, 0, 015),
                              child: Container(
                                child: Image.network("https://scontent.frao3-1.fna.fbcdn.net/v/t1.0-9/82391152_181506576733868_1256390418573168302_n.jpg?_nc_cat=109&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGCE6ltXI3KpM22nwuc2cm1M-peARcyjAgz6l4BFzKMCIN2p-an_jtRkbqEKyU0kwsfKYMwvIu7LBtjifoef2Pb&_nc_ohc=axjzijUjW1QAX9xHGi4&_nc_ht=scontent.frao3-1.fna&oh=4d7d4caa8352b86876d46d1e57ed8823&oe=60762A28"),
                                width: 70,
                              ),
                            ),
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.grey[200],
                                  ),
                                  child: Center(
                                    child: Container(
                                      height: 25,
                                      width: 25,
                                      child: Container(
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.blue
                                        ),
                                        child: Icon(
                                          Icons.add, color: Colors.white,
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5, 30, 0, 5),
                      child: Container(
                        child: AutoSizeText(
                          "Criar um story",
                          style: TextStyle(
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ],
          ),
        ),
      ),
    );
  }
}

