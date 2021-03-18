import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Postagens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: 800,
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/6773313/pexels-photo-6773313.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      "Ana Maria",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                      minFontSize: 10,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Row(
                      children: [
                        AutoSizeText(
                          "10 min",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 9,
                          ),
                          minFontSize: 5,
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Icon(
                          Icons.public,
                          size: 15,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            AutoSizeText(
              "A questão da diversidade entrou na pauta das grandes empresas e tem mobilizado líderes e funcionários engajados com a igualdade no ambiente de trabalho. Isso é ótimo e aponta para uma sociedade mais justa e equilibrada.",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
              ),
              minFontSize: 5,
              maxLines: 10,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 10,
            ),
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  width: constraints.maxWidth,
                  height: 400,
                  child: Image.network(
                    "https://images.pexels.com/photos/6786944/pexels-photo-6786944.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                    fit: BoxFit.cover,
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.wash,
                  color: Colors.blue,
                ),
                Icon(
                  Icons.emoji_emotions_rounded,
                  color: Colors.yellow,
                ),
                Text("1500"),
                Expanded(child: Container()),
                AutoSizeText(
                  "2.999 Comentários",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  width: 5,
                ),
                AutoSizeText(
                  "° 66 Compartilhamentos",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
            Divider(
              color: Colors.grey[300],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.wash,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text("Like"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.messenger_outline,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text("Like"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text("Like"),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Divider(
              color: Colors.grey,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/3563869/pexels-photo-3563869.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                      width: 200,
                      height: 60,
                      color: Colors.grey[400],
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, top: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                AutoSizeText(
                                  "Julia Antonieta",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  minFontSize: 10,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                AutoSizeText(
                                  "77 of 162",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  minFontSize: 10,
                                ),
                              ],
                            ),
                            AutoSizeText(
                              "Marcos Sulivan",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Row(
                children: [
                  AutoSizeText(
                    "Like",
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  AutoSizeText(
                    "Reply",
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      "https://scontent.frao3-1.fna.fbcdn.net/v/t1.0-9/82391152_181506576733868_1256390418573168302_n.jpg?_nc_cat=109&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGCE6ltXI3KpM22nwuc2cm1M-peARcyjAgz6l4BFzKMCIN2p-an_jtRkbqEKyU0kwsfKYMwvIu7LBtjifoef2Pb&_nc_ohc=DiJwdQEmTuoAX9mHqTM&_nc_ht=scontent.frao3-1.fna&oh=58549c46ebbaa983d4f1ea9a1f494096&oe=607A1EA8"),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[300]),
                      height: 40,
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: TextField(
                                  decoration: InputDecoration.collapsed(
                                    hintText: 'Digite um comentário',
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Icon(Icons.camera_alt),
                          const SizedBox(width: 5,),
                          Icon(Icons.emoji_emotions_rounded),
                          const SizedBox(width: 5,),
                          Icon(Icons.emoji_emotions_outlined),
                          const SizedBox(width: 5,),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
