import 'package:flutter/material.dart';
import 'package:hiremi/widgets/progressline.dart';
import 'package:hiremi/widgets/stepperdate.dart';

class Flexiappbar extends StatelessWidget {
  const Flexiappbar({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FlexibleSpaceBar(
      collapseMode: CollapseMode.parallax,
      background: Padding(
        padding: const EdgeInsets.only(bottom: 5.0),
        child: Container(
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            height: size.height * 0.16,
            width: size.width * 0.9,
            decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.4),
                border: Border.all(color: Colors.white, width: 2),
                borderRadius:
                const BorderRadius.all(Radius.circular(20))),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Verify Your Account Today!',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stepperdate(label1: 'Complete', label2: 'Profile', iconText: '1'),
                      Progressline(),
                      Stepperdate(label1: 'Verification', label2: 'Payment', iconText: '2'),
                      Progressline(),
                      Stepperdate(label1: 'Wait for', label2: 'Verification', iconText: '3'),
                      Progressline(),
                      Stepperdate(label1: 'Get Lifetime', label2: 'Access', iconText: '4'),
                    ],
                  ),
                  const SizedBox(height: 9,),
                  Container(
                    height: 27,
                    width: size.width * 0.7,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5)
                    ),
                    child: const Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.verified_rounded, size: 14.5, color: Color(0xFF0F3CC9),),
                          SizedBox(width: 6,),
                          Text('Get Verified', style: TextStyle(color: Color(0xFF0F3CC9)),),
                          SizedBox(width: 6,),
                          Icon(Icons.chevron_right_sharp, color: Color(0xFF0F3CC9), size: 20,)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}