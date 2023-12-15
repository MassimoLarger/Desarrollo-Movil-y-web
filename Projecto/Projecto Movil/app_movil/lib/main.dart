import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Agrega un retraso de 5 segundos antes de navegar a la siguiente pantalla
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => LoginPage(),
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/Image-Fondo.png',
            fit: BoxFit.cover,
          ),
          Positioned(
            top: -10, // Ajusta la posición del texto según sea necesario
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/Vector1.png',
                      fit: BoxFit.cover,
                      width: 383,
                      height: 370,
                    ),
                    Positioned(
                      top: 80,
                      child: Text(
                        'Memorice Quizzer',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          color: Colors.white,
                          fontSize: 35,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.asset(
                      'assets/app-logo.png',
                      width: 125,
                      height: 125,
                    ),
                    CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            left: -15,
            bottom: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 10),
                Image.asset(
                  'assets/Vector2.png',
                  fit: BoxFit.cover,
                  width: 383,
                  height: 330,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/Image-Fondo.png',
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    'assets/Vector1.png',
                    fit: BoxFit.cover,
                    width: 383,
                    height: 370,
                  ),
                  Positioned(
                    top: 80,
                    child: Text(
                      'Memorice Quizzer',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        fontSize: 35,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 200,
                    child: Text(
                      'Disfruta de agrupar imágenes,',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 220,
                    child: Text(
                      'textos y mucho más',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.black,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            color: Colors.black.withOpacity(0.4),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ));
                },
                icon: Image.asset(
                  'assets/imageI.png',
                  width: 30,
                  height: 30,
                ),
                label: Text('Ingresar como Invitado'),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  // Acción al presionar el botón de Google
                },
                icon: Image.asset(
                  'assets/imageG.png',
                  width: 30,
                  height: 30,
                ),
                label: Text('Ingresar con Google'),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  // Acción al presionar el botón de Facebook
                },
                icon: Image.asset(
                  'assets/imageF.png',
                  width: 30,
                  height: 30,
                ),
                label: Text('Ingresar con Facebook'),
              ),
              SizedBox(height: 40),
            ],
          ),
        ],
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página de Ingreso'),
      ),
      body: Container(
        color: Color(0xFFe9a24c), // Color de fondo
        child: Column(
          children: [
            // Barra superior con 3 logos
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset(
                    'assets/logo1.png',
                    width: 40,
                    height: 40,
                  ),
                  Image.asset(
                    'assets/logo2.png',
                    width: 40,
                    height: 40,
                  ),
                  Image.asset(
                    'assets/logo3.png',
                    width: 40,
                    height: 40,
                  ),
                ],
              ),
            ),
            // Logo de la app al centro
            Center(
              child: Image.asset(
                'assets/app_logo.png',
                width: 100,
                height: 100,
              ),
            ),
            // Texto "Ingrese sus datos"
            Text(
              'Ingrese sus datos',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            // Imágenes y texto "Nombre de Jugador"
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/image3.png',
                  width: 50,
                  height: 50,
                ),
                Text(
                  'Nombre de Jugador',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                // Rectángulo para ingresar el nombre
                Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(8),
                    ),
                  ),
                ),
              ],
            ),
            // Texto "Fecha de Nacimiento"
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  'assets/image4.png',
                  width: 50,
                  height: 50,
                ),
                Text(
                  'Fecha de Nacimiento',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                // Rectángulo para ingresar la fecha de nacimiento
                Container(
                  width: 150,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.all(8),
                    ),
                  ),
                ),
              ],
            ),
            // Barra inferior con 3 iconos
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.settings, color: Colors.white, size: 30),
                  Icon(Icons.mail, color: Colors.white, size: 30),
                  Icon(Icons.person, color: Colors.white, size: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}