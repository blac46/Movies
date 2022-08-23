import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";


class MovieDetailsScreen extends StatelessWidget {
   MovieDetailsScreen({Key? key,this.currentIndex}) : super(key: key);
  
int? currentIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            margin:const EdgeInsets.only(left: 0 ,right: 0, top: 0),
            child: Container(
              height: MediaQuery.of(context).size.height/ 1.7,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.grey,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage("data:image/jpeg;base64,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"))
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              
                children: [
                  Padding(
                   padding: const EdgeInsets.only(left: 20.0, right: 20.0 , top: 30.0),

                    child: IconButton(onPressed: ()=> Navigator.pop(context), icon: const Icon(Icons.arrow_back_ios)),
                  ),
                  Container(
                    height: 50,
                    color: Colors.black.withOpacity(0.3),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Material(
                            shape: RoundedRectangleBorder(
                              borderRadius:BorderRadius.circular(15.0)
                               ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(FeatherIcons.playCircle),
                            ),
                          ),
                        )
                      ]
                      ),
                  )
                ]
                ),

            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    children: [
                      Text("Description:",style :Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 20, fontWeight: FontWeight.bold)
                      ),
                      Text("wdkkedkemkdmekmdmjjmjdnejdcjmejdmcjemjmxcjemdxjemjmjemjmjmjmjmjmjmjmjmjmjmjmjmjmjmjmjmjmjmjmmmmjmjmjmjmjmj")
                    ],
                  ),
                  Wrap(
                    children: [
                      Text("Director:",style :Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 20, fontWeight: FontWeight.bold)
                      ),
                      Text("jex")
                    ],
                  ),
                  Wrap(
                    children: [
                      Text("Producer:",style :Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 20, fontWeight: FontWeight.bold)
                      ),
                      Text("killer")
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}