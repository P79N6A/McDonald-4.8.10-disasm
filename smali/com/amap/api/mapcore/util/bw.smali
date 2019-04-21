.class public Lcom/amap/api/mapcore/util/bw;
.super Ljava/lang/Object;
.source "OfflineDBCreator.java"

# interfaces
.implements Lcom/amap/api/mapcore/util/ej;


# static fields
.field private static volatile a:Lcom/amap/api/mapcore/util/bw;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    return-void
.end method

.method public static a()Lcom/amap/api/mapcore/util/bw;
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lcom/amap/api/mapcore/util/bw;->a:Lcom/amap/api/mapcore/util/bw;

    if-nez v0, :cond_1

    .line 87
    const-class v1, Lcom/amap/api/mapcore/util/bw;

    monitor-enter v1

    .line 88
    :try_start_0
    sget-object v0, Lcom/amap/api/mapcore/util/bw;->a:Lcom/amap/api/mapcore/util/bw;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/amap/api/mapcore/util/bw;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/bw;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore/util/bw;->a:Lcom/amap/api/mapcore/util/bw;

    .line 91
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_1
    sget-object v0, Lcom/amap/api/mapcore/util/bw;->a:Lcom/amap/api/mapcore/util/bw;

    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    .prologue
    .line 104
    :try_start_0
    const-string v2, "CREATE TABLE IF NOT EXISTS update_item (_id integer primary key autoincrement, title  TEXT, url TEXT,mAdcode TEXT,fileName TEXT,version TEXT,lLocalLength INTEGER,lRemoteLength INTEGER,localPath TEXT,mIndex INTEGER,isProvince INTEGER NOT NULL,mCompleteCode INTEGER,mCityCode TEXT,mState INTEGER, UNIQUE(mAdcode));"

    instance-of v1, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    :goto_0
    const-string v2, "CREATE TABLE IF NOT EXISTS update_item_file (_id integer primary key autoincrement,mAdcode TTEXT, file TEXT);"

    instance-of v1, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_1

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 106
    :goto_1
    const-string v1, "CREATE TABLE IF NOT EXISTS update_item_download_info (_id integer primary key autoincrement,mAdcode TEXT,fileLength integer,splitter integer,startPos integer,endPos integer, UNIQUE(mAdcode));"

    instance-of v2, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_2

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 112
    :goto_2
    return-void

    .line 104
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v1

    .line 108
    const-string v2, "DB"

    const-string v3, "onCreate"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/ee;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 105
    :cond_1
    :try_start_1
    move-object v0, p1

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, v0

    invoke-static {v1, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_1

    .line 106
    :cond_2
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p1, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, "offlineDbV4.db"

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 121
    const/4 v0, 0x1

    return v0
.end method
