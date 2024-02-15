

import 'package:flutter/material.dart';

class Assignment10 extends StatefulWidget {
  const Assignment10({super.key});

  @override
  State<Assignment10> createState() => _Assignment10State();
}

class _Assignment10State extends State<Assignment10> {
  bool _isPost1Linked = false;
  bool _isPost2Linked = false;
  bool _isPost3Linked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 17, 4, 8),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "NETFLIX",
          style: TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.redAccent,
            fontSize: 30,
          ),
        ),
          actions: const [
            Icon(
              Icons.favorite_rounded,
            )
          ],
          ),

          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      //width: double.infinity,
                      height:400,
                      width:400,
                      child: Image.network(
                        "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-image,i-discovery-catalog@@icons@@star-icon-202203011609.png,lx-24,ly-615,w-29,l-end:l-text,ie-OC4yLzEwICA1My4zSyBWb3Rlcw%3D%3D,fs-29,co-FFFFFF,ly-612,lx-70,pa-8_0_0_0,l-end/et00383266-jwhtsxgked-portrait.jpg",
                        //width: double.infinity,
                        //alignment: Alignment.center,
                        fit: BoxFit.fill,
                      ),
                    ),

                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            setState(() {
                              _isPost1Linked = !_isPost1Linked;
                            });
                          },
                          icon: _isPost1Linked
                          ? const Icon(
                            Icons.favorite_rounded,
                            color: Colors.red,
                          )
                          : const Icon(
                            Icons.favorite_outline_rounded,
                          ),
                        ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.comment_outlined),
                            ),
                            IconButton(
                              onPressed: () {}, 
                              icon: const Icon(
                                Icons.send,
                                ),
                            ),

                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.bookmark_outline,
                                ),
                                ),
                          ],
                    ),
                  ],
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height:400,
                      width:400,
                      child: Image.network(
                        
                            "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:l-image,i-discovery-catalog@@icons@@like_202006280402.png,lx-24,ly-617,w-29,l-end/et00304730-anyygmypht-portrait.jpg",

                         // "https://upload.wikimedia.org/wikipedia/en/5/53/Mismatched_poster.jpg",
                        //"https://static-koimoi.akamaized.net/wp-content/new-galleries/2023/11/12th-fail-movie-review-1.jpg",
                         fit: BoxFit.fill,
                      ),
                    ),

                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                          setState(() {
                            _isPost2Linked = !_isPost2Linked;
                          });
                        },
                         icon: Icon(
                          _isPost2Linked
                          ? Icons.favorite_rounded
                          : Icons.favorite_outline_outlined,
                          color: _isPost2Linked ? Colors.red : Colors.black,
                          ),
                        ),

                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.comment_outlined
                            ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                              Icons.send,
                             ),
                             ),

                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.bookmark_outline,
                              ),
                            ),
                      ],
                    ),
                  ],
                ),

               Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height:400,
                      width:400,
                      child: Image.network(
                        "https://assets-in.bmscdn.com/iedb/movies/images/mobile/thumbnail/xlarge/pathaan-et00323848-1674372556.jpg",
                        fit: BoxFit.fill,
                      ),
                    ),

                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                          setState(() {
                            _isPost3Linked = _isPost3Linked;
                          });
                        },
                         icon: Icon(
                          _isPost3Linked
                          ? Icons.favorite_rounded
                          : Icons.favorite_outline_outlined,
                          color: _isPost3Linked ? Colors.red : Colors.black,
                          ),
                        ),

                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.comment_outlined
                            ),
                          ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                              Icons.send,
                             ),
                            ),

                            const Spacer(),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.bookmark_outline,
                              ),
                            ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
    );
  }
}