# Flutter Project Template

This Flutter project template follows a clean architecture approach, providing a modular and scalable structure for mobile application development.

## Folder Strucutre

Below is the base folder structure:
```bash
lib/
  core/
    app/
      app.dart             
      route_name.dart      
      router.dart  
    constants/
      colors.dart
      string.dart
    util/
      helper.dart          
  data/
    model/                 
    provider/              
    repository/ 
  logic/
    bloc/     
    cubit/
      tab_cubit.dart        
  ui/
    components/
      center_text.dart     
      profile_card.dart    
    pages/
      home_page.dart       
      setting_page.dart    
    tabs/
      explore_tab.dart     
      home_tab.dart        
      profile_tab.dart     
  main.dart                
```

## Key Features
- Modular: A folder structure that separates logic, data, and presentation.
- Scalable: Suitable for small to large applications.
- State Management: Using BLoC and Cubit to manage state.
- Reusable Components: Widget reusable diorganisasi dalam folder components.

## How to use
### Prerequisites
- Flutter SDK version **3.22.3** or later.
- Dart SDK version **3.4.4** or later.
- Minimum **JDK Version 17** for compatibility with Android configurations.
- Your preferred IDE:
    - [Android Studio](https://developer.android.com/studio)
    - [Visual Studio Code](https://code.visualstudio.com/)


### Installation
1. Clone Repo:
    ```bash
    git clone https://github.com/HadiRoyan/flutter-project-template.git
    cd flutter-project-template/
    ```

2. Install Dependencies: Run the following command to install all dependencies:
    ```bash
    flutter pub get
    ```

3. Run App: Run the app with:
    ```bash
    flutter run
    ```

## Contribution
If you would like to contribute to this template:  
1. Fork Repository  
2. Create your feature branch 
3. Commit your changes 
4. Push to the branch
5. Create a Pull Request

## Reference
- [Flutter Documentation](https://docs.flutter.dev/)
- [Bloc - State Management](https://bloclibrary.dev/)
