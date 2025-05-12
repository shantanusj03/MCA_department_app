import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../widgets/faculty_tab.dart';
import '../widgets/vision_mission_tab.dart';
import '../widgets/webview_tab.dart';
import '../widgets/feedback_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  final List<Widget> _tabs = const [
    FacultyTab(),
    VisionMissionTab(),
    NotificationsTab(),
    WebViewTab(url: 'https://your-college-website.edu'),
    FeedbackTab(),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MCA Department'),
        bottom: TabBar(
          controller: _tabController,
          isScrollable: true,
          tabs: const [
            Tab(icon: Icon(Icons.people), text: 'Faculty'),
            Tab(icon: Icon(Icons.school), text: 'Vision/Mission'),
            Tab(icon: Icon(Icons.notifications), text: 'Events'),
            Tab(icon: Icon(Icons.public), text: 'Website'),
            Tab(icon: Icon(Icons.feedback), text: 'Feedback'),
          ],
        ),
      ),
      drawer: _buildDrawer(),
      body: TabBarView(
        controller: _tabController,
        children: _tabs,
      ),
    );
  }

  Widget _buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
              decoration: BoxDecoration(color: Color(0xFF2A4C7D)),
              child: Text('MCA Department',
                  style: TextStyle(color: Colors.white, fontSize: 24)),
              ..._tabs.asMap().entries.map((entry) => ListTile(
            leading: Icon(_getDrawerIcon(entry.key)),
            title: Text(_getDrawerTitle(entry.key)),
            onTap: () => _tabController.animateTo(entry.key),
          ))
        ],
      ),
    );
  }

  IconData _getDrawerIcon(int index) {
    switch(index) {
      case 0: return Icons.people;
      case 1: return Icons.school;
      case 2: return Icons.notifications;
      case 3: return Icons.public;
      case 4: return Icons.feedback;
      default: return Icons.error;
    }
  }

  String _getDrawerTitle(int index) {
    return ['Faculty', 'Vision/Mission', 'Events', 'Website', 'Feedback'][index];
  }
}