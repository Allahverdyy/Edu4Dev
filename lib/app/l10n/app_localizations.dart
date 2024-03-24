import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_tr.dart';

/// Callers can lookup localized strings with an instance of L10n
/// returned by `L10n.of(context)`.
///
/// Applications need to include `L10n.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: L10n.localizationsDelegates,
///   supportedLocales: L10n.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the L10n.supportedLocales
/// property.
abstract class L10n {
  L10n(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static L10n? of(BuildContext context) {
    return Localizations.of<L10n>(context, L10n);
  }

  static const LocalizationsDelegate<L10n> delegate = _L10nDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('tr')
  ];

  /// No description provided for @splashEdu4Tech.
  ///
  /// In en, this message translates to:
  /// **'EDU4TECH DEVELOPER PLATFORM'**
  String get splashEdu4Tech;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @getStarted.
  ///
  /// In en, this message translates to:
  /// **'Get Start'**
  String get getStarted;

  /// No description provided for @myProfile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get myProfile;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @darkMode.
  ///
  /// In en, this message translates to:
  /// **'Dark Mode'**
  String get darkMode;

  /// No description provided for @logout.
  ///
  /// In en, this message translates to:
  /// **'Log Out'**
  String get logout;

  /// No description provided for @frontEndDev.
  ///
  /// In en, this message translates to:
  /// **'Front-End \nDeveloper'**
  String get frontEndDev;

  /// No description provided for @backEndDev.
  ///
  /// In en, this message translates to:
  /// **'Back-End \nDeveloper'**
  String get backEndDev;

  /// No description provided for @fullStackDev.
  ///
  /// In en, this message translates to:
  /// **'Full Stack \nDeveloper'**
  String get fullStackDev;

  /// No description provided for @mobileDev.
  ///
  /// In en, this message translates to:
  /// **'Mobile \nDeveloper'**
  String get mobileDev;

  /// No description provided for @softwareDev.
  ///
  /// In en, this message translates to:
  /// **'Software \nDeveloper'**
  String get softwareDev;

  /// No description provided for @devopsDev.
  ///
  /// In en, this message translates to:
  /// **'Devops \nDeveloper'**
  String get devopsDev;

  /// No description provided for @homepage.
  ///
  /// In en, this message translates to:
  /// **'HOME'**
  String get homepage;

  /// No description provided for @mail.
  ///
  /// In en, this message translates to:
  /// **'samet@gmai.co'**
  String get mail;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Abdulsamed Tanriverdi'**
  String get fullName;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @fav.
  ///
  /// In en, this message translates to:
  /// **'Favorite'**
  String get fav;

  /// No description provided for @welcomeback.
  ///
  /// In en, this message translates to:
  /// **'Welcome back you\'ve been missed'**
  String get welcomeback;

  /// No description provided for @haveAccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t you have an account?'**
  String get haveAccount;

  /// No description provided for @signup.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signup;

  /// No description provided for @signin.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signin;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'E-mail'**
  String get email;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @already.
  ///
  /// In en, this message translates to:
  /// **'Already have an account?'**
  String get already;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @surname.
  ///
  /// In en, this message translates to:
  /// **'Surname'**
  String get surname;

  /// No description provided for @nameWrite.
  ///
  /// In en, this message translates to:
  /// **'Enter your name'**
  String get nameWrite;

  /// No description provided for @surnameWrite.
  ///
  /// In en, this message translates to:
  /// **'Enter your surname'**
  String get surnameWrite;

  /// No description provided for @passwordWrite.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get passwordWrite;

  /// No description provided for @emailWrite.
  ///
  /// In en, this message translates to:
  /// **'Enter your email'**
  String get emailWrite;

  /// No description provided for @numberWrite.
  ///
  /// In en, this message translates to:
  /// **'Enter your number'**
  String get numberWrite;

  /// No description provided for @addressWrite.
  ///
  /// In en, this message translates to:
  /// **'Enter your address'**
  String get addressWrite;

  /// No description provided for @number.
  ///
  /// In en, this message translates to:
  /// **'Number'**
  String get number;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @boost.
  ///
  /// In en, this message translates to:
  /// **'Boost Productivity '**
  String get boost;

  /// No description provided for @onboardingonetittle.
  ///
  /// In en, this message translates to:
  /// **'Elevate your productivity to new heights and grow with us'**
  String get onboardingonetittle;

  /// No description provided for @workSeamlessly.
  ///
  /// In en, this message translates to:
  /// **'Get your work done seamlessly without interruption'**
  String get workSeamlessly;

  /// No description provided for @achieveHigherGoals.
  ///
  /// In en, this message translates to:
  /// **'Achieve Higher Goals'**
  String get achieveHigherGoals;

  /// No description provided for @byboosting.
  ///
  /// In en, this message translates to:
  /// **'By boosting your producivity we help you achieve higher goals'**
  String get byboosting;

  /// No description provided for @seamlessly.
  ///
  /// In en, this message translates to:
  /// **'Work Seamlessly'**
  String get seamlessly;

  /// No description provided for @myCv.
  ///
  /// In en, this message translates to:
  /// **'My CV'**
  String get myCv;

  /// No description provided for @welcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome'**
  String get welcome;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password?'**
  String get forgotPassword;

  /// No description provided for @orContinue.
  ///
  /// In en, this message translates to:
  /// **'Or continue with'**
  String get orContinue;

  /// No description provided for @edu4TechDevPlatform.
  ///
  /// In en, this message translates to:
  /// **'Welcome to the \nEdu4Tech Mobile App!'**
  String get edu4TechDevPlatform;

  /// No description provided for @edu4TechWelcomeSign.
  ///
  /// In en, this message translates to:
  /// **'Welcome the Edu4Tech Developer Platform. \nThis Platform entry and upload cv.'**
  String get edu4TechWelcomeSign;

  /// No description provided for @changePassword.
  ///
  /// In en, this message translates to:
  /// **'Change Password'**
  String get changePassword;

  /// No description provided for @currentPassword.
  ///
  /// In en, this message translates to:
  /// **'Current Password'**
  String get currentPassword;

  /// No description provided for @newPassword.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get newPassword;

  /// No description provided for @confirmPassword.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirmPassword;

  /// No description provided for @saveChanges.
  ///
  /// In en, this message translates to:
  /// **'Save Changes'**
  String get saveChanges;

  /// No description provided for @passwordUpdatedSuccessfully.
  ///
  /// In en, this message translates to:
  /// **'Password Updated Successfully'**
  String get passwordUpdatedSuccessfully;

  /// No description provided for @notification.
  ///
  /// In en, this message translates to:
  /// **'Notification Settings'**
  String get notification;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language Settings'**
  String get language;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @signUpEduDreams.
  ///
  /// In en, this message translates to:
  /// **'Sign up now and make the education of your dreams'**
  String get signUpEduDreams;

  /// No description provided for @onBoardingOne.
  ///
  /// In en, this message translates to:
  /// **'Are you ready to enjoy your life full of Edu4Tech training?'**
  String get onBoardingOne;

  /// No description provided for @onBoardingTwo.
  ///
  /// In en, this message translates to:
  /// **'Are you ready to change your life with the education you received at Edu4Tech?'**
  String get onBoardingTwo;

  /// No description provided for @onBoardingThree.
  ///
  /// In en, this message translates to:
  /// **'Complete your education with Edu4Tech, get your certificate, secure your job!'**
  String get onBoardingThree;

  /// No description provided for @onBoardingTitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Edu4Tech!'**
  String get onBoardingTitle;

  /// No description provided for @onBoardingTitleOne.
  ///
  /// In en, this message translates to:
  /// **'Edu4Tech Training Time!'**
  String get onBoardingTitleOne;

  /// No description provided for @onBoardingTitleTwo.
  ///
  /// In en, this message translates to:
  /// **'Employment with Edu4Tech!'**
  String get onBoardingTitleTwo;

  /// No description provided for @succesSignIn.
  ///
  /// In en, this message translates to:
  /// **'Login is successful, you are directed to the home page...'**
  String get succesSignIn;

  /// No description provided for @succesSignUp.
  ///
  /// In en, this message translates to:
  /// **'Registration successful, you are directed to the login page...'**
  String get succesSignUp;
}

class _L10nDelegate extends LocalizationsDelegate<L10n> {
  const _L10nDelegate();

  @override
  Future<L10n> load(Locale locale) {
    return SynchronousFuture<L10n>(lookupL10n(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'tr'].contains(locale.languageCode);

  @override
  bool shouldReload(_L10nDelegate old) => false;
}

L10n lookupL10n(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return L10nEn();
    case 'tr': return L10nTr();
  }

  throw FlutterError(
    'L10n.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
