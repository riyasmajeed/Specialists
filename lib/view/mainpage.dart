import 'package:chat_app/view/profile.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(82, 237, 235, 235),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              _buildHorizontalList(),
              SizedBox(height: 10),
              _buildSearchBar(),
              ...List.generate(3, (_) => _buildProfileCard())
            ],
          ),
        ),
      ),
    );
  }

  Padding _buildHeader() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, top: 15, bottom: 2),
      child: Text(
        'Top specialists',
        style: TextStyle(fontSize: 25, color: Colors.black),
      ),
    );
  }

  Padding _buildHorizontalList() {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: InkWell(
        onTap: () {
         Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => profiledetils()),
            );
        },
        child: Container(
          height: 180,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              _buildStackedImageCards(),
            ],
          ),
        ),
      ),
    );
  }

  Container _buildStackedImageCards() {
    return Container(
      width: 500,
      child: Stack(
        children: [
          Positioned(left: 300, child: _buildImageCard(name: 'Daria Serova', imageUrl: 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww')),
          Positioned(left: 150, child: _buildImageCard(name: 'John Doe', imageUrl: 'https://images.unsplash.com/photo-1503023345310-bd7c1de61c7d?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NXx8cGVyc29ufGVufDB8fDB8fHww')),
          Positioned(left: 0, child: _buildImageCard(name: 'Daria Serova', imageUrl: 'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww')),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 10, bottom: 20),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              child: TextField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  fillColor: Color.fromARGB(51, 185, 183, 183),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(17),
                    borderSide: BorderSide.none,
                  ),
                  hintText: 'Search',
                  isDense: true,
                  contentPadding: EdgeInsets.all(8),
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(15),
                    child: Icon(Icons.search, size: 23, color: Colors.black),
                  ),
                  suffixIcon: Padding(
                    padding: EdgeInsets.all(15),
                    child: Icon(Icons.tune, size: 23, color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Padding _buildProfileCard() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 10, bottom: 20),
      child: Container(
        height: 95,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Color.fromARGB(255, 0, 0, 0)),
        ),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              _buildProfileImage(),
              SizedBox(width: 15),
              _buildProfileInfo(),
           
            
            ],
          ),
        ),
      ),
    );
  }

  Container _buildProfileImage() {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(45),
        image: DecorationImage(
          image: NetworkImage(
              'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Column _buildProfileInfo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Michoel Jones ',
              style: TextStyle(color: Colors.black, fontSize: 17),
            ),
            SizedBox(width: 5),
            Icon(
              Icons.verified,
              color: const Color.fromARGB(255, 35, 119, 244),
            ),
         SizedBox(
          width: 75,
         ),
             Container(
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Color.fromARGB(55, 122, 118, 118),
      ),
      child: Icon(Icons.favorite_border_outlined, size: 20),
    )
          ],
        ),
        SizedBox(height: 1),
        Row(
          children: [
            Text(
              'Photographer ',
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            Text(
              '| Tbilisi, Georgia',
              style: TextStyle(color: Color.fromARGB(197, 75, 75, 75), fontSize: 12),
            ),
          ],
        ),
      ],
    );
  }

  

  Widget _buildImageCard({required String name, required String imageUrl}) {
    return Container(
      margin: EdgeInsets.all(8.0),
      height: 160,
      width: 210,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 52, 41, 37),
        borderRadius: BorderRadius.circular(17),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(128, 0, 0, 0),
            blurRadius: 5.0,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            child: Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Text(
                  '5.0',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          Positioned(
            top: 10,
            left: 65,
            child:
             Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                border: Border.all(color: Colors.white, width: 3),
                image: DecorationImage(
                  image: NetworkImage(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            left: 45,
            child: Row(
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 5),
                Icon(
                  Icons.verified,
                  color: const Color.fromARGB(255, 35, 119, 244),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 13,
            child: Row(
              children: [
                Text(
                  'Photographer ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
                Text(
                  '| Tbilisi, Georgia',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
