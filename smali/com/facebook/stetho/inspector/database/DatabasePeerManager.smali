.class public Lcom/facebook/stetho/inspector/database/DatabasePeerManager;
.super Lcom/facebook/stetho/inspector/helper/ChromePeerManager;
.source "DatabasePeerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/stetho/inspector/database/DatabasePeerManager$ExecuteResultHandler;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final UNINTERESTING_FILENAME_SUFFIXES:[Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDatabaseFilesProvider:Lcom/facebook/stetho/inspector/database/DatabaseFilesProvider;

.field private final mPeerRegistrationListener:Lcom/facebook/stetho/inspector/helper/PeerRegistrationListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "-journal"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-shm"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "-uid"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "-wal"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/stetho/inspector/database/DatabasePeerManager;->UNINTERESTING_FILENAME_SUFFIXES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcom/facebook/stetho/inspector/database/DefaultDatabaseFilesProvider;

    invoke-direct {v0, p1}, Lcom/facebook/stetho/inspector/database/DefaultDatabaseFilesProvider;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/facebook/stetho/inspector/database/DatabasePeerManager;-><init>(Landroid/content/Context;Lcom/facebook/stetho/inspector/database/DatabaseFilesProvider;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/stetho/inspector/database/DatabaseFilesProvider;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseFilesProvider"    # Lcom/facebook/stetho/inspector/database/DatabaseFilesProvider;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/facebook/stetho/inspector/helper/ChromePeerManager;-><init>()V

    .line 229
    new-instance v0, Lcom/facebook/stetho/inspector/database/DatabasePeerManager$1;

    invoke-direct {v0, p0}, Lcom/facebook/stetho/inspector/database/DatabasePeerManager$1;-><init>(Lcom/facebook/stetho/inspector/database/DatabasePeerManager;)V

    iput-object v0, p0, Lcom/facebook/stetho/inspector/database/DatabasePeerManager;->mPeerRegistrationListener:Lcom/facebook/stetho/inspector/helper/PeerRegistrationListener;

    .line 66
    iput-object p1, p0, Lcom/facebook/stetho/inspector/database/DatabasePeerManager;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/facebook/stetho/inspector/database/DatabasePeerManager;->mDatabaseFilesProvider:Lcom/facebook/stetho/inspector/database/DatabaseFilesProvider;

    .line 68
    iget-object v0, p0, Lcom/facebook/stetho/inspector/database/DatabasePeerManager;->mPeerRegistrationListener:Lcom/facebook/stetho/inspector/helper/PeerRegistrationListener;

    invoke-virtual {p0, v0}, Lcom/facebook/stetho/inspector/database/DatabasePeerManager;->setListener(Lcom/facebook/stetho/inspector/helper/PeerRegistrationListener;)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/stetho/inspector/database/DatabasePeerManager;Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;)V
    .locals 0
    .param p0, "x0"    # Lcom/facebook/stetho/inspector/database/DatabasePeerManager;
    .param p1, "x1"    # Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/facebook/stetho/inspector/database/DatabasePeerManager;->bootstrapNewPeer(Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;)V

    return-void
.end method

.method private bootstrapNewPeer(Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;)V
    .locals 8
    .param p1, "peer"    # Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;

    .prologue
    .line 72
    iget-object v5, p0, Lcom/facebook/stetho/inspector/database/DatabasePeerManager;->mDatabaseFilesProvider:Lcom/facebook/stetho/inspector/database/DatabaseFilesProvider;

    invoke-interface {v5}, Lcom/facebook/stetho/inspector/database/DatabaseFilesProvider;->getDatabaseFiles()Ljava/util/List;

    move-result-object v3

    .line 73
    .local v3, "potentialDatabaseFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 74
    invoke-static {v3}, Lcom/facebook/stetho/inspector/database/DatabasePeerManager;->tidyDatabaseList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 75
    .local v4, "tidiedList":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/io/File;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 76
    .local v0, "database":Ljava/io/File;
    new-instance v1, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabaseObject;

    invoke-direct {v1}, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabaseObject;-><init>()V

    .line 77
    .local v1, "databaseParams":Lcom/facebook/stetho/inspector/protocol/module/Database$DatabaseObject;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabaseObject;->id:Ljava/lang/String;

    .line 78
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabaseObject;->name:Ljava/lang/String;

    .line 79
    iget-object v6, p0, Lcom/facebook/stetho/inspector/database/DatabasePeerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabaseObject;->domain:Ljava/lang/String;

    .line 80
    const-string v6, "N/A"

    iput-object v6, v1, Lcom/facebook/stetho/inspector/protocol/module/Database$DatabaseObject;->version:Ljava/lang/String;

    .line 81
    new-instance v2, Lcom/facebook/stetho/inspector/protocol/module/Database$AddDatabaseEvent;

    invoke-direct {v2}, Lcom/facebook/stetho/inspector/protocol/module/Database$AddDatabaseEvent;-><init>()V

    .line 82
    .local v2, "eventParams":Lcom/facebook/stetho/inspector/protocol/module/Database$AddDatabaseEvent;
    iput-object v1, v2, Lcom/facebook/stetho/inspector/protocol/module/Database$AddDatabaseEvent;->database:Lcom/facebook/stetho/inspector/protocol/module/Database$DatabaseObject;

    .line 84
    const-string v6, "Database.addDatabase"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v2, v7}, Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;->invokeMethod(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/stetho/inspector/jsonrpc/PendingRequestCallback;)V

    goto :goto_0

    .line 86
    .end local v0    # "database":Ljava/io/File;
    .end local v1    # "databaseParams":Lcom/facebook/stetho/inspector/protocol/module/Database$DatabaseObject;
    .end local v2    # "eventParams":Lcom/facebook/stetho/inspector/protocol/module/Database$AddDatabaseEvent;
    :cond_0
    return-void
.end method

.method private executeInsert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/facebook/stetho/inspector/database/DatabasePeerManager$ExecuteResultHandler;)Ljava/lang/Object;
    .locals 4
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Lcom/facebook/stetho/inspector/database/DatabasePeerManager$ExecuteResultHandler",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 184
    .local p3, "handler":Lcom/facebook/stetho/inspector/database/DatabasePeerManager$ExecuteResultHandler;, "Lcom/facebook/stetho/inspector/database/DatabasePeerManager$ExecuteResultHandler<TT;>;"
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 185
    .local v2, "statement":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    move-result-wide v0

    .line 186
    .local v0, "count":J
    invoke-interface {p3, v0, v1}, Lcom/facebook/stetho/inspector/database/DatabasePeerManager$ExecuteResultHandler;->handleInsert(J)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method private executeRawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/facebook/stetho/inspector/database/DatabasePeerManager$ExecuteResultHandler;)Ljava/lang/Object;
    .locals 1
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Lcom/facebook/stetho/inspector/database/DatabasePeerManager$ExecuteResultHandler",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 205
    .local p3, "handler":Lcom/facebook/stetho/inspector/database/DatabasePeerManager$ExecuteResultHandler;, "Lcom/facebook/stetho/inspector/database/DatabasePeerManager$ExecuteResultHandler<TT;>;"
    instance-of v0, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 206
    .end local p1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :goto_0
    invoke-interface {p3}, Lcom/facebook/stetho/inspector/database/DatabasePeerManager$ExecuteResultHandler;->handleRawQuery()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 205
    .restart local p1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .end local p1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p1, p2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private executeSelect(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/facebook/stetho/inspector/database/DatabasePeerManager$ExecuteResultHandler;)Ljava/lang/Object;
    .locals 3
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Lcom/facebook/stetho/inspector/database/DatabasePeerManager$ExecuteResultHandler",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 193
    .local p3, "handler":Lcom/facebook/stetho/inspector/database/DatabasePeerManager$ExecuteResultHandler;, "Lcom/facebook/stetho/inspector/database/DatabasePeerManager$ExecuteResultHandler<TT;>;"
    const/4 v1, 0x0

    instance-of v2, p1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    invoke-virtual {p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 195
    .end local p1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {p3, v0}, Lcom/facebook/stetho/inspector/database/DatabasePeerManager$ExecuteResultHandler;->handleSelect(Landroid/database/Cursor;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 197
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-object v1

    .line 193
    .end local v0    # "cursor":Landroid/database/Cursor;
    .restart local p1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    :cond_0
    check-cast p1, Landroid/database/sqlite/SQLiteDatabase;

    .end local p1    # "database":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p1, p2, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 197
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private executeUpdateDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/facebook/stetho/inspector/database/DatabasePeerManager$ExecuteResultHandler;)Ljava/lang/Object;
    .locals 3
    .param p1, "database"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "query"    # Ljava/lang/String;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Lcom/facebook/stetho/inspector/database/DatabasePeerManager$ExecuteResultHandler",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 175
    .local p3, "handler":Lcom/facebook/stetho/inspector/database/DatabasePeerManager$ExecuteResultHandler;, "Lcom/facebook/stetho/inspector/database/DatabasePeerManager$ExecuteResultHandler<TT;>;"
    invoke-virtual {p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 176
    .local v1, "statement":Landroid/database/sqlite/SQLiteStatement;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    move-result v0

    .line 177
    .local v0, "count":I
    invoke-interface {p3, v0}, Lcom/facebook/stetho/inspector/database/DatabasePeerManager$ExecuteResultHandler;->handleUpdateDelete(I)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method private static getFirstWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 166
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 167
    .local v0, "firstSpace":I
    if-ltz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .end local p0    # "s":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private openDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 4
    .param p1, "databaseName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-static {p1}, Lcom/facebook/stetho/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v1, p0, Lcom/facebook/stetho/inspector/database/DatabasePeerManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 214
    .local v0, "databaseFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    return-object v1
.end method

.method private static removeSuffix(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .param p1, "suffixesToRemove"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 111
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, p1, v1

    .line 112
    .local v0, "suffix":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 113
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v1, v3

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 116
    .end local v0    # "suffix":Ljava/lang/String;
    .end local p0    # "str":Ljava/lang/String;
    :cond_0
    return-object p0

    .line 111
    .restart local v0    # "suffix":Ljava/lang/String;
    .restart local p0    # "str":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static tidyDatabaseList(Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "databaseFiles":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 99
    .local v2, "originalAsSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/io/File;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v4, "tidiedList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 101
    .local v0, "databaseFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 102
    .local v1, "databaseFilename":Ljava/lang/String;
    sget-object v6, Lcom/facebook/stetho/inspector/database/DatabasePeerManager;->UNINTERESTING_FILENAME_SUFFIXES:[Ljava/lang/String;

    invoke-static {v1, v6}, Lcom/facebook/stetho/inspector/database/DatabasePeerManager;->removeSuffix(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "sansSuffix":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 104
    :cond_1
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    .end local v0    # "databaseFile":Ljava/io/File;
    .end local v1    # "databaseFilename":Ljava/lang/String;
    .end local v3    # "sansSuffix":Ljava/lang/String;
    :cond_2
    return-object v4
.end method


# virtual methods
.method public executeSQL(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/stetho/inspector/database/DatabasePeerManager$ExecuteResultHandler;)Ljava/lang/Object;
    .locals 4
    .param p1, "databaseName"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/stetho/inspector/database/DatabasePeerManager$ExecuteResultHandler",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 141
    .local p3, "handler":Lcom/facebook/stetho/inspector/database/DatabasePeerManager$ExecuteResultHandler;, "Lcom/facebook/stetho/inspector/database/DatabasePeerManager$ExecuteResultHandler<TT;>;"
    invoke-static {p2}, Lcom/facebook/stetho/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {p3}, Lcom/facebook/stetho/common/Util;->throwIfNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-direct {p0, p1}, Lcom/facebook/stetho/inspector/database/DatabasePeerManager;->openDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 145
    .local v0, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {p2}, Lcom/facebook/stetho/inspector/database/DatabasePeerManager;->getFirstWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "firstWordUpperCase":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 157
    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/stetho/inspector/database/DatabasePeerManager;->executeRawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/facebook/stetho/inspector/database/DatabasePeerManager$ExecuteResultHandler;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 160
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :goto_1
    return-object v2

    .line 146
    :sswitch_0
    :try_start_1
    const-string v3, "UPDATE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "DELETE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "INSERT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "SELECT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "PRAGMA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "EXPLAIN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    .line 149
    :pswitch_0
    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/stetho/inspector/database/DatabasePeerManager;->executeUpdateDelete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/facebook/stetho/inspector/database/DatabasePeerManager$ExecuteResultHandler;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 160
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 151
    :pswitch_1
    :try_start_2
    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/stetho/inspector/database/DatabasePeerManager;->executeInsert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/facebook/stetho/inspector/database/DatabasePeerManager$ExecuteResultHandler;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 160
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 155
    :pswitch_2
    :try_start_3
    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/stetho/inspector/database/DatabasePeerManager;->executeSelect(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/facebook/stetho/inspector/database/DatabasePeerManager$ExecuteResultHandler;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    .line 160
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .end local v1    # "firstWordUpperCase":Ljava/lang/String;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v2

    .line 146
    :sswitch_data_0
    .sparse-switch
        -0x7efc4947 -> :sswitch_2
        -0x72da26c4 -> :sswitch_4
        -0x6e6dd704 -> :sswitch_3
        -0x6a6cd337 -> :sswitch_0
        -0x233caf29 -> :sswitch_5
        0x77f979ab -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getDatabaseTableNames(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p1, "databaseName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/sqlite/SQLiteException;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/facebook/stetho/inspector/database/DatabasePeerManager;->openDatabase(Ljava/lang/String;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 123
    .local v2, "database":Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    const-string v5, "SELECT name FROM sqlite_master WHERE type=?"

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v7, "table"

    aput-object v7, v6, v4

    instance-of v4, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-virtual {v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 126
    .local v1, "cursor":Landroid/database/Cursor;
    :goto_0
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 127
    .local v3, "tableNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 128
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 132
    .end local v3    # "tableNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 135
    .end local v1    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v4

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v4

    .line 123
    :cond_0
    :try_start_3
    move-object v0, v2

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v4, v0

    invoke-static {v4, v5, v6}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0

    .line 132
    .restart local v1    # "cursor":Landroid/database/Cursor;
    .restart local v3    # "tableNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 135
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    return-object v3
.end method
