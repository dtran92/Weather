import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:weather/model/app_key.dart';

abstract class FirebaseRepository {
  Future<AppKey?> getApiKey();
}

class FirebaseRepositoryImpl implements FirebaseRepository {
  final db = FirebaseFirestore.instance;

  @override
  Future<AppKey?> getApiKey() async {
    const mode = kDebugMode == true ? "debug" : "release";
    final ref = await db
        .collection("keys")
        .doc(mode)
        .withConverter<AppKey>(
            fromFirestore: (snapshot, _) => AppKey.fromJson(snapshot.data()!),
            toFirestore: (model, _) => model.toJson())
        .get(const GetOptions(source: Source.server))
        .onError<FirebaseException>((e, _) => throw e);

    return ref.data();
  }
}
