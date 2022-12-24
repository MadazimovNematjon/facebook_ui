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
      backgroundColor: Colors.grey.shade800,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: const Text("facebook",
            style: TextStyle(
                fontSize: 30,
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.grey.shade400,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.camera_alt_outlined,
                color: Colors.grey.shade400,
              )),
        ],
      ),
      body: ListView(
        children: [
          //#post
          Container(
            color: Colors.black,
            height: 140,
            padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
            child: Column(
              children: [
                Expanded(
                    child: Row(
                  children: [
                    Container(
                      height: 45,
                      width: 45,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('assets/images/user_3.jpeg'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: Container(
                      height: 46,
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23),
                          border: Border.all(
                            width: 1,
                            color: Colors.grey,
                          )),
                      child: const TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "What's on your mind?",
                          hintStyle: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ))
                  ],
                )),
                Expanded(
                    child: Row(
                  children: [
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.video_call,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Live",style: TextStyle(color: Colors.grey),),
                      ],
                    )),
                    Container(
                        width: 1,
                        color: Colors.grey.shade300,
                        margin: const EdgeInsets.only(top: 14, bottom: 14)),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.photo,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Photo",style: TextStyle(color: Colors.grey),),
                      ],
                    )),
                    Container(
                        width: 1,
                        color: Colors.grey.shade300,
                        margin: const EdgeInsets.only(top: 14, bottom: 14)),
                    Expanded(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.location_on,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text("Check in",style: TextStyle(color: Colors.grey),),
                      ],
                    )),
                  ],
                ))
              ],
            ),
          ),
          //#post story
          Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.only(
              top: 20,
              bottom: 20,
            ),
            height: 200,
            color: Colors.black,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(
                  width: 10,
                ),
                makeStory(
                    storyImages: 'assets/images/story_1.jpeg',
                    userImages: 'assets/images/user_1.jpeg',
                    userName: 'user_1'),
                makeStory(
                    storyImages: 'assets/images/story_2.jpeg',
                    userImages: 'assets/images/user_2.jpeg',
                    userName: 'user_2'),
                makeStory(
                    storyImages: 'assets/images/story_3.jpeg',
                    userImages: 'assets/images/user_3.jpeg',
                    userName: 'user_3'),
                makeStory(
                    storyImages: 'assets/images/story_4.jpeg',
                    userImages: 'assets/images/user_4.jpeg',
                    userName: 'user_4'),
                makeStory(
                    storyImages: 'assets/images/story_5.jpeg',
                    userImages: 'assets/images/user_5.jpeg',
                    userName: 'user_5'),
              ],
            ),
          ),
          const SizedBox(height: 10,),

          //#post feed
          _makeFeed(
            feedText: "All the Lorem Ipsum generator on the Internet tend to repeat predefine.",
              storyImage: 'assets/images/story_1.jpeg',
            userImages: 'assets/images/user_1.jpeg',
            userName: 'userOne',
            postData: "1 hour",
            feedImage: 'assets/images/feed_1.jpeg',
          ),
          _makeFeed(
            feedText: "All the Lorem Ipsum generator on the Internet tend to repeat predefine.",
            storyImage: 'assets/images/story_2.jpeg',
            userImages: 'assets/images/user_2.jpeg',
            userName: 'user2',
            postData: "1 hour",
            feedImage: 'assets/images/feed_2.jpeg',
          ),
          _makeFeed(
            feedText: "All the Lorem Ipsum generator on the Internet tend to repeat predefine.",
            storyImage: 'assets/images/story_3.jpeg',
            userImages: 'assets/images/user_3.jpeg',
            userName: 'user3',
            postData: "1 hour",
            feedImage: 'assets/images/feed_3.jpeg',
          ),
          _makeFeed(
            feedText: "All the Lorem Ipsum generator on the Internet tend to repeat predefine.",
            storyImage: 'assets/images/story_4.jpeg',
            userImages: 'assets/images/user_4.jpeg',
            userName: 'user4',
            postData: "1 hour",
            feedImage: 'assets/images/feed_4.jpeg',
          ),
          _makeFeed(
            feedText: "All the Lorem Ipsum generator on the Internet tend to repeat predefine.",
            storyImage: 'assets/images/story_5.jpeg',
            userImages: 'assets/images/user_5.jpeg',
            userName: 'user5',
            postData: "1 hour",
            feedImage: 'assets/images/feed_5.jpeg',
          ),

        ],
      ),
    );
  }
}

Widget makeStory({storyImages, userImages, userName}) {
  return AspectRatio(
    aspectRatio: 1.5 / 2,
    child: Container(
      margin: const EdgeInsets.only(
        right: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        image:
        DecorationImage(image: AssetImage(storyImages), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.2),
            ])),
        child: Container(
          margin: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 1,
                        color: Colors.blue,
                      ),
                      image: DecorationImage(image: AssetImage(userImages)))),
              Text(
                userName,
                style: const TextStyle(
                  color: Colors.white,
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

Widget _makeFeed({storyImage,userImages,userName,postData,feedText,feedImage}){
  return Container(
    margin: EdgeInsets.only(top: 10),
    color: Colors.black,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.only(right: 10,left: 10),
          child: Column(
            children: [
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(userImages),fit: BoxFit.cover,
                          )
                        ),
                        ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(userName,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.grey.shade400),),
                          SizedBox(height: 3,),
                          Text(postData,style: TextStyle(fontSize: 15,color: Colors.grey))
                        ],
                      )
                    ],
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.more_horiz))
                ],
              ),

              SizedBox(height: 20,),

              Text(feedText,style: TextStyle(color: Colors.grey.shade400,fontSize: 15,letterSpacing: 0.7,height: 1.5),)
            ],
          ),
        ),
        SizedBox(height: 20,),

        //#photo

        Container(
          height: 240,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(feedImage),fit: BoxFit.cover)
          ),
        ),
        SizedBox(height: 20,),
        Container(
          padding: EdgeInsets.only(left: 10,right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  makLike(),
                  Transform.translate(offset: Offset(-5, 0),
                    child: makeLove(),
                  ),
                  SizedBox(width: 5,),
                  Text("2.5K",style: TextStyle(color: Colors.grey.shade400,fontSize: 15),)
                ],
              ),
              
              Text("400 Comment",style: TextStyle(fontSize: 14,color: Colors.grey.shade400),),
            ],
          ),
        ),
        SizedBox(height: 10,),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            makeLikeButton(isActive: false),

            makeCommentButton(),

            makeShareButton()

          ],
        ),
        SizedBox(height: 10,)
      ],
    ),
  );
}

  Widget makLike() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: Center(
        child: Icon(Icons.thumb_up, color: Colors.white, size: 12,),),
    );
  }




  Widget makeLove() {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: Center(child: Icon(Icons.favorite,color: Colors.white,size: 12,),),
    );
}



  Widget makeLikeButton({isActive}){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.thumb_up,color: isActive ? Colors.blue : Colors.grey,size: 18,),
        SizedBox(width: 5,),
        Text("Like",style: TextStyle(color: isActive ? Colors.blue : Colors.grey),)
      ],
    ),
  );
  }



Widget makeCommentButton(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.chat,color: Colors.blue ,size: 18,),
        SizedBox(width: 5,),
        Text("Comment",style: TextStyle(color:  Colors.blue ),)
      ],
    ),
  );
}



Widget makeShareButton(){
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        Icon(Icons.share,color: Colors.grey,size: 18,),
        SizedBox(width: 5,),
        Text("Share",style: TextStyle(color: Colors.grey),)
      ],
    ),
  );
}
