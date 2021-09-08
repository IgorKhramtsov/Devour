import 'package:devour/domain/auth/reddit_account.dart';
import 'package:devour/infrastructure/data/local/data_adapter.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@preResolve
@Singleton(as: IDataAdapter)
class HiveAdapter implements IDataAdapter {
  HiveAdapter._();

  @factoryMethod
  static Future<HiveAdapter> create() async {
    final adapter = HiveAdapter._();
    await Hive.initFlutter('db');
    Hive.registerAdapter(RedditAccountAdapter());

    return adapter;
  }

  Future<Map> fetch(String boxname) async {
    final box = await Hive.openBox(boxname);
    return box.toMap();
  }

  @override
  Future<void> save<T>(String boxname, String key, T data) async {
    final box = await Hive.openBox(boxname);
    await box.put(key, data);
  }

  @override
  Future<void> remove<T>(String boxname, String key) async {
    final box = await Hive.openBox(boxname);
    return box.delete(key);
  }

  @override
  Future<T> get<T>(String boxname, String key) async {
    final box = await Hive.openBox(boxname);
    return box.get(key) as T;
  }
}
