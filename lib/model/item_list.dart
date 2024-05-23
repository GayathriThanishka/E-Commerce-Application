class ItemList 
{
  String image;
  String name;
  String price;
  ItemList({required this.image,required this.name,required this.price});
  
}
List<ItemList> itemlist=[
  ItemList(image: "https://images.pexels.com/photos/143133/pexels-photo-143133.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1", name: 'Carrot', price: 'Price:\$100'),
  ItemList(image: "https://images.pexels.com/photos/53494/mushroom-fungi-fungus-many-53494.jpeg?auto=compress&cs=tinysrgb&w=600", name: 'Mushroom', price: 'Price:\$100'),
  ItemList(image: "https://images.pexels.com/photos/53588/tomatoes-vegetables-food-frisch-53588.jpeg?auto=compress&cs=tinysrgb&w=600", name: 'Tomato', price: 'Price:\$90'),
  ItemList(image:"https://images.pexels.com/photos/3004798/pexels-photo-3004798.jpeg?auto=compress&cs=tinysrgb&w=600", name: 'Beans', price: 'Price:\$130'),


];