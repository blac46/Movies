import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";
import 'package:movie_app/screens/movie_details_screen.dart';


class AllMoviesScrren extends StatelessWidget {
  const AllMoviesScrren({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe8e7e7),
      appBar: allMoviesAppBar(context),

      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context,index) {
          return GestureDetector(
            child: MoviesCard(),
            onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context){
                  return MovieDetailsScreen(currentIndex: index,);
                }
                )
                );
            },
            );
        }
      ),
    );
    
  }






























  AppBar allMoviesAppBar(BuildContext context) {
    return AppBar(
      title: Text("Timeline",style: Theme.of(context).textTheme.bodyText1!.copyWith(
        fontSize: 20,
        fontWeight: FontWeight.bold
      ),),
      backgroundColor: Colors.grey.withOpacity(0.5),
      elevation: 0,
      centerTitle: true,
      
      );
  }
}

class MoviesCard extends StatelessWidget {
  const MoviesCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        height: MediaQuery.of(context).size.height/2.5,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:const [
                  Text("Relase Date"),
                  Icon(Icons.more_horiz)
                ],
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow:[
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 5,
                          offset:const Offset(0,5),

                        )
                      ]
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children:const [
                        Icon(FeatherIcons.heart),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(FeatherIcons.messageCircle),
                        ),
                        Icon(FeatherIcons.cornerUpRight)
                      ],
                    ),
                    Row(
                      children: const[
                        Icon(Icons.star),
                        Text("4.5")
                      ],
                    )

                  ],
                  )
            ]
            ),
        ),
      ),
    );
  }
}