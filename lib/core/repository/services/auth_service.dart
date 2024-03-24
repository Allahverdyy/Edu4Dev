import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:edu4dev/core/repository/model/auth/sign%20in/signin_request_model.dart';
import 'package:edu4dev/core/repository/model/auth/sign%20out/signup_request_model.dart';
import 'package:edu4dev/core/repository/model/auth/user/user_response_model.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future signUp(SignUpRequestModel signUpRequestModel) async {
    final UserCredential userCredential =
        await _auth.createUserWithEmailAndPassword(
            email: signUpRequestModel.email,
            password: signUpRequestModel.password);

    final User? user = userCredential.user;
    if (user == null) {
      throw Exception("User is null");
    }

    await _firestore.collection("users").doc(user.uid).set(({
          "name": signUpRequestModel.name,
          "surname": signUpRequestModel.surname,
          "email": signUpRequestModel.email,
          "phoneNumber": signUpRequestModel.phoneNumber,
          "address": signUpRequestModel.address
        }));

    return signUpRequestModel;
  }

  Future signIn(SignInRequestModel signInRequestModel) async {
    final UserCredential userCredential =
        await _auth.signInWithEmailAndPassword(
            email: signInRequestModel.email,
            password: signInRequestModel.password);

    final User? user = userCredential.user;
    if (user == null) {
      throw Exception("User is null");
    }
  }

  Future signOut() async {
    await _auth.signOut();
  }

  Future<bool> isSignedIn() async {
    final User? user = _auth.currentUser;
    return user != null;
  }

  Future<User?> getUser() async {
    return _auth.currentUser;
  }

  Future<UserResponseModel> getUserDetail() async {
    final User? user = _auth.currentUser;
    if (user == null) {
      throw Exception("User is null");
    }

    DocumentSnapshot documentSnapshot =
        await _firestore.collection("users").doc(user.uid).get();

    return UserResponseModel.fromDocumentSnapshot(documentSnapshot);
  }
}
