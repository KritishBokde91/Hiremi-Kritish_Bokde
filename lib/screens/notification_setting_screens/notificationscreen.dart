import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Notificationscreen extends StatelessWidget {
  const Notificationscreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final cardTitleSize = size.width * 0.035;
    final cardSubtitleSize = size.width * 0.026;
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Help & Support',
          style: TextStyle(fontSize: 16),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: Colors.black,
              ))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/noNotification.png'),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'NNN: No New Notifications!, Please Explore Hiremi Application for a while.',
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
