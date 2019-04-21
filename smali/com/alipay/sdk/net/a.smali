.class public final Lcom/alipay/sdk/net/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/sdk/net/a$b;,
        Lcom/alipay/sdk/net/a$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/net/CookieManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    sput-object v0, Lcom/alipay/sdk/net/a;->c:Ljava/net/CookieManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/alipay/sdk/net/a$a;)Lcom/alipay/sdk/net/a$b;
    .locals 15

    .prologue
    const/4 v4, 0x0

    .line 101
    if-nez p0, :cond_1

    move-object v1, v4

    .line 214
    :cond_0
    :goto_0
    return-object v1

    .line 109
    :cond_1
    :try_start_0
    const-string v1, "msp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "config : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/sdk/util/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v7, Ljava/net/URL;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/sdk/net/a$a;->a:Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-static {p0}, Lcom/alipay/sdk/net/a;->a(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v1

    .line 115
    const-string v2, "msp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "proxy: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/alipay/sdk/util/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    if-eqz v1, :cond_8

    .line 118
    invoke-virtual {v7, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->openConnectionWithProxy(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v2, v1

    .line 124
    :goto_1
    :try_start_1
    const-string v1, "http.keepAlive"

    const-string v3, "false"

    invoke-static {v1, v3}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 127
    instance-of v1, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v1, :cond_2

    .line 128
    move-object v0, v2

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    move-object v1, v0

    .line 133
    :cond_2
    sget-object v1, Lcom/alipay/sdk/net/a;->c:Ljava/net/CookieManager;

    invoke-virtual {v1}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v1

    invoke-interface {v1}, Ljava/net/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 134
    const-string v1, "Cookie"

    const-string v3, ";"

    sget-object v5, Lcom/alipay/sdk/net/a;->c:Ljava/net/CookieManager;

    invoke-virtual {v5}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v5

    invoke-interface {v5}, Ljava/net/CookieStore;->getCookies()Ljava/util/List;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    :cond_3
    const/16 v1, 0x4e20

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 141
    const/16 v1, 0x7530

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 144
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 147
    const-string v1, "User-Agent"

    const-string v3, "msp"

    invoke-virtual {v2, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/sdk/net/a$a;->b:[B

    if-eqz v1, :cond_9

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/sdk/net/a$a;->b:[B

    array-length v1, v1

    if-lez v1, :cond_9

    .line 151
    const-string v1, "POST"

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 153
    const-string v1, "Content-Type"

    const-string v3, "application/octet-stream;binary/octet-stream"

    invoke-virtual {v2, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v1, "Accept-Charset"

    const-string v3, "UTF-8"

    invoke-virtual {v2, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    const-string v1, "Connection"

    const-string v3, "Keep-Alive"

    invoke-virtual {v2, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    const-string v1, "Keep-Alive"

    const-string v3, "timeout=180, max=100"

    invoke-virtual {v2, v1, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :goto_2
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/sdk/net/a$a;->c:Ljava/util/Map;

    if-eqz v1, :cond_d

    .line 163
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/sdk/net/a$a;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 164
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 167
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 212
    :catch_0
    move-exception v1

    move-object v3, v4

    move-object v5, v2

    move-object v2, v4

    .line 213
    :goto_4
    :try_start_2
    invoke-static {v1}, Lcom/alipay/sdk/util/c;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 216
    if-eqz v5, :cond_5

    .line 218
    :try_start_3
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    .line 222
    :cond_5
    :goto_5
    if-eqz v2, :cond_6

    .line 224
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_6

    .line 228
    :cond_6
    :goto_6
    if-eqz v3, :cond_7

    .line 230
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_7

    :cond_7
    :goto_7
    move-object v1, v4

    .line 214
    goto/16 :goto_0

    .line 120
    :cond_8
    :try_start_6
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_b
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v2, v1

    goto/16 :goto_1

    .line 158
    :cond_9
    :try_start_7
    const-string v1, "GET"

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 216
    :catchall_0
    move-exception v1

    move-object v5, v4

    :goto_8
    if-eqz v2, :cond_a

    .line 218
    :try_start_8
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    .line 222
    :cond_a
    :goto_9
    if-eqz v4, :cond_b

    .line 224
    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    .line 228
    :cond_b
    :goto_a
    if-eqz v5, :cond_c

    .line 230
    :try_start_a
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    .line 231
    :cond_c
    :goto_b
    throw v1

    .line 171
    :cond_d
    const/4 v1, 0x1

    :try_start_b
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 172
    const-string v1, "POST"

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 173
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 179
    :cond_e
    const-string v1, "POST"

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 180
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 181
    :try_start_c
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/sdk/net/a$a;->b:[B

    invoke-virtual {v3, v1}, Ljava/io/OutputStream;->write([B)V

    .line 182
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-object v5, v3

    .line 186
    :goto_c
    :try_start_d
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 187
    :try_start_e
    invoke-static {v3}, Lcom/alipay/sdk/net/a;->a(Ljava/io/InputStream;)[B

    move-result-object v8

    .line 190
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v9

    .line 193
    if-eqz v9, :cond_10

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_10

    const-string v6, ","

    const/4 v1, 0x0

    .line 194
    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v6, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    .line 198
    :goto_d
    const-string v1, "Set-Cookie"

    invoke-interface {v9, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 200
    if-eqz v1, :cond_11

    .line 201
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_f
    :goto_e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 202
    invoke-static {v1}, Ljava/net/HttpCookie;->parse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 203
    if-eqz v1, :cond_f

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_f

    .line 206
    sget-object v11, Lcom/alipay/sdk/net/a;->c:Ljava/net/CookieManager;

    invoke-virtual {v11}, Ljava/net/CookieManager;->getCookieStore()Ljava/net/CookieStore;

    move-result-object v11

    invoke-virtual {v7}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/HttpCookie;

    invoke-interface {v11, v12, v1}, Ljava/net/CookieStore;->add(Ljava/net/URI;Ljava/net/HttpCookie;)V

    goto :goto_e

    .line 212
    :catch_1
    move-exception v1

    move-object v14, v3

    move-object v3, v5

    move-object v5, v2

    move-object v2, v14

    goto/16 :goto_4

    :cond_10
    move-object v6, v4

    .line 194
    goto :goto_d

    .line 210
    :cond_11
    new-instance v1, Lcom/alipay/sdk/net/a$b;

    invoke-direct {v1, v9, v6, v8}, Lcom/alipay/sdk/net/a$b;-><init>(Ljava/util/Map;Ljava/lang/String;[B)V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 216
    if-eqz v2, :cond_12

    .line 218
    :try_start_f
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_3

    .line 222
    :cond_12
    :goto_f
    if-eqz v3, :cond_13

    .line 224
    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_4

    .line 228
    :cond_13
    :goto_10
    if-eqz v5, :cond_0

    .line 230
    :try_start_11
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_2

    goto/16 :goto_0

    .line 231
    :catch_2
    move-exception v2

    goto/16 :goto_0

    .line 219
    :catch_3
    move-exception v2

    goto :goto_f

    .line 225
    :catch_4
    move-exception v2

    goto :goto_10

    .line 219
    :catch_5
    move-exception v1

    goto/16 :goto_5

    .line 225
    :catch_6
    move-exception v1

    goto/16 :goto_6

    .line 231
    :catch_7
    move-exception v1

    goto/16 :goto_7

    .line 219
    :catch_8
    move-exception v2

    goto/16 :goto_9

    .line 225
    :catch_9
    move-exception v2

    goto/16 :goto_a

    .line 231
    :catch_a
    move-exception v2

    goto/16 :goto_b

    .line 216
    :catchall_1
    move-exception v1

    move-object v5, v4

    move-object v2, v4

    goto/16 :goto_8

    :catchall_2
    move-exception v1

    move-object v5, v3

    goto/16 :goto_8

    :catchall_3
    move-exception v1

    goto/16 :goto_8

    :catchall_4
    move-exception v1

    move-object v4, v3

    goto/16 :goto_8

    :catchall_5
    move-exception v1

    move-object v4, v2

    move-object v2, v5

    move-object v5, v3

    goto/16 :goto_8

    .line 212
    :catch_b
    move-exception v1

    move-object v2, v4

    move-object v3, v4

    move-object v5, v4

    goto/16 :goto_4

    :catch_c
    move-exception v1

    move-object v5, v2

    move-object v2, v4

    goto/16 :goto_4

    :catch_d
    move-exception v1

    move-object v3, v5

    move-object v5, v2

    move-object v2, v4

    goto/16 :goto_4

    :cond_14
    move-object v5, v4

    goto/16 :goto_c
.end method

.method private static a(Landroid/content/Context;)Ljava/net/Proxy;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 240
    .line 242
    invoke-static {p0}, Lcom/alipay/sdk/net/a;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_1

    const-string/jumbo v2, "wap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-object v1

    .line 248
    :cond_1
    :try_start_0
    const-string v0, "https.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    const-string v0, "https.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 251
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Ljava/net/Proxy;

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v5, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    invoke-direct {v0, v4, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 258
    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
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

    .line 294
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 296
    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 297
    :goto_0
    array-length v2, v1

    invoke-virtual {p0, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 298
    invoke-virtual {v0, v1, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 301
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 302
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 263
    if-nez p0, :cond_0

    .line 273
    :goto_0
    return-object v1

    .line 269
    :cond_0
    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 270
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 273
    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 278
    :try_start_0
    invoke-static {p0}, Lcom/alipay/sdk/net/a;->b(Landroid/content/Context;)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 280
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 281
    const-string/jumbo v0, "wifi"

    .line 290
    :goto_0
    return-object v0

    .line 283
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 286
    :cond_1
    const-string v0, "none"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 290
    const-string v0, "none"

    goto :goto_0
.end method
