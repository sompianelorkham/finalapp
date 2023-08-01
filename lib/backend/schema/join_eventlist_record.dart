import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JoinEventlistRecord extends FirestoreRecord {
  JoinEventlistRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ownerID" field.
  String? _ownerID;
  String get ownerID => _ownerID ?? '';
  bool hasOwnerID() => _ownerID != null;

  // "ownername" field.
  String? _ownername;
  String get ownername => _ownername ?? '';
  bool hasOwnername() => _ownername != null;

  // "joinID" field.
  String? _joinID;
  String get joinID => _joinID ?? '';
  bool hasJoinID() => _joinID != null;

  // "postID" field.
  String? _postID;
  String get postID => _postID ?? '';
  bool hasPostID() => _postID != null;

  // "createAt" field.
  DateTime? _createAt;
  DateTime? get createAt => _createAt;
  bool hasCreateAt() => _createAt != null;

  // "receiverUidjoin" field.
  String? _receiverUidjoin;
  String get receiverUidjoin => _receiverUidjoin ?? '';
  bool hasReceiverUidjoin() => _receiverUidjoin != null;

  // "receiveremail" field.
  String? _receiveremail;
  String get receiveremail => _receiveremail ?? '';
  bool hasReceiveremail() => _receiveremail != null;

  // "requestpostID" field.
  String? _requestpostID;
  String get requestpostID => _requestpostID ?? '';
  bool hasRequestpostID() => _requestpostID != null;

  // "senderemail" field.
  String? _senderemail;
  String get senderemail => _senderemail ?? '';
  bool hasSenderemail() => _senderemail != null;

  // "sendername" field.
  String? _sendername;
  String get sendername => _sendername ?? '';
  bool hasSendername() => _sendername != null;

  // "senderUid" field.
  String? _senderUid;
  String get senderUid => _senderUid ?? '';
  bool hasSenderUid() => _senderUid != null;

  // "statue" field.
  String? _statue;
  String get statue => _statue ?? '';
  bool hasStatue() => _statue != null;

  void _initializeFields() {
    _ownerID = snapshotData['ownerID'] as String?;
    _ownername = snapshotData['ownername'] as String?;
    _joinID = snapshotData['joinID'] as String?;
    _postID = snapshotData['postID'] as String?;
    _createAt = snapshotData['createAt'] as DateTime?;
    _receiverUidjoin = snapshotData['receiverUidjoin'] as String?;
    _receiveremail = snapshotData['receiveremail'] as String?;
    _requestpostID = snapshotData['requestpostID'] as String?;
    _senderemail = snapshotData['senderemail'] as String?;
    _sendername = snapshotData['sendername'] as String?;
    _senderUid = snapshotData['senderUid'] as String?;
    _statue = snapshotData['statue'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('JoinEventlist');

  static Stream<JoinEventlistRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JoinEventlistRecord.fromSnapshot(s));

  static Future<JoinEventlistRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JoinEventlistRecord.fromSnapshot(s));

  static JoinEventlistRecord fromSnapshot(DocumentSnapshot snapshot) =>
      JoinEventlistRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JoinEventlistRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JoinEventlistRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JoinEventlistRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JoinEventlistRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJoinEventlistRecordData({
  String? ownerID,
  String? ownername,
  String? joinID,
  String? postID,
  DateTime? createAt,
  String? receiverUidjoin,
  String? receiveremail,
  String? requestpostID,
  String? senderemail,
  String? sendername,
  String? senderUid,
  String? statue,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ownerID': ownerID,
      'ownername': ownername,
      'joinID': joinID,
      'postID': postID,
      'createAt': createAt,
      'receiverUidjoin': receiverUidjoin,
      'receiveremail': receiveremail,
      'requestpostID': requestpostID,
      'senderemail': senderemail,
      'sendername': sendername,
      'senderUid': senderUid,
      'statue': statue,
    }.withoutNulls,
  );

  return firestoreData;
}

class JoinEventlistRecordDocumentEquality
    implements Equality<JoinEventlistRecord> {
  const JoinEventlistRecordDocumentEquality();

  @override
  bool equals(JoinEventlistRecord? e1, JoinEventlistRecord? e2) {
    return e1?.ownerID == e2?.ownerID &&
        e1?.ownername == e2?.ownername &&
        e1?.joinID == e2?.joinID &&
        e1?.postID == e2?.postID &&
        e1?.createAt == e2?.createAt &&
        e1?.receiverUidjoin == e2?.receiverUidjoin &&
        e1?.receiveremail == e2?.receiveremail &&
        e1?.requestpostID == e2?.requestpostID &&
        e1?.senderemail == e2?.senderemail &&
        e1?.sendername == e2?.sendername &&
        e1?.senderUid == e2?.senderUid &&
        e1?.statue == e2?.statue;
  }

  @override
  int hash(JoinEventlistRecord? e) => const ListEquality().hash([
        e?.ownerID,
        e?.ownername,
        e?.joinID,
        e?.postID,
        e?.createAt,
        e?.receiverUidjoin,
        e?.receiveremail,
        e?.requestpostID,
        e?.senderemail,
        e?.sendername,
        e?.senderUid,
        e?.statue
      ]);

  @override
  bool isValidKey(Object? o) => o is JoinEventlistRecord;
}
