import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserDataRecord extends FirestoreRecord {
  UserDataRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Listinterest" field.
  String? _listinterest;
  String get listinterest => _listinterest ?? '';
  bool hasListinterest() => _listinterest != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  bool hasPassword() => _password != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "uID" field.
  String? _uID;
  String get uID => _uID ?? '';
  bool hasUID() => _uID != null;

  // "photoprofile" field.
  String? _photoprofile;
  String get photoprofile => _photoprofile ?? '';
  bool hasPhotoprofile() => _photoprofile != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _listinterest = snapshotData['Listinterest'] as String?;
    _email = snapshotData['email'] as String?;
    _password = snapshotData['password'] as String?;
    _name = snapshotData['name'] as String?;
    _uID = snapshotData['uID'] as String?;
    _photoprofile = snapshotData['photoprofile'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('User_Data');

  static Stream<UserDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserDataRecord.fromSnapshot(s));

  static Future<UserDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserDataRecord.fromSnapshot(s));

  static UserDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserDataRecordData({
  String? listinterest,
  String? email,
  String? password,
  String? name,
  String? uID,
  String? photoprofile,
  String? photoUrl,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Listinterest': listinterest,
      'email': email,
      'password': password,
      'name': name,
      'uID': uID,
      'photoprofile': photoprofile,
      'photo_url': photoUrl,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserDataRecordDocumentEquality implements Equality<UserDataRecord> {
  const UserDataRecordDocumentEquality();

  @override
  bool equals(UserDataRecord? e1, UserDataRecord? e2) {
    return e1?.listinterest == e2?.listinterest &&
        e1?.email == e2?.email &&
        e1?.password == e2?.password &&
        e1?.name == e2?.name &&
        e1?.uID == e2?.uID &&
        e1?.photoprofile == e2?.photoprofile &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(UserDataRecord? e) => const ListEquality().hash([
        e?.listinterest,
        e?.email,
        e?.password,
        e?.name,
        e?.uID,
        e?.photoprofile,
        e?.photoUrl,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is UserDataRecord;
}
