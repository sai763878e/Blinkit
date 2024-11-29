import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';
import 'app_localizations_hi.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
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
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

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
    Locale('ar'),
    Locale('en'),
    Locale('hi')
  ];

  /// No description provided for @onBoardingTitle1.
  ///
  /// In en, this message translates to:
  /// **'Employee\'s Information'**
  String get onBoardingTitle1;

  /// No description provided for @onBoardingSubTitle1.
  ///
  /// In en, this message translates to:
  /// **'Keep track on Employee\'s information.\nCreate new Employee,edit and so on.'**
  String get onBoardingSubTitle1;

  /// No description provided for @onBoardingTitle2.
  ///
  /// In en, this message translates to:
  /// **'HR Activities'**
  String get onBoardingTitle2;

  /// No description provided for @onBoardingSubTitle2.
  ///
  /// In en, this message translates to:
  /// **'Track Interview calls,schedules and appointments at once.'**
  String get onBoardingSubTitle2;

  /// No description provided for @onBoardingTitle3.
  ///
  /// In en, this message translates to:
  /// **'Performance Report'**
  String get onBoardingTitle3;

  /// No description provided for @onBoardingSubTitle3.
  ///
  /// In en, this message translates to:
  /// **'Know the performance and statistics data of employees.'**
  String get onBoardingSubTitle3;

  /// No description provided for @loginTitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome back,'**
  String get loginTitle;

  /// No description provided for @loginSubTitle.
  ///
  /// In en, this message translates to:
  /// **'Discover Limitless Choices and unmatched Conveniences.'**
  String get loginSubTitle;

  /// No description provided for @eMail.
  ///
  /// In en, this message translates to:
  /// **'E-Mail'**
  String get eMail;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @rememberMe.
  ///
  /// In en, this message translates to:
  /// **'Remember Me'**
  String get rememberMe;

  /// No description provided for @forgotPassword.
  ///
  /// In en, this message translates to:
  /// **'Forget Password?'**
  String get forgotPassword;

  /// No description provided for @signIn.
  ///
  /// In en, this message translates to:
  /// **'Sign In'**
  String get signIn;

  /// No description provided for @createAccount.
  ///
  /// In en, this message translates to:
  /// **'Create Account'**
  String get createAccount;

  /// No description provided for @orSignIn.
  ///
  /// In en, this message translates to:
  /// **'Or Sign In With'**
  String get orSignIn;

  /// No description provided for @orSignUp.
  ///
  /// In en, this message translates to:
  /// **'Or Sign Up With'**
  String get orSignUp;

  /// No description provided for @google.
  ///
  /// In en, this message translates to:
  /// **'Google'**
  String get google;

  /// No description provided for @faceBook.
  ///
  /// In en, this message translates to:
  /// **'Facebook'**
  String get faceBook;

  /// No description provided for @signUpTitle.
  ///
  /// In en, this message translates to:
  /// **'Let\'s create your account'**
  String get signUpTitle;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get firstName;

  /// No description provided for @lastName.
  ///
  /// In en, this message translates to:
  /// **'Last Name'**
  String get lastName;

  /// No description provided for @userName.
  ///
  /// In en, this message translates to:
  /// **'UserName'**
  String get userName;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// No description provided for @iAgree.
  ///
  /// In en, this message translates to:
  /// **'I agree to'**
  String get iAgree;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @and.
  ///
  /// In en, this message translates to:
  /// **'and'**
  String get and;

  /// No description provided for @termsOfUse.
  ///
  /// In en, this message translates to:
  /// **'Terms of Use'**
  String get termsOfUse;

  /// No description provided for @termsConditions.
  ///
  /// In en, this message translates to:
  /// **'I agree to Privacy policy and Terms of Use'**
  String get termsConditions;

  /// No description provided for @verifyEmailTitle.
  ///
  /// In en, this message translates to:
  /// **'Verify your email address!'**
  String get verifyEmailTitle;

  /// No description provided for @verifyEmailAddressValue.
  ///
  /// In en, this message translates to:
  /// **'support@coding.com'**
  String get verifyEmailAddressValue;

  /// No description provided for @verifyEmailSubTitle.
  ///
  /// In en, this message translates to:
  /// **'Congratulations! Your Account Awaits. Verify Your Email to Start Shopping and Experience a World of Deals and Personalized Offers.'**
  String get verifyEmailSubTitle;

  /// No description provided for @continue_.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continue_;

  /// No description provided for @resendEmail.
  ///
  /// In en, this message translates to:
  /// **'Resend Email'**
  String get resendEmail;

  /// No description provided for @accountCreatedSuccess.
  ///
  /// In en, this message translates to:
  /// **'Your account successfully created!'**
  String get accountCreatedSuccess;

  /// No description provided for @accountCreatedSubTitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Your Ultimate Shopping Destination.\nYour Account is Credited. Unleash the Joy of Seamless Online Shopping!'**
  String get accountCreatedSubTitle;

  /// No description provided for @forgotPasswordTitle.
  ///
  /// In en, this message translates to:
  /// **'Forgot password'**
  String get forgotPasswordTitle;

  /// No description provided for @forgotPasswordSubTitle.
  ///
  /// In en, this message translates to:
  /// **'Don\'t worry sometimes people can forget too, enter your email and we will send you a password reset link.'**
  String get forgotPasswordSubTitle;

  /// No description provided for @submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// No description provided for @resetPasswordTitle.
  ///
  /// In en, this message translates to:
  /// **'Password Reset Email Sent'**
  String get resetPasswordTitle;

  /// No description provided for @resetPasswordSubTitle.
  ///
  /// In en, this message translates to:
  /// **'Your Account security is Our Priority. We\'ve Sent you a secure link to Safely Change Your Password and Keep Your Account Protected.'**
  String get resetPasswordSubTitle;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @store.
  ///
  /// In en, this message translates to:
  /// **'Store'**
  String get store;

  /// No description provided for @wishList.
  ///
  /// In en, this message translates to:
  /// **'Wishlist'**
  String get wishList;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @goodDay.
  ///
  /// In en, this message translates to:
  /// **'Good day for shopping'**
  String get goodDay;

  /// No description provided for @popularCategories.
  ///
  /// In en, this message translates to:
  /// **'Popular Categories'**
  String get popularCategories;

  /// No description provided for @searchInStore.
  ///
  /// In en, this message translates to:
  /// **'Search in Store'**
  String get searchInStore;

  /// No description provided for @sports.
  ///
  /// In en, this message translates to:
  /// **'Sports'**
  String get sports;

  /// No description provided for @popularProducts.
  ///
  /// In en, this message translates to:
  /// **'Popular Products'**
  String get popularProducts;

  /// No description provided for @viewAll.
  ///
  /// In en, this message translates to:
  /// **'View All'**
  String get viewAll;

  /// No description provided for @featuredBrands.
  ///
  /// In en, this message translates to:
  /// **'Featured Brands'**
  String get featuredBrands;

  /// No description provided for @youMightLike.
  ///
  /// In en, this message translates to:
  /// **'You Might Like'**
  String get youMightLike;

  /// No description provided for @userNameValue.
  ///
  /// In en, this message translates to:
  /// **'Thati Sai Kumar'**
  String get userNameValue;

  /// No description provided for @userEmailValue.
  ///
  /// In en, this message translates to:
  /// **'developer@software.com'**
  String get userEmailValue;

  /// No description provided for @accountSettings.
  ///
  /// In en, this message translates to:
  /// **'Account Settings'**
  String get accountSettings;

  /// No description provided for @myAddress.
  ///
  /// In en, this message translates to:
  /// **'My Addresses'**
  String get myAddress;

  /// No description provided for @myAddressSubNote.
  ///
  /// In en, this message translates to:
  /// **'Set shopping delivery address'**
  String get myAddressSubNote;

  /// No description provided for @myCart.
  ///
  /// In en, this message translates to:
  /// **'My Cart'**
  String get myCart;

  /// No description provided for @myCartNote.
  ///
  /// In en, this message translates to:
  /// **'Add, remove products and more to checkout'**
  String get myCartNote;

  /// No description provided for @myOrders.
  ///
  /// In en, this message translates to:
  /// **'My Orders'**
  String get myOrders;

  /// No description provided for @myOrdersNote.
  ///
  /// In en, this message translates to:
  /// **'In progress and Completed Orders'**
  String get myOrdersNote;

  /// No description provided for @bankAccount.
  ///
  /// In en, this message translates to:
  /// **'Bank Account'**
  String get bankAccount;

  /// No description provided for @bankAccountNote.
  ///
  /// In en, this message translates to:
  /// **'Withdraw balance to registered Bank Account'**
  String get bankAccountNote;

  /// No description provided for @myCoupons.
  ///
  /// In en, this message translates to:
  /// **'My Coupons'**
  String get myCoupons;

  /// No description provided for @myCouponsNote.
  ///
  /// In en, this message translates to:
  /// **'Check all Available coupons'**
  String get myCouponsNote;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @notificationsNote.
  ///
  /// In en, this message translates to:
  /// **'Set any kind of notification message'**
  String get notificationsNote;

  /// No description provided for @accountPrivacy.
  ///
  /// In en, this message translates to:
  /// **'Account Privacy'**
  String get accountPrivacy;

  /// No description provided for @accountPrivacyNote.
  ///
  /// In en, this message translates to:
  /// **'Manage data usage and connected accounts'**
  String get accountPrivacyNote;

  /// No description provided for @appSettings.
  ///
  /// In en, this message translates to:
  /// **'App Settings'**
  String get appSettings;

  /// No description provided for @loadData.
  ///
  /// In en, this message translates to:
  /// **'Load Data'**
  String get loadData;

  /// No description provided for @loadDataNote.
  ///
  /// In en, this message translates to:
  /// **'Upload Data to your Cloud Firebase'**
  String get loadDataNote;

  /// No description provided for @geoLocations.
  ///
  /// In en, this message translates to:
  /// **'Geo Locations'**
  String get geoLocations;

  /// No description provided for @geoLocationsNote.
  ///
  /// In en, this message translates to:
  /// **'Set recommendation based on location'**
  String get geoLocationsNote;

  /// No description provided for @safeMode.
  ///
  /// In en, this message translates to:
  /// **'Safe Mode'**
  String get safeMode;

  /// No description provided for @safeModeNote.
  ///
  /// In en, this message translates to:
  /// **'Search result is safe for all apps'**
  String get safeModeNote;

  /// No description provided for @hdImageQuality.
  ///
  /// In en, this message translates to:
  /// **'HD Quality Image'**
  String get hdImageQuality;

  /// No description provided for @hdImageQualityNote.
  ///
  /// In en, this message translates to:
  /// **'Set Image quality to be seen'**
  String get hdImageQualityNote;

  /// No description provided for @changeProfilePicture.
  ///
  /// In en, this message translates to:
  /// **'Change Profile Picture'**
  String get changeProfilePicture;

  /// No description provided for @profileInformation.
  ///
  /// In en, this message translates to:
  /// **'Profile Information'**
  String get profileInformation;

  /// No description provided for @personalInformation.
  ///
  /// In en, this message translates to:
  /// **'Personal Information'**
  String get personalInformation;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @userId.
  ///
  /// In en, this message translates to:
  /// **'User ID'**
  String get userId;

  /// No description provided for @closeAccount.
  ///
  /// In en, this message translates to:
  /// **'Close Account'**
  String get closeAccount;

  /// No description provided for @reviewsAndRatings.
  ///
  /// In en, this message translates to:
  /// **'Reviews & Ratings'**
  String get reviewsAndRatings;

  /// No description provided for @logOut.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get logOut;

  /// No description provided for @empTitle.
  ///
  /// In en, this message translates to:
  /// **'Title'**
  String get empTitle;

  /// No description provided for @surName.
  ///
  /// In en, this message translates to:
  /// **'Family Name'**
  String get surName;

  /// No description provided for @yourName.
  ///
  /// In en, this message translates to:
  /// **'Your Name'**
  String get yourName;

  /// No description provided for @shortName.
  ///
  /// In en, this message translates to:
  /// **'Short Name'**
  String get shortName;

  /// No description provided for @empNumber.
  ///
  /// In en, this message translates to:
  /// **'Employee Number'**
  String get empNumber;

  /// No description provided for @teluguName.
  ///
  /// In en, this message translates to:
  /// **'Telugu Name'**
  String get teluguName;

  /// No description provided for @empStatus.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get empStatus;

  /// No description provided for @dateOfBirth.
  ///
  /// In en, this message translates to:
  /// **'Date of Birth'**
  String get dateOfBirth;

  /// No description provided for @dateOfJoining.
  ///
  /// In en, this message translates to:
  /// **'Date of Joining'**
  String get dateOfJoining;

  /// No description provided for @dateOfMarriage.
  ///
  /// In en, this message translates to:
  /// **'Date of Marriage'**
  String get dateOfMarriage;

  /// No description provided for @officeMail.
  ///
  /// In en, this message translates to:
  /// **'Office Mail'**
  String get officeMail;

  /// No description provided for @officePhone.
  ///
  /// In en, this message translates to:
  /// **'Office Phone'**
  String get officePhone;

  /// No description provided for @workMobile.
  ///
  /// In en, this message translates to:
  /// **'Work Mobile'**
  String get workMobile;

  /// No description provided for @manager.
  ///
  /// In en, this message translates to:
  /// **'Manager'**
  String get manager;

  /// No description provided for @supervisor.
  ///
  /// In en, this message translates to:
  /// **'Supervisor'**
  String get supervisor;

  /// No description provided for @office.
  ///
  /// In en, this message translates to:
  /// **'Office'**
  String get office;

  /// No description provided for @department.
  ///
  /// In en, this message translates to:
  /// **'Department'**
  String get department;

  /// No description provided for @employmentType.
  ///
  /// In en, this message translates to:
  /// **'Employment Type'**
  String get employmentType;

  /// No description provided for @testScore.
  ///
  /// In en, this message translates to:
  /// **'Test Score'**
  String get testScore;

  /// No description provided for @salary.
  ///
  /// In en, this message translates to:
  /// **'Salary'**
  String get salary;

  /// No description provided for @remarks.
  ///
  /// In en, this message translates to:
  /// **'Remarks'**
  String get remarks;

  /// No description provided for @linkedin.
  ///
  /// In en, this message translates to:
  /// **'Linkedin'**
  String get linkedin;

  /// No description provided for @skills.
  ///
  /// In en, this message translates to:
  /// **'Skills'**
  String get skills;

  /// No description provided for @gender.
  ///
  /// In en, this message translates to:
  /// **'Gender'**
  String get gender;

  /// No description provided for @weekend.
  ///
  /// In en, this message translates to:
  /// **'Weekend'**
  String get weekend;

  /// No description provided for @joiningDateTime.
  ///
  /// In en, this message translates to:
  /// **'Joining Date Time'**
  String get joiningDateTime;

  /// No description provided for @officeTime.
  ///
  /// In en, this message translates to:
  /// **'Office Time'**
  String get officeTime;

  /// No description provided for @addNewEmployee.
  ///
  /// In en, this message translates to:
  /// **'Add New Employee'**
  String get addNewEmployee;

  /// No description provided for @employeeName.
  ///
  /// In en, this message translates to:
  /// **'Employee Name'**
  String get employeeName;

  /// No description provided for @employeeNumber.
  ///
  /// In en, this message translates to:
  /// **'Employee Number'**
  String get employeeNumber;

  /// No description provided for @status.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get status;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @feed.
  ///
  /// In en, this message translates to:
  /// **'Feed'**
  String get feed;

  /// No description provided for @account.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get account;

  /// No description provided for @changeLanguage.
  ///
  /// In en, this message translates to:
  /// **'Change Language'**
  String get changeLanguage;

  /// No description provided for @changeLanguageNote.
  ///
  /// In en, this message translates to:
  /// **'You can change your app language at any time.'**
  String get changeLanguageNote;

  /// No description provided for @selectLanguageTitle.
  ///
  /// In en, this message translates to:
  /// **'Select your preferred Language.'**
  String get selectLanguageTitle;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en', 'hi'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
    case 'hi': return AppLocalizationsHi();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
