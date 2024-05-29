class VegetablesList 
{
  String image;
  String name;
  String price;
  VegetablesList({required this.image,required this.name,required this.price});
  
}
List<VegetablesList> itemlist=[
  VegetablesList(image: "https://images.pexels.com/photos/143133/pexels-photo-143133.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", name: 'Carrot', price: 'Price:\$100'),
  VegetablesList(image: "https://images.pexels.com/photos/53494/mushroom-fungi-fungus-many-53494.jpeg?auto=compress&cs=tinysrgb&w=600", name: 'Mushroom', price: 'Price:\$100'),
  VegetablesList(image: "https://images.pexels.com/photos/53588/tomatoes-vegetables-food-frisch-53588.jpeg?auto=compress&cs=tinysrgb&w=600", name: 'Tomato', price: 'Price:\$90'),
  VegetablesList(image:"https://images.pexels.com/photos/3004798/pexels-photo-3004798.jpeg?auto=compress&cs=tinysrgb&w=600", name: 'Beans', price: 'Price:\$130'),


];
List<VegetablesList> cartlist=[];
List<VegetablesList> wishlist=[];
class FruitsList 
{
  String image;
  String name;
  String price;
  FruitsList({required this.image,required this.name,required this.price});
  
}
List<FruitsList> fruitlist=[
  FruitsList(image: "https://images.pexels.com/photos/672101/pexels-photo-672101.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", name: 'Apple', price: 'Price:\$100'),
  FruitsList(image: "https://images.pexels.com/photos/2090899/pexels-photo-2090899.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", name: 'Orange', price: 'Price:\$100'),
  FruitsList(image: "https://images.pexels.com/photos/61127/pexels-photo-61127.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", name: 'Banana', price: 'Price:\$90'),
  FruitsList(image:"https://images.pexels.com/photos/1296094/pexels-photo-1296094.jpeg?auto=compress&cs=tinysrgb&w=600", name: 'Strawberries', price: 'Price:\$330'),


];
// List<FruitsList> cartlist=[];
// List<FruitsList> wishlist=[];

