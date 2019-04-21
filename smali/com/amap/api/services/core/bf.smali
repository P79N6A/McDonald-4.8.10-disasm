.class abstract Lcom/amap/api/services/core/bf;
.super Ljava/lang/Object;
.source "LogUpDateProcessor.java"


# instance fields
.field private a:Lcom/amap/api/services/core/bj;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/services/core/bf;->a()Ljava/lang/String;

    move-result-object v0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/amap/api/services/core/bf;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/amap/api/services/core/bj;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/bf;->a:Lcom/amap/api/services/core/bj;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 52
    :catch_0
    move-exception v0

    .line 54
    const-string v1, "LogProcessor"

    const-string v2, "LogUpDateProcessor"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;I)Lcom/amap/api/services/core/bf;
    .locals 1

    .prologue
    .line 31
    .line 32
    packed-switch p1, :pswitch_data_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    .line 34
    :pswitch_0
    new-instance v0, Lcom/amap/api/services/core/ba;

    invoke-direct {v0, p0}, Lcom/amap/api/services/core/ba;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 37
    :pswitch_1
    new-instance v0, Lcom/amap/api/services/core/bc;

    invoke-direct {v0, p0}, Lcom/amap/api/services/core/bc;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 40
    :pswitch_2
    new-instance v0, Lcom/amap/api/services/core/ay;

    invoke-direct {v0, p0}, Lcom/amap/api/services/core/ay;-><init>(Landroid/content/Context;)V

    goto :goto_0

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Lcom/amap/api/services/core/bj;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 320
    .line 322
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 323
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    .line 324
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    sget-object v2, Lcom/amap/api/services/core/be;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 328
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    :goto_0
    return-object v0

    .line 334
    :cond_0
    const/4 v1, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x5000

    invoke-static {v2, v1, v3, v4, v5}, Lcom/amap/api/services/core/bj;->a(Ljava/io/File;IIJ)Lcom/amap/api/services/core/bj;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 335
    :catch_0
    move-exception v1

    .line 336
    const-string v2, "LogProcessor"

    const-string v3, "initDiskLru"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 338
    :catch_1
    move-exception v1

    .line 339
    const-string v2, "LogProcessor"

    const-string v3, "initDiskLru"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/al;",
            ">;",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    const-string/jumbo v0, "{\"pinfo\":\""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/amap/api/services/core/bf;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\",\"els\":["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const/4 v0, 0x1

    .line 225
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/al;

    .line 226
    invoke-virtual {v0}, Lcom/amap/api/services/core/al;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/amap/api/services/core/bf;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 227
    if-eqz v4, :cond_1

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    :goto_1
    move v1, v0

    .line 238
    goto :goto_0

    .line 230
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "||"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/amap/api/services/core/al;->d()I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    if-eqz v1, :cond_2

    .line 232
    const/4 v1, 0x0

    .line 236
    :goto_2
    const-string/jumbo v4, "{\"log\":\""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\"}"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    move v0, v1

    goto :goto_1

    .line 234
    :cond_2
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 239
    :cond_3
    if-eqz v1, :cond_4

    .line 240
    const/4 v0, 0x0

    .line 243
    :goto_3
    return-object v0

    .line 242
    :cond_4
    const-string v0, "]}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private a(Lcom/amap/api/services/core/aj;I)V
    .locals 3

    .prologue
    .line 123
    const/4 v0, 0x2

    :try_start_0
    invoke-virtual {p1, v0, p2}, Lcom/amap/api/services/core/aj;->a(II)Ljava/util/List;

    move-result-object v0

    .line 125
    invoke-direct {p0, v0, p1, p2}, Lcom/amap/api/services/core/bf;->a(Ljava/util/List;Lcom/amap/api/services/core/aj;I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 128
    const-string v1, "LogProcessor"

    const-string v2, "processDeleteFail"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/util/List;Lcom/amap/api/services/core/aj;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/al;",
            ">;",
            "Lcom/amap/api/services/core/aj;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 178
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 179
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/al;

    .line 180
    invoke-virtual {v0}, Lcom/amap/api/services/core/al;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/services/core/bf;->a(Ljava/lang/String;)Z

    move-result v2

    .line 181
    if-eqz v2, :cond_0

    .line 182
    invoke-virtual {v0}, Lcom/amap/api/services/core/al;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/amap/api/services/core/aj;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 185
    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/amap/api/services/core/al;->a(I)V

    .line 186
    invoke-virtual {v0}, Lcom/amap/api/services/core/al;->a()I

    move-result v2

    invoke-virtual {p2, v0, v2}, Lcom/amap/api/services/core/aj;->a(Lcom/amap/api/services/core/al;I)V

    goto :goto_0

    .line 193
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 101
    iget-object v1, p0, Lcom/amap/api/services/core/bf;->a:Lcom/amap/api/services/core/bj;

    if-nez v1, :cond_0

    .line 110
    :goto_0
    return v0

    .line 106
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/services/core/bf;->a:Lcom/amap/api/services/core/bj;

    invoke-virtual {v1, p1}, Lcom/amap/api/services/core/bj;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v1

    .line 108
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 136
    .line 137
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/core/ad;->b([B)[B

    move-result-object v1

    .line 139
    new-instance v2, Lcom/amap/api/services/core/bg;

    invoke-direct {v2, v1}, Lcom/amap/api/services/core/bg;-><init>([B)V

    .line 141
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/amap/api/services/core/br;->a(Z)Lcom/amap/api/services/core/br;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/amap/api/services/core/br;->a(Lcom/amap/api/services/core/bs;)[B

    move-result-object v1

    .line 143
    if-nez v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Lcom/amap/api/services/core/u; {:try_start_0 .. :try_end_0} :catch_1

    .line 155
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 156
    const-string v2, "code"

    .line 157
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/amap/api/services/core/u; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v1

    .line 163
    :try_start_2
    const-string v2, "LogProcessor"

    const-string v3, "processUpdate"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Lcom/amap/api/services/core/u; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 168
    :catch_1
    move-exception v1

    .line 170
    const-string v2, "LogProcessor"

    const-string v3, "processUpdate"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v1}, Lcom/amap/api/services/core/u;->printStackTrace()V

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 200
    :try_start_0
    invoke-static {p1}, Lcom/amap/api/services/core/x;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 201
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    :goto_0
    return-object v0

    .line 204
    :cond_0
    const-string v2, "UTF-8"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 205
    invoke-static {p1, v1}, Lcom/amap/api/services/core/x;->b(Landroid/content/Context;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v1

    .line 209
    const-string v2, "LogProcessor"

    const-string v3, "getPublicInfo"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 211
    :catch_1
    move-exception v1

    .line 213
    const-string v2, "LogProcessor"

    const-string v3, "getPublicInfo"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 247
    const/4 v1, 0x0

    .line 249
    const/4 v2, 0x0

    .line 252
    :try_start_0
    iget-object v3, p0, Lcom/amap/api/services/core/bf;->a:Lcom/amap/api/services/core/bj;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_2

    .line 280
    if-eqz v0, :cond_0

    .line 282
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 289
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 291
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    .line 299
    :cond_1
    :goto_1
    return-object v0

    .line 255
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/amap/api/services/core/bf;->a:Lcom/amap/api/services/core/bj;

    invoke-virtual {v3, p1}, Lcom/amap/api/services/core/bj;->a(Ljava/lang/String;)Lcom/amap/api/services/core/bj$b;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v3

    .line 256
    if-nez v3, :cond_4

    .line 280
    if-eqz v0, :cond_3

    .line 282
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c

    .line 289
    :cond_3
    :goto_2
    if-eqz v0, :cond_1

    .line 291
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 292
    :catch_0
    move-exception v1

    .line 293
    const-string v2, "LogProcessor"

    const-string v3, "readLog2"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :goto_3
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 259
    :cond_4
    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {v3, v1}, Lcom/amap/api/services/core/bj$b;->a(I)Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v3

    .line 262
    :try_start_7
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_e
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 263
    const/16 v1, 0x400

    :try_start_8
    new-array v1, v1, [B

    .line 264
    :goto_4
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_6

    .line 265
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_f
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    .line 272
    :catch_1
    move-exception v1

    .line 273
    :goto_5
    :try_start_9
    const-string v4, "LogProcessor"

    const-string v5, "readLog"

    invoke-static {v1, v4, v5}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 280
    if-eqz v2, :cond_5

    .line 282
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    .line 289
    :cond_5
    :goto_6
    if-eqz v3, :cond_1

    .line 291
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_1

    .line 292
    :catch_2
    move-exception v1

    .line 293
    const-string v2, "LogProcessor"

    const-string v3, "readLog2"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 270
    :cond_6
    :try_start_c
    const-string/jumbo v1, "utf-8"

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_f
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    move-result-object v0

    .line 280
    if-eqz v2, :cond_7

    .line 282
    :try_start_d
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_d

    .line 289
    :cond_7
    :goto_7
    if-eqz v3, :cond_1

    .line 291
    :try_start_e
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    goto :goto_1

    .line 292
    :catch_3
    move-exception v1

    .line 293
    const-string v2, "LogProcessor"

    const-string v3, "readLog2"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 275
    :catch_4
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    .line 276
    :goto_8
    :try_start_f
    const-string v4, "LogProcessor"

    const-string v5, "readLog"

    invoke-static {v1, v4, v5}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 280
    if-eqz v2, :cond_8

    .line 282
    :try_start_10
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 289
    :cond_8
    :goto_9
    if-eqz v3, :cond_1

    .line 291
    :try_start_11
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_5

    goto/16 :goto_1

    .line 292
    :catch_5
    move-exception v1

    .line 293
    const-string v2, "LogProcessor"

    const-string v3, "readLog2"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 280
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_a
    if-eqz v2, :cond_9

    .line 282
    :try_start_12
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_6

    .line 289
    :cond_9
    :goto_b
    if-eqz v3, :cond_a

    .line 291
    :try_start_13
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7

    .line 280
    :cond_a
    :goto_c
    throw v0

    .line 283
    :catch_6
    move-exception v1

    .line 284
    const-string v2, "LogProcessor"

    const-string v4, "readLog1"

    invoke-static {v1, v2, v4}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 292
    :catch_7
    move-exception v1

    .line 293
    const-string v2, "LogProcessor"

    const-string v3, "readLog2"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 283
    :catch_8
    move-exception v1

    .line 284
    const-string v2, "LogProcessor"

    const-string v4, "readLog1"

    invoke-static {v1, v2, v4}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 283
    :catch_9
    move-exception v1

    .line 284
    const-string v2, "LogProcessor"

    const-string v4, "readLog1"

    invoke-static {v1, v2, v4}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 283
    :catch_a
    move-exception v2

    .line 284
    const-string v3, "LogProcessor"

    const-string v4, "readLog1"

    invoke-static {v2, v3, v4}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 292
    :catch_b
    move-exception v1

    .line 293
    const-string v2, "LogProcessor"

    const-string v3, "readLog2"

    invoke-static {v1, v2, v3}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 283
    :catch_c
    move-exception v2

    .line 284
    const-string v3, "LogProcessor"

    const-string v4, "readLog1"

    invoke-static {v2, v3, v4}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 283
    :catch_d
    move-exception v1

    .line 284
    const-string v2, "LogProcessor"

    const-string v4, "readLog1"

    invoke-static {v1, v2, v4}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 280
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_a

    .line 275
    :catch_e
    move-exception v1

    move-object v2, v0

    goto/16 :goto_8

    :catch_f
    move-exception v1

    goto/16 :goto_8

    .line 272
    :catch_10
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_5

    :catch_11
    move-exception v1

    move-object v2, v0

    goto/16 :goto_5
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract a(Landroid/content/Context;)Z
.end method

.method protected abstract b()I
.end method

.method b(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 63
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/services/core/bf;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 69
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :try_start_1
    new-instance v0, Lcom/amap/api/services/core/aj;

    invoke-direct {v0, p1}, Lcom/amap/api/services/core/aj;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual {p0}, Lcom/amap/api/services/core/bf;->b()I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/amap/api/services/core/bf;->a(Lcom/amap/api/services/core/aj;I)V

    .line 74
    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/amap/api/services/core/bf;->b()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/services/core/aj;->a(II)Ljava/util/List;

    move-result-object v2

    .line 77
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 78
    :cond_1
    monitor-exit v1

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 92
    :catch_0
    move-exception v0

    .line 94
    const-string v1, "LogProcessor"

    const-string v2, "processUpdateLog"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 81
    :cond_2
    :try_start_3
    invoke-direct {p0, v2, p1}, Lcom/amap/api/services/core/bf;->a(Ljava/util/List;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 82
    if-nez v3, :cond_3

    .line 83
    monitor-exit v1

    goto :goto_0

    .line 85
    :cond_3
    invoke-direct {p0, v3}, Lcom/amap/api/services/core/bf;->b(Ljava/lang/String;)I

    move-result v3

    .line 86
    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 87
    invoke-virtual {p0}, Lcom/amap/api/services/core/bf;->b()I

    move-result v3

    invoke-direct {p0, v2, v0, v3}, Lcom/amap/api/services/core/bf;->a(Ljava/util/List;Lcom/amap/api/services/core/aj;I)V

    .line 90
    :cond_4
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method c()V
    .locals 3

    .prologue
    .line 304
    iget-object v0, p0, Lcom/amap/api/services/core/bf;->a:Lcom/amap/api/services/core/bj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/services/core/bf;->a:Lcom/amap/api/services/core/bj;

    invoke-virtual {v0}, Lcom/amap/api/services/core/bj;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/core/bf;->a:Lcom/amap/api/services/core/bj;

    invoke-virtual {v0}, Lcom/amap/api/services/core/bj;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 316
    :cond_0
    :goto_0
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
    const-string v1, "LogProcessor"

    const-string v2, "closeDiskLru"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 311
    :catch_1
    move-exception v0

    .line 312
    const-string v1, "LogProcessor"

    const-string v2, "closeDiskLru"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
