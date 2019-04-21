.class public Lcom/admaster/jice/d/b;
.super Ljava/lang/Object;
.source "HttpURLRequest.java"


# static fields
.field private static a:Z


# instance fields
.field private b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    sput-boolean v0, Lcom/admaster/jice/d/b;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admaster/jice/d/b;->b:Ljava/lang/String;

    .line 58
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 60
    new-instance v1, Lcom/admaster/jice/d/c;

    invoke-direct {v1, p0, p1}, Lcom/admaster/jice/d/c;-><init>(Lcom/admaster/jice/d/b;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 72
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-direct {p0, p1}, Lcom/admaster/jice/d/b;->b(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/admaster/jice/d/b;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/admaster/jice/d/b;->b(Landroid/content/Context;)V

    return-void
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 394
    if-nez p0, :cond_0

    .line 395
    const/4 v0, 0x0

    .line 407
    :goto_0
    return-object v0

    .line 397
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 400
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 402
    :goto_1
    array-length v2, v1

    invoke-virtual {p0, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 405
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 407
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    .line 403
    :cond_1
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1
.end method

.method private static a([B)[B
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 364
    .line 367
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 368
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    :try_start_1
    invoke-virtual {v2, p0}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 370
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 371
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 372
    const/4 v2, 0x0

    .line 373
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 377
    if-eqz v1, :cond_0

    .line 379
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 386
    :cond_0
    :goto_0
    return-object v0

    .line 380
    :catch_0
    move-exception v1

    .line 381
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 374
    :catch_1
    move-exception v0

    move-object v2, v1

    .line 375
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 377
    if-eqz v2, :cond_1

    .line 379
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_1
    :goto_2
    move-object v0, v1

    .line 386
    goto :goto_0

    .line 380
    :catch_2
    move-exception v0

    .line 381
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 376
    :catchall_0
    move-exception v0

    .line 377
    :goto_3
    if-eqz v1, :cond_2

    .line 379
    :try_start_6
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 385
    :cond_2
    :goto_4
    throw v0

    .line 380
    :catch_3
    move-exception v1

    .line 381
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 376
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 374
    :catch_4
    move-exception v0

    goto :goto_1
.end method

.method private b(Landroid/content/Context;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 84
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 85
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admaster/jice/d/b;->b:Ljava/lang/String;

    .line 94
    :goto_0
    return-void

    .line 89
    :cond_0
    invoke-static {p1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admaster/jice/d/b;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const-string v1, "JiceSDK.HttpURLRequest"

    const-string v2, "can`t get default UserAgent"

    invoke-static {v1, v2, v0}, Lcom/admaster/jice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 98
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 99
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    invoke-static {p1}, Lcom/admaster/jice/c/c;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const-string v1, "JiceSDK.HttpURLRequest"

    const-string v2, "isNetWorkEnabled exception"

    invoke-static {v1, v2, v0}, Lcom/admaster/jice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 110
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLSocketFactory;)Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 123
    .line 130
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    if-eqz p3, :cond_0

    :try_start_1
    instance-of v2, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_0

    .line 135
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    invoke-virtual {v2, p3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 136
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    new-instance v5, Lcom/admaster/jice/b/c;

    invoke-direct {v5}, Lcom/admaster/jice/b/c;-><init>()V

    invoke-virtual {v2, v5}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 139
    :cond_0
    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 140
    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 142
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 144
    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 145
    const-string v2, "Content-Type"

    const-string v5, "application/json"

    invoke-virtual {v1, v2, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v2, "AcceptEncoding"

    const-string v5, "gzip, deflate"

    invoke-virtual {v1, v2, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v2, p0, Lcom/admaster/jice/d/b;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 148
    const-string v2, "User-Agent"

    iget-object v5, p0, Lcom/admaster/jice/d/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_1
    sget-boolean v2, Lcom/admaster/jice/d/b;->a:Z

    if-eqz v2, :cond_2

    .line 152
    const-string v2, "Content-Encoding"

    const-string v5, "gzip"

    invoke-virtual {v1, v2, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :cond_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 162
    :try_start_2
    sget-boolean v2, Lcom/admaster/jice/d/b;->a:Z

    if-eqz v2, :cond_5

    .line 163
    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/admaster/jice/d/b;->a([B)[B

    move-result-object v2

    .line 164
    invoke-virtual {v6, v2}, Ljava/io/OutputStream;->write([B)V

    .line 165
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 177
    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-result v2

    .line 178
    const/16 v5, 0xc8

    if-ne v2, v5, :cond_6

    move v2, v7

    .line 190
    :goto_1
    if-eqz v4, :cond_3

    .line 192
    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    .line 199
    :cond_3
    :goto_2
    if-eqz v6, :cond_4

    .line 201
    :try_start_5
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    .line 208
    :cond_4
    :goto_3
    if-eqz v1, :cond_e

    .line 209
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    move v1, v2

    .line 214
    :goto_4
    return v1

    .line 167
    :cond_5
    :try_start_6
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_6 .. :try_end_6} :catch_f
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 168
    :try_start_7
    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 169
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_7
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_c
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    move-object v4, v5

    goto :goto_0

    :cond_6
    move v2, v3

    .line 183
    goto :goto_1

    :catch_0
    move-exception v1

    move-object v2, v4

    move-object v5, v4

    .line 185
    :goto_5
    :try_start_8
    const-string v6, "JiceSDK.HttpURLRequest"

    const-string v7, "Failure to connect,likely caused by stream end of file\n"

    invoke-static {v6, v7, v1}, Lcom/admaster/jice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 190
    if-eqz v4, :cond_7

    .line 192
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 199
    :cond_7
    :goto_6
    if-eqz v5, :cond_8

    .line 201
    :try_start_a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    .line 208
    :cond_8
    :goto_7
    if-eqz v2, :cond_f

    .line 209
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move v1, v3

    .line 210
    goto :goto_4

    .line 186
    :catch_1
    move-exception v1

    move-object v5, v4

    move-object v6, v4

    .line 188
    :goto_8
    :try_start_b
    const-string v2, "JiceSDK.HttpURLRequest"

    const-string v7, "Failure to connect,caused by IO Exception\n"

    invoke-static {v2, v7, v1}, Lcom/admaster/jice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    .line 190
    if-eqz v5, :cond_9

    .line 192
    :try_start_c
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 199
    :cond_9
    :goto_9
    if-eqz v6, :cond_a

    .line 201
    :try_start_d
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 208
    :cond_a
    :goto_a
    if-eqz v4, :cond_f

    .line 209
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    move v1, v3

    .line 210
    goto :goto_4

    .line 189
    :catchall_0
    move-exception v1

    move-object v5, v4

    move-object v6, v4

    .line 190
    :goto_b
    if-eqz v5, :cond_b

    .line 192
    :try_start_e
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    .line 199
    :cond_b
    :goto_c
    if-eqz v6, :cond_c

    .line 201
    :try_start_f
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    .line 208
    :cond_c
    :goto_d
    if-eqz v4, :cond_d

    .line 209
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 213
    :cond_d
    throw v1

    .line 193
    :catch_2
    move-exception v1

    goto :goto_6

    .line 202
    :catch_3
    move-exception v1

    goto :goto_7

    .line 193
    :catch_4
    move-exception v1

    goto :goto_9

    .line 202
    :catch_5
    move-exception v1

    goto :goto_a

    .line 193
    :catch_6
    move-exception v2

    goto :goto_c

    .line 202
    :catch_7
    move-exception v2

    goto :goto_d

    .line 193
    :catch_8
    move-exception v3

    goto :goto_2

    .line 202
    :catch_9
    move-exception v3

    goto :goto_3

    .line 189
    :catchall_1
    move-exception v2

    move-object v5, v4

    move-object v6, v4

    move-object v4, v1

    move-object v1, v2

    goto :goto_b

    :catchall_2
    move-exception v2

    move-object v5, v4

    move-object v4, v1

    move-object v1, v2

    goto :goto_b

    :catchall_3
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    goto :goto_b

    :catchall_4
    move-exception v2

    move-object v5, v4

    move-object v4, v1

    move-object v1, v2

    goto :goto_b

    :catchall_5
    move-exception v1

    move-object v6, v5

    move-object v5, v4

    move-object v4, v2

    goto :goto_b

    :catchall_6
    move-exception v1

    goto :goto_b

    .line 186
    :catch_a
    move-exception v2

    move-object v5, v4

    move-object v6, v4

    move-object v4, v1

    move-object v1, v2

    goto :goto_8

    :catch_b
    move-exception v2

    move-object v5, v4

    move-object v4, v1

    move-object v1, v2

    goto :goto_8

    :catch_c
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    goto :goto_8

    :catch_d
    move-exception v2

    move-object v5, v4

    move-object v4, v1

    move-object v1, v2

    goto :goto_8

    .line 183
    :catch_e
    move-exception v2

    move-object v5, v4

    move-object v8, v1

    move-object v1, v2

    move-object v2, v8

    goto/16 :goto_5

    :catch_f
    move-exception v2

    move-object v5, v6

    move-object v8, v1

    move-object v1, v2

    move-object v2, v8

    goto/16 :goto_5

    :catch_10
    move-exception v2

    move-object v4, v5

    move-object v5, v6

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto/16 :goto_5

    :cond_e
    move v1, v2

    goto/16 :goto_4

    :cond_f
    move v1, v3

    goto/16 :goto_4
.end method

.method public a(Ljava/lang/String;Ljavax/net/ssl/SSLSocketFactory;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 420
    .line 425
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 426
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    if-eqz p2, :cond_0

    :try_start_1
    instance-of v2, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_0

    .line 430
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    invoke-virtual {v2, p2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 435
    :cond_0
    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 436
    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 438
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 439
    const-string v2, "Content-Type"

    const-string v4, "application/json"

    invoke-virtual {v1, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v2, "AcceptEncoding"

    const-string v4, "gzip,deflate"

    invoke-virtual {v1, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    iget-object v2, p0, Lcom/admaster/jice/d/b;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 443
    const-string v2, "User-Agent"

    iget-object v4, p0, Lcom/admaster/jice/d/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    :cond_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 464
    const/16 v4, 0x12d

    if-eq v2, v4, :cond_2

    const/16 v4, 0x12e

    if-ne v2, v4, :cond_f

    .line 465
    :cond_2
    const-string v2, "Location"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 466
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v1, v0

    .line 468
    if-eqz p2, :cond_3

    instance-of v2, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_3

    .line 469
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    invoke-virtual {v2, p2}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 470
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    new-instance v4, Lcom/admaster/jice/b/c;

    invoke-direct {v4}, Lcom/admaster/jice/b/c;-><init>()V

    invoke-virtual {v2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 473
    :cond_3
    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 474
    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 475
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 476
    const-string v2, "Content-Type"

    const-string v4, "application/json"

    invoke-virtual {v1, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v2, "AcceptEncoding"

    const-string v4, "gzip,deflate"

    invoke-virtual {v1, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v2, p0, Lcom/admaster/jice/d/b;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 479
    const-string v2, "User-Agent"

    iget-object v4, p0, Lcom/admaster/jice/d/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    :cond_4
    sget-boolean v2, Lcom/admaster/jice/d/b;->a:Z

    if-eqz v2, :cond_5

    .line 482
    const-string v2, "Content-Encoding"

    const-string v4, "gzip"

    invoke-virtual {v1, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v2

    move-object v4, v1

    move v1, v2

    .line 489
    :goto_0
    const/16 v2, 0xc8

    if-ne v1, v2, :cond_e

    .line 491
    :try_start_2
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v1

    .line 493
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "gzip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 495
    new-instance v2, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 500
    :goto_1
    :try_start_3
    invoke-static {v2}, Lcom/admaster/jice/d/b;->a(Ljava/io/InputStream;)[B
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result-object v1

    .line 508
    :goto_2
    if-eqz v2, :cond_6

    .line 510
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 514
    :cond_6
    :goto_3
    if-eqz v4, :cond_7

    .line 515
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 518
    :cond_7
    :goto_4
    return-object v1

    .line 498
    :cond_8
    :try_start_5
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_5
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-object v2

    goto :goto_1

    .line 503
    :catch_0
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    .line 504
    :goto_5
    :try_start_6
    const-string v5, "JiceSDK.HttpURLRequest"

    const-string v6, "Failure to connect,likely caused by stream end of file\n"

    invoke-static {v5, v6, v1}, Lcom/admaster/jice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 508
    if-eqz v2, :cond_9

    .line 510
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    .line 514
    :cond_9
    :goto_6
    if-eqz v4, :cond_d

    .line 515
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v1, v3

    goto :goto_4

    .line 505
    :catch_1
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    .line 506
    :goto_7
    :try_start_8
    const-string v5, "JiceSDK.HttpURLRequest"

    const-string v6, "Failure to connect,caused by IO Exception\n"

    invoke-static {v5, v6, v1}, Lcom/admaster/jice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 508
    if-eqz v2, :cond_a

    .line 510
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 514
    :cond_a
    :goto_8
    if-eqz v4, :cond_d

    .line 515
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v1, v3

    goto :goto_4

    .line 507
    :catchall_0
    move-exception v1

    move-object v4, v3

    .line 508
    :goto_9
    if-eqz v3, :cond_b

    .line 510
    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 514
    :cond_b
    :goto_a
    if-eqz v4, :cond_c

    .line 515
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 516
    :cond_c
    throw v1

    .line 511
    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_8

    :catch_4
    move-exception v2

    goto :goto_a

    :catch_5
    move-exception v2

    goto :goto_3

    .line 507
    :catchall_1
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    goto :goto_9

    :catchall_2
    move-exception v1

    goto :goto_9

    :catchall_3
    move-exception v1

    move-object v3, v2

    goto :goto_9

    .line 505
    :catch_6
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_7

    :catch_7
    move-exception v1

    move-object v2, v3

    goto :goto_7

    :catch_8
    move-exception v1

    goto :goto_7

    .line 503
    :catch_9
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    move-object v2, v3

    goto :goto_5

    :catch_a
    move-exception v1

    move-object v2, v3

    goto :goto_5

    :catch_b
    move-exception v1

    goto :goto_5

    :cond_d
    move-object v1, v3

    goto :goto_4

    :cond_e
    move-object v2, v3

    move-object v1, v3

    goto :goto_2

    :cond_f
    move-object v4, v1

    move v1, v2

    goto/16 :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLSocketFactory;)[B
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 228
    .line 236
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    if-eqz p3, :cond_0

    :try_start_1
    instance-of v2, v1, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v2, :cond_0

    .line 241
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    invoke-virtual {v2, p3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 242
    move-object v0, v1

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v2, v0

    new-instance v4, Lcom/admaster/jice/b/c;

    invoke-direct {v4}, Lcom/admaster/jice/b/c;-><init>()V

    invoke-virtual {v2, v4}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 245
    :cond_0
    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 246
    const/16 v2, 0x7530

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 249
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 250
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 251
    const-string v2, "POST"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 252
    const-string v2, "Content-Type"

    const-string v4, "application/json"

    invoke-virtual {v1, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v2, p0, Lcom/admaster/jice/d/b;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 255
    const-string v2, "User-Agent"

    iget-object v4, p0, Lcom/admaster/jice/d/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v6

    .line 270
    :try_start_2
    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 271
    :try_start_3
    const-string v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 272
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->flush()V

    .line 291
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 293
    const/16 v4, 0xc8

    if-ne v2, v4, :cond_12

    .line 307
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v2

    .line 309
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "gzip"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 311
    new-instance v4, Ljava/util/zip/GZIPInputStream;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_14
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_10
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 316
    :goto_0
    :try_start_4
    invoke-static {v4}, Lcom/admaster/jice/d/b;->a(Ljava/io/InputStream;)[B
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_15
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_11
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    move-result-object v2

    .line 323
    :goto_1
    if-eqz v5, :cond_2

    .line 325
    :try_start_5
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_c

    .line 332
    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    .line 334
    :try_start_6
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_d

    .line 340
    :cond_3
    :goto_3
    if-eqz v4, :cond_4

    .line 342
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 349
    :cond_4
    :goto_4
    if-eqz v1, :cond_5

    .line 350
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_5
    move-object v1, v2

    .line 353
    :goto_5
    return-object v1

    .line 314
    :cond_6
    :try_start_8
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_8} :catch_14
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_10
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result-object v4

    goto :goto_0

    .line 318
    :catch_0
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 319
    :goto_6
    :try_start_9
    const-string v7, "JiceSDK.HttpURLRequest"

    const-string v8, "Failure to connect,likely caused by stream end of file\n"

    invoke-static {v7, v8, v1}, Lcom/admaster/jice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 323
    if-eqz v5, :cond_7

    .line 325
    :try_start_a
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 332
    :cond_7
    :goto_7
    if-eqz v6, :cond_8

    .line 334
    :try_start_b
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 340
    :cond_8
    :goto_8
    if-eqz v2, :cond_9

    .line 342
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    .line 349
    :cond_9
    :goto_9
    if-eqz v4, :cond_11

    .line 350
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v1, v3

    goto :goto_5

    .line 343
    :catch_1
    move-exception v1

    .line 344
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 320
    :catch_2
    move-exception v1

    move-object v4, v3

    move-object v2, v3

    move-object v5, v3

    move-object v6, v3

    .line 321
    :goto_a
    :try_start_d
    const-string v7, "JiceSDK.HttpURLRequest"

    const-string v8, "Failure to connect,caused by IO Exception\n"

    invoke-static {v7, v8, v1}, Lcom/admaster/jice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 323
    if-eqz v5, :cond_a

    .line 325
    :try_start_e
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 332
    :cond_a
    :goto_b
    if-eqz v6, :cond_b

    .line 334
    :try_start_f
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 340
    :cond_b
    :goto_c
    if-eqz v4, :cond_c

    .line 342
    :try_start_10
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_3

    .line 349
    :cond_c
    :goto_d
    if-eqz v2, :cond_11

    .line 350
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v1, v3

    goto :goto_5

    .line 343
    :catch_3
    move-exception v1

    .line 344
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 322
    :catchall_0
    move-exception v1

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    .line 323
    :goto_e
    if-eqz v5, :cond_d

    .line 325
    :try_start_11
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    .line 332
    :cond_d
    :goto_f
    if-eqz v6, :cond_e

    .line 334
    :try_start_12
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_b

    .line 340
    :cond_e
    :goto_10
    if-eqz v3, :cond_f

    .line 342
    :try_start_13
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_4

    .line 349
    :cond_f
    :goto_11
    if-eqz v4, :cond_10

    .line 350
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 351
    :cond_10
    throw v1

    .line 343
    :catch_4
    move-exception v2

    .line 344
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_11

    .line 343
    :catch_5
    move-exception v3

    .line 344
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 326
    :catch_6
    move-exception v1

    goto :goto_7

    .line 335
    :catch_7
    move-exception v1

    goto :goto_8

    .line 326
    :catch_8
    move-exception v1

    goto :goto_b

    .line 335
    :catch_9
    move-exception v1

    goto :goto_c

    .line 326
    :catch_a
    move-exception v2

    goto :goto_f

    .line 335
    :catch_b
    move-exception v2

    goto :goto_10

    .line 326
    :catch_c
    move-exception v3

    goto/16 :goto_2

    .line 335
    :catch_d
    move-exception v3

    goto/16 :goto_3

    .line 322
    :catchall_1
    move-exception v2

    move-object v4, v1

    move-object v5, v3

    move-object v6, v3

    move-object v1, v2

    goto :goto_e

    :catchall_2
    move-exception v2

    move-object v4, v1

    move-object v5, v3

    move-object v1, v2

    goto :goto_e

    :catchall_3
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    goto :goto_e

    :catchall_4
    move-exception v2

    move-object v3, v4

    move-object v4, v1

    move-object v1, v2

    goto :goto_e

    :catchall_5
    move-exception v1

    move-object v3, v2

    goto :goto_e

    :catchall_6
    move-exception v1

    move-object v3, v4

    move-object v4, v2

    goto :goto_e

    .line 320
    :catch_e
    move-exception v2

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_a

    :catch_f
    move-exception v2

    move-object v4, v3

    move-object v5, v3

    move-object v9, v1

    move-object v1, v2

    move-object v2, v9

    goto :goto_a

    :catch_10
    move-exception v2

    move-object v4, v3

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto/16 :goto_a

    :catch_11
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto/16 :goto_a

    .line 318
    :catch_12
    move-exception v2

    move-object v4, v1

    move-object v5, v3

    move-object v6, v3

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_6

    :catch_13
    move-exception v2

    move-object v4, v1

    move-object v5, v3

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_6

    :catch_14
    move-exception v2

    move-object v4, v1

    move-object v1, v2

    move-object v2, v3

    goto/16 :goto_6

    :catch_15
    move-exception v2

    move-object v9, v2

    move-object v2, v4

    move-object v4, v1

    move-object v1, v9

    goto/16 :goto_6

    :cond_11
    move-object v1, v3

    goto/16 :goto_5

    :cond_12
    move-object v4, v3

    move-object v2, v3

    goto/16 :goto_1
.end method
