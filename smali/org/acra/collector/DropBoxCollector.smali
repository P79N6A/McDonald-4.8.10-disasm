.class final Lorg/acra/collector/DropBoxCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final SYSTEM_TAGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "system_app_anr"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "system_app_wtf"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "system_app_crash"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "system_server_anr"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "system_server_wtf"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "system_server_crash"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "BATTERY_DISCHARGE_INFO"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "SYSTEM_RECOVERY_LOG"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "SYSTEM_BOOT"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "SYSTEM_LAST_KMSG"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "APANIC_CONSOLE"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "APANIC_THREADS"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SYSTEM_RESTART"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "SYSTEM_TOMBSTONE"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "data_app_strictmode"

    aput-object v2, v0, v1

    sput-object v0, Lorg/acra/collector/DropBoxCollector;->SYSTEM_TAGS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static read(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "additionalTags"    # [Ljava/lang/String;

    .prologue
    .line 60
    :try_start_0
    invoke-static {}, Lorg/acra/collector/Compatibility;->getDropBoxServiceName()Ljava/lang/String;

    move-result-object v2

    .line 61
    if-nez v2, :cond_0

    .line 62
    const-string v2, "N/A"

    .line 131
    :goto_0
    return-object v2

    .line 65
    :cond_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 66
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getNextEntry"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v4, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 67
    if-nez v6, :cond_1

    .line 68
    const-string v2, ""

    goto :goto_0

    .line 71
    :cond_1
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 72
    invoke-virtual {v7}, Landroid/text/format/Time;->setToNow()V

    .line 73
    iget v2, v7, Landroid/text/format/Time;->minute:I

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/acra/ACRAConfiguration;->dropboxCollectionMinutes()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v7, Landroid/text/format/Time;->minute:I

    .line 74
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 75
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v8

    .line 77
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/ACRAConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lorg/acra/ACRAConfiguration;->includeDropBoxSystemTags()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 79
    sget-object v3, Lorg/acra/collector/DropBoxCollector;->SYSTEM_TAGS:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 81
    :cond_2
    if-eqz p1, :cond_3

    move-object/from16 v0, p1

    array-length v3, v0

    if-lez v3, :cond_3

    .line 82
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 85
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 86
    const-string v2, "No tag configured for collection."

    goto :goto_0

    .line 89
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 91
    const-string v3, "Tag: "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v3, v4

    invoke-virtual {v6, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 93
    if-nez v3, :cond_6

    .line 94
    const-string v2, "Nothing.\n"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_1

    .line 118
    :catch_0
    move-exception v2

    sget-object v2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "DropBoxManager not available."

    invoke-interface {v2, v3, v4}, Lorg/acra/log/ACRALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :goto_2
    const-string v2, "N/A"

    goto/16 :goto_0

    .line 98
    :cond_6
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v12, "getText"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v13, v14

    invoke-virtual {v4, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    .line 99
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v13, "getTimeMillis"

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v13

    .line 100
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v14, "close"

    const/4 v15, 0x0

    invoke-virtual {v4, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v14

    move-object v4, v3

    .line 101
    :goto_3
    if-eqz v4, :cond_5

    .line 102
    const/4 v3, 0x0

    invoke-virtual {v13, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 103
    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 104
    const-string v3, "@"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v15, 0xa

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v15, 0x0

    const/16 v18, 0x1f4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v3, v15

    invoke-virtual {v12, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 106
    if-eqz v3, :cond_7

    .line 107
    const-string v15, "Text: "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v15, 0xa

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 111
    :goto_4
    const/4 v3, 0x0

    invoke-virtual {v14, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v3, v4

    invoke-virtual {v6, v5, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    .line 113
    goto :goto_3

    .line 109
    :cond_7
    const-string v3, "Not Text!\n"

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_4

    .line 120
    :catch_1
    move-exception v2

    sget-object v2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "DropBoxManager not available."

    invoke-interface {v2, v3, v4}, Lorg/acra/log/ACRALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 115
    :cond_8
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v2

    goto/16 :goto_0

    .line 122
    :catch_2
    move-exception v2

    sget-object v2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "DropBoxManager not available."

    invoke-interface {v2, v3, v4}, Lorg/acra/log/ACRALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 124
    :catch_3
    move-exception v2

    sget-object v2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "DropBoxManager not available."

    invoke-interface {v2, v3, v4}, Lorg/acra/log/ACRALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 126
    :catch_4
    move-exception v2

    sget-object v2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "DropBoxManager not available."

    invoke-interface {v2, v3, v4}, Lorg/acra/log/ACRALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 128
    :catch_5
    move-exception v2

    sget-object v2, Lorg/acra/ACRA;->log:Lorg/acra/log/ACRALog;

    sget-object v3, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v4, "DropBoxManager not available."

    invoke-interface {v2, v3, v4}, Lorg/acra/log/ACRALog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method
