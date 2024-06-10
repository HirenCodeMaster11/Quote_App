import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/global.dart';
import '../../utils/quoteList.dart';

class QuoteScreen extends StatefulWidget {
  const QuoteScreen({super.key});

  @override
  State<QuoteScreen> createState() => _QuoteScreenState();
}

class _QuoteScreenState extends State<QuoteScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                image: AssetImage('${selectedTheme}'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: PageView(
                scrollDirection: Axis.vertical,
                children: [
                  ...List.generate(
                    quoteList.length,
                    (index) => Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          textAlign: align,
                          '${quoteList[index]['quote']}',
                          maxLines: 10,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            letterSpacing: 0.2,
                            color: selectColor,
                            fontSize: 40,
                            fontFamily: ('$selectedFontFamily'),
                          ),
                        ),
                        SizedBox(
                          height: height*0.1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.share_outlined,
                              color: Colors.white,
                              size: 45,
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Icon(
                              Icons.download_outlined,
                              color: Colors.white,
                              size: 45,
                            ),
                            SizedBox(
                              width: 25,
                            ),
                            Icon(
                              Icons.bookmark_border_outlined,
                              color: Colors.white,
                              size: 45,
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 38,right: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/to');
              },
              child: Container(
                height: height*0.052,
                width: width*0.26,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.space_dashboard,size: 22,color: Colors.white,),
                    SizedBox(width: width*0.005,),
                    Text('Topics',style: TextStyle(color: Colors.white,fontSize: 18),)
                  ],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/theme');
              },
              child: Container(
                height: height*0.064,
                width: width*0.28,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.text_fields,size: 22,color: Colors.white,),
                        SizedBox(width: width*0.005,),
                        Text('fonts',style: TextStyle(color: Colors.white,fontSize: 18),)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.content_copy_rounded,size: 22,color: Colors.white,),
                        SizedBox(width: width*0.005,),
                        Text('Themes',style: TextStyle(color: Colors.white,fontSize: 18),)
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: height*0.053,
              width: width*0.28,
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.settings,size: 22,color: Colors.white,),
                  SizedBox(width: width*0.005,),
                  Text('Setting',style: TextStyle(color: Colors.white,fontSize: 18),)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
