import 'package:flutter/material.dart';
import 'package:goldenjetfront/presentation/splash_screen/splash_screen.dart';
import 'package:goldenjetfront/presentation/register_form_screen/register_form_screen.dart';
import 'package:goldenjetfront/presentation/dashboard_container_screen/dashboard_container_screen.dart';
import 'package:goldenjetfront/presentation/offer_screen/offer_screen.dart';
import 'package:goldenjetfront/presentation/favorite_product_screen/favorite_product_screen.dart';
import 'package:goldenjetfront/presentation/product_detail_screen/product_detail_screen.dart';
import 'package:goldenjetfront/presentation/review_product_screen/review_product_screen.dart';
import 'package:goldenjetfront/presentation/write_review_fill_screen/write_review_fill_screen.dart';
import 'package:goldenjetfront/presentation/notification_one_screen/notification_one_screen.dart';
import 'package:goldenjetfront/presentation/notification_offer_screen/notification_offer_screen.dart';
import 'package:goldenjetfront/presentation/notification_feed_screen/notification_feed_screen.dart';
import 'package:goldenjetfront/presentation/notification_screen/notification_screen.dart';
import 'package:goldenjetfront/presentation/search_screen/search_screen.dart';
import 'package:goldenjetfront/presentation/search_result_screen/search_result_screen.dart';
import 'package:goldenjetfront/presentation/search_result_one_screen/search_result_one_screen.dart';
import 'package:goldenjetfront/presentation/list_category_screen/list_category_screen.dart';
import 'package:goldenjetfront/presentation/sort_by_screen/sort_by_screen.dart';
import 'package:goldenjetfront/presentation/filter_screen/filter_screen.dart';
import 'package:goldenjetfront/presentation/ship_to_screen/ship_to_screen.dart';
import 'package:goldenjetfront/presentation/payment_method_screen/payment_method_screen.dart';
import 'package:goldenjetfront/presentation/choose_credit_or_debit_card_screen/choose_credit_or_debit_card_screen.dart';
import 'package:goldenjetfront/presentation/success_screen/success_screen.dart';
import 'package:goldenjetfront/presentation/profile_screen/profile_screen.dart';
import 'package:goldenjetfront/presentation/change_password_screen/change_password_screen.dart';
import 'package:goldenjetfront/presentation/order_screen/order_screen.dart';
import 'package:goldenjetfront/presentation/order_details_screen/order_details_screen.dart';
import 'package:goldenjetfront/presentation/add_address_screen/add_address_screen.dart';
import 'package:goldenjetfront/presentation/address_screen/address_screen.dart';
import 'package:goldenjetfront/presentation/add_payment_screen/add_payment_screen.dart';
import 'package:goldenjetfront/presentation/credit_card_and_debit_screen/credit_card_and_debit_screen.dart';
import 'package:goldenjetfront/presentation/add_card_screen/add_card_screen.dart';
import 'package:goldenjetfront/presentation/lailyfa_febrina_card_screen/lailyfa_febrina_card_screen.dart';
import 'package:goldenjetfront/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String registerFormScreen = '/register_form_screen';

  static const String dashboardPage = '/dashboard_page';

  static const String dashboardContainerScreen = '/dashboard_container_screen';

  static const String offerScreen = '/offer_screen';

  static const String favoriteProductScreen = '/favorite_product_screen';

  static const String productDetailScreen = '/product_detail_screen';

  static const String reviewProductScreen = '/review_product_screen';

  static const String writeReviewFillScreen = '/write_review_fill_screen';

  static const String notificationOneScreen = '/notification_one_screen';

  static const String notificationOfferScreen = '/notification_offer_screen';

  static const String notificationFeedScreen = '/notification_feed_screen';

  static const String notificationScreen = '/notification_screen';

  static const String explorePage = '/explore_page';

  static const String searchScreen = '/search_screen';

  static const String searchResultScreen = '/search_result_screen';

  static const String searchResultOneScreen = '/search_result_one_screen';

  static const String listCategoryScreen = '/list_category_screen';

  static const String sortByScreen = '/sort_by_screen';

  static const String filterScreen = '/filter_screen';

  static const String cartPage = '/cart_page';

  static const String shipToScreen = '/ship_to_screen';

  static const String paymentMethodScreen = '/payment_method_screen';

  static const String chooseCreditOrDebitCardScreen =
      '/choose_credit_or_debit_card_screen';

  static const String successScreen = '/success_screen';

  static const String offerScreenOnePage = '/offer_screen_one_page';

  static const String accountPage = '/account_page';

  static const String profileScreen = '/profile_screen';

  static const String changePasswordScreen = '/change_password_screen';

  static const String orderScreen = '/order_screen';

  static const String orderDetailsScreen = '/order_details_screen';

  static const String addAddressScreen = '/add_address_screen';

  static const String addressScreen = '/address_screen';

  static const String addPaymentScreen = '/add_payment_screen';

  static const String creditCardAndDebitScreen =
      '/credit_card_and_debit_screen';

  static const String addCardScreen = '/add_card_screen';

  static const String lailyfaFebrinaCardScreen = '/lailyfa_febrina_card_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    splashScreen: (context) => SplashScreen(),
    registerFormScreen: (context) => RegisterFormScreen(),
    dashboardContainerScreen: (context) => DashboardContainerScreen(),
    offerScreen: (context) => OfferScreen(),
    favoriteProductScreen: (context) => FavoriteProductScreen(),
    productDetailScreen: (context) => ProductDetailScreen(),
    reviewProductScreen: (context) => ReviewProductScreen(),
    writeReviewFillScreen: (context) => WriteReviewFillScreen(),
    notificationOneScreen: (context) => NotificationOneScreen(),
    notificationOfferScreen: (context) => NotificationOfferScreen(),
    notificationFeedScreen: (context) => NotificationFeedScreen(),
    notificationScreen: (context) => NotificationScreen(),
    searchScreen: (context) => SearchScreen(),
    searchResultScreen: (context) => SearchResultScreen(),
    searchResultOneScreen: (context) => SearchResultOneScreen(),
    listCategoryScreen: (context) => ListCategoryScreen(),
    sortByScreen: (context) => SortByScreen(),
    filterScreen: (context) => FilterScreen(),
    shipToScreen: (context) => ShipToScreen(),
    paymentMethodScreen: (context) => PaymentMethodScreen(),
    chooseCreditOrDebitCardScreen: (context) => ChooseCreditOrDebitCardScreen(),
    successScreen: (context) => SuccessScreen(),
    profileScreen: (context) => ProfileScreen(),
    changePasswordScreen: (context) => ChangePasswordScreen(),
    orderScreen: (context) => OrderScreen(),
    orderDetailsScreen: (context) => OrderDetailsScreen(),
    addAddressScreen: (context) => AddAddressScreen(),
    addressScreen: (context) => AddressScreen(),
    addPaymentScreen: (context) => AddPaymentScreen(),
    creditCardAndDebitScreen: (context) => CreditCardAndDebitScreen(),
    addCardScreen: (context) => AddCardScreen(),
    lailyfaFebrinaCardScreen: (context) => LailyfaFebrinaCardScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
