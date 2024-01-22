import 'package:flutter/material.dart';
import 'package:onlinecourseapp/src/core/colors/colors.dart';
import 'package:onlinecourseapp/src/core/constants/image_icon_path.dart';
import 'package:onlinecourseapp/src/core/constants/strings.dart';
import 'package:onlinecourseapp/src/core/theme/font_style.dart';
import 'package:onlinecourseapp/src/views/pages/common/home_page.dart';
import 'package:onlinecourseapp/src/views/pages/common/saved_courses_page.dart';
import 'package:onlinecourseapp/src/views/widgets/chat_list_widget.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    int currentIndex = 3;
    return Scaffold(
      backgroundColor: AppColors.containerBG,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                const Center(
                  child: Text(
                    Strings.msgs,
                    style: AppTheme.pageTitle,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SearchAnchor(
                  builder: (BuildContext context, SearchController controller) {
                    return SearchBar(
                      controller: controller,
                      onTap: () {
                        controller.openView();
                      },
                      onChanged: (_) {
                        controller.openView();
                      },
                      leading: ImageIconPath.search,
                    );
                  },
                  suggestionsBuilder:
                      (BuildContext context, SearchController controller) {
                    return List.empty();
                  },
                ),
                const SizedBox(
                  height: 30,
                ),
                ChatListWidget(
                  title: 'Cody Fisher',
                  subTitle: 'I started my assignment today',
                  image: ImageIconPath.user1,
                  lastChatTime: DateTime(2023, 01, 16),
                  unreadCount: 2,
                ),
                Container(
                  width: (MediaQuery.of(context).size.width) / 1.25,
                  height: 1.75,
                  color: AppColors.lineDec,
                ),
                ChatListWidget(
                  title: 'Cody Fisher',
                  subTitle: 'I started my assignment today',
                  image: ImageIconPath.user1,
                  lastChatTime: DateTime(2023, 01, 16),
                  unreadCount: 2,
                ),
                Container(
                  width: (MediaQuery.of(context).size.width) / 1.25,
                  height: 1.75,
                  color: AppColors.lineDec,
                ),
                ChatListWidget(
                  title: 'Cody Fisher',
                  subTitle: 'I started my assignment today',
                  image: ImageIconPath.user1,
                  lastChatTime: DateTime(2023, 01, 16),
                  unreadCount: 2,
                ),
                Container(
                  width: (MediaQuery.of(context).size.width) / 1.25,
                  height: 1.75,
                  color: AppColors.lineDec,
                ),
                ChatListWidget(
                  title: 'Cody Fisher',
                  subTitle: 'I started my assignment today',
                  image: ImageIconPath.user1,
                  lastChatTime: DateTime(2023, 01, 16),
                  unreadCount: 2,
                ),
                Container(
                  width: (MediaQuery.of(context).size.width) / 1.25,
                  height: 1.75,
                  color: AppColors.lineDec,
                ),
                ChatListWidget(
                  title: 'Cody Fisher',
                  subTitle: 'I started my assignment today',
                  image: ImageIconPath.user1,
                  lastChatTime: DateTime(2023, 01, 16),
                  unreadCount: 2,
                ),
                Container(
                  width: (MediaQuery.of(context).size.width) / 1.25,
                  height: 1.75,
                  color: AppColors.lineDec,
                ),
                ChatListWidget(
                  title: 'Cody Fisher',
                  subTitle: 'I started my assignment today',
                  image: ImageIconPath.user1,
                  lastChatTime: DateTime(2023, 01, 16),
                  unreadCount: 2,
                ),
                Container(
                  width: (MediaQuery.of(context).size.width) / 1.25,
                  height: 1.75,
                  color: AppColors.lineDec,
                ),
                ChatListWidget(
                  title: 'Cody Fisher',
                  subTitle: 'I started my assignment today',
                  image: ImageIconPath.user1,
                  lastChatTime: DateTime(2023, 01, 16),
                  unreadCount: 2,
                ),
                Container(
                  width: (MediaQuery.of(context).size.width) / 1.25,
                  height: 1.75,
                  color: AppColors.lineDec,
                ),
                ChatListWidget(
                  title: 'Cody Fisher',
                  subTitle: 'I started my assignment today',
                  image: ImageIconPath.user1,
                  lastChatTime: DateTime(2023, 01, 16),
                  unreadCount: 2,
                ),
                Container(
                  width: (MediaQuery.of(context).size.width) / 1.25,
                  height: 1.75,
                  color: AppColors.lineDec,
                ),
                ChatListWidget(
                  title: 'Cody Fisher',
                  subTitle: 'I started my assignment today',
                  image: ImageIconPath.user1,
                  lastChatTime: DateTime(2023, 01, 16),
                  unreadCount: 2,
                ),
                Container(
                  width: (MediaQuery.of(context).size.width) / 1.25,
                  height: 1.75,
                  color: AppColors.lineDec,
                ),
                ChatListWidget(
                  title: 'Cody Fisher',
                  subTitle: 'I started my assignment today',
                  image: ImageIconPath.user1,
                  lastChatTime: DateTime(2023, 01, 16),
                  unreadCount: 2,
                ),
                Container(
                  width: (MediaQuery.of(context).size.width) / 1.25,
                  height: 1.75,
                  color: AppColors.lineDec,
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: (MediaQuery.of(context).size.width < 640)
          ? BottomNavigationBar(
              currentIndex: currentIndex,
              onTap: (index) {
                setState(() {
                  currentIndex = index;

                  switch (index) {
                    case 0:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                      break;
                    case 1:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SavedCoursesPage(),
                        ),
                      );
                      break;
                    case 2:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                      break;
                    case 3:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MessagePage(),
                        ),
                      );
                      break;
                    case 4:
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                      );
                      break;
                    default:
                  }
                });
              },
              type: BottomNavigationBarType.fixed,
              unselectedItemColor: AppColors.iconColor,
              selectedItemColor: AppColors.gradGreen,
              iconSize: 23,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                  ),
                  label: Strings.home,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.cast_for_education),
                  label: Strings.course,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.save),
                  label: Strings.favs,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.message),
                  label: Strings.msgs,
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.supervised_user_circle_outlined),
                  label: Strings.user,
                ),
              ],
            )
          : null,
    );
  }
}
