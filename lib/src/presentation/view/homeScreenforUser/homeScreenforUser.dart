import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/src/data/controllers/homeScreenController.dart';
import 'package:video_player/src/domin/constants/appRoutes/approutes.dart';
import 'package:video_player/src/presentation/view/videoScreen/video.dart';

class HomeScreenforUser extends StatelessWidget {
  const HomeScreenforUser({super.key});

  @override
  Widget build(BuildContext context) {
    HomePageController hc = Get.put(HomePageController());
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Obx(() {
        return hc.isLoading.value
            ? Center(
                child: CircularProgressIndicator(),
              )
            : RefreshIndicator(
                onRefresh: () async {
                  await hc.getDataForHomeScreen();
                },
                child: ListView.builder(
                    shrinkWrap: true,
                    controller: ScrollController(
                      keepScrollOffset: false,
                    ),
                    itemCount: hc.vedioList.length,
                    itemBuilder: (context, index) {
                      return VideoThumbnailCard(
                          thumbnailUrl: "${hc.vedioList[index].image}",
                          userName: "${hc.vedioList[index].user?.name}",
                          url: "${hc.vedioList[index].url}",
                          timeStamp: "${hc.vedioList[index].duration}");
                    }),
              );
      }),
    );
  }
}

class VideoThumbnailCard extends StatelessWidget {
  final String thumbnailUrl;
  final String userName;
  final String url;
  final String timeStamp;

  const VideoThumbnailCard({
    super.key,
    required this.thumbnailUrl,
    required this.userName,
    required this.url,
    required this.timeStamp,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Thumbnail with timestamp overlay
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(12)),
                child: Image.network(
                  thumbnailUrl,
                  height: 180,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                bottom: 45,
                right: MediaQuery.of(context).size.width * 0.4,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WebViewPage(
                                url: url,
                              )),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(60),
                    ),
                    child: Icon(
                      Icons.play_arrow,
                      size: 60,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 8,
                right: 8,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    timeStamp + ":00",
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
          // User info
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "By : " + userName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
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
