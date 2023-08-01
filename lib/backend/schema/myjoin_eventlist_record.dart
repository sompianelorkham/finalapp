import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MyjoinEventlistRecord extends FirestoreRecord {
  MyjoinEventlistRecord._(
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

  // "postiD" field.
  String? _postiD;
  String get postiD => _postiD ?? '';
  bool hasPostiD() => _postiD != null;

  // "CreateAt" field.
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

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  bool hasStatus() => _status != null;

  void _initializeFields() {
    _ownerID = snapshotData['ownerID'] as String?;
    _ownername = snapshotData['ownername'] as String?;
    _joinID = snapshotData['joinID'] as String?;
    _postiD = snapshotData['postiD'] as String?;
    _createAt = snapshotData['CreateAt'] as DateTime?;
    _receiverUidjoin = snapshotData['receiverUidjoin'] as String?;
    _receiveremail = snapshotData['receiveremail'] as String?;
    _senderemail = snapshotData['senderemail'] as String?;
    _sendername = snapshotData['sendername'] as String?;
    _senderUid = snapshotData['senderUid'] as String?;
    _status = snapshotData['status'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('MyjoinEventlist');

  static Stream<MyjoinEventlistRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MyjoinEventlistRecord.fromSnapshot(s));

  static Future<MyjoinEventlistRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MyjoinEventlistRecord.fromSnapshot(s));

  static MyjoinEventlistRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MyjoinEventlistRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MyjoinEventlistRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MyjoinEventlistRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MyjoinEventlistRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MyjoinEventlistRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMyjoinEventlistRecordData({
  String? ownerID,
  String? ownername,
  String? joinID,
  String? postiD,
  DateTime? createAt,
  String? receiverUidjoin,
  String? receiveremail,
  String? senderemail,
  String? sendername,
  String? senderUid,
  String? status,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ownerID': ownerID,
      'ownername': ownername,
      'joinID': joinID,
      'postiD': postiD,
      'CreateAt': createAt,
      'receiverUidjoin': receiverUidjoin,
      'receiveremail': receiveremail,
      'senderemail': senderemail,
      'sendername': sendername,
      'senderUid': senderUid,
      'status': status,
    }.withoutNulls,
  );

  return firestoreData;
}

class MyjoinEventlistRecordDocumentEquality
    implements Equality<MyjoinEventlistRecord> {
  const MyjoinEventlistRecordDocumentEquality();

  @override
  bool equals(MyjoinEventlistRecord? e1, MyjoinEventlistRecord? e2) {
    return e1?.ownerID == e2?.ownerID &&
        e1?.ownername == e2?.ownername &&
        e1?.joinID == e2?.joinID &&
        e1?.postiD == e2?.postiD &&
        e1?.createAt == e2?.createAt &&
        e1?.receiverUidjoin == e2?.receiverUidjoin &&
        e1?.receiveremail == e2?.receiveremail &&
        e1?.senderemail == e2?.senderemail &&
        e1?.sendername == e2?.sendername &&
        e1?.senderUid == e2?.senderUid &&
        e1?.status == e2?.status;
  }

  @override
  int hash(MyjoinEventlistRecord? e) => const ListEquality().hash([
        e?.ownerID,
        e?.ownername,
        e?.joinID,
        e?.postiD,
        e?.createAt,
        e?.receiverUidjoin,
        e?.receiveremail,
        e?.senderemail,
        e?.sendername,
        e?.senderUid,
        e?.status
      ]);

  @override
  bool isValidKey(Object? o) => o is MyjoinEventlistRecord;
}
