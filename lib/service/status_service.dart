import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


import '../model/status.dart';


class StatusService {


  final FirebaseFirestore _firestore = FirebaseFirestore.instance;



  //status eklemek için
  Future<Status> addStatus(String status) async {

    var ref = _firestore.collection("Status");
    var documentRef = await ref.add({'status': status});

    return Status(id: documentRef.id, status: status);
  }





  //status göstermek için
  Stream<QuerySnapshot> getStatus() {
    var ref = _firestore.collection("Status").snapshots();

    return ref;
  }

  //status silmek için
  Future<void> removeStatus(String docId) {
    var ref = _firestore.collection("Status").doc(docId).delete();

    return ref;
  }




}
