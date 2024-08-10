#MOVIES APP

## 🚀 Getting Started

- The application is fully API-dependent.
- pagination shows the pages.
- used searchDelegate to search.
-  As we know, to get news from the internet we should connect to an API so let’s see the News API that we will use in this app.
-  News API is a simple JSON-based REST API for searching and retrieving news articles and articles from specific sources from all over the internet. Using this, one can fetch the most important news articles that work on a news site or search for the most important news on a specific topic (or keyword).
-   News can be retrieved based on some criteria. Say the topic (keyword) to be searched is 'route' or may be related to a particular channel
-   used package   webview_flutter: ^4.7.0 To get the source of the news and display it in the application.
-   News app built using news API, the user can display news agencies according to the categories, he can search for a piece of the article
using different endpoints and he can view the website of the article, the app also utilizes pagination for lazily loading data.
  
## 🤳 Screens

- **Splash Screen:** Adding a splash screen to your Android app. 
- **Home Screen:** You start with categories and then you can navigate to the news based on choosing the desired category on the same scaffold.
- **Drawer Screen:** It is possible to move to the category when we are in the news and vice versa is true.
- **Details Screen:** When the user clicks on an article, it will go to this screen to show the details of this article and when the user clicks on view article, it will view its link in the user’s default browser.
- **Search Screen:** It is the same as the previous screen but in appear there is a search bar where the user can write the name of the article to search on it in API, and  it is shown when the user clicks on the search icon in the previous screen.





## 📁 Files Structure
![structure-movies](https://github.com/user-attachments/assets/0bd4b1f9-0355-4ca1-9dc1-5f3ee827378b)


## 📱 UI
![movies-screens](https://github.com/user-attachments/assets/31652e47-96ef-4817-a27e-ef606bb8b6ee)




## 🎥 Video



https://github.com/user-attachments/assets/726e80fb-f277-40e5-b012-ed40062c7a8e



## 🛠 Dependencies

```pubspec.yaml
  dependencies:
  cached_network_image: ^3.3.1
  carousel_slider: ^4.2.1
  connectivity_plus: ^6.0.3
  cupertino_icons: ^1.0.6
  dartz: ^0.10.1
  flutter:
    sdk: flutter
  flutter_bloc: ^8.1.5
  flutter_screenutil: ^5.9.0
  flutter_svg: ^2.0.10+1
  gap: ^3.0.1
  hive: ^2.2.3
  hive_flutter: ^1.1.0
  http: ^1.2.1
  
  lottie: ^3.1.2
  readmore: ^3.0.0
  shimmer: ^3.0.0

dev_dependencies:
  build_runner: ^2.4.10
  flutter_lints: ^3.0.0
  flutter_test:
    sdk: flutter
  hive_generator: ^2.0.1

```


- Contributions are welcome 💜
- If you encounter any issues or have suggestions for improvements, please open an issue or submit a pull request.

