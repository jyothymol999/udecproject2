import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhoneList extends StatelessWidget {

  var phone     = <String>['phone  1', 'phone 2', 'phone 3', 'phone 4', 'phone 5'];
  var phoneimg  = <String>[
    "https://media.4rgos.it/i/Argos/9520103_R_Z001A?w=750&h=440&qlt=70",
    "https://store.storeimages.cdn-apple.com/8756/as-images.apple.com/is/iphone-card-40-iphone14-202209_FMT_WHH?wid=508&hei=472&fmt=p-jpg&qlt=95&.v=1661958160494",
    "https://i0.wp.com/www.mobilebd.co/wp-content/uploads/2021/04/Apple-iPhone-13-Official-Image-500x500.jpg",
    "https://www.mall.cz/i/88596551/1000/1000",
    "https://m.media-amazon.com/images/W/IMAGERENDERING_521856-T1/images/I/713WI7OKngL._AC_SX679_.jpg",
  ];
  var price     = <int>[800, 700, 500, 300, 100];
  var color     = [
    Colors.green,
    Colors.red,
    Colors.blue,
    Colors.yellow,
    Colors.purple];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: Text("My Tech Shop"),),
      body: ListView.builder(
        itemCount: phone.length,
        itemBuilder: (context, index) {--------
            return Card(
              color: color[index],
              child: ListTile(
                leading: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                    fit: BoxFit.cover,
                  ),
                  ),
                ),
                    width: 100,
                    child: Image(
                      image: NetworkImage(phoneimg[index]),
                    ),
                  ),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text(phone[index]),
                ),
                subtitle: Text("Amazing phone"),
                trailing: Text("\$${price[index]}"),
              ),
            ),
          );


        },


      ),
    );
  }

}