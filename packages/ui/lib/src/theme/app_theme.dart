part of 'theme.dart';

class AppTheme {
  static ThemeData get standard {
    return ThemeData.light().copyWith(
      primaryColor: Colors.black,
      primaryTextTheme: GoogleFonts.josefinSansTextTheme(),
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
        titleTextStyle:
            GoogleFonts.josefinSansTextTheme().headlineLarge?.copyWith(
                  color: Colors.black,
                ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          textStyle: GoogleFonts.josefinSansTextTheme().labelLarge?.copyWith(
                color: Colors.white,
              ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(48),
            side: const BorderSide(width: 3),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 14,
            horizontal: 24,
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        floatingLabelStyle: const TextStyle(color: Colors.black),
        iconColor: Colors.black,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 3),
          borderRadius: BorderRadius.circular(48),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 3),
          borderRadius: BorderRadius.circular(48),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(width: 3),
          borderRadius: BorderRadius.circular(48),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        shape: CircleBorder(),
      ),
      textTheme: GoogleFonts.josefinSansTextTheme().apply(
        bodyColor: Colors.black,
        displayColor: Colors.black,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
          textStyle: GoogleFonts.josefinSansTextTheme().labelLarge?.copyWith(
                color: Colors.white,
              ),
        ),
      ),
      buttonTheme: const ButtonThemeData(
        colorScheme:
            ColorScheme.light(surface: Colors.white, onSurface: Colors.black),
      ),
      tooltipTheme: TooltipThemeData(
        textStyle: GoogleFonts.josefinSansTextTheme().labelMedium?.copyWith(
              color: Colors.white,
            ),
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: Colors.black,
        selectionColor: Colors.black,
        selectionHandleColor: Colors.black,
      ),
      tabBarTheme: const TabBarTheme(
        labelColor: Colors.black,
        unselectedLabelColor: Colors.black54,
      ),
      toggleButtonsTheme: ToggleButtonsThemeData(
        color: Colors.black,
        selectedColor: Colors.white,
        fillColor: Colors.black,
        textStyle: GoogleFonts.josefinSansTextTheme().labelLarge?.copyWith(
              color: Colors.white,
            ),
        constraints: const BoxConstraints(
          minHeight: 48,
          minWidth: 48,
        ),
        borderRadius: BorderRadius.circular(48),
        borderWidth: 3,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black54,
      ),
      listTileTheme: const ListTileThemeData(
        tileColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith(
          (states) {
            if (states.contains(WidgetState.selected)) {
              return Colors.white;
            }
            return Colors.black;
          },
        ),
        trackColor: WidgetStateProperty.resolveWith(
          (states) {
            if (states.contains(WidgetState.selected)) {
              return Colors.black;
            }
            return Colors.black12;
          },
        ),
      ),
      chipTheme: ChipThemeData(
        color: const WidgetStatePropertyAll<Color>(Colors.white),
        padding: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
          side: const BorderSide(width: 1.5),
        ),
        brightness: Brightness.light,
      ),
      expansionTileTheme: const ExpansionTileThemeData(
        backgroundColor: Colors.white,
        iconColor: Colors.black,
        textColor: Colors.black,
      ),
      iconTheme: const IconThemeData(color: Colors.black),
    );
  }

  static ThemeData get dark {
    return ThemeData.dark().copyWith(
      primaryColor: Colors.white,
      primaryTextTheme: GoogleFonts.josefinSansTextTheme(),
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        titleTextStyle:
            GoogleFonts.josefinSansTextTheme().headlineLarge?.copyWith(
                  color: Colors.white,
                ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          textStyle: GoogleFonts.josefinSansTextTheme().labelLarge?.copyWith(
                color: Colors.black,
              ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(48),
            side: const BorderSide(color: Colors.white, width: 3),
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 14,
            horizontal: 24,
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        floatingLabelStyle: const TextStyle(color: Colors.white),
        iconColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white, width: 3),
          borderRadius: BorderRadius.circular(48),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white, width: 3),
          borderRadius: BorderRadius.circular(48),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white, width: 3),
          borderRadius: BorderRadius.circular(48),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shape: CircleBorder(),
      ),
      textTheme: GoogleFonts.josefinSansTextTheme().apply(
        bodyColor: Colors.white,
        displayColor: Colors.white,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: Colors.white,
          textStyle: GoogleFonts.josefinSansTextTheme().labelLarge?.copyWith(
                color: Colors.black,
              ),
        ),
      ),
      buttonTheme: const ButtonThemeData(
        colorScheme:
            ColorScheme.dark(surface: Colors.black, onSurface: Colors.white),
      ),
      tooltipTheme: TooltipThemeData(
        textStyle: GoogleFonts.josefinSansTextTheme().labelMedium?.copyWith(
              color: Colors.black,
            ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: Colors.white,
        selectionColor: Colors.white,
        selectionHandleColor: Colors.white,
      ),
      tabBarTheme: const TabBarTheme(
        labelColor: Colors.white,
        unselectedLabelColor: Colors.white54,
      ),
      toggleButtonsTheme: ToggleButtonsThemeData(
        color: Colors.white,
        selectedColor: Colors.black,
        fillColor: Colors.white,
        textStyle: GoogleFonts.josefinSansTextTheme().labelLarge?.copyWith(
              color: Colors.black,
            ),
        constraints: const BoxConstraints(
          minHeight: 48,
          minWidth: 48,
        ),
        borderRadius: BorderRadius.circular(48),
        borderWidth: 3,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
      ),
      listTileTheme: const ListTileThemeData(
        tileColor: Colors.black,
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: WidgetStateProperty.resolveWith(
          (states) {
            if (states.contains(WidgetState.selected)) {
              return Colors.black;
            }
            return Colors.white;
          },
        ),
        trackColor: WidgetStateProperty.resolveWith(
          (states) {
            if (states.contains(WidgetState.selected)) {
              return Colors.white;
            }
            return Colors.white12;
          },
        ),
      ),
      chipTheme: ChipThemeData(
        color: const WidgetStatePropertyAll<Color>(Colors.white12),
        padding: const EdgeInsets.all(8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(32),
          side: const BorderSide(width: 1.5, color: Colors.white24),
        ),
        brightness: Brightness.dark,
      ),
      expansionTileTheme: const ExpansionTileThemeData(
        backgroundColor: Colors.black,
        iconColor: Colors.white,
        textColor: Colors.white,
      ),
      iconTheme: const IconThemeData(color: Colors.white),
    );
  }
}
