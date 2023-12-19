import 'package:flutter/material.dart';
import 'dart:async';

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
            top: -10,
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
                },
                icon: Image.asset(
                  'assets/imageG.png',
                  width: 30,
                  height: 30,
                ),
                label: Text('  Ingresar con Google  '),
              ),
              SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
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

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController nombreController = TextEditingController();
  TextEditingController fechaController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null && picked != DateTime.now()) {
      fechaController.text = "${picked.day}/${picked.month}/${picked.year}";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFEDD5C5),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              color: Color(0xFF0B1D21),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.account_circle, color: Colors.white, size: 30),
                    onPressed: () {
                    },
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.notifications, color: Colors.white, size: 30),
                        onPressed: () {
                        },
                      ),
                      SizedBox(width: 10),
                      IconButton(
                        icon: Icon(Icons.menu, color: Colors.white, size: 30),
                        onPressed: () {
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.all(20),
                children: [
                  Image.asset(
                    'assets/app-logo.png',
                    width: 65,
                    height: 65,
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      'Ingrese sus datos',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Image.asset(
                    'assets/image1 (1).png',
                    width: 105,
                    height: 105,
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      'Nombre de Jugador',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      controller: nombreController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(8),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Center(
                    child: Text(
                      'Fecha de Nacimiento',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextFormField(
                      controller: fechaController,
                      decoration: InputDecoration(
                        labelText: 'Fecha de Nacimiento',
                        fillColor: Colors.black,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(),
                        ),
                      ),
                      onTap: () => _selectDate(context),
                      readOnly: true,
                    ),
                  ),
                  SizedBox(height: 20),
                  Image.asset(
                    'assets/image1 (2).png',
                    width: 105,
                    height: 105,
                  ),
                  SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Color(0xFFE9A24C),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ElevatedButton(
                      onPressed: () {
                        if (isValidData()) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TutorialPage()),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Por favor, complete todos los campos.'),
                              backgroundColor: Colors.red,
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFE9A24C),
                      ),
                      child: Text('Continuar'),
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              color: Color(0xFF0B1D21),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    icon: Icon(Icons.calendar_today, color: Colors.white, size: 30),
                    onPressed: () {
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.home, color: Colors.white, size: 30),
                    onPressed: () {
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.emoji_events, color: Colors.white, size: 30),
                    onPressed: () {
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool isValidData() {
    String nombre = nombreController.text;
    String fechaNacimiento = fechaController.text;

    return nombre.isNotEmpty && fechaNacimiento.isNotEmpty;
  }
}

class TutorialPage extends StatefulWidget {
  @override
  _TutorialPageState createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {
  int step = 0;

  List<String> descriptions = [
    'Soy Jelly, el amo de este juego, yo te explicaré que son todos estos iconos enumerados desde arriba... Pulsa para continuar',
    'Perfil: Accede a la información personal del jugador, como nombre, avatar y estadísticas.',
    'Notificaciones: Revisa las alertas y mensajes importantes relacionados con el juego, como actualizaciones, recordatorios y logros desbloqueados.',
    'Menú: Explora opciones adicionales y funciones del juego, como ajustes, preferencias y otras características específicas.',
    'Calendario: Accede a un calendario que muestra eventos, desafíos o actividades programadas en el juego.',
    'Inicio: Regresa a la pantalla principal del juego desde cualquier otra sección.',
    'Trofeo: Consulta tus logros y premios, así como la lista de desafíos completados durante tu experiencia en el juego.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            if (step < descriptions.length - 1) {
              step++;
            }
          });
        },
        child: Container(
          color: Color(0xFFEDD5C5),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(10),
                color: Color(0xFF0B1D21),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.account_circle, color: Colors.white, size: 30),
                      onPressed: () {
                      },
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: Icon(Icons.notifications, color: Colors.white, size: 30),
                          onPressed: () {
                          },
                        ),
                        SizedBox(width: 10),
                        IconButton(
                          icon: Icon(Icons.menu, color: Colors.white, size: 30),
                          onPressed: () {
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView(
                  padding: EdgeInsets.all(20),
                  children: [
                    Image.asset(
                      'assets/app-logo.png',
                      width: 65,
                      height: 65,
                    ),
                    SizedBox(height: 20),
                    Container(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text(
                            'Bienvenidos a',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 25,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Memorice Quizzer',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontSize: 35,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 250,
                      height: 250,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/image2.png'),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    if (step == descriptions.length - 1)
                      Container(
                        padding: EdgeInsets.all(20),
                        color: Color(0xFFEDD5C5),
                        child: Column(
                          children: [
                            Text(
                              textAlign: TextAlign.center,
                              '¿Qué estás esperando para comenzar?',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 25,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 15),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Category()),
                                );
                              },
                              child: Text('Comenzar a jugar'),
                            ),
                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        descriptions[step],
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                color: Color(0xFF0B1D21),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      icon: Icon(Icons.calendar_today, color: Colors.white, size: 30),
                      onPressed: () {
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.home, color: Colors.white, size: 30),
                      onPressed: () {
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.emoji_events, color: Colors.white, size: 30),
                      onPressed: () {
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFEDD5C5),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              color: Color(0xFF0B1D21),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.account_circle, color: Colors.white, size: 30),
                    onPressed: () {
                    },
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.notifications, color: Colors.white, size: 30),
                        onPressed: () {
                        },
                      ),
                      SizedBox(width: 10),
                      IconButton(
                        icon: Icon(Icons.menu, color: Colors.white, size: 30),
                        onPressed: () {
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => ImageCategory()),
                            );
                          },
                          child: Text(
                            'Imágenes',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFE9A24C),
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          ),
                        ),
                        SizedBox(height: 170),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => PhraseCategory()),
                            );
                          },
                          child: Text(
                            '   Frases   ',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFE9A24C),
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          ),
                        ),
                        SizedBox(height: 150),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Puntuacion()),
                            );
                          },
                          child: Text(
                            '   Audio   ',
                            style: TextStyle(color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFE9A24C),
                            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '(proximamente)',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/image3.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ImageCategory extends StatefulWidget {
  @override
  _ImageCategoryState createState() => _ImageCategoryState();
}

class _ImageCategoryState extends State<ImageCategory> {
  List<bool> _isFlipped = List.generate(12, (index) => false);
  List<int> _flippedIndexes = [];
  int _score = 0;
  int _failedAttempts = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFEDD5C5),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              color: Color(0xFF0B1D21),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.account_circle, color: Colors.white, size: 30),
                    onPressed: () {
                      // Acción al presionar el icono de cuenta
                    },
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.notifications, color: Colors.white, size: 30),
                        onPressed: () {
                          // Acción al presionar el icono de notificaciones
                        },
                      ),
                      SizedBox(width: 10),
                      IconButton(
                        icon: Icon(Icons.menu, color: Colors.white, size: 30),
                        onPressed: () {
                          // Acción al presionar el icono de menú
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 150,
                          height: 135,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/image4.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 20),
                        Text(
                          'Imágenes',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: List.generate(
                        4,
                            (rowIndex) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(
                            3,
                                (columnIndex) {
                              final index = rowIndex * 3 + columnIndex;
                              return GestureDetector(
                                onTap: () {
                                  _flipCard(index);
                                },
                                child: Container(
                                  width: 100,
                                  height: 100,
                                  margin: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: _isFlipped[index] ? Color(0xFF68BAAB) : Color(0xFFEDD5C5),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: _isFlipped[index]
                                      ? Center(
                                    child: Text(
                                      'Contenido',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                  )
                                      : null,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Puntuación: $_score',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _flipCard(int index) {
    if (!_isFlipped[index]) {
      setState(() {
        _isFlipped[index] = true;
        _flippedIndexes.add(index);

        if (_flippedIndexes.length == 2) {
          _checkMatch();
        }
      });
    }
  }

  void _checkMatch() {
    if (_flippedIndexes.length == 2) {
      Future.delayed(Duration(seconds: 1), () {
        int firstIndex = _flippedIndexes[0];
        int secondIndex = _flippedIndexes[1];

        if (_isMatch(firstIndex, secondIndex)) {
          _score++;
        } else {
          _failedAttempts++;

          if (_failedAttempts == 5) {
            // Game Over: Implement your logic here
            print('Game Over');
          }
        }

        _flippedIndexes.clear();
        _resetFlippedCards();
      });
    }
  }

  bool _isMatch(int firstIndex, int secondIndex) {
    // Implement your logic to check if the content of two cards matches
    // For now, let's assume all cards have the same content
    return true;
  }

  void _resetFlippedCards() {
    setState(() {
      _isFlipped = List.generate(12, (index) => false);
    });
  }
}

class PhraseCategory extends StatefulWidget {
  @override
  _PhraseCategoryState createState() => _PhraseCategoryState();
}

class _PhraseCategoryState extends State<PhraseCategory> {
  List<bool> _isFlipped = List.generate(10, (index) => false);
  List<int> _flippedIndexes = [];
  int _score = 0;
  int _failedAttempts = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFEDD5C5),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              color: Color(0xFF0B1D21),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.account_circle, color: Colors.white, size: 30),
                    onPressed: () {
                      // Acción al presionar el icono de cuenta
                    },
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.notifications, color: Colors.white, size: 30),
                        onPressed: () {
                          // Acción al presionar el icono de notificaciones
                        },
                      ),
                      SizedBox(width: 10),
                      IconButton(
                        icon: Icon(Icons.menu, color: Colors.white, size: 30),
                        onPressed: () {
                          // Acción al presionar el icono de menú
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Frases',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 25,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          width: 150,
                          height: 130,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/image5.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: List.generate(
                        5,
                            (rowIndex) => Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(
                            2,
                                (columnIndex) {
                              final index = rowIndex * 2 + columnIndex;
                              return GestureDetector(
                                onTap: () {
                                  _flipCard(index);
                                },
                                child: Container(
                                  width: 140,
                                  height: 90,
                                  margin: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                    color: _isFlipped[index] ? Color(0xFF078A85) : Color(0xFFEDD5C5),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: _isFlipped[index]
                                      ? Center(
                                    child: Text(
                                      'Contenido',
                                      style: TextStyle(
                                        fontFamily: 'Roboto',
                                        fontSize: 16,
                                        color: Colors.black,
                                      ),
                                    ),
                                  )
                                      : null,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Puntuación: $_score',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _flipCard(int index) {
    if (!_isFlipped[index]) {
      setState(() {
        _isFlipped[index] = true;
        _flippedIndexes.add(index);

        if (_flippedIndexes.length == 2) {
          _checkMatch();
        }
      });
    }
  }

  void _checkMatch() {
    if (_flippedIndexes.length == 2) {
      Future.delayed(Duration(seconds: 1), () {
        int firstIndex = _flippedIndexes[0];
        int secondIndex = _flippedIndexes[1];

        if (_isMatch(firstIndex, secondIndex)) {
          _score++;
        } else {
          _failedAttempts++;

          if (_failedAttempts == 5) {
            // Game Over: Implement your logic here
            print('Game Over');
          }
        }

        _flippedIndexes.clear();
        _resetFlippedCards();
      });
    }
  }

  bool _isMatch(int firstIndex, int secondIndex) {
    // Implement your logic to check if the content of two cards matches
    // For now, let's assume all cards have the same content
    return true;
  }

  void _resetFlippedCards() {
    setState(() {
      _isFlipped = List.generate(10, (index) => false);
    });
  }
}


class Puntuacion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFFEDD5C5),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              color: Color(0xFF0B1D21),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.account_circle, color: Colors.white, size: 30),
                    onPressed: () {
                      // Acción al presionar el icono de cuenta
                    },
                  ),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.notifications, color: Colors.white, size: 30),
                        onPressed: () {
                          // Acción al presionar el icono de notificaciones
                        },
                      ),
                      SizedBox(width: 10),
                      IconButton(
                        icon: Icon(Icons.menu, color: Colors.white, size: 30),
                        onPressed: () {
                          // Acción al presionar el icono de menú
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Juego Terminado',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 35,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 220,
                      height: 220,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFE81E4A),
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Puntuación',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'final del jugador',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 220,
                      height: 210,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/image6.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Acción al presionar el primer botón (Volver a Jugar)
                            Navigator.pop(context); // Regresa a la pantalla anterior
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFE81E4A),
                          ),
                          child: Text(
                            'Volver a Jugar',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // Acción al presionar el segundo botón (Cambiar de Categoría)
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Category()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFFE81E4A),
                          ),
                          child: Text(
                            'Cambiar de Categoría',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        // Acción al presionar el tercer botón (Volver al Inicio)
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => TutorialPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFFE81E4A),
                      ),
                      child: Text(
                        'Volver al Inicio',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}