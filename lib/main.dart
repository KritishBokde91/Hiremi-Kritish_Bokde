import 'package:flutter/material.dart';
import 'package:hiremi/screens/login_signup_screens/loginscreen.dart';
import 'package:hiremi/screens/welcomescreen/hiremiwelcomescreen.dart';
import 'package:hiremi/widgets/buildpageindicator.dart';

void main() {
  runApp(const HiremiApp());
}

class HiremiApp extends StatelessWidget {
  const HiremiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          fontFamily: 'Poppins',
        scaffoldBackgroundColor: const Color(0xFFF5F5F5)
      ),
      debugShowCheckedModeBanner: false,
      home: const HiremiPageView(),
    );
  }
}

class HiremiPageView extends StatefulWidget {
  const HiremiPageView({super.key});

  @override
  State<HiremiPageView> createState() => _HiremiPageViewState();
}

class _HiremiPageViewState extends State<HiremiPageView> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 50,
            ),
            Expanded(
              child: GestureDetector(
                onHorizontalDragUpdate: (detail) {
                  if (_currentPage == 2) {
                    if (detail.delta.dx > 0) {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const Loginscreen(),));
                    }
                  }
                },
                child: PageView(
                  controller: _pageController,
                  onPageChanged: _onPageChanged,
                  children: const [
                    HiremiWelcomeScreen(
                      title: 'Nice to see you, Welcome to Hiremi.',
                      subtitle: 'Where your career needs are at your fingertips.',
                      imagePath: 'assets/images/welcome1.png',
                      materialColor: Color(0xFF163EC8),
                    ),
                    HiremiWelcomeScreen(
                      title: 'Get Personalized,Career Guidance.',
                      subtitle:
                          'Receive tailored advice and insights to help you make the best decisions for your career.',
                      imagePath: 'assets/images/welcome2.png',
                      materialColor: Color(0xFF2FA370),
                    ),
                    HiremiWelcomeScreen(
                      title: 'Discover Exclusive, Opportunities...',
                      subtitle:
                          'Get personalized job and internship opportunities in various domains tailored to your skills.',
                      imagePath: 'assets/images/welcome3.png',
                      materialColor: Color(0xFF2FA370),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Buildpageindicator(isActive: _currentPage == 0),
                      Buildpageindicator(isActive: _currentPage == 1),
                      Buildpageindicator(isActive: _currentPage == 2),
                    ],
                  ),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onHorizontalDragStart: (details) {
                      if (_currentPage == 2) {
                        if(details.localPosition.dx > 0) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Loginscreen()),
                          );
                        }
                      } else {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    child: Container(
                      height: 60,
                      width: size.width * 0.6,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.blue[800]!, width: 2),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.chevron_right,
                                color: Colors.white),
                            style: ButtonStyle(
                                backgroundColor:
                                    WidgetStatePropertyAll(Colors.blue[800]),
                            ),
                          ),
                          const SizedBox(width: 10),
                          Text(
                            _currentPage == 2 ? 'Go to login' : 'Swipe To Start',
                            style: const TextStyle(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
