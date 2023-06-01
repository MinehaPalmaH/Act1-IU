import 'package:flutter/material.dart';

class EmpleadoItem extends StatelessWidget {
  final String imagen;
  final String nombre;
  final String puesto;
  const EmpleadoItem({
    Key? key,
    required this.imagen,
    required this.nombre,
    required this.puesto,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        width: 160,
        decoration: BoxDecoration(
            color: const Color(0x5f61d761),
            borderRadius: BorderRadius.circular(15.0)),
        padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 14.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(imagen),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              nombre,
              overflow: TextOverflow.fade,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              puesto,
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.red),
            )
          ],
        ),
      ),
    );
  }
}
