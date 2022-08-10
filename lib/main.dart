import 'import_files.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBZ-tOKj8AtZoc5CZ1tcwKqlKPsCbtULV8",
            authDomain: "tourismapp-35d01.firebaseapp.com",
            projectId: "tourismapp-35d01",
            storageBucket: "tourismapp-35d01.appspot.com",
            messagingSenderId: "1032224309414",
            appId: "1:1032224309414:web:f8c74f5c357bb9a186b467"));
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.lightBlue,
        colorScheme:
            ColorScheme.fromSwatch().copyWith(secondary: Colors.pinkAccent),
      ),
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        // initialData: initialData,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {
            if (snapshot.hasData) {
              return ResponsivePage(
                mobilelayoutpage: MobileLayoutPage(),
                weblayoutpage: WebLayoutPage(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text(snapshot.error.toString()),
              );
            }
          } else if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
                child: CircularProgressIndicator(
              color: Colors.amber,
            ));
          }
          return HiScreen();
        },
      ),
    );
  }
}
