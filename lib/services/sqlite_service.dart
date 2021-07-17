import 'dart:async';
import 'dart:io';

import 'package:botsta_app/models/chat_practicant.dart';
import 'package:botsta_app/models/chatroom.dart';
import 'package:botsta_app/models/message.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqliteService {
  static const dbName = 'botsta.db';
  Database? _db;

  Future initAsync() async {
    final dbPath = await _getDatabasePath();
    _db = await openDatabase(dbPath, version: 1);
    _createTablesAsync();
  }

  Future clearDatasAsync() async {
    await _dropTablesAsync();
    await _createTablesAsync();
  }

  static Future<String> _getDatabasePath() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, dbName);

    if (!await Directory(dirname(path)).exists()) {
      await Directory(dirname(path)).create(recursive: true);
    }

    return path;
  }

  // FutureOr<void> _onDbCreated(Database db, int version) async {
  //   _db = db;
  //   await _createTablesAsync();
  // }

  Future<Iterable<Chatroom>> getChatroomsAsync() async {
    var chatrooms = await _db!.query("chatrooms");
    return await Future.wait(chatrooms.map((e) async {
      var chatroom = Chatroom.fromMap(e);
      var latestMessage = await _getLastesMessageOfChatroomAsync(chatroom.id);
      chatroom.latestMessage = latestMessage;
      return chatroom;
      }));
  }

  Future<Message?> _getLastesMessageOfChatroomAsync(String chatroomId) async {
     var message = await _db!.query('messages', where: '"chatroomId" = ?', whereArgs: [chatroomId], limit: 1, orderBy: 'sendTime DESC');
     if (message.length > 0) {
       return await Message.fromMapAsync(message.first);
     }

     return null;
  }

  Future<Iterable<Message>> getMessagesAsync(String chatroomId) async {
    var messages = await _db!.query("messages", where: '"chatroomId" = ?', whereArgs: [chatroomId], orderBy: 'sendTime DESC');
    return Future.wait(messages.map((e) async => await Message.fromMapAsync(e)));
  }

  Future<Message?> getLatestMessageAsync(String chatroomId) async {
    var message = await _db!.query("messages", where: '"chatroomId" = ?', whereArgs: [chatroomId], orderBy: 'sendTime DESC', limit: 1);
    if (message.length > 0) {
      Message.fromMapAsync(message.first);
    }
    return null;
  }

  Future<ChatPracticant?> getChatPracticantAsync(String chatPracticantId) async {
    var chatPracticant = await _db!.query("chatPracticants", where: '"id" = ?', whereArgs: [chatPracticantId], limit: 1);
    if (chatPracticant.length > 0) {
      return ChatPracticant.fromMap(chatPracticant.first);
    }

    return null;
  }

  Future<Message?> getMessageAsync(String messageId) async {
    var message = await _db!.query("messages", where: '"id" = ?', whereArgs: [messageId]);
    if (message.length > 0) {
      return await Message.fromMapAsync(message.first);
    }

    return null;
  }

  Future<int?> addMessageToDbAsync(Message message) async {
    await addChatPracticantToDbAsync(message.sender);

    var res = await _db!.query('messages', where: '"id" = ?', whereArgs: [message.id]);
    if (!res.any((_) => true)) {
      return await _db!.insert('messages', message.toMap());
    }

    return null;
  }

  Future<int?> addChatroomToDbAsync(Chatroom chatroom) async {
    var res = await _db!.query('chatrooms', where: '"id" = ?', whereArgs: [chatroom.id]);
    if (!res.any((_) => true)) {
      return await _db!.insert('chatrooms', chatroom.toMap());
    }
    return null;
  }

  Future<int?> addChatPracticantToDbAsync(ChatPracticant chatPracticant) async {
    var res = await _db!.query('chatPracticants', where: '"id" = ?', whereArgs: [chatPracticant.id]);
    if (!res.any((_) => true)) {
      return await _db!.insert('chatPracticants', chatPracticant.toMap());
    }
    return null;
  }

  Future _dropTablesAsync() async {
    await _db!.delete('chatPracticants');
    await _db!.delete('chatrooms');
    await _db!.delete('messages');
  }

  Future _createTablesAsync() async {
    await _db!.execute('''
      CREATE TABLE IF NOT EXISTS chatPracticants
      (
        id TEXT PRIMARY KEY,
        name TEXT NOT NULL,
        isBot BIT NOT NULL
      )
    ''');

    await _db!.execute('''
      CREATE TABLE IF NOT EXISTS chatrooms
      (
        id TEXT PRIMARY KEY,
        name TEXT NOT NULL,
        isGroup BIT NOT NULL
      )
    ''');

    await _db!.execute('''
      CREATE TABLE IF NOT EXISTS messages 
      (
        id TEXT PRIMARY KEY,
        senderId TEXT NOT NULL,
        chatroomId TEXT NOT NULL,
        senderIsMe BIT NOT NULL,
        sendTime INTEGER NOT NULL,
        message TEXT NOT NULL,
        FOREIGN KEY (senderId) REFERENCES chatPracticant(id),
        FOREIGN KEY (chatroomId) REFERENCES chatroom(id)
      )
    ''');
  }
}