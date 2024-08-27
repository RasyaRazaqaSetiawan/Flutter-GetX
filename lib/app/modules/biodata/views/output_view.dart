// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../data/biodata_model.dart';

class OutputView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Ambil data yang dikirim dari Formulir
    final BiodataModel formData = Get.arguments;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Output'),
        centerTitle: true,
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.person, color: Colors.teal), // ikon untuk nama
                    SizedBox(width: 10),
                    Text(
                      'Nama:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal.shade700,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  formData.nama,
                  style: TextStyle(fontSize: 18, color: Colors.grey[800]),
                ),
                Divider(height: 20, thickness: 1),
                Row(
                  children: [
                    Icon(Icons.wc,
                        color: Colors.teal), // ikon untuk jenisKelamin
                    SizedBox(width: 10),
                    Text(
                      'Jenis Kelamin:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal.shade700,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  formData.jenisKelamin,
                  style: TextStyle(fontSize: 18, color: Colors.grey[800]),
                ),
                Divider(height: 20, thickness: 1),
                Row(
                  children: [
                    Icon(Icons.book, color: Colors.teal), // ikon untuk agama
                    SizedBox(width: 10),
                    Text(
                      'Agama:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal.shade700,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  formData.agama,
                  style: TextStyle(fontSize: 18, color: Colors.grey[800]),
                ),
                Divider(height: 20, thickness: 1),
                Row(
                  children: [
                    Icon(Icons.calendar_today,
                        color: Colors.teal), // ikon untuk tanggalLahir
                    SizedBox(width: 10),
                    Text(
                      'Tanggal Lahir:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal.shade700,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  formData.tanggalLahir.toString().split(' ')[0],
                  style: TextStyle(fontSize: 18, color: Colors.grey[800]),
                ),
                Divider(height: 20, thickness: 1),
                Row(
                  children: [
                    Icon(Icons.home, color: Colors.teal),
                    SizedBox(width: 10),
                    Text(
                      'Alamat:',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal.shade700,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5),
                Text(
                  formData.alamat,
                  style: TextStyle(fontSize: 18, color: Colors.grey[800]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
