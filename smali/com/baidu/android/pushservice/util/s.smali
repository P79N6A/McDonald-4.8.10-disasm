.class public Lcom/baidu/android/pushservice/util/s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/android/pushservice/util/s$1;,
        Lcom/baidu/android/pushservice/util/s$c;,
        Lcom/baidu/android/pushservice/util/s$b;,
        Lcom/baidu/android/pushservice/util/s$a;
    }
.end annotation


# static fields
.field private static a:Lcom/baidu/android/pushservice/util/s$b;

.field private static b:Lcom/baidu/android/pushservice/util/s$a;

.field private static c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/android/pushservice/util/s;->a:Lcom/baidu/android/pushservice/util/s$b;

    sput-object v0, Lcom/baidu/android/pushservice/util/s;->b:Lcom/baidu/android/pushservice/util/s$a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/android/pushservice/util/s;->c:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/baidu/android/pushservice/util/r;)J
    .locals 24

    const-class v19, Lcom/baidu/android/pushservice/util/s;

    monitor-enter v19

    :try_start_0
    sget-object v22, Lcom/baidu/android/pushservice/util/s;->c:Ljava/lang/Object;

    monitor-enter v22
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/baidu/android/pushservice/util/s;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    const-wide/16 v2, -0x1

    monitor-exit v22
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v19

    return-wide v2

    :cond_0
    :try_start_2
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    sget-object v3, Lcom/baidu/android/pushservice/util/s$c;->b:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/baidu/android/pushservice/util/r;->a:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v3, Lcom/baidu/android/pushservice/util/s$c;->c:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/baidu/android/pushservice/util/r;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v3, Lcom/baidu/android/pushservice/util/s$c;->d:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/baidu/android/pushservice/util/r;->c:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/baidu/android/pushservice/util/s$c;->e:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/baidu/android/pushservice/util/r;->d:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/baidu/android/pushservice/util/s$c;->g:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/baidu/android/pushservice/util/r;->f:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/baidu/android/pushservice/util/s$c;->f:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/baidu/android/pushservice/util/r;->e:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/baidu/android/pushservice/util/s$c;->h:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/baidu/android/pushservice/util/r;->g:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/baidu/android/pushservice/util/s$c;->i:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/baidu/android/pushservice/util/r;->h:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/baidu/android/pushservice/util/s$c;->j:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/baidu/android/pushservice/util/r;->i:Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v20, -0x1

    const/16 v18, 0x0

    :try_start_3
    const-string v3, "PushShareInfo"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    instance-of v10, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v10, :cond_2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_4

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_4

    const-string v5, "PushShareInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/baidu/android/pushservice/util/s$c;->a:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "=1"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    instance-of v3, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_3

    move-object/from16 v0, v23

    invoke-virtual {v2, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v3

    :goto_2
    int-to-long v6, v3

    :try_start_5
    const-string v3, "PushInfoDataBase"

    const-string v5, "pushadvertiseinfo:  update into database"

    invoke-static {v3, v5}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pushadvertiseinfo:  update into database"

    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lcom/baidu/android/pushservice/util/v;->b(Ljava/lang/String;Landroid/content/Context;)V

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updatePushInfo pushinfo:  insert into database,  clientinfo = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/baidu/android/pushservice/util/r;->a()Lorg/json/JSONObject;

    move-result-object v3

    instance-of v8, v3, Lorg/json/JSONObject;

    if-nez v8, :cond_7

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lcom/baidu/android/pushservice/util/v;->b(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v4, :cond_1

    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-wide v2, v6

    :goto_5
    monitor-exit v22

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v22
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit v19

    throw v2

    :cond_2
    :try_start_8
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v10, v0

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v4

    goto/16 :goto_1

    :cond_3
    :try_start_9
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    move-object/from16 v0, v23

    invoke-static {v3, v5, v0, v6, v7}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :cond_4
    const-string v5, "PushShareInfo"

    const/4 v6, 0x0

    instance-of v3, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_6

    move-object/from16 v0, v23

    invoke-virtual {v2, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result-wide v6

    :goto_6
    :try_start_a
    const-string v3, "PushInfoDataBase"

    const-string v5, "pushadvertiseinfo:  insert into database"

    invoke-static {v3, v5}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pushadvertiseinfo:  insert into database"

    move-object/from16 v0, p0

    invoke-static {v3, v0}, Lcom/baidu/android/pushservice/util/v;->b(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_3

    :catch_0
    move-exception v3

    :goto_7
    :try_start_b
    const-string v5, "PushInfoDataBase"

    invoke-static {v5, v3}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v4, :cond_5

    :try_start_c
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-wide v2, v6

    goto :goto_5

    :cond_6
    :try_start_d
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    move-object/from16 v0, v23

    invoke-static {v3, v5, v6, v0}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    move-result-wide v6

    goto :goto_6

    :cond_7
    :try_start_e
    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-result-object v3

    goto/16 :goto_4

    :catchall_2
    move-exception v3

    move-object/from16 v4, v18

    :goto_8
    if-eqz v4, :cond_8

    :try_start_f
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :catchall_3
    move-exception v3

    goto :goto_8

    :catch_1
    move-exception v3

    move-object/from16 v4, v18

    move-wide/from16 v6, v20

    goto :goto_7

    :catch_2
    move-exception v3

    move-wide/from16 v6, v20

    goto :goto_7

    :cond_a
    move-wide v2, v6

    goto/16 :goto_5
.end method

.method public static a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/s;->h(Landroid/content/Context;)Lcom/baidu/android/pushservice/util/s$b;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/s$b;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "PushInfoDataBase"

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;J)V
    .locals 21

    const-class v19, Lcom/baidu/android/pushservice/util/s;

    monitor-enter v19

    :try_start_0
    sget-object v20, Lcom/baidu/android/pushservice/util/s;->c:Ljava/lang/Object;

    monitor-enter v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/baidu/android/pushservice/util/s;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v19

    return-void

    :cond_0
    const/16 v18, 0x0

    :try_start_2
    const-string v3, "PushShareInfo"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    instance-of v10, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v10, :cond_3

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_6

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_6

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    sget-object v3, Lcom/baidu/android/pushservice/util/s$c;->b:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "PushShareInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/baidu/android/pushservice/util/s$c;->a:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "=1"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    instance-of v3, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_4

    invoke-virtual {v2, v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    if-eqz v4, :cond_1

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    :goto_3
    monitor-exit v20

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit v19

    throw v2

    :cond_3
    :try_start_6
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v10, v0

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v4

    goto :goto_1

    :cond_4
    :try_start_7
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-static {v3, v6, v5, v7, v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v3

    :goto_4
    :try_start_8
    const-string v5, "PushInfoDataBase"

    invoke-static {v5, v3}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v4, :cond_5

    :try_start_9
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    :cond_6
    :try_start_a
    new-instance v3, Lcom/baidu/android/pushservice/util/r;

    invoke-direct {v3}, Lcom/baidu/android/pushservice/util/r;-><init>()V

    move-wide/from16 v0, p1

    iput-wide v0, v3, Lcom/baidu/android/pushservice/util/r;->a:J

    const-wide/16 v6, 0x0

    iput-wide v6, v3, Lcom/baidu/android/pushservice/util/r;->b:J

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->c:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->d:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->f:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->e:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->g:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->h:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/baidu/android/pushservice/util/s;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/util/r;)J
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v3

    :goto_5
    if-eqz v4, :cond_7

    :try_start_b
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_3
    move-exception v3

    move-object/from16 v4, v18

    goto :goto_5

    :catch_1
    move-exception v3

    move-object/from16 v4, v18

    goto :goto_4
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 21

    const-class v19, Lcom/baidu/android/pushservice/util/s;

    monitor-enter v19

    :try_start_0
    sget-object v20, Lcom/baidu/android/pushservice/util/s;->c:Ljava/lang/Object;

    monitor-enter v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/baidu/android/pushservice/util/s;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v19

    return-void

    :cond_0
    const/16 v18, 0x0

    :try_start_2
    const-string v3, "PushShareInfo"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    instance-of v10, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v10, :cond_3

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_6

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_6

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    sget-object v3, Lcom/baidu/android/pushservice/util/s$c;->d:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v5, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "PushShareInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/baidu/android/pushservice/util/s$c;->a:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "=1"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    instance-of v3, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_4

    invoke-virtual {v2, v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    if-eqz v4, :cond_1

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    :goto_3
    monitor-exit v20

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit v19

    throw v2

    :cond_3
    :try_start_6
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v10, v0

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v4

    goto :goto_1

    :cond_4
    :try_start_7
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-static {v3, v6, v5, v7, v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v3

    :goto_4
    :try_start_8
    const-string v5, "PushInfoDataBase"

    invoke-static {v5, v3}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v4, :cond_5

    :try_start_9
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    :cond_6
    :try_start_a
    new-instance v3, Lcom/baidu/android/pushservice/util/r;

    invoke-direct {v3}, Lcom/baidu/android/pushservice/util/r;-><init>()V

    const-wide/16 v6, 0x0

    iput-wide v6, v3, Lcom/baidu/android/pushservice/util/r;->a:J

    const-wide/16 v6, 0x0

    iput-wide v6, v3, Lcom/baidu/android/pushservice/util/r;->b:J

    move-object/from16 v0, p1

    iput-object v0, v3, Lcom/baidu/android/pushservice/util/r;->c:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->d:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->f:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->e:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->g:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->h:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/baidu/android/pushservice/util/s;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/util/r;)J
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v3

    :goto_5
    if-eqz v4, :cond_7

    :try_start_b
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_3
    move-exception v3

    move-object/from16 v4, v18

    goto :goto_5

    :catch_1
    move-exception v3

    move-object/from16 v4, v18

    goto :goto_4
.end method

.method public static b(Landroid/content/Context;)I
    .locals 20

    sget-object v19, Lcom/baidu/android/pushservice/util/s;->c:Ljava/lang/Object;

    monitor-enter v19

    const/16 v18, 0x0

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/baidu/android/pushservice/util/s;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v1

    :cond_0
    const/16 v17, 0x0

    :try_start_1
    const-string v2, "PushShareInfo"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    instance-of v9, v1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v9, :cond_2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    :goto_1
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/baidu/android/pushservice/util/s$c;->b:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v2

    :goto_2
    const/4 v4, 0x0

    if-eqz v4, :cond_1

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v1, v2

    :goto_3
    monitor-exit v19

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_2
    :try_start_4
    move-object v0, v1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v9, v0

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    invoke-static/range {v9 .. v16}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    goto :goto_1

    :catch_0
    move-exception v2

    move-object/from16 v3, v17

    :goto_4
    :try_start_5
    const-string v4, "PushInfoDataBase"

    invoke-static {v4, v2}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v2, 0x0

    if-eqz v2, :cond_3

    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move/from16 v1, v18

    goto :goto_3

    :catchall_1
    move-exception v2

    move-object/from16 v3, v17

    :goto_5
    const/4 v4, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v2

    goto :goto_5

    :catch_1
    move-exception v2

    goto :goto_4

    :cond_6
    move/from16 v1, v18

    goto :goto_3

    :cond_7
    move v1, v2

    goto :goto_3

    :cond_8
    move/from16 v2, v18

    goto :goto_2
.end method

.method public static declared-synchronized b(Landroid/content/Context;J)V
    .locals 21

    const-class v19, Lcom/baidu/android/pushservice/util/s;

    monitor-enter v19

    :try_start_0
    sget-object v20, Lcom/baidu/android/pushservice/util/s;->c:Ljava/lang/Object;

    monitor-enter v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/baidu/android/pushservice/util/s;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v19

    return-void

    :cond_0
    const/16 v18, 0x0

    :try_start_2
    const-string v3, "PushShareInfo"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    instance-of v10, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v10, :cond_3

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_6

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_6

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    sget-object v3, Lcom/baidu/android/pushservice/util/s$c;->c:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v6, "PushShareInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/baidu/android/pushservice/util/s$c;->a:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "=1"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    instance-of v3, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_4

    invoke-virtual {v2, v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    if-eqz v4, :cond_1

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    :goto_3
    monitor-exit v20

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit v19

    throw v2

    :cond_3
    :try_start_6
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v10, v0

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v4

    goto :goto_1

    :cond_4
    :try_start_7
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-static {v3, v6, v5, v7, v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v3

    :goto_4
    :try_start_8
    const-string v5, "PushInfoDataBase"

    invoke-static {v5, v3}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v4, :cond_5

    :try_start_9
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    :cond_6
    :try_start_a
    new-instance v3, Lcom/baidu/android/pushservice/util/r;

    invoke-direct {v3}, Lcom/baidu/android/pushservice/util/r;-><init>()V

    const-wide/16 v6, 0x0

    iput-wide v6, v3, Lcom/baidu/android/pushservice/util/r;->a:J

    move-wide/from16 v0, p1

    iput-wide v0, v3, Lcom/baidu/android/pushservice/util/r;->b:J

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->c:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->d:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->f:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->e:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->g:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->h:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/baidu/android/pushservice/util/s;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/util/r;)J
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v3

    :goto_5
    if-eqz v4, :cond_7

    :try_start_b
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_3
    move-exception v3

    move-object/from16 v4, v18

    goto :goto_5

    :catch_1
    move-exception v3

    move-object/from16 v4, v18

    goto :goto_4
.end method

.method public static declared-synchronized b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 21

    const-class v19, Lcom/baidu/android/pushservice/util/s;

    monitor-enter v19

    :try_start_0
    sget-object v20, Lcom/baidu/android/pushservice/util/s;->c:Ljava/lang/Object;

    monitor-enter v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/baidu/android/pushservice/util/s;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/16 v18, 0x0

    if-nez v2, :cond_0

    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v19

    return-void

    :cond_0
    :try_start_2
    const-string v3, "PushShareInfo"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    instance-of v10, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v10, :cond_3

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_6

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_6

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    sget-object v3, Lcom/baidu/android/pushservice/util/s$c;->e:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v5, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "PushShareInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/baidu/android/pushservice/util/s$c;->a:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "=1"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    instance-of v3, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_4

    invoke-virtual {v2, v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    if-eqz v4, :cond_1

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    :goto_3
    monitor-exit v20

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit v19

    throw v2

    :cond_3
    :try_start_6
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v10, v0

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v4

    goto :goto_1

    :cond_4
    :try_start_7
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-static {v3, v6, v5, v7, v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v3

    :goto_4
    :try_start_8
    const-string v5, "PushInfoDataBase"

    invoke-static {v5, v3}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v4, :cond_5

    :try_start_9
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    :cond_6
    :try_start_a
    new-instance v3, Lcom/baidu/android/pushservice/util/r;

    invoke-direct {v3}, Lcom/baidu/android/pushservice/util/r;-><init>()V

    const-wide/16 v6, 0x0

    iput-wide v6, v3, Lcom/baidu/android/pushservice/util/r;->a:J

    const-wide/16 v6, 0x0

    iput-wide v6, v3, Lcom/baidu/android/pushservice/util/r;->b:J

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->c:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v0, v3, Lcom/baidu/android/pushservice/util/r;->d:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->f:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->e:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->g:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->h:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/baidu/android/pushservice/util/s;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/util/r;)J
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v3

    :goto_5
    if-eqz v4, :cond_7

    :try_start_b
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_3
    move-exception v3

    move-object/from16 v4, v18

    goto :goto_5

    :catch_1
    move-exception v3

    move-object/from16 v4, v18

    goto :goto_4
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 20

    sget-object v19, Lcom/baidu/android/pushservice/util/s;->c:Ljava/lang/Object;

    monitor-enter v19

    const/16 v18, 0x0

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/baidu/android/pushservice/util/s;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v1

    :cond_0
    const/16 v17, 0x0

    :try_start_1
    const-string v2, "PushShareInfo"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    instance-of v9, v1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v9, :cond_2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    :goto_1
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/baidu/android/pushservice/util/s$c;->d:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    :goto_2
    const/4 v4, 0x0

    if-eqz v4, :cond_1

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v1, v2

    :goto_3
    monitor-exit v19

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_2
    :try_start_4
    move-object v0, v1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v9, v0

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    invoke-static/range {v9 .. v16}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    goto :goto_1

    :catch_0
    move-exception v2

    move-object/from16 v3, v17

    :goto_4
    :try_start_5
    const-string v4, "PushInfoDataBase"

    invoke-static {v4, v2}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v2, 0x0

    if-eqz v2, :cond_3

    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object/from16 v1, v18

    goto :goto_3

    :catchall_1
    move-exception v2

    move-object/from16 v3, v17

    :goto_5
    const/4 v4, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v2

    goto :goto_5

    :catch_1
    move-exception v2

    goto :goto_4

    :cond_6
    move-object/from16 v1, v18

    goto :goto_3

    :cond_7
    move-object v1, v2

    goto :goto_3

    :cond_8
    move-object/from16 v2, v18

    goto :goto_2
.end method

.method public static declared-synchronized c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 21

    const-class v19, Lcom/baidu/android/pushservice/util/s;

    monitor-enter v19

    :try_start_0
    sget-object v20, Lcom/baidu/android/pushservice/util/s;->c:Ljava/lang/Object;

    monitor-enter v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/baidu/android/pushservice/util/s;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/16 v18, 0x0

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v19

    return-void

    :cond_1
    :try_start_2
    const-string v3, "PushShareInfo"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    instance-of v10, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v10, :cond_4

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_7

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_7

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    sget-object v3, Lcom/baidu/android/pushservice/util/s$c;->f:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v5, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "PushShareInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/baidu/android/pushservice/util/s$c;->a:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "=1"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    instance-of v3, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_5

    invoke-virtual {v2, v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    if-eqz v4, :cond_2

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    :goto_3
    monitor-exit v20

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit v19

    throw v2

    :cond_4
    :try_start_6
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v10, v0

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v4

    goto :goto_1

    :cond_5
    :try_start_7
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-static {v3, v6, v5, v7, v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v3

    :goto_4
    :try_start_8
    const-string v5, "PushInfoDataBase"

    invoke-static {v5, v3}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v4, :cond_6

    :try_start_9
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    :cond_7
    :try_start_a
    new-instance v3, Lcom/baidu/android/pushservice/util/r;

    invoke-direct {v3}, Lcom/baidu/android/pushservice/util/r;-><init>()V

    const-wide/16 v6, 0x0

    iput-wide v6, v3, Lcom/baidu/android/pushservice/util/r;->a:J

    const-wide/16 v6, 0x0

    iput-wide v6, v3, Lcom/baidu/android/pushservice/util/r;->b:J

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->c:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->d:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->f:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v0, v3, Lcom/baidu/android/pushservice/util/r;->e:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->g:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->h:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/baidu/android/pushservice/util/s;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/util/r;)J
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v3

    :goto_5
    if-eqz v4, :cond_8

    :try_start_b
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_3
    move-exception v3

    move-object/from16 v4, v18

    goto :goto_5

    :catch_1
    move-exception v3

    move-object/from16 v4, v18

    goto :goto_4
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 20

    sget-object v19, Lcom/baidu/android/pushservice/util/s;->c:Ljava/lang/Object;

    monitor-enter v19

    const/16 v18, 0x0

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/baidu/android/pushservice/util/s;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v1

    :cond_0
    const/16 v17, 0x0

    :try_start_1
    const-string v2, "PushShareInfo"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    instance-of v9, v1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v9, :cond_2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    :goto_1
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/baidu/android/pushservice/util/s$c;->f:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    :goto_2
    const/4 v4, 0x0

    if-eqz v4, :cond_1

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v1, v2

    :goto_3
    monitor-exit v19

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_2
    :try_start_4
    move-object v0, v1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v9, v0

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    invoke-static/range {v9 .. v16}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    goto :goto_1

    :catch_0
    move-exception v2

    move-object/from16 v3, v17

    :goto_4
    :try_start_5
    const-string v4, "PushInfoDataBase"

    invoke-static {v4, v2}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v2, 0x0

    if-eqz v2, :cond_3

    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object/from16 v1, v18

    goto :goto_3

    :catchall_1
    move-exception v2

    move-object/from16 v3, v17

    :goto_5
    const/4 v4, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v2

    goto :goto_5

    :catch_1
    move-exception v2

    goto :goto_4

    :cond_6
    move-object/from16 v1, v18

    goto :goto_3

    :cond_7
    move-object v1, v2

    goto :goto_3

    :cond_8
    move-object/from16 v2, v18

    goto :goto_2
.end method

.method public static declared-synchronized d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 21

    const-class v19, Lcom/baidu/android/pushservice/util/s;

    monitor-enter v19

    :try_start_0
    sget-object v20, Lcom/baidu/android/pushservice/util/s;->c:Ljava/lang/Object;

    monitor-enter v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/baidu/android/pushservice/util/s;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/16 v18, 0x0

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v19

    return-void

    :cond_1
    :try_start_2
    const-string v3, "PushShareInfo"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    instance-of v10, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v10, :cond_4

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_7

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_7

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    sget-object v3, Lcom/baidu/android/pushservice/util/s$c;->g:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v5, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "PushShareInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/baidu/android/pushservice/util/s$c;->a:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "=1"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    instance-of v3, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_5

    invoke-virtual {v2, v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    if-eqz v4, :cond_2

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    :goto_3
    monitor-exit v20

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit v19

    throw v2

    :cond_4
    :try_start_6
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v10, v0

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v4

    goto :goto_1

    :cond_5
    :try_start_7
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-static {v3, v6, v5, v7, v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v3

    :goto_4
    :try_start_8
    const-string v5, "PushInfoDataBase"

    invoke-static {v5, v3}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v4, :cond_6

    :try_start_9
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    :cond_7
    :try_start_a
    new-instance v3, Lcom/baidu/android/pushservice/util/r;

    invoke-direct {v3}, Lcom/baidu/android/pushservice/util/r;-><init>()V

    const-wide/16 v6, 0x0

    iput-wide v6, v3, Lcom/baidu/android/pushservice/util/r;->a:J

    const-wide/16 v6, 0x0

    iput-wide v6, v3, Lcom/baidu/android/pushservice/util/r;->b:J

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->c:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->d:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v0, v3, Lcom/baidu/android/pushservice/util/r;->f:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->e:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->g:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->h:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/baidu/android/pushservice/util/s;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/util/r;)J
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v3

    :goto_5
    if-eqz v4, :cond_8

    :try_start_b
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_3
    move-exception v3

    move-object/from16 v4, v18

    goto :goto_5

    :catch_1
    move-exception v3

    move-object/from16 v4, v18

    goto :goto_4
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 20

    sget-object v19, Lcom/baidu/android/pushservice/util/s;->c:Ljava/lang/Object;

    monitor-enter v19

    const/16 v18, 0x0

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/baidu/android/pushservice/util/s;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v1

    :cond_0
    const/16 v17, 0x0

    :try_start_1
    const-string v2, "PushShareInfo"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    instance-of v9, v1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v9, :cond_2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    :goto_1
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/baidu/android/pushservice/util/s$c;->g:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    :goto_2
    const/4 v4, 0x0

    if-eqz v4, :cond_1

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v1, v2

    :goto_3
    monitor-exit v19

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_2
    :try_start_4
    move-object v0, v1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v9, v0

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    invoke-static/range {v9 .. v16}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    goto :goto_1

    :catch_0
    move-exception v2

    move-object/from16 v3, v17

    :goto_4
    :try_start_5
    const-string v4, "PushInfoDataBase"

    invoke-static {v4, v2}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v2, 0x0

    if-eqz v2, :cond_3

    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object/from16 v1, v18

    goto :goto_3

    :catchall_1
    move-exception v2

    move-object/from16 v3, v17

    :goto_5
    const/4 v4, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v2

    goto :goto_5

    :catch_1
    move-exception v2

    goto :goto_4

    :cond_6
    move-object/from16 v1, v18

    goto :goto_3

    :cond_7
    move-object v1, v2

    goto :goto_3

    :cond_8
    move-object/from16 v2, v18

    goto :goto_2
.end method

.method public static declared-synchronized e(Landroid/content/Context;Ljava/lang/String;)V
    .locals 21

    const-class v19, Lcom/baidu/android/pushservice/util/s;

    monitor-enter v19

    :try_start_0
    sget-object v20, Lcom/baidu/android/pushservice/util/s;->c:Ljava/lang/Object;

    monitor-enter v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/baidu/android/pushservice/util/s;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/16 v18, 0x0

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v19

    return-void

    :cond_1
    :try_start_2
    const-string v3, "PushShareInfo"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    instance-of v10, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v10, :cond_4

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_7

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_7

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    sget-object v3, Lcom/baidu/android/pushservice/util/s$c;->h:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v5, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "PushShareInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/baidu/android/pushservice/util/s$c;->a:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "=1"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    instance-of v3, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_5

    invoke-virtual {v2, v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    if-eqz v4, :cond_2

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    :goto_3
    monitor-exit v20

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit v19

    throw v2

    :cond_4
    :try_start_6
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v10, v0

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v4

    goto :goto_1

    :cond_5
    :try_start_7
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-static {v3, v6, v5, v7, v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v3

    :goto_4
    :try_start_8
    const-string v5, "PushInfoDataBase"

    invoke-static {v5, v3}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v4, :cond_6

    :try_start_9
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    :cond_7
    :try_start_a
    new-instance v3, Lcom/baidu/android/pushservice/util/r;

    invoke-direct {v3}, Lcom/baidu/android/pushservice/util/r;-><init>()V

    const-wide/16 v6, 0x0

    iput-wide v6, v3, Lcom/baidu/android/pushservice/util/r;->a:J

    const-wide/16 v6, 0x0

    iput-wide v6, v3, Lcom/baidu/android/pushservice/util/r;->b:J

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->c:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->d:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->f:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->e:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v0, v3, Lcom/baidu/android/pushservice/util/r;->g:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->h:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/baidu/android/pushservice/util/s;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/util/r;)J
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v3

    :goto_5
    if-eqz v4, :cond_8

    :try_start_b
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_3
    move-exception v3

    move-object/from16 v4, v18

    goto :goto_5

    :catch_1
    move-exception v3

    move-object/from16 v4, v18

    goto :goto_4
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 20

    sget-object v19, Lcom/baidu/android/pushservice/util/s;->c:Ljava/lang/Object;

    monitor-enter v19

    const/16 v18, 0x0

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/baidu/android/pushservice/util/s;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v1

    :cond_0
    const/16 v17, 0x0

    :try_start_1
    const-string v2, "PushShareInfo"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    instance-of v9, v1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v9, :cond_2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    :goto_1
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/baidu/android/pushservice/util/s$c;->h:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    :goto_2
    const/4 v4, 0x0

    if-eqz v4, :cond_1

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v1, v2

    :goto_3
    monitor-exit v19

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_2
    :try_start_4
    move-object v0, v1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v9, v0

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    invoke-static/range {v9 .. v16}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    goto :goto_1

    :catch_0
    move-exception v2

    move-object/from16 v3, v17

    :goto_4
    :try_start_5
    const-string v4, "PushInfoDataBase"

    invoke-static {v4, v2}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v2, 0x0

    if-eqz v2, :cond_3

    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object/from16 v1, v18

    goto :goto_3

    :catchall_1
    move-exception v2

    move-object/from16 v3, v17

    :goto_5
    const/4 v4, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v2

    goto :goto_5

    :catch_1
    move-exception v2

    goto :goto_4

    :cond_6
    move-object/from16 v1, v18

    goto :goto_3

    :cond_7
    move-object v1, v2

    goto :goto_3

    :cond_8
    move-object/from16 v2, v18

    goto :goto_2
.end method

.method public static declared-synchronized f(Landroid/content/Context;Ljava/lang/String;)V
    .locals 21

    const-class v19, Lcom/baidu/android/pushservice/util/s;

    monitor-enter v19

    :try_start_0
    sget-object v20, Lcom/baidu/android/pushservice/util/s;->c:Ljava/lang/Object;

    monitor-enter v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/baidu/android/pushservice/util/s;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/16 v18, 0x0

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v19

    return-void

    :cond_1
    :try_start_2
    const-string v3, "PushShareInfo"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    instance-of v10, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v10, :cond_4

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_7

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_7

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    sget-object v3, Lcom/baidu/android/pushservice/util/s$c;->i:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v5, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "PushShareInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/baidu/android/pushservice/util/s$c;->a:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "=1"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    instance-of v3, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_5

    invoke-virtual {v2, v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    if-eqz v4, :cond_2

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    :goto_3
    monitor-exit v20

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit v19

    throw v2

    :cond_4
    :try_start_6
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v10, v0

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v4

    goto :goto_1

    :cond_5
    :try_start_7
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-static {v3, v6, v5, v7, v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v3

    :goto_4
    :try_start_8
    const-string v5, "PushInfoDataBase"

    invoke-static {v5, v3}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v4, :cond_6

    :try_start_9
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    :cond_7
    :try_start_a
    new-instance v3, Lcom/baidu/android/pushservice/util/r;

    invoke-direct {v3}, Lcom/baidu/android/pushservice/util/r;-><init>()V

    const-wide/16 v6, 0x0

    iput-wide v6, v3, Lcom/baidu/android/pushservice/util/r;->a:J

    const-wide/16 v6, 0x0

    iput-wide v6, v3, Lcom/baidu/android/pushservice/util/r;->b:J

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->c:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->d:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->f:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->e:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->g:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v0, v3, Lcom/baidu/android/pushservice/util/r;->h:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/baidu/android/pushservice/util/s;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/util/r;)J
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v3

    :goto_5
    if-eqz v4, :cond_8

    :try_start_b
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_3
    move-exception v3

    move-object/from16 v4, v18

    goto :goto_5

    :catch_1
    move-exception v3

    move-object/from16 v4, v18

    goto :goto_4
.end method

.method public static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 20

    sget-object v19, Lcom/baidu/android/pushservice/util/s;->c:Ljava/lang/Object;

    monitor-enter v19

    const/16 v18, 0x0

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/baidu/android/pushservice/util/s;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v1

    :cond_0
    const/16 v17, 0x0

    :try_start_1
    const-string v2, "PushShareInfo"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    instance-of v9, v1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v9, :cond_2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    :goto_1
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcom/baidu/android/pushservice/util/s$c;->i:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v2

    :goto_2
    const/4 v4, 0x0

    if-eqz v4, :cond_1

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v1, v2

    :goto_3
    monitor-exit v19

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_2
    :try_start_4
    move-object v0, v1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v9, v0

    move-object v10, v2

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    invoke-static/range {v9 .. v16}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    goto :goto_1

    :catch_0
    move-exception v2

    move-object/from16 v3, v17

    :goto_4
    :try_start_5
    const-string v4, "PushInfoDataBase"

    invoke-static {v4, v2}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    const/4 v2, 0x0

    if-eqz v2, :cond_3

    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object/from16 v1, v18

    goto :goto_3

    :catchall_1
    move-exception v2

    move-object/from16 v3, v17

    :goto_5
    const/4 v4, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v2

    goto :goto_5

    :catch_1
    move-exception v2

    goto :goto_4

    :cond_6
    move-object/from16 v1, v18

    goto :goto_3

    :cond_7
    move-object v1, v2

    goto :goto_3

    :cond_8
    move-object/from16 v2, v18

    goto :goto_2
.end method

.method public static declared-synchronized g(Landroid/content/Context;Ljava/lang/String;)V
    .locals 21

    const-class v19, Lcom/baidu/android/pushservice/util/s;

    monitor-enter v19

    :try_start_0
    sget-object v20, Lcom/baidu/android/pushservice/util/s;->c:Ljava/lang/Object;

    monitor-enter v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static/range {p0 .. p0}, Lcom/baidu/android/pushservice/util/s;->a(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/16 v18, 0x0

    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v19

    return-void

    :cond_1
    :try_start_2
    const-string v3, "PushShareInfo"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    instance-of v10, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v10, :cond_4

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_7

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-eqz v3, :cond_7

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    sget-object v3, Lcom/baidu/android/pushservice/util/s$c;->j:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v5, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "PushShareInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/baidu/android/pushservice/util/s$c;->a:Lcom/baidu/android/pushservice/util/s$c;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/s$c;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "=1"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    instance-of v3, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_5

    invoke-virtual {v2, v6, v5, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    if-eqz v4, :cond_2

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_3
    :goto_3
    monitor-exit v20

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    monitor-exit v19

    throw v2

    :cond_4
    :try_start_6
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v10, v0

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-result-object v4

    goto :goto_1

    :cond_5
    :try_start_7
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-static {v3, v6, v5, v7, v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v3

    :goto_4
    :try_start_8
    const-string v5, "PushInfoDataBase"

    invoke-static {v5, v3}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v4, :cond_6

    :try_start_9
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    :cond_7
    :try_start_a
    new-instance v3, Lcom/baidu/android/pushservice/util/r;

    invoke-direct {v3}, Lcom/baidu/android/pushservice/util/r;-><init>()V

    const-wide/16 v6, 0x0

    iput-wide v6, v3, Lcom/baidu/android/pushservice/util/r;->a:J

    const-wide/16 v6, 0x0

    iput-wide v6, v3, Lcom/baidu/android/pushservice/util/r;->b:J

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->c:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->d:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->f:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->e:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->g:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v3, Lcom/baidu/android/pushservice/util/r;->h:Ljava/lang/String;

    move-object/from16 v0, p1

    iput-object v0, v3, Lcom/baidu/android/pushservice/util/r;->i:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/baidu/android/pushservice/util/s;->a(Landroid/content/Context;Lcom/baidu/android/pushservice/util/r;)J
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v3

    :goto_5
    if-eqz v4, :cond_8

    :try_start_b
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9
    throw v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :catchall_3
    move-exception v3

    move-object/from16 v4, v18

    goto :goto_5

    :catch_1
    move-exception v3

    move-object/from16 v4, v18

    goto :goto_4
.end method

.method private static h(Landroid/content/Context;)Lcom/baidu/android/pushservice/util/s$b;
    .locals 5

    sget-object v1, Lcom/baidu/android/pushservice/util/s;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/android/pushservice/util/s;->a:Lcom/baidu/android/pushservice/util/s$b;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/database"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v2, "PushInfoDataBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "File Path is  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/database"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "pushinfo.db"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PushInfoDataBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dbname is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_2

    new-instance v2, Lcom/baidu/android/pushservice/util/s$a;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/baidu/android/pushservice/util/s$a;-><init>(Lcom/baidu/android/pushservice/util/s$1;)V

    sput-object v2, Lcom/baidu/android/pushservice/util/s;->b:Lcom/baidu/android/pushservice/util/s$a;

    new-instance v2, Lcom/baidu/android/pushservice/util/s$b;

    const/4 v3, 0x2

    sget-object v4, Lcom/baidu/android/pushservice/util/s;->b:Lcom/baidu/android/pushservice/util/s$a;

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/baidu/android/pushservice/util/s$b;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/database/DatabaseErrorHandler;)V

    sput-object v2, Lcom/baidu/android/pushservice/util/s;->a:Lcom/baidu/android/pushservice/util/s$b;

    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/baidu/android/pushservice/util/s;->a:Lcom/baidu/android/pushservice/util/s$b;

    return-object v0

    :cond_2
    :try_start_1
    new-instance v2, Lcom/baidu/android/pushservice/util/s$b;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/baidu/android/pushservice/util/s$b;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    sput-object v2, Lcom/baidu/android/pushservice/util/s;->a:Lcom/baidu/android/pushservice/util/s$b;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
