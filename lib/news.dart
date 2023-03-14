import 'package:flutter/material.dart';

class News extends StatefulWidget {
  const News({super.key});

  @override
  State<News> createState() => _News();
}
// gg wp

const List<Image> assetImages = <Image>[
  Image(image: AssetImage('assets/images/news.jpg')),
  Image(image: AssetImage('assets/images/news1.jpg')),
  Image(image: AssetImage('assets/images/news2.jpg')),
  Image(image: AssetImage('assets/images/news3.jpg')),
  Image(image: AssetImage('assets/images/news4.jpg')),
  Image(image: AssetImage('assets/images/news5.jpg')),
  Image(image: AssetImage('assets/images/news6.jpg')),
  Image(image: AssetImage('assets/images/news7.jpg')),
];

class _News extends State<News> {
  @override
  Widget build(BuildContext context) {

    return Expanded(
        child: ListView.builder(
          itemCount: 8,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 400,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.black,
                  border: Border.all(
                    color: Colors.amber,
                    width: 5,
                  )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 180,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey,

                      ),
                      child: assetImages.elementAt(index),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 160,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey,

                      ),
                      child: const Text('новости\nновости', style: TextStyle(color: Colors.black, fontSize: 30)),
                    ),
                  ),
                ],
              ),

            ),
            );

          }
        ),
    );
  }
}