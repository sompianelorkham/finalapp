import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostRecord extends FirestoreRecord {
  PostRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "postID" field.
  String? _postID;
  String get postID => _postID ?? '';
  bool hasPostID() => _postID != null;

  // "uID" field.
  String? _uID;
  String get uID => _uID ?? '';
  bool hasUID() => _uID != null;

  // "numpeople" field.
  int? _numpeople;
  int get numpeople => _numpeople ?? 0;
  bool hasNumpeople() => _numpeople != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  bool hasAddress() => _address != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "createAt" field.
  DateTime? _createAt;
  DateTime? get createAt => _createAt;
  bool hasCreateAt() => _createAt != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "emailuser" field.
  String? _emailuser;
  String get emailuser => _emailuser ?? '';
  bool hasEmailuser() => _emailuser != null;

  // "entdatetime" field.
  DateTime? _entdatetime;
  DateTime? get entdatetime => _entdatetime;
  bool hasEntdatetime() => _entdatetime != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "place" field.
  String? _place;
  String get place => _place ?? '';
  bool hasPlace() => _place != null;

  // "postbyname" field.
  String? _postbyname;
  String get postbyname => _postbyname ?? '';
  bool hasPostbyname() => _postbyname != null;

  // "postbyimage" field.
  String? _postbyimage;
  String get postbyimage => _postbyimage ?? '';
  bool hasPostbyimage() => _postbyimage != null;

  // "startdatetime" field.
  DateTime? _startdatetime;
  DateTime? get startdatetime => _startdatetime;
  bool hasStartdatetime() => _startdatetime != null;

  // "updateAt" field.
  DateTime? _updateAt;
  DateTime? get updateAt => _updateAt;
  bool hasUpdateAt() => _updateAt != null;

  // "like" field.
  int? _like;
  int get like => _like ?? 0;
  bool hasLike() => _like != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "likes" field.
  int? _likes;
  int get likes => _likes ?? 0;
  bool hasLikes() => _likes != null;

  // "commentbyname" field.
  String? _commentbyname;
  String get commentbyname => _commentbyname ?? '';
  bool hasCommentbyname() => _commentbyname != null;

  // "commentbyprofile" field.
  String? _commentbyprofile;
  String get commentbyprofile => _commentbyprofile ?? '';
  bool hasCommentbyprofile() => _commentbyprofile != null;

  // "commentAt" field.
  String? _commentAt;
  String get commentAt => _commentAt ?? '';
  bool hasCommentAt() => _commentAt != null;

  // "message" field.
  String? _message;
  String get message => _message ?? '';
  bool hasMessage() => _message != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _postID = snapshotData['postID'] as String?;
    _uID = snapshotData['uID'] as String?;
    _numpeople = castToType<int>(snapshotData['numpeople']);
    _address = snapshotData['address'] as String?;
    _category = snapshotData['category'] as String?;
    _createAt = snapshotData['createAt'] as DateTime?;
    _description = snapshotData['description'] as String?;
    _emailuser = snapshotData['emailuser'] as String?;
    _entdatetime = snapshotData['entdatetime'] as DateTime?;
    _gender = snapshotData['gender'] as String?;
    _image = snapshotData['image'] as String?;
    _name = snapshotData['name'] as String?;
    _place = snapshotData['place'] as String?;
    _postbyname = snapshotData['postbyname'] as String?;
    _postbyimage = snapshotData['postbyimage'] as String?;
    _startdatetime = snapshotData['startdatetime'] as DateTime?;
    _updateAt = snapshotData['updateAt'] as DateTime?;
    _like = castToType<int>(snapshotData['like']);
    _email = snapshotData['email'] as String?;
    _likes = castToType<int>(snapshotData['likes']);
    _commentbyname = snapshotData['commentbyname'] as String?;
    _commentbyprofile = snapshotData['commentbyprofile'] as String?;
    _commentAt = snapshotData['commentAt'] as String?;
    _message = snapshotData['message'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Post');

  static Stream<PostRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostRecord.fromSnapshot(s));

  static Future<PostRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostRecord.fromSnapshot(s));

  static PostRecord fromSnapshot(DocumentSnapshot snapshot) => PostRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostRecordData({
  String? postID,
  String? uID,
  int? numpeople,
  String? address,
  String? category,
  DateTime? createAt,
  String? description,
  String? emailuser,
  DateTime? entdatetime,
  String? gender,
  String? image,
  String? name,
  String? place,
  String? postbyname,
  String? postbyimage,
  DateTime? startdatetime,
  DateTime? updateAt,
  int? like,
  String? email,
  int? likes,
  String? commentbyname,
  String? commentbyprofile,
  String? commentAt,
  String? message,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'postID': postID,
      'uID': uID,
      'numpeople': numpeople,
      'address': address,
      'category': category,
      'createAt': createAt,
      'description': description,
      'emailuser': emailuser,
      'entdatetime': entdatetime,
      'gender': gender,
      'image': image,
      'name': name,
      'place': place,
      'postbyname': postbyname,
      'postbyimage': postbyimage,
      'startdatetime': startdatetime,
      'updateAt': updateAt,
      'like': like,
      'email': email,
      'likes': likes,
      'commentbyname': commentbyname,
      'commentbyprofile': commentbyprofile,
      'commentAt': commentAt,
      'message': message,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostRecordDocumentEquality implements Equality<PostRecord> {
  const PostRecordDocumentEquality();

  @override
  bool equals(PostRecord? e1, PostRecord? e2) {
    return e1?.postID == e2?.postID &&
        e1?.uID == e2?.uID &&
        e1?.numpeople == e2?.numpeople &&
        e1?.address == e2?.address &&
        e1?.category == e2?.category &&
        e1?.createAt == e2?.createAt &&
        e1?.description == e2?.description &&
        e1?.emailuser == e2?.emailuser &&
        e1?.entdatetime == e2?.entdatetime &&
        e1?.gender == e2?.gender &&
        e1?.image == e2?.image &&
        e1?.name == e2?.name &&
        e1?.place == e2?.place &&
        e1?.postbyname == e2?.postbyname &&
        e1?.postbyimage == e2?.postbyimage &&
        e1?.startdatetime == e2?.startdatetime &&
        e1?.updateAt == e2?.updateAt &&
        e1?.like == e2?.like &&
        e1?.email == e2?.email &&
        e1?.likes == e2?.likes &&
        e1?.commentbyname == e2?.commentbyname &&
        e1?.commentbyprofile == e2?.commentbyprofile &&
        e1?.commentAt == e2?.commentAt &&
        e1?.message == e2?.message &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(PostRecord? e) => const ListEquality().hash([
        e?.postID,
        e?.uID,
        e?.numpeople,
        e?.address,
        e?.category,
        e?.createAt,
        e?.description,
        e?.emailuser,
        e?.entdatetime,
        e?.gender,
        e?.image,
        e?.name,
        e?.place,
        e?.postbyname,
        e?.postbyimage,
        e?.startdatetime,
        e?.updateAt,
        e?.like,
        e?.email,
        e?.likes,
        e?.commentbyname,
        e?.commentbyprofile,
        e?.commentAt,
        e?.message,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is PostRecord;
}
