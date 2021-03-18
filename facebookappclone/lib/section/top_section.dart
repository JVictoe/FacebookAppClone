import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Column(
        children: [
          Row(
            children: [
              Stack(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.grey[300],
                    ),
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage("https://scontent.frao3-1.fna.fbcdn.net/v/t1.0-9/82391152_181506576733868_1256390418573168302_n.jpg?_nc_cat=109&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGCE6ltXI3KpM22nwuc2cm1M-peARcyjAgz6l4BFzKMCIN2p-an_jtRkbqEKyU0kwsfKYMwvIu7LBtjifoef2Pb&_nc_ohc=axjzijUjW1QAX9xHGi4&_nc_ht=scontent.frao3-1.fna&oh=4d7d4caa8352b86876d46d1e57ed8823&oe=60762A28"),
                    ),
                  ],
                ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Container(
                    height: 40,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'No que você está pensando',
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 20
                        ),
                        contentPadding: EdgeInsets.all(10),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Divider(),
          ),
          Row(
            children: [
              Row(
                children: [
                  Container(
                    width: 100,
                    height: 50,
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.videocam_sharp,
                            color: Colors.red,
                          ),
                        ),
                        Text(
                            "Ao vivo"
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: VerticalDivider(color: Colors.grey, width: 50,),
              ),
              Row(
                children: [
                  Container(
                    width: 100,
                    height: 50,
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.image,
                            color: Colors.deepPurple,
                          ),
                        ),
                        Text(
                            "Foto"
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: VerticalDivider(color: Colors.grey, width: 50,),
              ),
              Row(
                children: [
                  Container(
                    width: 100,
                    height: 50,
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.meeting_room,
                            color: Colors.green,
                          ),
                        ),
                        Text(
                            "Sala"
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
