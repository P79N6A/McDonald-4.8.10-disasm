.class public Lcom/facebook/stetho/inspector/protocol/module/Database;
.super Ljava/lang/Object;
.source "Database.java"

# interfaces
.implements Lcom/facebook/stetho/inspector/protocol/ChromeDevtoolsDomain;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/stetho/inspector/protocol/module/Database$Error;,
        Lcom/facebook/stetho/inspector/protocol/module/Database$DatabaseObject;,
        Lcom/facebook/stetho/inspector/protocol/module/Database$AddDatabaseEvent;,
        Lcom/facebook/stetho/inspector/protocol/module/Database$ExecuteSQLResponse;,
        Lcom/facebook/stetho/inspector/protocol/module/Database$ExecuteSQLRequest;,
        Lcom/facebook/stetho/inspector/protocol/module/Database$GetDatabaseTableNamesResponse;,
        Lcom/facebook/stetho/inspector/protocol/module/Database$GetDatabaseTableNamesRequest;
    }
.end annotation


# static fields
.field private static final MAX_EXECUTE_RESULTS:I = 0xfa


# instance fields
.field private final mDatabasePeerManager:Lcom/facebook/stetho/inspector/database/DatabasePeerManager;

.field private final mObjectMapper:Lcom/facebook/stetho/json/ObjectMapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/facebook/stetho/inspector/database/DatabasePeerManager;

    invoke-direct {v0, p1}, Lcom/facebook/stetho/inspector/database/DatabasePeerManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/stetho/inspector/protocol/module/Database;->mDatabasePeerManager:Lcom/facebook/stetho/inspector/database/DatabasePeerManager;

    .line 59
    new-instance v0, Lcom/facebook/stetho/json/ObjectMapper;

    invoke-direct {v0}, Lcom/facebook/stetho/json/ObjectMapper;-><init>()V

    iput-object v0, p0, Lcom/facebook/stetho/inspector/protocol/module/Database;->mObjectMapper:Lcom/facebook/stetho/json/ObjectMapper;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/stetho/inspector/database/DatabaseFilesProvider;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "databaseFilesProvider"    # Lcom/facebook/stetho/inspector/database/DatabaseFilesProvider;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/facebook/stetho/inspector/database/DatabasePeerManager;

    invoke-direct {v0, p1, p2}, Lcom/facebook/stetho/inspector/database/DatabasePeerManager;-><init>(Landroid/content/Context;Lcom/facebook/stetho/inspector/database/DatabaseFilesProvider;)V

    iput-object v0, p0, Lcom/facebook/stetho/inspector/protocol/module/Database;->mDatabasePeerManager:Lcom/facebook/stetho/inspector/database/DatabasePeerManager;

    .line 68
    new-instance v0, Lcom/facebook/stetho/json/ObjectMapper;

    invoke-direct {v0}, Lcom/facebook/stetho/json/ObjectMapper;-><init>()V

    iput-object v0, p0, Lcom/facebook/stetho/inspector/protocol/module/Database;->mObjectMapper:Lcom/facebook/stetho/json/ObjectMapper;

    .line 69
    return-void
.end method

.method static synthetic access$200(Lcom/facebook/stetho/inspector/protocol/module/Database;Landroid/database/Cursor;I)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/stetho/inspector/protocol/module/Database;
    .param p1, "x1"    # Landroid/database/Cursor;
    .param p2, "x2"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/facebook/stetho/inspector/protocol/module/Database;->flattenRows(Landroid/database/Cursor;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private flattenRows(Landroid/database/Cursor;I)Ljava/util/List;
    .locals 6
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    if-ltz p2, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Lcom/facebook/stetho/common/Util;->throwIfNot(Z)V

    .line 160
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v1, "flatList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v2

    .line 162
    .local v2, "numColumns":I
    const/4 v3, 0x0

    .local v3, "row":I
    :goto_1
    if-ge v3, p2, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 163
    const/4 v0, 0x0

    .local v0, "column":I
    :goto_2
    if-ge v0, v2, :cond_1

    .line 164
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getType(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 179
    :pswitch_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 159
    .end local v0    # "column":I
    .end local v1    # "flatList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v2    # "numColumns":I
    .end local v3    # "row":I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 166
    .restart local v0    # "column":I
    .restart local v1    # "flatList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .restart local v2    # "numColumns":I
    .restart local v3    # "row":I
    :pswitch_1
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 169
    :pswitch_2
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 172
    :pswitch_3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 175
    :pswitch_4
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 162
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 184
    .end local v0    # "column":I
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v4

    if-nez v4, :cond_3

    .line 185
    const/4 v0, 0x0

    .restart local v0    # "column":I
    :goto_4
    if-ge v0, v2, :cond_3

    .line 186
    const-string/jumbo v4, "{truncated}"

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 189
    .end local v0    # "column":I
    :cond_3
    return-object v1

    .line 164
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public disable(Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "peer"    # Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/facebook/stetho/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/stetho/inspector/protocol/module/Database;->mDatabasePeerManager:Lcom/facebook/stetho/inspector/database/DatabasePeerManager;

    invoke-virtual {v0, p1}, Lcom/facebook/stetho/inspector/database/DatabasePeerManager;->removePeer(Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;)V

    .line 79
    return-void
.end method

.method public enable(Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "peer"    # Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/facebook/stetho/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/facebook/stetho/inspector/protocol/module/Database;->mDatabasePeerManager:Lcom/facebook/stetho/inspector/database/DatabasePeerManager;

    invoke-virtual {v0, p1}, Lcom/facebook/stetho/inspector/database/DatabasePeerManager;->addPeer(Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;)Z

    .line 74
    return-void
.end method

.method public executeSQL(Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcResult;
    .locals 8
    .param p1, "peer"    # Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/facebook/stetho/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .prologue
    .line 101
    iget-object v4, p0, Lcom/facebook/stetho/inspector/protocol/module/Database;->mObjectMapper:Lcom/facebook/stetho/json/ObjectMapper;

    const-class v5, Lcom/facebook/stetho/inspector/protocol/module/Database$ExecuteSQLRequest;

    invoke-virtual {v4, p2, v5}, Lcom/facebook/stetho/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/stetho/inspector/protocol/module/Database$ExecuteSQLRequest;

    .line 104
    .local v2, "request":Lcom/facebook/stetho/inspector/protocol/module/Database$ExecuteSQLRequest;
    :try_start_0
    iget-object v4, p0, Lcom/facebook/stetho/inspector/protocol/module/Database;->mDatabasePeerManager:Lcom/facebook/stetho/inspector/database/DatabasePeerManager;

    iget-object v5, v2, Lcom/facebook/stetho/inspector/protocol/module/Database$ExecuteSQLRequest;->databaseId:Ljava/lang/String;

    iget-object v6, v2, Lcom/facebook/stetho/inspector/protocol/module/Database$ExecuteSQLRequest;->query:Ljava/lang/String;

    new-instance v7, Lcom/facebook/stetho/inspector/protocol/module/Database$1;

    invoke-direct {v7, p0}, Lcom/facebook/stetho/inspector/protocol/module/Database$1;-><init>(Lcom/facebook/stetho/inspector/protocol/module/Database;)V

    invoke-virtual {v4, v5, v6, v7}, Lcom/facebook/stetho/inspector/database/DatabasePeerManager;->executeSQL(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/stetho/inspector/database/DatabasePeerManager$ExecuteResultHandler;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcResult;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :goto_0
    return-object v4

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v1, Lcom/facebook/stetho/inspector/protocol/module/Database$Error;

    invoke-direct {v1}, Lcom/facebook/stetho/inspector/protocol/module/Database$Error;-><init>()V

    .line 142
    .local v1, "error":Lcom/facebook/stetho/inspector/protocol/module/Database$Error;
    const/4 v4, 0x0

    iput v4, v1, Lcom/facebook/stetho/inspector/protocol/module/Database$Error;->code:I

    .line 143
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/facebook/stetho/inspector/protocol/module/Database$Error;->message:Ljava/lang/String;

    .line 144
    new-instance v3, Lcom/facebook/stetho/inspector/protocol/module/Database$ExecuteSQLResponse;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/facebook/stetho/inspector/protocol/module/Database$ExecuteSQLResponse;-><init>(Lcom/facebook/stetho/inspector/protocol/module/Database$1;)V

    .line 145
    .local v3, "response":Lcom/facebook/stetho/inspector/protocol/module/Database$ExecuteSQLResponse;
    iput-object v1, v3, Lcom/facebook/stetho/inspector/protocol/module/Database$ExecuteSQLResponse;->sqlError:Lcom/facebook/stetho/inspector/protocol/module/Database$Error;

    move-object v4, v3

    .line 146
    goto :goto_0
.end method

.method public getDatabaseTableNames(Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;Lorg/json/JSONObject;)Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcResult;
    .locals 8
    .param p1, "peer"    # Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcPeer;
    .param p2, "params"    # Lorg/json/JSONObject;
    .annotation runtime Lcom/facebook/stetho/inspector/protocol/ChromeDevtoolsMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 84
    iget-object v3, p0, Lcom/facebook/stetho/inspector/protocol/module/Database;->mObjectMapper:Lcom/facebook/stetho/json/ObjectMapper;

    const-class v4, Lcom/facebook/stetho/inspector/protocol/module/Database$GetDatabaseTableNamesRequest;

    invoke-virtual {v3, p2, v4}, Lcom/facebook/stetho/json/ObjectMapper;->convertValue(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/stetho/inspector/protocol/module/Database$GetDatabaseTableNamesRequest;

    .line 87
    .local v1, "request":Lcom/facebook/stetho/inspector/protocol/module/Database$GetDatabaseTableNamesRequest;
    :try_start_0
    new-instance v2, Lcom/facebook/stetho/inspector/protocol/module/Database$GetDatabaseTableNamesResponse;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/facebook/stetho/inspector/protocol/module/Database$GetDatabaseTableNamesResponse;-><init>(Lcom/facebook/stetho/inspector/protocol/module/Database$1;)V

    .line 88
    .local v2, "response":Lcom/facebook/stetho/inspector/protocol/module/Database$GetDatabaseTableNamesResponse;
    iget-object v3, p0, Lcom/facebook/stetho/inspector/protocol/module/Database;->mDatabasePeerManager:Lcom/facebook/stetho/inspector/database/DatabasePeerManager;

    iget-object v4, v1, Lcom/facebook/stetho/inspector/protocol/module/Database$GetDatabaseTableNamesRequest;->databaseId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/facebook/stetho/inspector/database/DatabasePeerManager;->getDatabaseTableNames(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/facebook/stetho/inspector/protocol/module/Database$GetDatabaseTableNamesResponse;->tableNames:Ljava/util/List;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    return-object v2

    .line 90
    .end local v2    # "response":Lcom/facebook/stetho/inspector/protocol/module/Database$GetDatabaseTableNamesResponse;
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Landroid/database/sqlite/SQLiteException;
    new-instance v3, Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcException;

    new-instance v4, Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError;

    sget-object v5, Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;->INVALID_REQUEST:Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;

    .line 94
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6, v7}, Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError;-><init>(Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError$ErrorCode;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-direct {v3, v4}, Lcom/facebook/stetho/inspector/jsonrpc/JsonRpcException;-><init>(Lcom/facebook/stetho/inspector/jsonrpc/protocol/JsonRpcError;)V

    throw v3
.end method
