import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/util/colors/mycolors.dart';
import 'package:flutter_application_1/core/util/images/imgs_url.dart';
import 'package:flutter_application_1/screen/components/avatar_section.dart';
import 'package:flutter_application_1/screen/components/custom_buttom.dart';
import 'package:flutter_application_1/screen/components/custom_icon_bottom.dart';

import 'components/field_section.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      backgroundColor: MyColors.white,
        appBar: _appBar(),
        body: _body(),
      ),
    );
  }

  Widget _body(){
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        const AvatarSection(name: 'GFXAgency', jobTitle: 'UI UX DESIGN',avatarUrl: ImgURL.MaomaoAvtar,),
        const SizedBox(height: 20),
        const FieldSection(label: 'Your Email',icon: Icons.email_outlined, hint: 'xxx@gmail.com',),
        const FieldSection(label: 'Phone Number',icon: Icons.phone_outlined, hint: '+93123135',),
        const FieldSection(label: 'Website',icon: Icons.link, hint: 'www.gfx.com',),
        const FieldSection(label: 'Password',icon: Icons.lock_outline, hint: 'xxx@gmail.com',isPassword: true,hide: true,),
        const SizedBox(height: 40),
        CustomBottom(onPressed: (){}, text: 'Log out'),
      ],
    );
  }

  PreferredSizeWidget _appBar(){
    return AppBar(
      backgroundColor: MyColors.white,
      actions: [
        CustomIconBottom(
          icon: Icons.settings,
          onPressed: () {},   // pick img from gallery
          iconSize: 30,
        ),
      ],
    );
  }
}