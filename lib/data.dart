import 'package:flutter/material.dart';
class Data extends StatefulWidget {
  const Data({Key? key}) : super(key: key);

  @override
  State<Data> createState() => _DataState();
}

class _DataState extends State<Data> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius:
                  BorderRadius.all(Radius.circular(20)),color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,5,10,5),
                      child: Text("TOTAL SMS TOTAL",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,0 ,10,5),
                      child: Text("124",style: TextStyle(fontSize: 22,color: Colors.black,),),
                    )
                  ],
                ),
                ),
            ),
            Container(
              height: MediaQuery.of(context).size.height-180,
               child: ListView.builder(
                  itemCount: 6,
                   physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(8.0),
                  itemBuilder: (BuildContext context, int index) {{
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(15.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [

                                  Expanded(
                                    flex: 1,
                                      child: Icon(Icons.arrow_upward,color: Colors.red,)),
                                  Expanded(
                                    flex: 6,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 8,bottom: 0,),
                                      child: Text(
                                       "+65178  876262",
                                        style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    flex: 2,
                                    child: Padding(
                                      padding:
                                      const EdgeInsets.all(8.0),
                                      child: Text(
                                        "FJ 1.2",
                                        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(),
                                  ),
                                  Expanded(flex:8,child: Padding(
                                    padding: const EdgeInsets.only(left: 10,bottom: 8),
                                    child: Text("Local",style: TextStyle(color: Colors.grey[400]),),
                                  ))

                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 1,
                                    child: Container(),
                                  ),
                                  Expanded(flex:8,child: Padding(
                                    padding: const EdgeInsets.only(left: 10,bottom: 8),
                                    child: Text("Time 10:05 am",style: TextStyle(color: Colors.grey[400]),),
                                  ))

                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }
                  },
                ),
            )
          ],
        ),
      ),
    );
  }
}
