import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hiremi/screens/notification_setting_screens/notificationscreen.dart';
import 'package:hiremi/widgets/buildpageindicator.dart';
import 'package:hiremi/widgets/flexiappbar.dart';
import 'package:hiremi/widgets/headline.dart';
import 'package:hiremi/widgets/hiremifeatured.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  final ScrollController _scrollController = ScrollController();
  bool _isAppBarExpanded = true;
  int currentIndex = 0;
  static const List<Color> askExpertGradient = [
    Color(0xFF9CCAFF),
    Colors.white,
    Color(0xFFCCE4FF),
  ];
  static const List<Color> internshipGradient = [
    Color(0xFF8DDDB8),
    Colors.white,
    Color(0xFFCCEEDE),
  ];
  static const List<Color> statusGradient = [
    Color(0xFFFFAAAA),
    Colors.white,
    Color(0xFFFFD6D6),
  ];
  static const List<Color> freshersGradient = [
    Color(0xFFFFBB8E),
    Colors.white,
    Color(0xFFFFE1D1),
  ];
  static const List<Color> hiremi360Gradient = [
    Color(0xFFFFDB8E),
    Colors.white,
    Color(0xFFFFEED1),
  ];
  static const List<Color> experienceGradient = [
    Color(0xFFC4A6FF),
    Colors.white,
    Color(0xFFE6D9FF),
  ];

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_handleScroll);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _handleScroll() {
    final isExpanded = _scrollController.offset <= 30;
    if (_isAppBarExpanded != isExpanded) {
      setState(() {
        _isAppBarExpanded = isExpanded;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final cardTitleSize = size.width * 0.035;
    final cardSubtitleSize = size.width * 0.026;
    List<Widget> cards = [
      Hiremifeatured(
          title: 'Ask Expert',
          subtitle: 'Ask Anything Get\nExpert Guidance',
          imagePath: 'assets/images/askExpert.png',
          gradientColors: askExpertGradient,
          onTap: () {},
          titleSize: cardTitleSize,
          subtitleSize: cardSubtitleSize),
      Hiremifeatured(
          title: 'Internship',
          subtitle: 'Gain Practical\nExperience',
          imagePath: 'assets/images/internship.png',
          gradientColors: internshipGradient,
          onTap: () {},
          titleSize: cardTitleSize,
          subtitleSize: cardSubtitleSize),
      Hiremifeatured(
          title: 'Status',
          subtitle: 'Apply\nMentorship\n& more',
          imagePath: 'assets/images/statusb.png',
          gradientColors: statusGradient,
          onTap: () {},
          titleSize: cardTitleSize,
          subtitleSize: cardSubtitleSize),
      Hiremifeatured(
          title: 'Freshers',
          subtitle: 'Gain\nPractical\nExperience',
          imagePath: 'assets/images/askExpert.png',
          gradientColors: freshersGradient,
          onTap: () {},
          titleSize: cardTitleSize,
          subtitleSize: cardSubtitleSize),
      Hiremifeatured(
          title: 'Hiremi 360',
          subtitle: 'Gain\nPractical\nExperience',
          imagePath: 'assets/images/hiremi360.png',
          gradientColors: hiremi360Gradient,
          onTap: () {},
          titleSize: cardTitleSize,
          subtitleSize: cardSubtitleSize),
      Hiremifeatured(
          title: 'Experience',
          subtitle: 'Explore diverse careers',
          imagePath: 'assets/images/experience.png',
          gradientColors: experienceGradient,
          onTap: () {},
          titleSize: cardTitleSize,
          subtitleSize: cardSubtitleSize),
    ];
    CarouselSliderController controller = CarouselSliderController();
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 80.0, bottom: 30, left: 13, right: 13),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularPercentIndicator(
                          radius: 30,
                          backgroundColor:
                          const Color(0xFF808080).withOpacity(0.25),
                          lineWidth: 6,
                          animation: false,
                          center: const Text(
                            '25%',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                          percent: 0.25,
                          progressColor: const Color(0xFF34AD78),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Kritish Bokde',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 4),
                            Container(
                              height: 18,
                              padding:
                              const EdgeInsets.symmetric(horizontal: 8),
                              decoration: BoxDecoration(
                                border:
                                Border.all(color: const Color(0xFF0F3CC9)),
                                borderRadius: BorderRadius.circular(13),
                              ),
                              child: const Row(
                                children: [
                                  Icon(Icons.verified,
                                      color: Color(0xFF0F3CC9), size: 12),
                                  SizedBox(width: 4),
                                  Text(
                                    'Not Verified',
                                    style: TextStyle(
                                        fontSize: 10, color: Color(0xFF0F3CC9)),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 4),
                            const Text(
                              'KritishBokde@gmail.com',
                              style:
                              TextStyle(fontSize: 12, color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          vertical: 12, horizontal: 16),
                      decoration: BoxDecoration(
                        color: const Color(0xFF0F3CC9),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Hiremi',
                            style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const SizedBox(height: 2),
                          const Text(
                            'Complete profile verification to access premium features',
                            style: TextStyle(fontSize: 10, color: Colors.white),
                          ),
                          const SizedBox(height: 4),
                          Padding(
                            padding:
                            const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: Colors.white),
                              height: 30,
                              width: double.infinity,
                              child: const Center(
                                child: Text(
                                  'Get verified ☺️',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Divider(color: Colors.grey),
              ListTile(
                leading: const Icon(Icons.settings, color: Color(0xFF0F3CC9)),
                title: const Text('Settings'),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.lock, color: Color(0xFF0F3CC9)),
                title: const Text('Change Password'),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {},
              ),
              ListTile(
                leading:
                const Icon(Icons.info_outline, color: Color(0xFF0F3CC9)),
                title: const Text('About App'),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {},
              ),
              ListTile(
                leading:
                const Icon(Icons.help_outline, color: Color(0xFF0F3CC9)),
                title: const Text('Help & Support'),
                trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                onTap: () {},
              ),
              const Divider(color: Colors.grey),
              ListTile(
                  leading: const Icon(Icons.logout, color: Color(0xFF0F3CC9)),
                  title: const Text('Log out'),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Padding(
                          padding: const EdgeInsets.all(14.0),
                          child: AlertDialog(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15)),
                            backgroundColor: Colors.white,
                            content:
                            const Text('Are you sure you want to log out?'),
                            actions: [
                              Center(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(6),
                                              side: const BorderSide(
                                                  color: Colors.grey, width: 1))),
                                      onPressed: () {
                                        // Close the dialog
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text('No'),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color(0xFF0F3CC9),
                                          shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(6),
                                              side: const BorderSide(
                                                  color: Colors.grey, width: 1)
                                          )
                                      ),
                                      onPressed: () {
                                        // Close the dialog
                                        Navigator.of(context).pop();
                                      },
                                      child: const Text('Yes', style: TextStyle(color: Colors.white),),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  })
            ],
          ),
        ),
      ),
      body: CustomScrollView(
        controller: _scrollController,
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(_isAppBarExpanded ? 40 : 0))),
            title: Image.asset(
              'assets/images/logo2.png',
              height: 50,
            ),
            centerTitle: true,
            floating: false,
            pinned: true,
            expandedHeight: size.height * 0.26,
            backgroundColor: const Color(0xFF0F3CC9),
            iconTheme: const IconThemeData(
              color: Colors.white,
              size: 36,
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Notificationscreen(),
                        ));
                  },
                  icon: const Icon(
                    Icons.notifications_outlined,
                    color: Colors.white,
                    size: 28,
                  ),
                ),
              ),
            ],
            flexibleSpace: const Flexiappbar(),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              CarouselSlider.builder(
                  carouselController: controller,
                  itemCount: 4,
                  itemBuilder: (context, index, realIndex) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 6.0),
                      child: Image.asset('assets/images/carouselImage.png'),
                    );
                  },
                  options: CarouselOptions(
                    height: 140,
                    viewportFraction: 0.95,
                    autoPlay: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  )),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    4, // Number of slides
                    (index) =>
                        Buildpageindicator(isActive: currentIndex == index)),
              ),
              const Headline(
                  name: "Hiremi's Featured",
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ]),
          ),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: cards[index],
              ),
              childCount: cards.length,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1.8),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Headline(
                  name: "Jobs for You",
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5, // Number of items
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Card(
                          color: const Color(0xFFD1E4FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: SizedBox(
                            width: 260,
                            height: 190,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  'assets/images/logo.png',
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
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
