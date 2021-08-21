import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   return Scaffold(

     appBar:AppBar(
       backgroundColor: Colors.deepOrangeAccent,
       leading: Icon(Icons.menu_book),
       title:Text('Go Up Exams',style:TextStyle(
         fontSize: 22,
         fontWeight: FontWeight.w700
       )),
       actions: [
         IconButton(onPressed:(){
           print('george');
         }, icon: Icon(Icons.pages_rounded))
     ],
     ),
     body: ListView(
       children: [
         //slider
         CarouselSlider(

             items: [1].map((i) {
               return Builder(
                 builder: (BuildContext context) {
                   return Container(
                       width: MediaQuery.of(context).size.width,

                       child:Image.asset("images/With-size_1.png")
                   );
                 },
               );
             }).toList(),
             options: CarouselOptions(
               height: 180,

               autoPlay: true,
               autoPlayInterval: Duration(seconds: 3),
               autoPlayAnimationDuration: Duration(milliseconds: 800),
               autoPlayCurve: Curves.fastOutSlowIn,
               enlargeCenterPage: true,
               scrollDirection: Axis.horizontal,
             )
         )
        ,

          ///text
          Container(
            padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
            child:Text("GO UP OF Teacher",
                style: TextStyle( color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                ),
            ),
          ),
          ///slider images of teachers
          Container(
            height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                 Container(
                    width: 160.0,
                    color: Colors.white,
                   child: Card(
                     elevation: 8,
                     child:   Image.network('https://www.kindpng.com/picc/m/160-1600317_transparent-happy-person-png-png-persons-png-download.png',
                     ),
                   ),
                  ),
                  Container(
                    width: 160.0,
                    color: Colors.white,
                    child: Card(
                      elevation: 8,
                      child:   Image.network('https://www.pngall.com/wp-content/uploads/2016/04/Happy-Person-Free-Download-PNG.png',
                      ),
                    ),

                  ),
                  Container(
                    width: 160.0,
                    color: Colors.white,
                    child: Card(
                      elevation: 8,
                      child:   Image.network('https://icon2.cleanpng.com/20171221/ytw/happy-person-transparent-5a3b91b5b1e710.5125367315138533657287.jpg',
                      ),
                    ),

                  ),

                ],
              )


          ),

         ///Grid View Container
         Container(
           height: 400,
             margin: const EdgeInsets.only(top: 25),
           padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
           child:GridView(
             gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),
             children: [
               Container(
                 margin:const EdgeInsets.only(right: 10),
               child:  GridTile(
                   child: Image.network("https://cdn2.hubspot.net/hubfs/53/video%20marketing-4.jpg"),
                 header:Text("Video",  textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,backgroundColor: Colors.deepOrangeAccent),),
                 ),
               ),
             Container(
                 margin:const EdgeInsets.only(right: 10),
                child: GridTile(
                   child: Image.network('http://www.culture.gov.tn/wp-content/uploads/2019/12/3404_11771_books-1-1.jpg'  ),
                   header:Text("Exams",  textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,backgroundColor: Colors.deepOrangeAccent),),

                 )
             )

             ],
           )
         )

       ],


     ),
    drawer: Drawer(
      child:Column(
        children:[
          UserAccountsDrawerHeader(accountName: Text("george"),
            accountEmail: Text("georgesamy8888@gmail.com"),
            currentAccountPicture:Icon(Icons.account_circle_outlined, color: Colors.white,size: 40,),
            decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
              image:DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("images/Logo_3.png")
              ),
            ),
          ),
          ListTile(
            title: Text('الصفحه الرئيسيه',style: TextStyle(color: Colors.black,fontSize:18,),),
            leading: Icon(Icons.menu,color: Colors.deepOrange),
          )
        ]
      )
     ),

   );

  }
}




