import 'package:flutter/material.dart';

class TrabajoItem extends StatelessWidget {
  final String rutadeimagen;
  final String nombredeimagen;
  const TrabajoItem({
    Key? key,
    required this.rutadeimagen,
    required this.nombredeimagen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: const Color(0x5f61d761),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Row(
        children: [
          Image.asset(
            rutadeimagen,
            width: 32,
          ),
          const SizedBox(
            width: 8,
          ),
          Text(
            nombredeimagen,
            style: const TextStyle(fontSize: 14),
          )
        ],
      ),
    );
  }
}
