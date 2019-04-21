.class public Lcom/facebook/stetho/websocket/WebSocketHandler;
.super Lcom/facebook/stetho/server/SecureHttpRequestHandler;
.source "WebSocketHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/stetho/websocket/WebSocketHandler$RawSocketUpgradeHelper;
    }
.end annotation


# static fields
.field private static final HEADER_CONNECTION:Ljava/lang/String; = "Connection"

.field private static final HEADER_CONNECTION_UPGRADE:Ljava/lang/String; = "Upgrade"

.field private static final HEADER_SEC_WEBSOCKET_ACCEPT:Ljava/lang/String; = "Sec-WebSocket-Accept"

.field private static final HEADER_SEC_WEBSOCKET_KEY:Ljava/lang/String; = "Sec-WebSocket-Key"

.field private static final HEADER_SEC_WEBSOCKET_PROTOCOL:Ljava/lang/String; = "Sec-WebSocket-Protocol"

.field private static final HEADER_SEC_WEBSOCKET_VERSION:Ljava/lang/String; = "Sec-WebSocket-Version"

.field private static final HEADER_SEC_WEBSOCKET_VERSION_13:Ljava/lang/String; = "13"

.field private static final HEADER_UPGRADE:Ljava/lang/String; = "Upgrade"

.field private static final HEADER_UPGRADE_WEBSOCKET:Ljava/lang/String; = "websocket"

.field private static final SERVER_KEY_GUID:Ljava/lang/String; = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"


# instance fields
.field private final mEndpoint:Lcom/facebook/stetho/websocket/SimpleEndpoint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/stetho/websocket/SimpleEndpoint;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "endpoint"    # Lcom/facebook/stetho/websocket/SimpleEndpoint;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Lcom/facebook/stetho/server/SecureHttpRequestHandler;-><init>(Landroid/content/Context;)V

    .line 86
    iput-object p2, p0, Lcom/facebook/stetho/websocket/WebSocketHandler;->mEndpoint:Lcom/facebook/stetho/websocket/SimpleEndpoint;

    .line 87
    return-void
.end method

.method private doUpgrade(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 6
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 135
    .line 136
    invoke-static {p3}, Lcom/facebook/stetho/websocket/WebSocketHandler$RawSocketUpgradeHelper;->fromApacheContext(Lorg/apache/http/protocol/HttpContext;)Lcom/facebook/stetho/websocket/WebSocketHandler$RawSocketUpgradeHelper;

    move-result-object v1

    .line 138
    .local v1, "rawSocketHelper":Lcom/facebook/stetho/websocket/WebSocketHandler$RawSocketUpgradeHelper;
    const/16 v3, 0x65

    invoke-interface {p2, v3}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 139
    const-string v3, "Switching Protocols"

    invoke-interface {p2, v3}, Lorg/apache/http/HttpResponse;->setReasonPhrase(Ljava/lang/String;)V

    .line 140
    const-string v3, "Upgrade"

    const-string/jumbo v4, "websocket"

    invoke-interface {p2, v3, v4}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string v3, "Connection"

    const-string v4, "Upgrade"

    invoke-interface {p2, v3, v4}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v3, "Sec-WebSocket-Key"

    invoke-static {p1, v3}, Lcom/facebook/stetho/websocket/WebSocketHandler;->getFirstHeaderValue(Lorg/apache/http/HttpMessage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "clientKey":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 145
    const-string v3, "Sec-WebSocket-Accept"

    invoke-static {v0}, Lcom/facebook/stetho/websocket/WebSocketHandler;->generateServerKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v3, v4}, Lorg/apache/http/HttpResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_0
    invoke-virtual {v1}, Lcom/facebook/stetho/websocket/WebSocketHandler$RawSocketUpgradeHelper;->getServerConnection()Lorg/apache/http/HttpServerConnection;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/facebook/stetho/websocket/WebSocketHandler;->forceSendResponse(Lorg/apache/http/HttpServerConnection;Lorg/apache/http/HttpResponse;)V

    .line 150
    new-instance v2, Lcom/facebook/stetho/websocket/WebSocketSession;

    .line 151
    invoke-virtual {v1}, Lcom/facebook/stetho/websocket/WebSocketHandler$RawSocketUpgradeHelper;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 152
    invoke-virtual {v1}, Lcom/facebook/stetho/websocket/WebSocketHandler$RawSocketUpgradeHelper;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    iget-object v5, p0, Lcom/facebook/stetho/websocket/WebSocketHandler;->mEndpoint:Lcom/facebook/stetho/websocket/SimpleEndpoint;

    invoke-direct {v2, v3, v4, v5}, Lcom/facebook/stetho/websocket/WebSocketSession;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Lcom/facebook/stetho/websocket/SimpleEndpoint;)V

    .line 154
    .local v2, "session":Lcom/facebook/stetho/websocket/WebSocketSession;
    invoke-virtual {v2}, Lcom/facebook/stetho/websocket/WebSocketSession;->handle()V

    .line 155
    return-void
.end method

.method private forceSendResponse(Lorg/apache/http/HttpServerConnection;Lorg/apache/http/HttpResponse;)V
    .locals 0
    .param p1, "conn"    # Lorg/apache/http/HttpServerConnection;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-interface {p1, p2}, Lorg/apache/http/HttpServerConnection;->sendResponseHeader(Lorg/apache/http/HttpResponse;)V

    .line 183
    invoke-interface {p1}, Lorg/apache/http/HttpServerConnection;->flush()V

    .line 184
    return-void
.end method

.method private static generateServerKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "clientKey"    # Ljava/lang/String;

    .prologue
    .line 159
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, "serverKey":Ljava/lang/String;
    const-string v3, "SHA-1"

    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 161
    .local v2, "sha1":Ljava/security/MessageDigest;
    invoke-static {v1}, Lcom/facebook/stetho/common/Utf8Charset;->encodeUTF8(Ljava/lang/String;)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 162
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 163
    .end local v1    # "serverKey":Ljava/lang/String;
    .end local v2    # "sha1":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static getFirstHeaderValue(Lorg/apache/http/HttpMessage;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "message"    # Lorg/apache/http/HttpMessage;
    .param p1, "headerName"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 170
    invoke-interface {p0, p1}, Lorg/apache/http/HttpMessage;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 171
    .local v0, "header":Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isSupportableUpgradeRequest(Lorg/apache/http/HttpRequest;)Z
    .locals 2
    .param p0, "request"    # Lorg/apache/http/HttpRequest;

    .prologue
    .line 124
    const-string/jumbo v0, "websocket"

    const-string v1, "Upgrade"

    invoke-static {p0, v1}, Lcom/facebook/stetho/websocket/WebSocketHandler;->getFirstHeaderValue(Lorg/apache/http/HttpMessage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Upgrade"

    const-string v1, "Connection"

    .line 125
    invoke-static {p0, v1}, Lcom/facebook/stetho/websocket/WebSocketHandler;->getFirstHeaderValue(Lorg/apache/http/HttpMessage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "13"

    const-string v1, "Sec-WebSocket-Version"

    .line 127
    invoke-static {p0, v1}, Lcom/facebook/stetho/websocket/WebSocketHandler;->getFirstHeaderValue(Lorg/apache/http/HttpMessage;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public handleSecured(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    .locals 3
    .param p1, "request"    # Lorg/apache/http/HttpRequest;
    .param p2, "response"    # Lorg/apache/http/HttpResponse;
    .param p3, "context"    # Lorg/apache/http/protocol/HttpContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/HttpException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-static {p1}, Lcom/facebook/stetho/websocket/WebSocketHandler;->isSupportableUpgradeRequest(Lorg/apache/http/HttpRequest;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 96
    const/16 v1, 0x1f5

    invoke-interface {p2, v1}, Lorg/apache/http/HttpResponse;->setStatusCode(I)V

    .line 97
    const-string v1, "Not Implemented"

    invoke-interface {p2, v1}, Lorg/apache/http/HttpResponse;->setReasonPhrase(Ljava/lang/String;)V

    .line 98
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    const-string v2, "Not a supported WebSocket upgrade request\n"

    invoke-direct {v1, v2}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lorg/apache/http/HttpResponse;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 99
    return-void

    .line 102
    :cond_0
    const-string v1, "http.connection"

    invoke-interface {p3, v1}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/http/HttpConnection;

    .line 106
    .local v0, "conn":Lorg/apache/http/HttpConnection;
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/stetho/websocket/WebSocketHandler;->doUpgrade(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :try_start_1
    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 120
    :goto_0
    new-instance v1, Lorg/apache/http/ConnectionClosedException;

    const-string v2, "EOF"

    invoke-direct {v1, v2}, Lorg/apache/http/ConnectionClosedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 108
    :catchall_0
    move-exception v1

    .line 109
    :try_start_2
    invoke-interface {v0}, Lorg/apache/http/HttpConnection;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 115
    :goto_1
    throw v1

    .line 110
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method
