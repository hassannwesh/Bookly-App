import 'package:bookly_app/core/utils/function/custom_snackBar.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> launchCustomUrl(context, String url) async {
  if (url != null) {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      customSnackBar(context, "Cannot launch $url");
    }
  }
}

