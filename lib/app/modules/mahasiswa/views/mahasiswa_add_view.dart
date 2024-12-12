import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/app/modules/mahasiswa/controllers/mahasiswa_controller.dart';

class MahasiswaAddView extends GetView <MahasiswaController> {
  const MahasiswaAddView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tambah Mahasiswa'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Input NPM
              TextFormField(
                controller: controller.cNpm,
                decoration: const InputDecoration(
                  labelText: 'NPM',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'NPM tidak boleh kosong';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // Input Nama
              TextFormField(
                controller: controller.cNama,
                decoration: const InputDecoration(
                  labelText: 'Nama',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Nama tidak boleh kosong';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // Input Alamat
              TextFormField(
                controller: controller.cAlamat,
                decoration: const InputDecoration(
                  labelText: 'Alamat',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Alamat tidak boleh kosong';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),

              // Tombol Simpan
              ElevatedButton(
                onPressed: () {
                  controller.add(
                    controller.cNpm.text,
                    controller.cNama.text,
                    controller.cAlamat.text,
                  );
                },
                child: const Text('Simpan'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
