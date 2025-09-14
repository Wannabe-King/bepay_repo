/// Constants for route names
class AppRoutes {
  static const String home = '/home';
  static const String dashboard = '/dashboard';
  static const String transactions = '/transactions';
  static const String profile = '/profile';
  static const String settings = '/settings';
}

/// Constants for asset paths
class AppAssets {
  static const String logo = 'assets/images/logo.png';
  static const String avatar = 'assets/images/avatar.png';
}

/// Constants for string values
class AppStrings {
  static const String appName = 'BePay Dashboard';
  static const String dashboardTitle = 'Dashboard';
  static const String searchPlaceholder = 'Search for anything';
  static const String walletBalance = "Wallet balance";
  static const String premiumCard = "Premium Card";
  static const String recentTransactions = "Recent Transactions";
  static const String seeMore = "See more";
}

/// Constants for API endpoints
class ApiEndpoints {
  static const String baseUrl = 'https://api.example.com';
  static const String transactions = '$baseUrl/transactions';
  static const String profile = '$baseUrl/profile';
}
