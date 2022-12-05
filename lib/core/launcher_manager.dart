import 'package:url_launcher/url_launcher.dart';

class LauncherManager {
  LauncherManager._();
  static final LauncherManager instance = LauncherManager._();

  /// iOS için örnek adres tipi = 'https://www.youtube.com'
  launchApp(String webAddress) async {
    if (await canLaunchUrl(Uri.parse(webAddress))) {
      await launchUrl(Uri.parse(webAddress), mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $webAddress';
    }
  }

  sendMail({required String mailAddress, String? subject, String? body}) async {
    if (await canLaunchUrl(Uri.parse('mailto:$mailAddress?subject=$subject&body=$body'))) {
      await launchUrl(Uri.parse('mailto:$mailAddress?subject=$subject&body=$body'));
    } else {
      throw 'Could not send mail to $mailAddress';
    }
  }

  /// Android ve iOS için örnek tel no = '0-542-581-59-51'
  callMe(String telNo) async {
    if (await canLaunchUrl(Uri.parse('tel:$telNo'))) {
      await launchUrl(Uri.parse('tel:$telNo'));
    } else {
      throw 'Could not call $telNo';
    }
  }

  /// Android ve iOS için örnek tel no = '0-542-581-59-51'
  textMe(String telNo) async {
    if (await canLaunchUrl(Uri.parse('sms:$telNo'))) {
      await launchUrl(Uri.parse('sms:$telNo'));
    } else {
      throw 'Could not text to $telNo';
    }
  }
}


// NOT: AndroidManifest.xml altına <manifest> dizini altına aşağıdaki kodu ekle!
//   <uses-permission android:name="android.permission.INTERNET" />
//     <uses-permission android:name="android.permission.QUERY_ALL_PACKAGES" />
//   <!-- Provide required visibility configuration for API level 30 and above -->
//   <queries>
//     <!-- If your app checks for SMS support -->
//     <intent>
//       <action android:name="android.intent.action.VIEW" />
//       <data android:scheme="sms" />
//     </intent>
//     <!-- If your app checks for call support -->
//     <intent>
//       <action android:name="android.intent.action.VIEW" />
//       <data android:scheme="tel" />
//     </intent>

//     <intent>
//       <action android:name="android.intent.action.VIEW" />
//       <category android:name="android.intent.category.BROWSABLE" />
//       <data android:scheme="https" />
//   </intent>
  
//   </queries>