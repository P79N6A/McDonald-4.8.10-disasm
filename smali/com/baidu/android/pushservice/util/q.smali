.class public Lcom/baidu/android/pushservice/util/q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/android/pushservice/util/q$h;,
        Lcom/baidu/android/pushservice/util/q$b;,
        Lcom/baidu/android/pushservice/util/q$j;,
        Lcom/baidu/android/pushservice/util/q$k;,
        Lcom/baidu/android/pushservice/util/q$i;,
        Lcom/baidu/android/pushservice/util/q$c;,
        Lcom/baidu/android/pushservice/util/q$a;,
        Lcom/baidu/android/pushservice/util/q$d;,
        Lcom/baidu/android/pushservice/util/q$g;,
        Lcom/baidu/android/pushservice/util/q$l;,
        Lcom/baidu/android/pushservice/util/q$f;,
        Lcom/baidu/android/pushservice/util/q$e;
    }
.end annotation


# static fields
.field private static a:Lcom/baidu/android/pushservice/util/q$f;

.field private static b:Lcom/baidu/android/pushservice/util/q$e;

.field private static c:Ljava/lang/Object;

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/android/pushservice/util/q;->a:Lcom/baidu/android/pushservice/util/q$f;

    sput-object v0, Lcom/baidu/android/pushservice/util/q;->b:Lcom/baidu/android/pushservice/util/q$e;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/android/pushservice/util/q;->c:Ljava/lang/Object;

    const/16 v0, 0x64

    sput v0, Lcom/baidu/android/pushservice/util/q;->d:I

    return-void
.end method

.method public static a(Landroid/content/Context;JJ)I
    .locals 11

    const/4 v4, 0x0

    const/4 v3, 0x0

    sget-object v6, Lcom/baidu/android/pushservice/util/q;->c:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->e(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v6

    move v1, v3

    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT COUNT(*) FROM PushBehavior WHERE "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/baidu/android/pushservice/util/q$d;->c:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " < "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/baidu/android/pushservice/util/q$d;->c:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " >= "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " ;"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT COUNT(*) FROM ADPushBehavior WHERE "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v7, Lcom/baidu/android/pushservice/util/q$a;->c:Lcom/baidu/android/pushservice/util/q$a;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$a;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " < "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " AND "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v7, Lcom/baidu/android/pushservice/util/q$a;->c:Lcom/baidu/android/pushservice/util/q$a;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$a;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " >= "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " ;"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    const/4 v8, 0x0

    :try_start_1
    instance-of v1, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_3

    invoke-virtual {v2, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-eqz v4, :cond_a

    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v5, v1

    :goto_2
    const/4 v8, 0x0

    :try_start_3
    instance-of v1, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_5

    invoke-virtual {v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result v3

    if-eqz v4, :cond_1

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    :goto_4
    add-int v1, v5, v3

    monitor-exit v6

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :cond_3
    :try_start_5
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v5, v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v4

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_6
    const-string v5, "PushDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "e getBehaviorEnumCount"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v4, :cond_9

    :try_start_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    move v5, v3

    goto :goto_2

    :catchall_1
    move-exception v1

    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_5
    :try_start_8
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v7, v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v4

    goto :goto_3

    :catch_1
    move-exception v1

    :try_start_9
    const-string v7, "PushDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "e getBehaviorEnumCount 2"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v4, :cond_6

    :try_start_a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_4

    :catchall_2
    move-exception v1

    if-eqz v4, :cond_7

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_8
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_9
    move v5, v3

    goto/16 :goto_2

    :cond_a
    move v5, v1

    goto/16 :goto_2
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 20

    sget-object v19, Lcom/baidu/android/pushservice/util/q;->c:Ljava/lang/Object;

    monitor-enter v19

    const/16 v18, 0x0

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/baidu/android/pushservice/util/q;->e(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    monitor-exit v19
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return v1

    :cond_0
    const/16 v17, 0x0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/baidu/android/pushservice/util/q$b;->b:Lcom/baidu/android/pushservice/util/q$b;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/q$b;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "AlarmMsgInfo"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    instance-of v9, v1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v9, :cond_3

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    :goto_1
    if-nez v3, :cond_4

    :try_start_2
    const-string v2, "PushDatabase"

    const-string v4, "no msgid info table!!"

    invoke-static {v2, v4}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v2, -0x2

    if-eqz v3, :cond_1

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v1, v2

    goto :goto_0

    :cond_3
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
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    goto :goto_1

    :cond_4
    :try_start_5
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPDATE AlarmMsgInfo SET "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/baidu/android/pushservice/util/q$b;->f:Lcom/baidu/android/pushservice/util/q$b;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/q$b;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " WHERE "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/baidu/android/pushservice/util/q$b;->b:Lcom/baidu/android/pushservice/util/q$b;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    instance-of v2, v1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_7

    invoke-virtual {v1, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :goto_2
    const-string v2, "PushDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setAlarmMsgEnable  msgID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  enable = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_5
    if-eqz v3, :cond_6

    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move/from16 v1, v18

    :goto_3
    monitor-exit v19

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    :cond_7
    :try_start_7
    move-object v0, v1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    invoke-static {v2, v4}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v2

    :goto_4
    const/4 v4, -0x3

    :try_start_8
    const-string v5, "PushDatabase"

    invoke-static {v5, v2}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v3, :cond_8

    :try_start_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v1, v4

    goto :goto_3

    :catchall_1
    move-exception v2

    move-object/from16 v3, v17

    :goto_5
    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_a
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_2
    move-exception v2

    goto :goto_5

    :catch_1
    move-exception v2

    move-object/from16 v3, v17

    goto :goto_4

    :cond_b
    move v1, v4

    goto :goto_3

    :cond_c
    move/from16 v1, v18

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/android/pushservice/util/q$h;)I
    .locals 10

    const/4 v2, 0x0

    sget-object v5, Lcom/baidu/android/pushservice/util/q;->c:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->e(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-nez v3, :cond_0

    monitor-exit v5

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v6, v2

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$g;->a:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p2, Lcom/baidu/android/pushservice/util/q$h;->a:Ljava/lang/String;

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$g;->b:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p2, Lcom/baidu/android/pushservice/util/q$h;->b:Ljava/lang/String;

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$g;->c:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p2, Lcom/baidu/android/pushservice/util/q$h;->c:Ljava/lang/String;

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$g;->d:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p2, Lcom/baidu/android/pushservice/util/q$h;->d:Ljava/lang/String;

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$g;->e:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p2, Lcom/baidu/android/pushservice/util/q$h;->e:Ljava/lang/String;

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$g;->f:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p2, Lcom/baidu/android/pushservice/util/q$h;->f:Ljava/lang/String;

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$g;->g:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v2

    iget v4, p2, Lcom/baidu/android/pushservice/util/q$h;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$g;->h:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v2

    iget v4, p2, Lcom/baidu/android/pushservice/util/q$h;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$g;->i:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v2

    iget v4, p2, Lcom/baidu/android/pushservice/util/q$h;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$g;->j:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, -0x1

    :try_start_1
    const-string v8, "FileDownloadingInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/baidu/android/pushservice/util/q$g;->b:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v9}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v9, "=?"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    instance-of v2, v3, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_1

    invoke-virtual {v3, v8, v7, v9, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    :goto_1
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_1
    :try_start_3
    move-object v0, v3

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    invoke-static {v2, v8, v7, v9, v6}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_4
    const-string v6, "PushDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateFileDownloadingInfo Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v2, v4

    goto :goto_1
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;ILcom/baidu/android/pushservice/i/n;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    sget-object v0, Lcom/baidu/android/pushservice/util/q$c;->a:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/q$c;->b:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/i/n;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/q$c;->c:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/i/n;->j()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/q$c;->d:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/i/n;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/q$c;->e:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/i/n;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/q$c;->f:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/i/n;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/q$c;->g:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/i/n;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/i/n;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/baidu/android/pushservice/util/q$c;->h:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/i/n;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/baidu/android/pushservice/util/q$c;->i:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/i/n;->g()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/q$c;->j:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/i/n;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/q$c;->k:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/baidu/android/pushservice/i/n;->i()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v0, -0x1

    :try_start_0
    const-string v3, "AppInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/baidu/android/pushservice/util/q$c;->a:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    instance-of v5, p0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_2

    invoke-virtual {p0, v3, v2, v4, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_0

    :cond_2
    check-cast p0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p0, v3, v2, v4, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v2, "PushDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateAppInfo exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/b;)J
    .locals 10

    const-wide/16 v4, -0x1

    sget-object v6, Lcom/baidu/android/pushservice/util/q;->c:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->e(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-nez v3, :cond_0

    monitor-exit v6

    move-wide v2, v4

    :goto_0
    return-wide v2

    :cond_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$a;->b:Lcom/baidu/android/pushservice/util/q$a;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$a;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v8, p1, Lcom/baidu/android/pushservice/i/b;->f:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$a;->c:Lcom/baidu/android/pushservice/util/q$a;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$a;->name()Ljava/lang/String;

    move-result-object v2

    iget-wide v8, p1, Lcom/baidu/android/pushservice/i/b;->g:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$a;->d:Lcom/baidu/android/pushservice/util/q$a;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$a;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v8, p1, Lcom/baidu/android/pushservice/i/b;->h:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/baidu/android/pushservice/i/b;->j:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/baidu/android/pushservice/util/q$a;->j:Lcom/baidu/android/pushservice/util/q$a;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$a;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v8, p1, Lcom/baidu/android/pushservice/i/b;->j:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v2, Lcom/baidu/android/pushservice/util/q$a;->h:Lcom/baidu/android/pushservice/util/q$a;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$a;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v8, p1, Lcom/baidu/android/pushservice/i/b;->d:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$a;->e:Lcom/baidu/android/pushservice/util/q$a;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$a;->name()Ljava/lang/String;

    move-result-object v2

    iget v8, p1, Lcom/baidu/android/pushservice/i/b;->c:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$a;->f:Lcom/baidu/android/pushservice/util/q$a;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$a;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v8, p1, Lcom/baidu/android/pushservice/i/b;->a:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$a;->g:Lcom/baidu/android/pushservice/util/q$a;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$a;->name()Ljava/lang/String;

    move-result-object v2

    iget v8, p1, Lcom/baidu/android/pushservice/i/b;->b:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$a;->i:Lcom/baidu/android/pushservice/util/q$a;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$a;->name()Ljava/lang/String;

    move-result-object v2

    iget v8, p1, Lcom/baidu/android/pushservice/i/b;->i:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$a;->k:Lcom/baidu/android/pushservice/util/q$a;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$a;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v8, p1, Lcom/baidu/android/pushservice/i/b;->e:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v8, "ADPushBehavior"

    const/4 v9, 0x0

    instance-of v2, v3, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_2

    invoke-virtual {v3, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    :goto_1
    const-string v2, "pushadvertise:  insert into database"

    invoke-static {v2, p0}, Lcom/baidu/android/pushservice/util/v;->b(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v2, v4

    goto/16 :goto_0

    :cond_2
    :try_start_3
    move-object v0, v3

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    invoke-static {v2, v8, v9, v7}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v4

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_4
    const-string v7, "PushDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/c;)J
    .locals 10

    const-wide/16 v4, -0x1

    sget-object v6, Lcom/baidu/android/pushservice/util/q;->c:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->e(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-nez v3, :cond_0

    monitor-exit v6

    move-wide v2, v4

    :goto_0
    return-wide v2

    :cond_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$b;->b:Lcom/baidu/android/pushservice/util/q$b;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$b;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v8, p1, Lcom/baidu/android/pushservice/i/c;->a:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$b;->c:Lcom/baidu/android/pushservice/util/q$b;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$b;->name()Ljava/lang/String;

    move-result-object v2

    iget-wide v8, p1, Lcom/baidu/android/pushservice/i/c;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$b;->d:Lcom/baidu/android/pushservice/util/q$b;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$b;->name()Ljava/lang/String;

    move-result-object v2

    iget-wide v8, p1, Lcom/baidu/android/pushservice/i/c;->c:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$b;->e:Lcom/baidu/android/pushservice/util/q$b;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$b;->name()Ljava/lang/String;

    move-result-object v2

    iget-wide v8, p1, Lcom/baidu/android/pushservice/i/c;->d:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$b;->g:Lcom/baidu/android/pushservice/util/q$b;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$b;->name()Ljava/lang/String;

    move-result-object v2

    iget v8, p1, Lcom/baidu/android/pushservice/i/c;->e:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$b;->f:Lcom/baidu/android/pushservice/util/q$b;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$b;->name()Ljava/lang/String;

    move-result-object v2

    iget v8, p1, Lcom/baidu/android/pushservice/i/c;->f:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v8, "AlarmMsgInfo"

    const/4 v9, 0x0

    instance-of v2, v3, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_1

    invoke-virtual {v3, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    :goto_1
    const-string v2, "PushDatabase"

    const-string v7, "AlarmMsgInfoEnum:  insert into database"

    invoke-static {v2, v7}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "AlarmMsgInfoEnum:  insert into database"

    invoke-static {v2, p0}, Lcom/baidu/android/pushservice/util/v;->b(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v2, v4

    goto :goto_0

    :cond_1
    :try_start_3
    move-object v0, v3

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    invoke-static {v2, v8, v9, v7}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v4

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_4
    const-string v7, "PushDatabase"

    invoke-static {v7, v2}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/d;)J
    .locals 10

    sget-object v6, Lcom/baidu/android/pushservice/util/q;->c:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->e(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-nez v3, :cond_0

    const-wide/16 v2, -0x1

    monitor-exit v6

    :goto_0
    return-wide v2

    :cond_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->b:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/baidu/android/pushservice/i/d;->f:Ljava/lang/String;

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->c:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p1, Lcom/baidu/android/pushservice/i/d;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->d:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/baidu/android/pushservice/i/d;->h:Ljava/lang/String;

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->l:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/baidu/android/pushservice/i/d;->j:Ljava/lang/String;

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->h:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/baidu/android/pushservice/i/d;->a:Ljava/lang/String;

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->i:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/baidu/android/pushservice/i/d;->b:Ljava/lang/String;

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->k:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget v4, p1, Lcom/baidu/android/pushservice/i/d;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p1, Lcom/baidu/android/pushservice/i/d;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->m:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/baidu/android/pushservice/i/d;->c:Ljava/lang/String;

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const-wide/16 v4, 0x0

    :try_start_1
    const-string v8, "PushBehavior"

    const/4 v9, 0x0

    instance-of v2, v3, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_2

    invoke-virtual {v3, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    :goto_1
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v2, v4

    goto :goto_0

    :cond_2
    :try_start_3
    move-object v0, v3

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    invoke-static {v2, v8, v9, v7}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v4

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_4
    const-string v7, "PushDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insertApiBehavior E: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/h;)J
    .locals 10

    sget-object v6, Lcom/baidu/android/pushservice/util/q;->c:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->e(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-nez v3, :cond_0

    const-wide/16 v2, -0x1

    monitor-exit v6

    :goto_0
    return-wide v2

    :cond_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->b:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/baidu/android/pushservice/i/h;->f:Ljava/lang/String;

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->c:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p1, Lcom/baidu/android/pushservice/i/h;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->d:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/baidu/android/pushservice/i/h;->h:Ljava/lang/String;

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->h:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/baidu/android/pushservice/i/h;->a:Ljava/lang/String;

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->l:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/baidu/android/pushservice/i/h;->j:Ljava/lang/String;

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    :try_start_1
    const-string v8, "PushBehavior"

    const/4 v9, 0x0

    instance-of v2, v3, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_1

    invoke-virtual {v3, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    :goto_1
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v2, v4

    goto :goto_0

    :cond_1
    :try_start_3
    move-object v0, v3

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    invoke-static {v2, v8, v9, v7}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v4

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_4
    const-string v7, "PushDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insertCrashBehavior E: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/k;)J
    .locals 10

    sget-object v6, Lcom/baidu/android/pushservice/util/q;->c:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->e(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-nez v3, :cond_0

    const-wide/16 v2, -0x1

    monitor-exit v6

    :goto_0
    return-wide v2

    :cond_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->b:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/baidu/android/pushservice/i/k;->f:Ljava/lang/String;

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->c:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p1, Lcom/baidu/android/pushservice/i/k;->g:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->d:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/baidu/android/pushservice/i/k;->h:Ljava/lang/String;

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->h:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/baidu/android/pushservice/i/k;->l:Ljava/lang/String;

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->j:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget v4, p1, Lcom/baidu/android/pushservice/i/k;->a:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->k:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget v4, p1, Lcom/baidu/android/pushservice/i/k;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->l:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/baidu/android/pushservice/i/k;->j:Ljava/lang/String;

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    :try_start_1
    const-string v8, "PushBehavior"

    const/4 v9, 0x0

    instance-of v2, v3, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_1

    invoke-virtual {v3, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    :goto_1
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v2, v4

    goto :goto_0

    :cond_1
    :try_start_3
    move-object v0, v3

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    invoke-static {v2, v8, v9, v7}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v4

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_4
    const-string v7, "PushDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insertPromptBehavior E: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/n;)J
    .locals 10

    const-wide/16 v4, 0x0

    sget-object v6, Lcom/baidu/android/pushservice/util/q;->c:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->e(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-nez v3, :cond_0

    const-wide/16 v2, -0x1

    monitor-exit v6

    :goto_0
    return-wide v2

    :cond_0
    invoke-static {v3, p1}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/android/pushservice/i/n;)Lcom/baidu/android/pushservice/i/n;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v6

    move-wide v2, v4

    goto :goto_0

    :cond_1
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$c;->b:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/n;->a()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$c;->c:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/n;->j()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$c;->d:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/n;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$c;->e:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/n;->c()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$c;->f:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/n;->d()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$c;->g:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/n;->e()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$c;->h:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/n;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$c;->i:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/n;->g()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$c;->j:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/n;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$c;->k:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/n;->i()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/n;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v2, v8, v4

    if-gez v2, :cond_2

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v2, v4

    goto/16 :goto_0

    :cond_2
    :try_start_3
    const-string v8, "AppInfo"

    const/4 v9, 0x0

    instance-of v2, v3, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_3

    invoke-virtual {v3, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v4

    :goto_1
    :try_start_4
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-wide v2, v4

    goto/16 :goto_0

    :cond_3
    :try_start_5
    move-object v0, v3

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    invoke-static {v2, v8, v9, v7}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v4

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_6
    const-string v7, "PushDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insertAppInfo E: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/i/o;)J
    .locals 10

    const-wide/16 v4, -0x1

    sget-object v6, Lcom/baidu/android/pushservice/util/q;->c:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->e(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-nez v3, :cond_0

    monitor-exit v6

    move-wide v2, v4

    :goto_0
    return-wide v2

    :cond_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->b:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v8, p1, Lcom/baidu/android/pushservice/i/o;->f:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->c:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget-wide v8, p1, Lcom/baidu/android/pushservice/i/o;->g:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->d:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v8, p1, Lcom/baidu/android/pushservice/i/o;->h:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/baidu/android/pushservice/i/o;->j:Ljava/lang/String;

    if-eqz v2, :cond_1

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->l:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v8, p1, Lcom/baidu/android/pushservice/i/o;->j:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->e:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget v8, p1, Lcom/baidu/android/pushservice/i/o;->c:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->f:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v8, p1, Lcom/baidu/android/pushservice/i/o;->a:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->g:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget v8, p1, Lcom/baidu/android/pushservice/i/o;->b:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->k:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget v8, p1, Lcom/baidu/android/pushservice/i/o;->i:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, p1, Lcom/baidu/android/pushservice/i/o;->d:Ljava/lang/String;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->n:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v8, p1, Lcom/baidu/android/pushservice/i/o;->d:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :try_start_1
    const-string v8, "PushBehavior"

    const/4 v9, 0x0

    instance-of v2, v3, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_3

    invoke-virtual {v3, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    :goto_1
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v2, v4

    goto/16 :goto_0

    :cond_3
    :try_start_3
    move-object v0, v3

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    invoke-static {v2, v8, v9, v7}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v4

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_4
    const-string v7, "PushDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method public static a(Landroid/content/Context;Lcom/baidu/android/pushservice/util/q$h;)J
    .locals 10

    sget-object v6, Lcom/baidu/android/pushservice/util/q;->c:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->e(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-nez v3, :cond_0

    const-wide/16 v2, -0x1

    monitor-exit v6

    :goto_0
    return-wide v2

    :cond_0
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$g;->a:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/baidu/android/pushservice/util/q$h;->a:Ljava/lang/String;

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$g;->b:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/baidu/android/pushservice/util/q$h;->b:Ljava/lang/String;

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$g;->c:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/baidu/android/pushservice/util/q$h;->c:Ljava/lang/String;

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$g;->d:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/baidu/android/pushservice/util/q$h;->d:Ljava/lang/String;

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$g;->e:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/baidu/android/pushservice/util/q$h;->e:Ljava/lang/String;

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$g;->f:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p1, Lcom/baidu/android/pushservice/util/q$h;->f:Ljava/lang/String;

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$g;->g:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v2

    iget v4, p1, Lcom/baidu/android/pushservice/util/q$h;->g:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$g;->h:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v2

    iget v4, p1, Lcom/baidu/android/pushservice/util/q$h;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$g;->i:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v2

    iget v4, p1, Lcom/baidu/android/pushservice/util/q$h;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$g;->j:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x0

    :try_start_1
    const-string v8, "FileDownloadingInfo"

    const/4 v9, 0x0

    instance-of v2, v3, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_1

    invoke-virtual {v3, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    :goto_1
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v2, v4

    goto/16 :goto_0

    :cond_1
    :try_start_3
    move-object v0, v3

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    invoke-static {v2, v8, v9, v7}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v4

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_4
    const-string v7, "PushDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "exception "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/android/pushservice/i/n;)Lcom/baidu/android/pushservice/i/n;
    .locals 9

    const/4 v2, 0x0

    if-nez p0, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    new-instance v3, Lcom/baidu/android/pushservice/i/n;

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/n;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lcom/baidu/android/pushservice/i/n;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM AppInfo WHERE "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/baidu/android/pushservice/util/q$c;->b:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/n;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_0
    instance-of v1, p0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_4

    invoke-virtual {p0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    :goto_1
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v1, 0x1

    sget-object v5, Lcom/baidu/android/pushservice/util/q$c;->a:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/n;->c()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/baidu/android/pushservice/util/q$c;->e:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/n;->f()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/baidu/android/pushservice/util/q$c;->h:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/n;->g()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/baidu/android/pushservice/util/q$c;->i:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v8}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/baidu/android/pushservice/i/n;->i()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/baidu/android/pushservice/util/q$c;->k:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    invoke-static {p0, v5, p1}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/database/sqlite/SQLiteDatabase;ILcom/baidu/android/pushservice/i/n;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_2
    if-eqz v1, :cond_5

    if-eqz v4, :cond_3

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    move-object v1, v3

    goto/16 :goto_0

    :cond_4
    :try_start_2
    move-object v0, p0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v4, v5}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    goto/16 :goto_1

    :cond_5
    if-eqz v4, :cond_6

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_2
    move-object v1, v2

    goto/16 :goto_0

    :catch_0
    move-exception v1

    move-object v3, v2

    :goto_3
    :try_start_3
    const-string v4, "PushDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needToInsertUpdate Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v4, v2

    :goto_4
    if-eqz v4, :cond_7

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v1

    :catchall_1
    move-exception v1

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v4, v3

    goto :goto_4

    :catch_1
    move-exception v1

    move-object v3, v4

    goto :goto_3
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/android/pushservice/util/q$h;
    .locals 21

    sget-object v20, Lcom/baidu/android/pushservice/util/q;->c:Ljava/lang/Object;

    monitor-enter v20

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/baidu/android/pushservice/util/q;->e(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v20

    :goto_0
    return-object v2

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/baidu/android/pushservice/util/q$g;->b:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "==?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v6, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v19, 0x0

    const/16 v18, 0x0

    :try_start_1
    const-string v3, "FileDownloadingInfo"

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    instance-of v10, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v10, :cond_2

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    :goto_1
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance v5, Lcom/baidu/android/pushservice/util/q$h;

    invoke-direct {v5}, Lcom/baidu/android/pushservice/util/q$h;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    sget-object v3, Lcom/baidu/android/pushservice/util/q$g;->a:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/baidu/android/pushservice/util/q$h;->a:Ljava/lang/String;

    sget-object v3, Lcom/baidu/android/pushservice/util/q$g;->b:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/baidu/android/pushservice/util/q$h;->b:Ljava/lang/String;

    sget-object v3, Lcom/baidu/android/pushservice/util/q$g;->c:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/baidu/android/pushservice/util/q$h;->c:Ljava/lang/String;

    sget-object v3, Lcom/baidu/android/pushservice/util/q$g;->d:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/baidu/android/pushservice/util/q$h;->d:Ljava/lang/String;

    sget-object v3, Lcom/baidu/android/pushservice/util/q$g;->e:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/baidu/android/pushservice/util/q$h;->e:Ljava/lang/String;

    sget-object v3, Lcom/baidu/android/pushservice/util/q$g;->f:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lcom/baidu/android/pushservice/util/q$h;->f:Ljava/lang/String;

    sget-object v3, Lcom/baidu/android/pushservice/util/q$g;->g:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v5, Lcom/baidu/android/pushservice/util/q$h;->g:I

    sget-object v3, Lcom/baidu/android/pushservice/util/q$g;->h:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v5, Lcom/baidu/android/pushservice/util/q$h;->h:I

    sget-object v3, Lcom/baidu/android/pushservice/util/q$g;->i:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v5, Lcom/baidu/android/pushservice/util/q$h;->i:I

    sget-object v3, Lcom/baidu/android/pushservice/util/q$g;->j:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/baidu/android/pushservice/util/q$h;->j:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    if-eqz v4, :cond_1

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v2, v5

    :goto_3
    monitor-exit v20

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    :cond_2
    :try_start_5
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
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v4

    goto/16 :goto_1

    :catch_0
    move-exception v3

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    :goto_4
    :try_start_6
    const-string v6, "PushDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v4, :cond_3

    :try_start_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v2, v5

    goto :goto_3

    :catchall_1
    move-exception v3

    move-object/from16 v4, v18

    :goto_5
    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_5
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_2
    move-exception v3

    goto :goto_5

    :catch_1
    move-exception v3

    move-object/from16 v5, v19

    goto :goto_4

    :catch_2
    move-exception v3

    goto :goto_4

    :cond_6
    move-object v2, v5

    goto :goto_3

    :cond_7
    move-object/from16 v5, v19

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/android/pushservice/i/n;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    sget-object v5, Lcom/baidu/android/pushservice/util/q;->c:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->e(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v5

    move-object v1, v3

    :goto_0
    return-object v1

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "SELECT * FROM AppInfo;"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x0

    :try_start_1
    instance-of v1, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_3

    invoke-virtual {v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    :goto_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Lcom/baidu/android/pushservice/i/n;

    invoke-direct {v3}, Lcom/baidu/android/pushservice/i/n;-><init>()V

    sget-object v6, Lcom/baidu/android/pushservice/util/q$c;->b:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/baidu/android/pushservice/i/n;->a(Ljava/lang/String;)V

    sget-object v6, Lcom/baidu/android/pushservice/util/q$c;->c:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/baidu/android/pushservice/i/n;->c(I)V

    sget-object v6, Lcom/baidu/android/pushservice/util/q$c;->d:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/baidu/android/pushservice/i/n;->b(Ljava/lang/String;)V

    sget-object v6, Lcom/baidu/android/pushservice/util/q$c;->e:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/baidu/android/pushservice/i/n;->c(Ljava/lang/String;)V

    sget-object v6, Lcom/baidu/android/pushservice/util/q$c;->f:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/baidu/android/pushservice/i/n;->d(Ljava/lang/String;)V

    sget-object v6, Lcom/baidu/android/pushservice/util/q$c;->g:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/baidu/android/pushservice/i/n;->e(Ljava/lang/String;)V

    sget-object v6, Lcom/baidu/android/pushservice/util/q$c;->h:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/baidu/android/pushservice/i/n;->f(Ljava/lang/String;)V

    sget-object v6, Lcom/baidu/android/pushservice/util/q$c;->i:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/baidu/android/pushservice/i/n;->a(I)V

    sget-object v6, Lcom/baidu/android/pushservice/util/q$c;->j:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/baidu/android/pushservice/i/n;->g(Ljava/lang/String;)V

    sget-object v6, Lcom/baidu/android/pushservice/util/q$c;->k:Lcom/baidu/android/pushservice/util/q$c;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/q$c;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/baidu/android/pushservice/i/n;->b(I)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_1

    :catch_0
    move-exception v3

    move-object v9, v3

    move-object v3, v1

    move-object v1, v9

    :goto_2
    :try_start_3
    const-string v6, "PushDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_1

    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    :goto_3
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v1, v4

    goto/16 :goto_0

    :cond_3
    :try_start_5
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v6, v7}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v1

    goto/16 :goto_1

    :cond_4
    if-eqz v1, :cond_5

    :try_start_6
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :goto_4
    if-eqz v3, :cond_6

    :try_start_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_2
    move-exception v3

    move-object v9, v3

    move-object v3, v1

    move-object v1, v9

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static a(Landroid/content/Context;JJII)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJII)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/android/pushservice/i/g;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    sget-object v6, Lcom/baidu/android/pushservice/util/q;->c:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->e(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-nez v3, :cond_0

    monitor-exit v6

    move-object v2, v4

    :goto_0
    return-object v2

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT * FROM PushBehavior WHERE "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Lcom/baidu/android/pushservice/util/q$d;->c:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " < "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " AND "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Lcom/baidu/android/pushservice/util/q$d;->c:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " >= "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " LIMIT "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " OFFSET "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ";"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    const/4 v8, 0x0

    :try_start_1
    instance-of v2, v3, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_3

    invoke-virtual {v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    :goto_1
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lcom/baidu/android/pushservice/i/g;

    invoke-direct {v4}, Lcom/baidu/android/pushservice/i/g;-><init>()V

    sget-object v7, Lcom/baidu/android/pushservice/util/q$d;->a:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/baidu/android/pushservice/i/g;->a(I)V

    sget-object v7, Lcom/baidu/android/pushservice/util/q$d;->b:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/baidu/android/pushservice/i/g;->a(Ljava/lang/String;)V

    sget-object v7, Lcom/baidu/android/pushservice/util/q$d;->l:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/baidu/android/pushservice/i/g;->f(Ljava/lang/String;)V

    sget-object v7, Lcom/baidu/android/pushservice/util/q$d;->m:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/baidu/android/pushservice/i/g;->g(Ljava/lang/String;)V

    sget-object v7, Lcom/baidu/android/pushservice/util/q$d;->k:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/baidu/android/pushservice/i/g;->e(I)V

    sget-object v7, Lcom/baidu/android/pushservice/util/q$d;->h:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/baidu/android/pushservice/i/g;->d(Ljava/lang/String;)V

    sget-object v7, Lcom/baidu/android/pushservice/util/q$d;->f:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/baidu/android/pushservice/i/g;->c(Ljava/lang/String;)V

    sget-object v7, Lcom/baidu/android/pushservice/util/q$d;->g:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/baidu/android/pushservice/i/g;->c(I)V

    sget-object v7, Lcom/baidu/android/pushservice/util/q$d;->e:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/baidu/android/pushservice/i/g;->b(I)V

    sget-object v7, Lcom/baidu/android/pushservice/util/q$d;->d:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/baidu/android/pushservice/i/g;->b(Ljava/lang/String;)V

    sget-object v7, Lcom/baidu/android/pushservice/util/q$d;->n:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/baidu/android/pushservice/i/g;->h(Ljava/lang/String;)V

    sget-object v7, Lcom/baidu/android/pushservice/util/q$d;->i:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/baidu/android/pushservice/i/g;->e(Ljava/lang/String;)V

    sget-object v7, Lcom/baidu/android/pushservice/util/q$d;->j:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/baidu/android/pushservice/i/g;->d(I)V

    sget-object v7, Lcom/baidu/android/pushservice/util/q$d;->c:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/baidu/android/pushservice/i/g;->a(J)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_1

    :catch_0
    move-exception v4

    move-object v10, v4

    move-object v4, v2

    move-object v2, v10

    :goto_2
    :try_start_3
    const-string v7, "PushDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "e getBehaviorEnumClassList "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_1

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    :goto_3
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v2, v5

    goto/16 :goto_0

    :cond_3
    :try_start_5
    move-object v0, v3

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    invoke-static {v2, v7, v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v2

    goto/16 :goto_1

    :cond_4
    if-eqz v2, :cond_5

    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2

    :catchall_1
    move-exception v2

    :goto_4
    if-eqz v4, :cond_6

    :try_start_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_2
    move-exception v4

    move-object v10, v4

    move-object v4, v2

    move-object v2, v10

    goto :goto_4

    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public static a()V
    .locals 5

    sget-object v1, Lcom/baidu/android/pushservice/util/q;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/android/pushservice/util/q;->a:Lcom/baidu/android/pushservice/util/q$f;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/baidu/android/pushservice/util/q;->a:Lcom/baidu/android/pushservice/util/q$f;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/q$f;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/android/pushservice/util/q;->a:Lcom/baidu/android/pushservice/util/q$f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    :try_start_1
    monitor-exit v1

    return-void

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    sput-object v2, Lcom/baidu/android/pushservice/util/q;->a:Lcom/baidu/android/pushservice/util/q$f;

    const-string v2, "PushDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "close db: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5

    const-string v0, "pushstat_5.2.0.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v1, Lcom/baidu/android/pushservice/util/q$1;

    invoke-direct {v1, p0}, Lcom/baidu/android/pushservice/util/q$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/android/pushservice/i/k;)Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SELECT * FROM PushBehavior WHERE "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/baidu/android/pushservice/util/q$d;->b:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " = \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v5, p1, Lcom/baidu/android/pushservice/i/k;->f:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "\' AND "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcom/baidu/android/pushservice/util/q$d;->k:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p1, Lcom/baidu/android/pushservice/i/k;->i:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    :try_start_0
    instance-of v1, p0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_2

    invoke-virtual {p0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    :goto_1
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/baidu/android/pushservice/util/q$d;->j:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p1, Lcom/baidu/android/pushservice/i/k;->a:I

    invoke-static {p0, p1}, Lcom/baidu/android/pushservice/util/q;->b(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/android/pushservice/i/k;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    :goto_2
    if-eqz v1, :cond_3

    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    :try_start_2
    move-object v0, p0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v5, v6}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_3
    move v1, v3

    goto/16 :goto_0

    :catch_0
    move-exception v1

    move-object v2, v4

    :goto_4
    :try_start_3
    const-string v4, "PushDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needToInsertUpdatePromptBehavior Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v1

    :goto_5
    if-eqz v4, :cond_5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v1

    :catchall_1
    move-exception v1

    move-object v4, v2

    goto :goto_5

    :catch_1
    move-exception v1

    move-object v2, v4

    goto :goto_4

    :cond_6
    move v1, v3

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8

    const/4 v1, 0x0

    sget-object v4, Lcom/baidu/android/pushservice/util/q;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->e(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v4

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v5, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, -0x1

    :try_start_1
    const-string v6, "FileDownloadingInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/baidu/android/pushservice/util/q$g;->b:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "=?"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    instance-of v1, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    invoke-virtual {v2, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    :goto_1
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_1
    :try_start_3
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v6, v7, v5}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_4
    const-string v5, "PushDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v1, v3

    goto :goto_1
.end method

.method private static b(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/android/pushservice/i/k;)I
    .locals 6

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    sget-object v0, Lcom/baidu/android/pushservice/util/q$d;->b:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/baidu/android/pushservice/i/k;->f:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/q$d;->c:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p1, Lcom/baidu/android/pushservice/i/k;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/q$d;->d:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/baidu/android/pushservice/i/k;->h:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/q$d;->j:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v0

    iget v2, p1, Lcom/baidu/android/pushservice/i/k;->a:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/q$d;->k:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v0

    iget v2, p1, Lcom/baidu/android/pushservice/i/k;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v0, Lcom/baidu/android/pushservice/util/q$d;->l:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v0}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/baidu/android/pushservice/i/k;->j:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    :try_start_0
    const-string v2, "PushBehavior"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/baidu/android/pushservice/util/q$d;->b:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/baidu/android/pushservice/i/k;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/baidu/android/pushservice/util/q$d;->k:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/baidu/android/pushservice/i/k;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    instance-of v5, p0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_1

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v2, "PushDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updatePromptBehavior Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    :try_start_1
    check-cast p0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p0, v2, v1, v3, v4}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public static b(Landroid/content/Context;Lcom/baidu/android/pushservice/i/k;)J
    .locals 10

    const-wide/16 v4, 0x0

    sget-object v6, Lcom/baidu/android/pushservice/util/q;->c:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->e(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-nez v3, :cond_0

    const-wide/16 v2, -0x1

    monitor-exit v6

    :goto_0
    return-wide v2

    :cond_0
    invoke-static {v3, p1}, Lcom/baidu/android/pushservice/util/q;->a(Landroid/database/sqlite/SQLiteDatabase;Lcom/baidu/android/pushservice/i/k;)Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v6

    move-wide v2, v4

    goto :goto_0

    :cond_1
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->b:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v8, p1, Lcom/baidu/android/pushservice/i/k;->f:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->c:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget-wide v8, p1, Lcom/baidu/android/pushservice/i/k;->g:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->d:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v8, p1, Lcom/baidu/android/pushservice/i/k;->h:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->j:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->k:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget v8, p1, Lcom/baidu/android/pushservice/i/k;->i:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/baidu/android/pushservice/util/q$d;->l:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v2

    iget-object v8, p1, Lcom/baidu/android/pushservice/i/k;->j:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v8, "PushBehavior"

    const/4 v9, 0x0

    instance-of v2, v3, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_2

    invoke-virtual {v3, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v4

    :goto_1
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v2, v4

    goto :goto_0

    :cond_2
    :try_start_3
    move-object v0, v3

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    invoke-static {v2, v8, v9, v7}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-wide v4

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_4
    const-string v7, "PushDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "insertAgentOrHttpBehavior E: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method public static b(Landroid/content/Context;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/android/pushservice/util/q$h;",
            ">;"
        }
    .end annotation

    sget-object v20, Lcom/baidu/android/pushservice/util/q;->c:Ljava/lang/Object;

    monitor-enter v20

    :try_start_0
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/baidu/android/pushservice/util/q;->e(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v2, v18

    :goto_0
    return-object v2

    :cond_0
    const/16 v19, 0x0

    :try_start_1
    const-string v3, "FileDownloadingInfo"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Lcom/baidu/android/pushservice/util/q$g;->j:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v10}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " DESC"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    instance-of v10, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v10, :cond_3

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    :goto_1
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lcom/baidu/android/pushservice/util/q$h;

    invoke-direct {v4}, Lcom/baidu/android/pushservice/util/q$h;-><init>()V

    sget-object v5, Lcom/baidu/android/pushservice/util/q$g;->a:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/android/pushservice/util/q$h;->a:Ljava/lang/String;

    sget-object v5, Lcom/baidu/android/pushservice/util/q$g;->b:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/android/pushservice/util/q$h;->b:Ljava/lang/String;

    sget-object v5, Lcom/baidu/android/pushservice/util/q$g;->c:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/android/pushservice/util/q$h;->c:Ljava/lang/String;

    sget-object v5, Lcom/baidu/android/pushservice/util/q$g;->d:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/android/pushservice/util/q$h;->d:Ljava/lang/String;

    sget-object v5, Lcom/baidu/android/pushservice/util/q$g;->e:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/android/pushservice/util/q$h;->e:Ljava/lang/String;

    sget-object v5, Lcom/baidu/android/pushservice/util/q$g;->f:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/baidu/android/pushservice/util/q$h;->f:Ljava/lang/String;

    sget-object v5, Lcom/baidu/android/pushservice/util/q$g;->g:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/baidu/android/pushservice/util/q$h;->g:I

    sget-object v5, Lcom/baidu/android/pushservice/util/q$g;->h:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/baidu/android/pushservice/util/q$h;->h:I

    sget-object v5, Lcom/baidu/android/pushservice/util/q$g;->i:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    iput v5, v4, Lcom/baidu/android/pushservice/util/q$h;->i:I

    sget-object v5, Lcom/baidu/android/pushservice/util/q$g;->j:Lcom/baidu/android/pushservice/util/q$g;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/q$g;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/baidu/android/pushservice/util/q$h;->j:J

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_1

    :catch_0
    move-exception v4

    move-object/from16 v21, v4

    move-object v4, v3

    move-object/from16 v3, v21

    :goto_2
    :try_start_3
    const-string v5, "PushDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v4, :cond_1

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    :goto_3
    monitor-exit v20
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v2, v18

    goto/16 :goto_0

    :cond_3
    :try_start_5
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
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v3

    goto/16 :goto_1

    :cond_4
    if-eqz v3, :cond_5

    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v20
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2

    :catchall_1
    move-exception v3

    :goto_4
    if-eqz v19, :cond_6

    :try_start_7
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_2
    move-exception v4

    move-object/from16 v19, v3

    move-object v3, v4

    goto :goto_4

    :catchall_3
    move-exception v3

    move-object/from16 v19, v4

    goto :goto_4

    :catch_1
    move-exception v3

    move-object/from16 v4, v19

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;JJII)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJII)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/android/pushservice/i/a;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    sget-object v6, Lcom/baidu/android/pushservice/util/q;->c:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->e(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-nez v3, :cond_0

    monitor-exit v6

    move-object v2, v4

    :goto_0
    return-object v2

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT * FROM ADPushBehavior WHERE "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Lcom/baidu/android/pushservice/util/q$a;->c:Lcom/baidu/android/pushservice/util/q$a;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$a;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " < "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " AND "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v7, Lcom/baidu/android/pushservice/util/q$a;->c:Lcom/baidu/android/pushservice/util/q$a;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$a;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " >= "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " LIMIT "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " OFFSET "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ";"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    const/4 v8, 0x0

    :try_start_1
    instance-of v2, v3, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_3

    invoke-virtual {v3, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    :goto_1
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lcom/baidu/android/pushservice/i/a;

    invoke-direct {v4}, Lcom/baidu/android/pushservice/i/a;-><init>()V

    sget-object v7, Lcom/baidu/android/pushservice/util/q$a;->a:Lcom/baidu/android/pushservice/util/q$a;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$a;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/baidu/android/pushservice/i/a;->a(I)V

    sget-object v7, Lcom/baidu/android/pushservice/util/q$a;->b:Lcom/baidu/android/pushservice/util/q$a;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$a;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/baidu/android/pushservice/i/a;->a(Ljava/lang/String;)V

    sget-object v7, Lcom/baidu/android/pushservice/util/q$a;->j:Lcom/baidu/android/pushservice/util/q$a;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$a;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/baidu/android/pushservice/i/a;->e(Ljava/lang/String;)V

    sget-object v7, Lcom/baidu/android/pushservice/util/q$a;->i:Lcom/baidu/android/pushservice/util/q$a;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$a;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/baidu/android/pushservice/i/a;->d(I)V

    sget-object v7, Lcom/baidu/android/pushservice/util/q$a;->f:Lcom/baidu/android/pushservice/util/q$a;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$a;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/baidu/android/pushservice/i/a;->c(Ljava/lang/String;)V

    sget-object v7, Lcom/baidu/android/pushservice/util/q$a;->g:Lcom/baidu/android/pushservice/util/q$a;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$a;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/baidu/android/pushservice/i/a;->c(I)V

    sget-object v7, Lcom/baidu/android/pushservice/util/q$a;->e:Lcom/baidu/android/pushservice/util/q$a;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$a;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/baidu/android/pushservice/i/a;->b(I)V

    sget-object v7, Lcom/baidu/android/pushservice/util/q$a;->d:Lcom/baidu/android/pushservice/util/q$a;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$a;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/baidu/android/pushservice/i/a;->b(Ljava/lang/String;)V

    sget-object v7, Lcom/baidu/android/pushservice/util/q$a;->k:Lcom/baidu/android/pushservice/util/q$a;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$a;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/baidu/android/pushservice/i/a;->f(Ljava/lang/String;)V

    sget-object v7, Lcom/baidu/android/pushservice/util/q$a;->h:Lcom/baidu/android/pushservice/util/q$a;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$a;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/baidu/android/pushservice/i/a;->d(Ljava/lang/String;)V

    sget-object v7, Lcom/baidu/android/pushservice/util/q$a;->c:Lcom/baidu/android/pushservice/util/q$a;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$a;->name()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v2, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/baidu/android/pushservice/i/a;->a(J)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_1

    :catch_0
    move-exception v4

    move-object v10, v4

    move-object v4, v2

    move-object v2, v10

    :goto_2
    :try_start_3
    const-string v7, "PushDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "e getADBehaviorEnumClassList "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_1

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    :goto_3
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v2, v5

    goto/16 :goto_0

    :cond_3
    :try_start_5
    move-object v0, v3

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    invoke-static {v2, v7, v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v2

    goto/16 :goto_1

    :cond_4
    if-eqz v2, :cond_5

    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2

    :catchall_1
    move-exception v2

    :goto_4
    if-eqz v4, :cond_6

    :try_start_7
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_2
    move-exception v4

    move-object v10, v4

    move-object v4, v2

    move-object v2, v10

    goto :goto_4

    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public static b(Landroid/content/Context;JJ)Z
    .locals 11

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    sget-object v6, Lcom/baidu/android/pushservice/util/q;->c:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->e(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    monitor-exit v6

    move v1, v3

    :goto_0
    return v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v7, Lcom/baidu/android/pushservice/util/q$d;->b:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " FROM "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, "PushBehavior"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " WHERE "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v7, Lcom/baidu/android/pushservice/util/q$d;->c:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " < "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " AND "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v7, Lcom/baidu/android/pushservice/util/q$d;->c:Lcom/baidu/android/pushservice/util/q$d;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$d;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " >= "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " ;"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    const/4 v8, 0x0

    :try_start_1
    instance-of v1, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_2

    invoke-virtual {v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    :cond_1
    :goto_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    sget-object v7, Lcom/baidu/android/pushservice/i/r;->t:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    move-result v5

    if-nez v5, :cond_1

    move v3, v4

    goto :goto_1

    :cond_2
    :try_start_3
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v7, v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v3, :cond_11

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v5, v1

    :goto_2
    if-eqz v3, :cond_8

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move v1, v3

    goto/16 :goto_0

    :catch_0
    move-exception v1

    move-object v10, v5

    move v5, v3

    move-object v3, v10

    :goto_3
    :try_start_5
    const-string v7, "PushDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "e isNeedUpload "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v3, :cond_5

    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v5, :cond_10

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v10, v3

    move v3, v5

    move-object v5, v10

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v10, v5

    move v5, v3

    move-object v3, v10

    :goto_4
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v5, :cond_7

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    :cond_8
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT COUNT(*) FROM ADPushBehavior WHERE "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v7, Lcom/baidu/android/pushservice/util/q$a;->c:Lcom/baidu/android/pushservice/util/q$a;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$a;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " < "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " AND "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v7, Lcom/baidu/android/pushservice/util/q$a;->c:Lcom/baidu/android/pushservice/util/q$a;

    invoke-virtual {v7}, Lcom/baidu/android/pushservice/util/q$a;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " >= "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " ;"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v7

    const/4 v8, 0x0

    :try_start_8
    instance-of v1, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_b

    invoke-virtual {v2, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v1, 0x0

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result v1

    if-lez v1, :cond_9

    move v3, v4

    :cond_9
    if-eqz v5, :cond_a

    :try_start_9
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v1, v3

    :goto_6
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_0

    :cond_b
    :try_start_a
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v7, v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-result-object v5

    goto :goto_5

    :catch_1
    move-exception v1

    move-object v4, v5

    :try_start_b
    const-string v5, "PushDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "e isNeedUpload"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    if-eqz v4, :cond_c

    :try_start_c
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_c
    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move v1, v3

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v4, v5

    :goto_7
    if-eqz v4, :cond_d

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_d
    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_e
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :catchall_3
    move-exception v1

    goto :goto_7

    :catchall_4
    move-exception v4

    move v5, v3

    move-object v3, v1

    move-object v1, v4

    goto/16 :goto_4

    :catchall_5
    move-exception v1

    goto/16 :goto_4

    :catch_2
    move-exception v5

    move-object v10, v5

    move v5, v3

    move-object v3, v1

    move-object v1, v10

    goto/16 :goto_3

    :cond_f
    move v1, v3

    goto :goto_6

    :cond_10
    move-object v10, v3

    move v3, v5

    move-object v5, v10

    goto/16 :goto_2

    :cond_11
    move-object v5, v1

    goto/16 :goto_2
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/android/pushservice/i/c;
    .locals 21

    sget-object v20, Lcom/baidu/android/pushservice/util/q;->c:Ljava/lang/Object;

    monitor-enter v20

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/baidu/android/pushservice/util/q;->e(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    monitor-exit v20

    :goto_0
    return-object v2

    :cond_0
    new-instance v18, Lcom/baidu/android/pushservice/i/c;

    invoke-direct/range {v18 .. v18}, Lcom/baidu/android/pushservice/i/c;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v19, 0x0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/baidu/android/pushservice/util/q$b;->b:Lcom/baidu/android/pushservice/util/q$b;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/q$b;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v3, "AlarmMsgInfo"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    instance-of v10, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v10, :cond_3

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v4

    :goto_1
    if-nez v4, :cond_4

    :try_start_2
    const-string v3, "PushDatabase"

    const-string v5, "no msgid info table!!"

    invoke-static {v3, v5}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v3, 0x0

    if-eqz v4, :cond_1

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v2, v3

    goto :goto_0

    :cond_3
    :try_start_4
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
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v4

    goto :goto_1

    :cond_4
    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_5

    const-string v3, "PushDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAlarmMsgInfo  msgID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    sget-object v3, Lcom/baidu/android/pushservice/util/q$b;->c:Lcom/baidu/android/pushservice/util/q$b;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/q$b;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, v18

    iput-wide v6, v0, Lcom/baidu/android/pushservice/i/c;->b:J

    sget-object v3, Lcom/baidu/android/pushservice/util/q$b;->d:Lcom/baidu/android/pushservice/util/q$b;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/q$b;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, v18

    iput-wide v6, v0, Lcom/baidu/android/pushservice/i/c;->c:J

    sget-object v3, Lcom/baidu/android/pushservice/util/q$b;->e:Lcom/baidu/android/pushservice/util/q$b;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/q$b;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    move-object/from16 v0, v18

    iput-wide v6, v0, Lcom/baidu/android/pushservice/i/c;->d:J

    sget-object v3, Lcom/baidu/android/pushservice/util/q$b;->g:Lcom/baidu/android/pushservice/util/q$b;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/q$b;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/baidu/android/pushservice/i/c;->e:I

    sget-object v3, Lcom/baidu/android/pushservice/util/q$b;->f:Lcom/baidu/android/pushservice/util/q$b;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/q$b;->name()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    move-object/from16 v0, v18

    iput v3, v0, Lcom/baidu/android/pushservice/i/c;->f:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_5
    if-eqz v4, :cond_6

    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_7
    :goto_2
    monitor-exit v20
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object/from16 v2, v18

    goto/16 :goto_0

    :catch_0
    move-exception v3

    move-object/from16 v4, v19

    :goto_3
    :try_start_7
    const-string v5, "PushDatabase"

    invoke-static {v5, v3}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v4, :cond_8

    :try_start_8
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v20
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v2

    :catchall_1
    move-exception v3

    move-object/from16 v4, v19

    :goto_4
    if-eqz v4, :cond_9

    :try_start_9
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_a
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_2
    move-exception v3

    goto :goto_4

    :catch_1
    move-exception v3

    goto :goto_3
.end method

.method public static c(Landroid/content/Context;)V
    .locals 11

    const/4 v4, 0x0

    sget-object v5, Lcom/baidu/android/pushservice/util/q;->c:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->e(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-nez v3, :cond_0

    monitor-exit v5

    :goto_0
    return-void

    :cond_0
    const-string v6, "SELECT * FROM AlarmMsgInfo;"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x0

    :try_start_1
    instance-of v2, v3, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_5

    invoke-virtual {v3, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    :cond_1
    :goto_1
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_6

    new-instance v4, Lcom/baidu/android/pushservice/i/c;

    invoke-direct {v4}, Lcom/baidu/android/pushservice/i/c;-><init>()V

    sget-object v6, Lcom/baidu/android/pushservice/util/q$b;->b:Lcom/baidu/android/pushservice/util/q$b;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/q$b;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/baidu/android/pushservice/i/c;->a:Ljava/lang/String;

    sget-object v6, Lcom/baidu/android/pushservice/util/q$b;->c:Lcom/baidu/android/pushservice/util/q$b;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/q$b;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/baidu/android/pushservice/i/c;->b:J

    sget-object v6, Lcom/baidu/android/pushservice/util/q$b;->d:Lcom/baidu/android/pushservice/util/q$b;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/q$b;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/baidu/android/pushservice/i/c;->c:J

    sget-object v6, Lcom/baidu/android/pushservice/util/q$b;->e:Lcom/baidu/android/pushservice/util/q$b;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/q$b;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    iput-wide v6, v4, Lcom/baidu/android/pushservice/i/c;->d:J

    sget-object v6, Lcom/baidu/android/pushservice/util/q$b;->g:Lcom/baidu/android/pushservice/util/q$b;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/q$b;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/baidu/android/pushservice/i/c;->e:I

    sget-object v6, Lcom/baidu/android/pushservice/util/q$b;->f:Lcom/baidu/android/pushservice/util/q$b;

    invoke-virtual {v6}, Lcom/baidu/android/pushservice/util/q$b;->name()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v4, Lcom/baidu/android/pushservice/i/c;->f:I

    iget v6, v4, Lcom/baidu/android/pushservice/i/c;->f:I

    if-eqz v6, :cond_2

    iget-wide v6, v4, Lcom/baidu/android/pushservice/i/c;->d:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    :cond_2
    iget-object v6, v4, Lcom/baidu/android/pushservice/i/c;->a:Ljava/lang/String;

    invoke-static {p0, v6}, Lcom/baidu/android/pushservice/util/q;->d(Landroid/content/Context;Ljava/lang/String;)V

    const-string v6, "PushDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "deleteInvalidAlarmMsg   msgID = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, v4, Lcom/baidu/android/pushservice/i/c;->a:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/16 :goto_1

    :catch_0
    move-exception v4

    move-object v10, v4

    move-object v4, v2

    move-object v2, v10

    :goto_2
    :try_start_3
    const-string v6, "PushDatabase"

    invoke-static {v6, v2}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v4, :cond_3

    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    :goto_3
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    :cond_5
    :try_start_5
    move-object v0, v3

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    invoke-static {v2, v6, v7}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v2

    goto/16 :goto_1

    :cond_6
    if-eqz v2, :cond_7

    :try_start_6
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_3

    :catchall_1
    move-exception v2

    :goto_4
    if-eqz v4, :cond_8

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_2
    move-exception v4

    move-object v10, v4

    move-object v4, v2

    move-object v2, v10

    goto :goto_4

    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method public static d(Landroid/content/Context;)J
    .locals 9

    sget-object v4, Lcom/baidu/android/pushservice/util/q;->c:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->e(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    if-nez v3, :cond_0

    const-wide/16 v2, 0x0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-wide v2

    :cond_0
    const/4 v5, -0x1

    :try_start_1
    const-string v6, "PushBehavior"

    const/4 v7, 0x0

    const/4 v8, 0x0

    instance-of v2, v3, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_1

    invoke-virtual {v3, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_1
    const-string v6, "ADPushBehavior"

    const/4 v7, 0x0

    const/4 v8, 0x0

    instance-of v2, v3, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_2

    invoke-virtual {v3, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_2
    const-string v6, "AppInfo"

    const/4 v7, 0x0

    const/4 v8, 0x0

    instance-of v2, v3, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_3

    invoke-virtual {v3, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    :try_start_2
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    int-to-long v2, v5

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_1
    :try_start_3
    move-object v0, v3

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    invoke-static {v2, v6, v7, v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_4
    const-string v6, "PushDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "clearBehaviorInfo Exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :cond_2
    :try_start_5
    move-object v0, v3

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    invoke-static {v2, v6, v7, v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    move-object v0, v3

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    invoke-static {v2, v6, v7, v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 19

    sget-object v18, Lcom/baidu/android/pushservice/util/q;->c:Ljava/lang/Object;

    monitor-enter v18

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/baidu/android/pushservice/util/q;->e(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-void

    :cond_0
    const/16 v17, 0x0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/baidu/android/pushservice/util/q$b;->b:Lcom/baidu/android/pushservice/util/q$b;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/q$b;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "AlarmMsgInfo"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    instance-of v9, v1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v9, :cond_3

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    :goto_1
    if-nez v3, :cond_4

    :try_start_2
    const-string v2, "PushDatabase"

    const-string v4, "no msgid info table!!"

    invoke-static {v2, v4}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_1

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    monitor-exit v18

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    :cond_3
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
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v3

    goto :goto_1

    :cond_4
    :try_start_5
    const-string v4, "AlarmMsgInfo"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/baidu/android/pushservice/util/q$b;->b:Lcom/baidu/android/pushservice/util/q$b;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/q$b;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "= ?"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v6, v2

    instance-of v2, v1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_7

    invoke-virtual {v1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_2
    const-string v2, "PushDatabase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteAlarmMsg  msgID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v3, :cond_5

    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    :goto_3
    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :cond_7
    :try_start_7
    move-object v0, v1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    invoke-static {v2, v4, v5, v6}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catch_0
    move-exception v2

    :goto_4
    :try_start_8
    const-string v4, "PushDatabase"

    invoke-static {v4, v2}, Lcom/baidu/android/pushservice/h/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v3, :cond_8

    :try_start_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_3

    :catchall_1
    move-exception v2

    move-object/from16 v3, v17

    :goto_5
    if-eqz v3, :cond_9

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_a
    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :catchall_2
    move-exception v2

    goto :goto_5

    :catch_1
    move-exception v2

    move-object/from16 v3, v17

    goto :goto_4
.end method

.method private static e(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 5

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/baidu/android/pushservice/util/q;->f(Landroid/content/Context;)Lcom/baidu/android/pushservice/util/q$f;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Lcom/baidu/android/pushservice/util/q$f;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "PushDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDb Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static e(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 22

    sget-object v20, Lcom/baidu/android/pushservice/util/q;->c:Ljava/lang/Object;

    monitor-enter v20

    const/16 v18, 0x1

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/baidu/android/pushservice/util/q;->e(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const/16 v19, 0x0

    if-nez v2, :cond_0

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v2, v18

    :goto_0
    return v2

    :cond_0
    :try_start_1
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/baidu/android/pushservice/util/q$j;->b:Lcom/baidu/android/pushservice/util/q$j;

    invoke-virtual {v4}, Lcom/baidu/android/pushservice/util/q$j;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v3, "MsgInfo"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    instance-of v10, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v10, :cond_3

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v4

    :goto_1
    if-nez v4, :cond_4

    :try_start_2
    const-string v3, "PushDatabase"

    const-string v5, "no msgid info table!!"

    invoke-static {v3, v5}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_1

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    monitor-exit v20
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move/from16 v2, v18

    goto :goto_0

    :cond_3
    :try_start_4
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
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-result-object v4

    goto :goto_1

    :cond_4
    :try_start_5
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_a

    const-string v3, "PushDatabase"

    const-string v5, "msgid is duplicate"

    invoke-static {v3, v5}, Lcom/baidu/android/pushservice/h/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE MsgInfo SET "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/baidu/android/pushservice/util/q$j;->c:Lcom/baidu/android/pushservice/util/q$j;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/q$j;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " WHERE "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v5, Lcom/baidu/android/pushservice/util/q$j;->b:Lcom/baidu/android/pushservice/util/q$j;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    instance-of v3, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_7

    invoke-virtual {v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    const/4 v3, 0x0

    if-eqz v4, :cond_5

    :try_start_6
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    monitor-exit v20
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move v2, v3

    goto/16 :goto_0

    :cond_7
    :try_start_7
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-static {v3, v5}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v3

    :goto_3
    :try_start_8
    const-string v5, "PushDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-eqz v4, :cond_8

    :try_start_9
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_8

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9
    monitor-exit v20
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_a
    :try_start_a
    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentValues;->clear()V

    sget-object v3, Lcom/baidu/android/pushservice/util/q$j;->b:Lcom/baidu/android/pushservice/util/q$j;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/q$j;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/baidu/android/pushservice/util/q$j;->c:Lcom/baidu/android/pushservice/util/q$j;

    invoke-virtual {v3}, Lcom/baidu/android/pushservice/util/q$j;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v5, "MsgInfo"

    const/4 v6, 0x0

    instance-of v3, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_e

    move-object/from16 v0, v21

    invoke-virtual {v2, v5, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :goto_4
    const-string v3, "PushDatabase"

    const-string v5, "insert normal msgid"

    invoke-static {v3, v5}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "SELECT COUNT(*) FROM MsgInfo;"

    const/4 v6, 0x0

    instance-of v3, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_11

    invoke-virtual {v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v3, 0x0

    invoke-interface {v4, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v5, "PushDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "msgID count = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget v5, Lcom/baidu/android/pushservice/util/q;->d:I

    if-le v3, v5, :cond_b

    const-string v5, "MsgInfo"

    const/4 v6, 0x0

    const/4 v7, 0x0

    instance-of v3, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_12

    invoke-virtual {v2, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_6
    const-string v3, "PushDatabase"

    const-string v5, "delete msgid info table!!"

    invoke-static {v3, v5}, Lcom/baidu/android/pushservice/h/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_b
    if-eqz v4, :cond_c

    :try_start_b
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_d
    monitor-exit v20
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_e
    :try_start_c
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    move-object/from16 v0, v21

    invoke-static {v3, v5, v6, v0}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v3

    :goto_7
    if-eqz v4, :cond_f

    :try_start_d
    invoke-interface {v4}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_f

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_f
    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_10
    throw v3

    :catchall_1
    move-exception v2

    monitor-exit v20
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    throw v2

    :cond_11
    :try_start_e
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-static {v3, v5, v6}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    goto :goto_5

    :cond_12
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    invoke-static {v3, v5, v6, v7}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_6

    :catchall_2
    move-exception v3

    move-object/from16 v4, v19

    goto :goto_7

    :catch_1
    move-exception v3

    move-object/from16 v4, v19

    goto/16 :goto_3
.end method

.method private static f(Landroid/content/Context;)Lcom/baidu/android/pushservice/util/q$f;
    .locals 5

    sget-object v1, Lcom/baidu/android/pushservice/util/q;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/android/pushservice/util/q;->a:Lcom/baidu/android/pushservice/util/q$f;

    if-nez v0, :cond_0

    const-string v0, "pushstat_5.2.0.db"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pushstat_5.2.0.db"

    invoke-static {v2, p0}, Lcom/baidu/android/pushservice/util/q;->a(Ljava/lang/String;Landroid/content/Context;)V

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    new-instance v2, Lcom/baidu/android/pushservice/util/q$e;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/baidu/android/pushservice/util/q$e;-><init>(Lcom/baidu/android/pushservice/util/q$1;)V

    sput-object v2, Lcom/baidu/android/pushservice/util/q;->b:Lcom/baidu/android/pushservice/util/q$e;

    new-instance v2, Lcom/baidu/android/pushservice/util/q$f;

    const/4 v3, 0x2

    sget-object v4, Lcom/baidu/android/pushservice/util/q;->b:Lcom/baidu/android/pushservice/util/q$e;

    invoke-direct {v2, p0, v0, v3, v4}, Lcom/baidu/android/pushservice/util/q$f;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/database/DatabaseErrorHandler;)V

    sput-object v2, Lcom/baidu/android/pushservice/util/q;->a:Lcom/baidu/android/pushservice/util/q$f;

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/baidu/android/pushservice/util/q;->a:Lcom/baidu/android/pushservice/util/q$f;

    return-object v0

    :cond_1
    :try_start_1
    new-instance v2, Lcom/baidu/android/pushservice/util/q$f;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v0, v3}, Lcom/baidu/android/pushservice/util/q$f;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    sput-object v2, Lcom/baidu/android/pushservice/util/q;->a:Lcom/baidu/android/pushservice/util/q$f;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static f(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 19

    sget-object v18, Lcom/baidu/android/pushservice/util/q;->c:Ljava/lang/Object;

    monitor-enter v18

    :try_start_0
    invoke-static/range {p0 .. p0}, Lcom/baidu/android/pushservice/util/q;->e(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v18
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    return-object v1

    :cond_0
    const/16 v17, 0x0

    :try_start_1
    const-string v2, "NoDisturb"

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/baidu/android/pushservice/util/q$k;->a:Lcom/baidu/android/pushservice/util/q$k;

    invoke-virtual {v5}, Lcom/baidu/android/pushservice/util/q$k;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "= ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    instance-of v9, v1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v9, :cond_3

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_7

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcom/baidu/android/pushservice/util/q$k;->b:Lcom/baidu/android/pushservice/util/q$k;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$k;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    sget-object v2, Lcom/baidu/android/pushservice/util/q$k;->c:Lcom/baidu/android/pushservice/util/q$k;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$k;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    sget-object v2, Lcom/baidu/android/pushservice/util/q$k;->d:Lcom/baidu/android/pushservice/util/q$k;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$k;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    sget-object v2, Lcom/baidu/android/pushservice/util/q$k;->e:Lcom/baidu/android/pushservice/util/q$k;

    invoke-virtual {v2}, Lcom/baidu/android/pushservice/util/q$k;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const-string v2, "PushDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " disturb data is found! startHour: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " startMinute: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " endHour: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " endMinute: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/baidu/android/pushservice/h/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_4

    if-nez v5, :cond_4

    if-nez v6, :cond_4

    if-nez v7, :cond_4

    const/4 v2, 0x0

    new-array v2, v2, [I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v3, :cond_1

    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_2
    monitor-exit v18
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v2

    goto/16 :goto_0

    :cond_3
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

    goto/16 :goto_1

    :cond_4
    const/4 v2, 0x4

    :try_start_5
    new-array v2, v2, [I

    const/4 v8, 0x0

    aput v4, v2, v8

    const/4 v4, 0x1

    aput v5, v2, v4

    const/4 v4, 0x2

    aput v6, v2, v4

    const/4 v4, 0x3

    aput v7, v2, v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v3, :cond_5

    :try_start_6
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    monitor-exit v18

    move-object v1, v2

    goto/16 :goto_0

    :cond_7
    if-eqz v3, :cond_8

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9
    :goto_2
    const/4 v1, 0x0

    monitor-exit v18

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v18
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v1

    :catch_0
    move-exception v2

    move-object/from16 v3, v17

    :goto_3
    :try_start_7
    const-string v4, "PushDatabase"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/baidu/android/pushservice/h/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v3, :cond_a

    :try_start_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object/from16 v3, v17

    :goto_4
    if-eqz v3, :cond_b

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_b
    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_c
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :catchall_2
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v2

    goto :goto_3
.end method
