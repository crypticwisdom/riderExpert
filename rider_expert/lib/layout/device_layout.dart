import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class DeviceLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  const DeviceLayout({super.key, required this.mobile, required this.tablet});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      if (SizerUtil.boxConstraints.maxWidth < 600 ||
          SizerUtil.deviceType == DeviceType.mobile) {
        return mobile;
      } else {
        return tablet;
      }
    });
  }
}
