import 'package:flutter/material.dart';
import 'package:newfluttercontainer/data.dart';

class FancyContainer extends StatefulWidget {

  @override
  State<FancyContainer> createState() => _FancyContainerState();
}

class _FancyContainerState extends State<FancyContainer> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
        body: SafeArea(
            child:SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 100,
                    color: Colors.black,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                       // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.arrow_back_rounded,color: Colors.white),
                          Spacer(),
                          Text("MY USAGE",style: TextStyle(color: Colors.white)),
                          Spacer(),
                          Text("",style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                   ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,right: 10),
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35)),
                        color: Colors.grey[300],
                      ),
                      child: new DefaultTabController(
                        length:4,
                        child: new Scaffold(
                          appBar: new PreferredSize(
                            preferredSize: Size.fromHeight(kToolbarHeight),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: new Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.only(topLeft: Radius.circular(35), topRight: Radius.circular(35)),
                                  color: Colors.white,
                                ),
                                height: 50.0,
                                child: new TabBar(
                                  indicatorColor: Colors.white,
                                  unselectedLabelColor: Colors.black,
                                 // indicatorColor:Color(0xff5808e5) ,
                                  labelColor: Colors.red,
                                  tabs: [
                                    Tab(text: "Data"),
                                    Tab(text: "Calls"),
                                    Tab(text: "SMS"),
                                    Tab(text: "Additional"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          body: TabBarView(
                            children: [
                              Data(),
                              Data(),
                              Data(),
                              Data(),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
        ));
  }
}