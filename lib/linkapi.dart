class AppLink {
  static const String server =
      "https://smartshopziad.000webhostapp.com/delivery";

  static const String signup = "$server/auth/signup.php";
  static const String verifycodesignup = "$server/auth/verifycode.php";
  static const String login = "$server/auth/login.php";
  static const String checkemail = "$server/forgetpassword/checkemail.php";
  static const String verifycodeforgetpassword =
      "$server/forgetpassword/verifycode.php";
  static const String resetpassword =
      "$server/forgetpassword/resetpassword.php";
  // static const String imagesRoot = "$server/upload";
  // static const String imagesItems = "$imagesRoot/items";
  static const String viewpendingOrders = "$server/orders/pending.php";
  static const String viewacceptedOrders = "$server/orders/accepted.php";
  static const String detailsOrders = "$server/orders/details.php";
  static const String doneOrders = "$server/orders/done.php";
  static const String viewarchiveOrders = "$server/orders/archive.php";
  static const String approveOrders = "$server/orders/approve.php";
}
