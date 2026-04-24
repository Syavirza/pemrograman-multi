import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

 
  void cekLogin(String email, String password) {

    if (email == 'lele@gmail.com' && password == '123456') {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('✅ Login Berhasil'),
            content: Text('Selamat datang, $email!'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  // Reset form
                  _emailController.clear();
                  _passwordController.clear();
                },
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    } else {
      // Jika gagal
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('❌ Login Gagal! Periksa email dan password Anda.'),
          backgroundColor: Colors.red,
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        color: Colors.grey[100],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.login,
              size: 80,
              color: Colors.blue[700],
            ),
            const SizedBox(height: 30),

            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email / Username',
                hintText: 'Masukkan email Anda',
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 15),

            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Masukkan password',
                prefixIcon: const Icon(Icons.lock),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 25),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  cekLogin(
                    _emailController.text,
                    _passwordController.text,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'LOGIN',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 20),

            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
             
            ),
          ],
        ),
      ),
    );
  }
}