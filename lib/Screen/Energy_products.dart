import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';


import 'package:hypersee/Screen/screen_model/product_widget.dart';

class Energy_products extends StatefulWidget {
  const Energy_products({Key? key}) : super(key: key);

  @override
  _Energy_productsState createState() => _Energy_productsState();
}

class _Energy_productsState extends State<Energy_products> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(
          "انرژی زا",
          style: new TextStyle(fontSize: 18),
        ),
        centerTitle: true,
        backgroundColor: Color(0xffBE1E63),
        elevation: 4,
        actions: [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Container(
              width: 65,
              height: 35,
              decoration: BoxDecoration(
                color: Color(0xffBE1E63),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20)),
              ),
              child: Padding(
                  padding: EdgeInsets.only(left: 25),
                  child: Image.asset(
                    "Assets/Shopping-cart.png",
                    height: 19,
                    width: 19,
                  )),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: new Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Opacity(
                  opacity: 0.3,
                  child: ClipPath(
                    clipper: WaveClipperTwo(),
                    child: Container(
                      height: 200,
                      color: Color(0xffFFDEFA),
                    ),
                  ),
                ),
              ),
              ClipPath(
                clipper: WaveClipperTwo(),
                child: Container(
                  height: 220,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("Assets/72668-948125.png"),
                          fit: BoxFit.cover)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(padding: EdgeInsets.only(top: 250) , child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height - 52,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.transparent,
                  ),
                  Positioned(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(

                              topLeft: Radius.circular(45),
                            ),
                            color: Color(0xffFEF5ED)),
                        height: MediaQuery.of(context).size.height - 80,
                        width: MediaQuery.of(context).size.width,
                      )
                  ),
                ],
              ),),
              Padding(padding: EdgeInsets.only(top: 260) , child: Container(
                child: Column(

                  children: [
                   new Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       Container(
                         width: 140,
                         height: 2,
                         decoration: BoxDecoration(
                             gradient: LinearGradient(colors: [
                               Color(0xffE2E2E2) , Color(0xffFFFFFF)
                             ])
                         ),
                       ),
                       new Text("پیشنهاد محصول"),
                     ],
                   ),
                    SizedBox(height: 10,),
                    Product_widget(),
                    SizedBox(height: 10,),
                    new Column(
                      children: [
                        Container(
                          width: 335,
                          height: 2,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              Color(0xffE2E2E2) , Color(0xffFFFFFF)
                            ])
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    Product_coka_widget(),
                    SizedBox(height: 5,),
                    Stack(
                      children: [
                       Container(
                            width: 316,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xff707070).withOpacity(0.1),
                            ),
                              child: new Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 80),
                                    child: Container(
                                      width: 80,
                                      height: 24,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20) ,bottomRight:Radius.circular(20)  ),
                                        color: Colors.red
                                      ),
                                      child: new Text("15% تخفیف" , style: new TextStyle(color: Colors.white , ),textAlign: TextAlign.center,),
                                    ),
                                  ),
                                  new Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.asset("Assets/Group 41.png" , width: 90, height: 90,),
                                        new Text("نوشابه مشکی کوکاکولا زیرو"),
                                        new FloatingActionButton(onPressed: () {} , child: new Icon(Icons.add),)

                                      ],
                                    ),

                                  new Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                     Icon(Icons.favorite , color: Colors.red,),
                                      new Text("14000 تومان" , style: TextStyle(decoration: TextDecoration.lineThrough ,  ),),
                                      new Text("11000 تومان" ,style: TextStyle(color: Colors.green),)
                                    ],
                                  )
                                ],
                              ),
                          ),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Stack(
                      children: [
                       Container(
                            width: 316,
                            height: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xff707070).withOpacity(0.1),
                            ),
                            child: new Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 80),
                                  child: Container(
                                    width: 80,
                                    height: 24,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20) ,bottomRight:Radius.circular(20)  ),
                                        color: Colors.red
                                    ),
                                    child: new Text("15% تخفیف" , style: new TextStyle(color: Colors.white , ),textAlign: TextAlign.center,),
                                  ),
                                ),
                                new Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Image.asset("Assets/Group 41.png" , width: 90, height: 90,),
                                    new Text("نوشابه مشکی کوکاکولا زیرو"),
                                    new FloatingActionButton(onPressed: () {} , child: new Icon(Icons.add),)

                                  ],
                                ),

                                new Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Icon(Icons.favorite , color: Colors.red,),
                                    new Text("14000 تومان" , style: TextStyle(decoration: TextDecoration.lineThrough ,  ),),
                                    new Text("11000 تومان" ,style: TextStyle(color: Colors.green),)
                                  ],
                                )
                              ],
                            ),
                          ),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Stack(
                      children: [
                        Container(
                          width: 316,
                          height: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xff707070).withOpacity(0.1),
                          ),
                          child: new Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 80),
                                child: Container(
                                  width: 80,
                                  height: 24,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(bottomLeft:Radius.circular(20) ,bottomRight:Radius.circular(20)  ),
                                      color: Colors.red
                                  ),
                                  child: new Text("15% تخفیف" , style: new TextStyle(color: Colors.white , ),textAlign: TextAlign.center,),
                                ),
                              ),
                              new Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset("Assets/Group 41.png" , width: 90, height: 90,),
                                  new Text("نوشابه مشکی کوکاکولا زیرو"),
                                  new FloatingActionButton(onPressed: () {} , child: new Icon(Icons.add),)

                                ],
                              ),

                              new Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.favorite , color: Colors.red,),
                                  new Text("14000 تومان" , style: TextStyle(decoration: TextDecoration.lineThrough ,  ),),
                                  new Text("11000 تومان" ,style: TextStyle(color: Colors.green),)
                                ],
                              )
                            ],
                          ),
                        ),

                      ],
                    )




                  ],
                ),

              ),),

            ],
          ),
        ),
      )
    );
  }
}

class Product_coka_widget extends StatelessWidget {
  const Product_coka_widget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
        mainAxisAlignment: MainAxisAlignment.end,
          children: [
           Column(
             children: [

               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: FloatingActionButton(onPressed: () {} , child: Icon(Icons.add , size: 30,),),
               ),
               Container(
                 width: 25,
                 height: 25,
                 decoration: BoxDecoration(
                   border: Border.all(color: Colors.purple , width: 1),
                   borderRadius: BorderRadius.circular(10)
                 ),
                 child: Center(child: Icon(Icons.exposure_minus_1 , color: Colors.purple,)),
               )
             ],
           ),


          ],
        ),

       Padding(
         padding: const EdgeInsets.only(left: 250 ),
         child: new Column(
           children: [
             IconButton(onPressed: () {}, icon: Icon(Icons.settings_outlined , color: Color(0xffB7B7B7),)),
             IconButton(onPressed: () {}, icon: Icon(Icons.delete , color: Color(0xffB7B7B7),)),
             IconButton(onPressed: () {}, icon: Icon(Icons.favorite , color: Colors.red,)),
           ],
         ),
       ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left:60),
                child: Container(
                  width: 27,
                  height: 24,
                  decoration: BoxDecoration(
                    color: Color(0xffF33A3A),
                    borderRadius: BorderRadius.only(bottomRight: Radius.circular(20) , bottomLeft: Radius.circular(20))
                  ),
                  child: new Text("15%" ,style: new TextStyle(color: Colors.white), textAlign: TextAlign.center,),
                ),
              ),
                  Column(
                    children: [

                      Stack(
                        children: [
                          Container(
                            width: 235,
                            height: 90,
                            decoration: BoxDecoration(
                              color: Color(0xff707070).withOpacity(0.1),
                              borderRadius: BorderRadius.circular(20)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: 25),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset("Assets/Group 41.png"),
                                  new Text("نوشابه مشکی کوکاکولا زیرو"),


                                ],
                              ),
                            )
                          ),
                        Padding(
                          padding: const EdgeInsets.only(top: 60 , right: 60),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              new Text("14000 تومان" , style: TextStyle(decoration: TextDecoration.lineThrough),),
                              new Text("11000 تومان" , style: new TextStyle(color: Colors.green),)
                            ],
                          ),
                        )
                        ],
                      ),

                    ],
                  ),

            ],
          ),
        )
      ],
    );
  }
}
