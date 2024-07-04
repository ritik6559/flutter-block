import 'package:bloc_tutorial/features/home/model/grocery_item.dart';

final List<GroceryItem> dummyGroceryItems = [
  GroceryItem(
    id: '1',
    name: 'Apple',
    description: 'A fresh red apple.',
    price: 0.99,
    imageUrl:
        'https://tse1.mm.bing.net/th?id=OIP._RroWF4BahiY4ZWXcACHVwHaEo&pid=Api&P=0&h=180',
  ),
  GroceryItem(
    id: '2',
    name: 'Banana',
    description: 'A ripe yellow banana.',
    price: 0.59,
    imageUrl:
        'https://up.yimg.com/ib/th?id=OIP.YNfCtBmWznRnb_v2URt0aQHaHa&pid=Api&rs=1&c=1&qlt=95&w=102&h=102',
  ),
  GroceryItem(
    id: '3',
    name: 'Carrot',
    description: 'A crunchy orange carrot.',
    price: 1.49,
    imageUrl:
        'https://up.yimg.com/ib/th?id=OIP.HJ1GybYAMddPVos5Ho2t9QHaFj&pid=Api&rs=1&c=1&qlt=95&w=133&h=100',
  ),
  GroceryItem(
    id: '4',
    name: 'Tomato',
    description: 'A juicy red tomato.',
    price: 2.99,
    imageUrl:
        'https://tse1.mm.bing.net/th?id=OIP.KrZ08nsOv-R0dHo5QV3RCgAAAA&pid=Api&P=0&h=180',
  ),
];
