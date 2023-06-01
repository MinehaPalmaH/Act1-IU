import 'package:flutter/material.dart';
import 'package:palma/paginas/iniciar.dart';

import '../widgets/empleadoitem.dart';
import '../widgets/trabajadoritem.dart';

class PaginaCentarl extends StatefulWidget {
  const PaginaCentarl({Key? key}) : super(key: key);

  @override
  State<PaginaCentarl> createState() => _Paginainico();
}

class _Paginainico extends State<PaginaCentarl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          iconSize: 24,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
                color: Colors.black54,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_month_outlined,
                color: Colors.black54,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_bubble_outline,
                color: Colors.black54,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications_none_outlined,
                color: Colors.black54,
              ),
              label: '',
            ),
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Hola,",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Mineha Palma",
                          style: TextStyle(
                            color: Color(0xff0d5a07),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        )
                      ],
                    ),
                    const CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey,
                      child: CircleAvatar(
                        radius: 28,
                        backgroundImage: AssetImage("assets/inicial.gif"),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 16,
                  ),
                  decoration: BoxDecoration(
                    color: const Color(0xffb1de9f),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        "assets/inicial.gif",
                        width: 92,
                        height: 100,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Bienvenida",
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          const SizedBox(
                            width: 120,
                            child: Text(
                              "Inicio ",
                              style: TextStyle(
                                color: Colors.black87,
                                fontSize: 12,
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          InkWell(
                            onTap: () => Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const Paginainicio();
                            })),
                            child: Container(
                              height: 56,
                              decoration: BoxDecoration(
                                color: const Color(0xff0d3f11),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              child: const Center(
                                child: Text(
                                  "Regresar a inicio",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.only(left: 16),
                  height: 64,
                  decoration: BoxDecoration(
                    color: const Color(0x5f61d761),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.search,
                        size: 32,
                        color: Colors.black54,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text(
                        "Buscar...",
                        style: TextStyle(
                          color: Colors.black54,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 60,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      TrabajoItem(
                        rutadeimagen: "assets/coffee.png",
                        nombredeimagen: " C ",
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      TrabajoItem(
                        rutadeimagen: "assets/coffee.png",
                        nombredeimagen: " A ",
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      TrabajoItem(
                        rutadeimagen: "assets/coffee.png",
                        nombredeimagen: " F ",
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      TrabajoItem(
                        rutadeimagen: "assets/coffee.png",
                        nombredeimagen: " E ",
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Lista de Empleados",
                      style: TextStyle(
                        color: Color(0xff054705),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Ver más",
                      style: TextStyle(
                        color: Color(0x7303810a),
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 250,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: const [
                      EmpleadoItem(
                        imagen: "assets/1.jpg",
                        nombre: "Sophie Harmon",
                        puesto: "Barista",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      EmpleadoItem(
                        imagen: "assets/2.jpg",
                        nombre: "Karla Jones",
                        puesto: "Cajero",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      EmpleadoItem(
                        imagen: "assets/3.jpg",
                        nombre: "Alejandro Granados",
                        puesto: "Chef",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      EmpleadoItem(
                        imagen: "assets/4.jpg",
                        nombre: "Anton Hidras",
                        puesto: "Mesero",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
