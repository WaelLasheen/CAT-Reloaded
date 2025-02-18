import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/util/colors/mycolors.dart';
import 'package:flutter_application_1/screen/components/custom_icon_bottom.dart';

class AvatarSection extends StatelessWidget {
  final String name;
  final String jobTitle;
  final String avatarUrl;
  const AvatarSection(
      {super.key,
      required this.name,
      required this.jobTitle,
      required this.avatarUrl});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 165,
          child: Stack(
            children: [
              CircleAvatar(
                radius: 75,
                child: Image.asset(avatarUrl),
              ),
              Positioned(
                bottom: 5,
                right: 10,
                child: CustomIconBottom(
                  icon: Icons.edit,
                  onPressed: () {},
                  iconColor: MyColors.white,
                  buttonColor: MyColors.orange,
                  iconSize: 16,
                ),
              ),
            ],
          ),
        ),

        Text(
          name,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: MyColors.black,
          ),
        ),

        Text(
          jobTitle,
          style: const TextStyle(
            fontSize: 14,
            color: MyColors.gray,
          ),
        ),
      ],
    );
  }
}
