.class abstract Lcom/amap/api/services/core/bh;
.super Ljava/lang/Object;
.source "LogWriter.java"


# instance fields
.field private a:Lcom/amap/api/services/core/ac;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(I)Lcom/amap/api/services/core/bh;
    .locals 1

    .prologue
    .line 31
    .line 32
    packed-switch p0, :pswitch_data_0

    .line 43
    const/4 v0, 0x0

    .line 45
    :goto_0
    return-object v0

    .line 34
    :pswitch_0
    new-instance v0, Lcom/amap/api/services/core/bb;

    invoke-direct {v0}, Lcom/amap/api/services/core/bb;-><init>()V

    goto :goto_0

    .line 37
    :pswitch_1
    new-instance v0, Lcom/amap/api/services/core/bd;

    invoke-direct {v0}, Lcom/amap/api/services/core/bd;-><init>()V

    goto :goto_0

    .line 40
    :pswitch_2
    new-instance v0, Lcom/amap/api/services/core/az;

    invoke-direct {v0}, Lcom/amap/api/services/core/az;-><init>()V

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

.method private a(Landroid/content/Context;Lcom/amap/api/services/core/ac;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    invoke-static {p1, p2}, Lcom/amap/api/services/core/x;->a(Landroid/content/Context;Lcom/amap/api/services/core/ac;)Ljava/lang/String;

    move-result-object v0

    .line 264
    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 222
    const/4 v0, 0x0

    .line 224
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p2, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 225
    invoke-static {p1, v1}, Lcom/amap/api/services/core/x;->a(Landroid/content/Context;[B)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 232
    :goto_0
    return-object v0

    .line 226
    :catch_0
    move-exception v1

    .line 228
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 229
    :catch_1
    move-exception v1

    .line 230
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 207
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\"timestamp\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 208
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    const-string v1, "\",\"et\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 210
    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 211
    const-string v1, "\",\"classname\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    const-string v1, "\","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    const-string v1, "\"detail\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    invoke-virtual {v0, p6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/amap/api/services/core/aj;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 2

    .prologue
    .line 182
    new-instance v0, Lcom/amap/api/services/core/al;

    invoke-direct {v0}, Lcom/amap/api/services/core/al;-><init>()V

    .line 184
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/services/core/al;->a(I)V

    .line 186
    invoke-virtual {v0, p2}, Lcom/amap/api/services/core/al;->b(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0, p3}, Lcom/amap/api/services/core/al;->a(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p1, v0, p4}, Lcom/amap/api/services/core/aj;->b(Lcom/amap/api/services/core/al;I)V

    .line 190
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/core/aj;)Z
    .locals 8

    .prologue
    .line 275
    const/4 v2, 0x0

    .line 276
    const/4 v1, 0x0

    .line 278
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 280
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    sget-object v3, Lcom/amap/api/services/core/be;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 286
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 287
    const/4 v0, 0x0

    .line 313
    if-eqz v2, :cond_0

    .line 315
    :try_start_1
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_a

    .line 320
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/services/core/bj;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 322
    :try_start_2
    invoke-virtual {v1}, Lcom/amap/api/services/core/bj;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_b

    .line 328
    :cond_1
    :goto_1
    return v0

    .line 290
    :cond_2
    const/4 v0, 0x1

    const/4 v4, 0x1

    const-wide/16 v6, 0x5000

    :try_start_3
    invoke-static {v3, v0, v4, v6, v7}, Lcom/amap/api/services/core/bj;->a(Ljava/io/File;IIJ)Lcom/amap/api/services/core/bj;

    move-result-object v1

    .line 292
    invoke-virtual {p0, p5}, Lcom/amap/api/services/core/bh;->a(Lcom/amap/api/services/core/aj;)Lcom/amap/api/services/core/bm;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/services/core/bj;->a(Lcom/amap/api/services/core/bm;)V

    .line 293
    invoke-virtual {v1, p2}, Lcom/amap/api/services/core/bj;->a(Ljava/lang/String;)Lcom/amap/api/services/core/bj$b;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 295
    if-eqz v0, :cond_4

    .line 296
    const/4 v0, 0x0

    .line 313
    if-eqz v2, :cond_3

    .line 315
    :try_start_4
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_c

    .line 320
    :cond_3
    :goto_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/services/core/bj;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 322
    :try_start_5
    invoke-virtual {v1}, Lcom/amap/api/services/core/bj;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 323
    :catch_0
    move-exception v1

    .line 324
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 299
    :cond_4
    :try_start_6
    const-string v0, "UTF-8"

    invoke-virtual {p4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 300
    invoke-virtual {v1, p2}, Lcom/amap/api/services/core/bj;->b(Ljava/lang/String;)Lcom/amap/api/services/core/bj$a;

    move-result-object v3

    .line 301
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/amap/api/services/core/bj$a;->a(I)Ljava/io/OutputStream;

    move-result-object v2

    .line 302
    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 303
    invoke-virtual {v3}, Lcom/amap/api/services/core/bj$a;->a()V

    .line 304
    invoke-virtual {v1}, Lcom/amap/api/services/core/bj;->b()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 306
    const/4 v0, 0x1

    .line 313
    if-eqz v2, :cond_5

    .line 315
    :try_start_7
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_d

    .line 320
    :cond_5
    :goto_4
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/services/core/bj;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 322
    :try_start_8
    invoke-virtual {v1}, Lcom/amap/api/services/core/bj;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    .line 323
    :catch_1
    move-exception v1

    goto :goto_3

    .line 307
    :catch_2
    move-exception v0

    .line 308
    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 313
    if-eqz v2, :cond_6

    .line 315
    :try_start_a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_7

    .line 320
    :cond_6
    :goto_5
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/amap/api/services/core/bj;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 322
    :try_start_b
    invoke-virtual {v1}, Lcom/amap/api/services/core/bj;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_8

    .line 328
    :cond_7
    :goto_6
    const/4 v0, 0x0

    goto :goto_1

    .line 309
    :catch_3
    move-exception v0

    .line 311
    :try_start_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 313
    if-eqz v2, :cond_8

    .line 315
    :try_start_d
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_9

    .line 320
    :cond_8
    :goto_7
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lcom/amap/api/services/core/bj;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 322
    :try_start_e
    invoke-virtual {v1}, Lcom/amap/api/services/core/bj;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4

    goto :goto_6

    .line 323
    :catch_4
    move-exception v0

    .line 324
    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 313
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_9

    .line 315
    :try_start_f
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_5

    .line 320
    :cond_9
    :goto_9
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/amap/api/services/core/bj;->a()Z

    move-result v2

    if-nez v2, :cond_a

    .line 322
    :try_start_10
    invoke-virtual {v1}, Lcom/amap/api/services/core/bj;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_6

    .line 313
    :cond_a
    :goto_a
    throw v0

    .line 316
    :catch_5
    move-exception v2

    .line 317
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 323
    :catch_6
    move-exception v1

    .line 324
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    .line 316
    :catch_7
    move-exception v0

    .line 317
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 323
    :catch_8
    move-exception v0

    goto :goto_8

    .line 316
    :catch_9
    move-exception v0

    .line 317
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 316
    :catch_a
    move-exception v2

    .line 317
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 323
    :catch_b
    move-exception v1

    goto/16 :goto_3

    .line 316
    :catch_c
    move-exception v2

    .line 317
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    .line 316
    :catch_d
    move-exception v2

    .line 317
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4
.end method

.method private b(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/ac;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    const/4 v1, 0x0

    .line 170
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 171
    :try_start_1
    new-instance v0, Lcom/amap/api/services/core/am;

    invoke-direct {v0, p1}, Lcom/amap/api/services/core/am;-><init>(Landroid/content/Context;)V

    .line 172
    invoke-virtual {v0}, Lcom/amap/api/services/core/am;->a()Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 173
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 177
    :goto_0
    return-object v0

    .line 173
    :catchall_0
    move-exception v0

    :goto_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 174
    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    .line 175
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 174
    :catch_1
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    goto :goto_2

    .line 173
    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_1
.end method

.method private c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 237
    .line 239
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 240
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/api/services/core/bi;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 242
    return-object v0
.end method

.method private c(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 268
    invoke-static {p1}, Lcom/amap/api/services/core/v;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 269
    return-object v0
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected abstract a(Lcom/amap/api/services/core/aj;)Lcom/amap/api/services/core/bm;
.end method

.method protected abstract a(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected a(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 246
    const/4 v0, 0x0

    .line 248
    :try_start_0
    invoke-static {p1}, Lcom/amap/api/services/core/bi;->a(Ljava/lang/Throwable;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 253
    :goto_0
    return-object v0

    .line 250
    :catch_0
    move-exception v1

    .line 251
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected abstract a(Ljava/util/List;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/ac;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method a(Landroid/content/Context;)V
    .locals 17

    .prologue
    .line 127
    invoke-direct/range {p0 .. p1}, Lcom/amap/api/services/core/bh;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 128
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 131
    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/amap/api/services/core/bh;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v8

    .line 132
    if-eqz v8, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 135
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/services/core/bh;->c()Ljava/lang/String;

    move-result-object v5

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/services/core/bh;->a:Lcom/amap/api/services/core/ac;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/core/bh;->a(Landroid/content/Context;Lcom/amap/api/services/core/ac;)Ljava/lang/String;

    move-result-object v4

    .line 137
    invoke-direct/range {p0 .. p1}, Lcom/amap/api/services/core/bh;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 138
    const-string v7, "ANR"

    .line 139
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/services/core/bh;->a()I

    move-result v6

    move-object/from16 v2, p0

    .line 140
    invoke-direct/range {v2 .. v8}, Lcom/amap/api/services/core/bh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 142
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 148
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/amap/api/services/core/bh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 149
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/core/bh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/services/core/bh;->b()Ljava/lang/String;

    move-result-object v10

    .line 151
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    monitor-enter v3

    .line 152
    :try_start_0
    new-instance v12, Lcom/amap/api/services/core/aj;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/amap/api/services/core/aj;-><init>(Landroid/content/Context;)V

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 153
    invoke-direct/range {v7 .. v12}, Lcom/amap/api/services/core/bh;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/core/aj;)Z

    move-result v16

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/amap/api/services/core/bh;->a:Lcom/amap/api/services/core/ac;

    invoke-virtual {v2}, Lcom/amap/api/services/core/ac;->a()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v11, p0

    move-object v14, v9

    move v15, v6

    invoke-direct/range {v11 .. v16}, Lcom/amap/api/services/core/bh;->a(Lcom/amap/api/services/core/aj;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 157
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method a(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    .prologue
    .line 54
    invoke-direct/range {p0 .. p1}, Lcom/amap/api/services/core/bh;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 55
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 121
    :cond_0
    return-void

    .line 62
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/amap/api/services/core/bh;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v17

    .line 63
    if-eqz v17, :cond_0

    const-string v3, ""

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 73
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_2
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lcom/amap/api/services/core/ac;

    .line 74
    invoke-virtual {v13}, Lcom/amap/api/services/core/ac;->f()[Ljava/lang/String;

    move-result-object v2

    .line 75
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/amap/api/services/core/bh;->a([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 76
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/amap/api/services/core/bh;->a(Lcom/amap/api/services/core/ac;)V

    .line 77
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/services/core/bh;->c()Ljava/lang/String;

    move-result-object v5

    .line 78
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13}, Lcom/amap/api/services/core/bh;->a(Landroid/content/Context;Lcom/amap/api/services/core/ac;)Ljava/lang/String;

    move-result-object v4

    .line 79
    invoke-direct/range {p0 .. p1}, Lcom/amap/api/services/core/bh;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 80
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/amap/api/services/core/bh;->b(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    .line 81
    if-eqz v7, :cond_0

    const-string v2, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/services/core/bh;->a()I

    move-result v6

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    if-eqz p3, :cond_3

    .line 87
    const-string v8, "class:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    :cond_3
    if-eqz p4, :cond_4

    .line 91
    const-string v8, " method:"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p4

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "$"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "<br/>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    :cond_4
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/amap/api/services/core/bh;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 97
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/amap/api/services/core/bh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 99
    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 102
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/core/bh;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/amap/api/services/core/bh;->b()Ljava/lang/String;

    move-result-object v10

    .line 105
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    monitor-enter v3

    .line 106
    :try_start_0
    new-instance v12, Lcom/amap/api/services/core/aj;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Lcom/amap/api/services/core/aj;-><init>(Landroid/content/Context;)V

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    .line 107
    invoke-direct/range {v7 .. v12}, Lcom/amap/api/services/core/bh;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amap/api/services/core/aj;)Z

    move-result v16

    .line 109
    invoke-virtual {v13}, Lcom/amap/api/services/core/ac;->a()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v11, p0

    move-object v14, v9

    move v15, v6

    invoke-direct/range {v11 .. v16}, Lcom/amap/api/services/core/bh;->a(Lcom/amap/api/services/core/aj;Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 111
    monitor-exit v3

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected a(Lcom/amap/api/services/core/ac;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/amap/api/services/core/bh;->a:Lcom/amap/api/services/core/ac;

    .line 165
    return-void
.end method

.method protected a([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 332
    .line 334
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 346
    :cond_0
    :goto_0
    return v0

    .line 337
    :cond_1
    :try_start_0
    array-length v2, p1

    move v1, v0

    :goto_1
    if-ge v1, v2, :cond_0

    aget-object v3, p1, v1

    .line 338
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 339
    const/4 v0, 0x1

    .line 340
    goto :goto_0

    .line 337
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 343
    :catch_0
    move-exception v1

    .line 344
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected abstract b()Ljava/lang/String;
.end method
