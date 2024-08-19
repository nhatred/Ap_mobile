import 'package:flutter/material.dart';
import 'package:flutter_application_1/NewPage.dart';

class Formlogin extends StatefulWidget {
  const Formlogin({super.key});

  @override
  _FormloginState createState() => _FormloginState();
}

class _FormloginState extends State<Formlogin> {
  bool _obscureText = true; // Để kiểm soát trạng thái ẩn/hiện mật khẩu

  @override
  Widget build(BuildContext context) {
    return Scaffold(
/*------------AppBar--------------*/
      appBar: AppBar(
        title: const Text(''),
        toolbarHeight: 130,
        flexibleSpace: Container(
          color: const Color.fromARGB(255, 211, 5, 67),
          child: const Center(
            child: Text(
              '...',
              style: TextStyle(
                fontSize: 60,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),

/*------------Body--------------*/
      body: Container(
        color: const Color.fromARGB(255, 211, 5, 67),
        child: Container(
          padding: EdgeInsets.all(20.0),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(100.0),
              topRight: Radius.circular(100.0),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*------------Sign Up--------------*/
              Container(
                margin: EdgeInsets.only(top: 30, left: 30),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.black,
                  ),
                ),
              ),

              const SizedBox(height: 30),

              /*------------Input email--------------*/
              TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.email,
                      color: Color.fromARGB(255, 0, 0, 0)),
                  hintText: 'Email',
                  hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 114, 114, 114)),
                  //filled: true, khi true thì sử dụng được fillColor để xét color cho input
                  filled: true,
                  fillColor: Colors.pink.withOpacity(0.2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(
                            0, 255, 255, 255)), // Tắt viền (sử dụng 0 ở trước)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(
                        color: Color.fromARGB(0, 255, 255, 255)), // Tắt viền
                  ),
                ),
              ),

              const SizedBox(height: 20),

              /*------------Input password--------------*/
              TextField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.lock,
                      color: Color.fromARGB(255, 0, 0, 0)),
                  hintText: 'Password',
                  hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 105, 105, 105)),
                  filled: true,
                  fillColor: Colors.pink.withOpacity(0.2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(
                        color: Colors
                            .transparent), // Tắt viền khi không được kích hoạt
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(
                        color: Colors.transparent), // Tắt viền khi được chọn
                  ),
                  // suffixIcon để đặt cho icon đó ở vị trí cuối cùng
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                      color: const Color.fromARGB(255, 0, 0, 0),
                    ),
                    // khi click vào IconButton
                    onPressed: () {
                      // sử lý sự kiện khi click
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                  ),
                ),
              ),

              const SizedBox(height: 10),

              /*-------------Forgot Password--------------*/
              // căn chỉnh
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(color: Colors.pink[300]),
                  ),
                ),
              ),

              const SizedBox(
                  height: 20), // Khoảng cách giữa ô nhập liệu và nút Sign Up

              /*------------Sign Up------------*/
              Center(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 50.0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Chuyển sang trang giao diện mới
                      //context wiget trang hiện tại, MaterialPageRoute 1 router chuyển đổi giữa các trang, builder: tạo 1 wiget mới
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NewPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50.0, vertical: 15.0),
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              /*------------Already have an Account Sign In------------*/
              const Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Already have an Account? ',
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                    Text(
                      'Sign In',
                      style: TextStyle(color: Colors.pink),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              const Center(
                child: Text(
                  'OR',
                  style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                ),
              ),

              const SizedBox(height: 20),

              const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 21.0,
                      backgroundImage: AssetImage('assets/images/gg.jpg'),
                    ),
                    CircleAvatar(
                        radius: 20.0,
                        backgroundImage:
                            AssetImage('assets/images/facebook.png')),
                    CircleAvatar(
                      radius: 27.0,
                      backgroundImage: AssetImage('assets/images/twitter.jpg'),
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
