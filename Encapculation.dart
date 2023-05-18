class Restaurant{

   int _id;


  Restaurant(this._id){
    _buy();

  }
// interface
  String order(String name){
    // _made(name);
    return name;
  }

  //private
  //implementation
  void _made(String name){
    print('Make $name');
  }
  void _buy(){
    print('Buy from market');
  }
  int get restaurantId => _id;
}

// main(){
//   var kfc = Restaurant();
//   final String result= kfc.order('Chicken Fried');
//   kfc._made('khichuri');
//   final String result2= kfc.order('Burger');
//   print('$result, $result2 has been served....... ');
//
//
// }
// void main(){
//
// }