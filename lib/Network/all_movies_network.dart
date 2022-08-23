import 'package:http/http.dart' as http;

class AllMoviesNetwork{


/// Get a method to get the data from the API

getAllMovies()async{
  final response = await http.get(Uri.parse("https://ghibliapi.herokuapp.com/films"));
      

      //Check if the data is availabe

     if(response.statusCode ==200){
      print(response.body);
     }else{
      print(response.statusCode);
     }
}















}