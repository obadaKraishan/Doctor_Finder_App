# Doctor Finder App
A Flutter application to find and view doctors based on different categories with a clean and modern design.

## 🌟 Features
- Animated splash screen
- Horizontal scrolling category tabs
- Dynamic list of doctors based on selected category
- Navigation to detailed category screens
- Clean and modern design with a professional theme
- Floating bottom navigation bar with a custom shape

## 📸 Screenshots
<p>
<img src="assets/screenshot.png" width="300">
</p>

## 🛠️ Technologies Used
- **Frontend**: Flutter, Dart
- **State Management**: StatefulWidget
- **Plugins**: font_awesome_flutter, flutter_rating_bar

## 📝 Setup Instructions
Follow these steps to set up the project locally:

### 1. Clone the Repository
```bash
git clone https://github.com/obadaKraishan/Doctor_Finder_App.git
cd Doctor_Finder_App
```

### 2. Install Dependencies
```bash
flutter pub get
```

### 3. Run the Application
```bash
flutter run
```

## 📄 Project Structure
```plaintext
lib/
├── main.dart
├── models/
│   └── doctor.dart
├── screens/
│   ├── home_screen.dart
│   ├── category_screen.dart
├── widgets/
│   ├── doctor_card.dart
│   ├── top_tabs.dart
│   └── bottom_navbar.dart
└── theme.dart
```

## 🎨 Customization
### 1. Update Theme
Modify the theme settings in `theme.dart` to customize the app's look and feel.

### 2. Update Categories and Doctors
Adjust the categories and doctor lists in `lib/screens/home_screen.dart` to change the content.

### 3. Add New Features
Create new features and screens in the `lib/screens/` directory and include them in the app's navigation.

## 📄 License
This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 👥 Contributors
- [Obada Kraishan](https://github.com/obadaKraishan)
