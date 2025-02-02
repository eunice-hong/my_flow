import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_flow/l10n/l10n.dart';
import 'package:my_flow/profile/bloc/cubit/profile_cubit.dart';
import 'package:my_flow/profile/widget/animated_profile_image.dart';
import 'package:my_flow/profile/widget/profile_button_container.dart';

class ProfileContent extends StatelessWidget {
  const ProfileContent({super.key});

  @override
  Widget build(BuildContext context) {
    final isToggleOn = context.select(
      (ProfileCubit testCubit) => testCubit.state,
    );
    var appNameText = '';
    if (isToggleOn) {
      appNameText = context.l10n.appTitle;
    }
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            iconSize: 200,
            onPressed: () async {
              await context.read<ProfileCubit>().setProfile(isOn: !isToggleOn);
            },
            icon: const AnimatedProfileImage(),
          ),
          const SizedBox(height: 8),
          Text(
            appNameText,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 28,
            ),
          ),
          const SizedBox(height: 8),
          const ProfileButtonContainer(),
        ],
      ),
    );
  }
}
