import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class ContentPage extends StatelessWidget {
  const ContentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      bottomNavigationBar: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: SafeArea(
            child: GNav(
              activeColor: Colors.blueGrey.shade50,
              padding: const EdgeInsets.all(16),
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              gap: 8,
              iconSize: 20,
              tabs: const [
                GButton(
                  icon: LineIcons.home,
                  backgroundColor: Colors.black,
                  text: 'Home',
                ),
                GButton(
                  icon: LineIcons.locationArrow,
                  backgroundColor: Colors.black,
                  text: 'Location',
                ),
                GButton(
                  icon: Icons.add,
                  backgroundColor: Colors.black,
                  text: 'Add',
                ),
                GButton(
                  icon: LineIcons.heart,
                  backgroundColor: Colors.black,
                  text: 'Likes',
                ),
                GButton(
                  icon: LineIcons.user,
                  backgroundColor: Colors.black,
                  text: 'Profile',
                ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade50,
        centerTitle: false,
        title: const Text(
          'Wanda.S',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        leading: const Icon(Icons.arrow_back_ios),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              height: 200,
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(20),
                    width: 125,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://img.freepik.com/free-psd/studio-portrait-young-teenage-girl_23-2150162484.jpg?size=626&ext=jpg&ga=GA1.1.2008272138.1724112000&semt=ais_hybrid'),
                          radius: 50,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Wanda.S',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(
                          'Photographer / NewYork',
                          style: TextStyle(
                              fontSize: 10,
                              color: Colors.redAccent,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  profileDetails('150', 'Posts'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  profileDetails('5k', 'Followers'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  profileDetails('100', 'Following'),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 50,
                              child: Row(
                                children: [
                                  Expanded(
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                            backgroundColor:
                                                WidgetStatePropertyAll(
                                                    Colors.blue.shade300)),
                                        onPressed: () {},
                                        child: const Text('Follow')),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    height: 50,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.blue),
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                    ),
                                    child: const Icon(
                                        Icons.arrow_drop_down_rounded),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  )
                                ],
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
            Container(
              height: 120,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(5),
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                    'https://c4.wallpaperflare.com/wallpaper/746/832/982/cities-dublin-houses-ireland-wallpaper-preview.jpg')),
                            shape: BoxShape.circle,
                            color: Colors.deepPurple.shade100,
                          ),
                        ),
                        const Text('Title'),
                      ],
                    );
                  }),
            ),
            const Divider(),
            Container(
              height: 60,
              child: const DefaultTabController(
                length: 3,
                child: TabBar(tabs: [
                  Tab(
                    text: 'Email',
                  ),
                  Tab(
                    text: 'Site',
                  ),
                  Tab(
                    text: 'Email',
                  ),
                ]),
              ),
            ),
            Expanded(
                child: Container(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.all(10),
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://c1.wallpaperflare.com/preview/72/58/378/dublin-landscape-river-ireland.jpg'),
                      ),
                    ),
                  );
                },
              ),
            ))
          ],
        ),
      ),
    );
  }

  Widget profileDetails(String text1, String text2) {
    return Column(
      children: [
        Text(
          text1,
          style: const TextStyle(fontSize: 24),
        ),
        Text(
          text2,
          style: const TextStyle(fontSize: 14, color: Colors.red),
        )
      ],
    );
  }
}
