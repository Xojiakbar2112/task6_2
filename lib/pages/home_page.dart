import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true ,
          title: const Text(
            "Messages",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body: ListView(
          children: [
            _itemList(
                title: "Laurent",
                subtitle: "Laurent",
                image: "assets/images/ic_image1.jpeg"),
            _itemList(title: "Laurent", image: "assets/images/ic_image2.jpeg"),
            _itemList(title: "Laurent", image: "assets/images/ic_image3.jpeg"),
          ],
        ));
  }

  Widget _itemList(
      {String title = '',
      String image = '',
      String subtitle = '',
      String time = '12 : 00'}) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: Image(
              width: 70,
              height: 70,
              fit: BoxFit.cover,
              image: AssetImage(image),
            ),
          ),
          const SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(width: 5),
                  Text(time),
                ],
              ),
              const SizedBox(height: 5),
              Text(subtitle),
            ],
          ),
          const Spacer(),
          const Icon(Icons.arrow_forward_ios)
        ],
      ),
    );
  }
}
