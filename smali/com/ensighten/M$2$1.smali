.class final Lcom/ensighten/M$2$1;
.super Landroid/os/AsyncTask;
.source "SourceFile"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ensighten/M$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/ensighten/M$2;


# direct methods
.method constructor <init>(Lcom/ensighten/M$2;II)V
    .locals 0

    .prologue
    .line 962
    iput-object p1, p0, Lcom/ensighten/M$2$1;->d:Lcom/ensighten/M$2;

    iput p2, p0, Lcom/ensighten/M$2$1;->b:I

    iput p3, p0, Lcom/ensighten/M$2$1;->c:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 12

    .prologue
    .line 967
    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/ensighten/M$2$1;->a:Ljava/lang/String;

    .line 970
    const/4 v4, 0x0

    .line 972
    const/4 v3, 0x0

    .line 973
    const/4 v2, 0x0

    .line 975
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ensighten/M$2$1;->d:Lcom/ensighten/M$2;

    iget-object v1, v1, Lcom/ensighten/M$2;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ensighten/O;->a(Ljava/io/File;)J

    move-result-wide v8

    .line 979
    :try_start_0
    new-instance v5, Ljava/net/URL;

    iget-object v0, p0, Lcom/ensighten/M$2$1;->a:Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 980
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/HttpInstrumentation;->openConnection(Ljava/net/URLConnection;)Ljava/net/URLConnection;

    move-result-object v6

    .line 981
    invoke-virtual {v6}, Ljava/net/URLConnection;->connect()V

    .line 982
    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    .line 985
    const-wide/16 v10, -0x1

    cmp-long v7, v0, v10

    if-nez v7, :cond_17

    .line 986
    const-string v0, "content-length"

    invoke-virtual {v6, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 987
    invoke-static {v0}, Ljava/lang/Long;->getLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 988
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    move-wide v6, v0

    .line 992
    :goto_1
    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-eqz v0, :cond_5

    .line 995
    cmp-long v0, v6, v8

    if-lez v0, :cond_5

    .line 996
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 997
    const-string v0, "Not writing file to storage due to insufficient space on disk."

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1034
    :cond_0
    if-eqz v2, :cond_1

    .line 1036
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b

    .line 1043
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    .line 1045
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_c

    .line 1052
    :cond_2
    :goto_3
    if-eqz v4, :cond_3

    .line 1054
    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_d

    .line 998
    :cond_3
    :goto_4
    const/4 v0, 0x0

    .line 1063
    :goto_5
    return-object v0

    .line 988
    :cond_4
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 1002
    :cond_5
    :try_start_4
    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 1003
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1005
    :try_start_5
    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v0, p0, Lcom/ensighten/M$2$1;->d:Lcom/ensighten/M$2;

    iget-object v0, v0, Lcom/ensighten/M$2;->f:Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_17
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_14
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1006
    :try_start_6
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_18
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_15
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1008
    const/16 v0, 0x2000

    :try_start_7
    new-array v2, v0, [B

    .line 1010
    const/4 v0, 0x0

    .line 1012
    :goto_6
    invoke-virtual {v5, v2}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v8, -0x1

    if-eq v3, v8, :cond_14

    .line 1013
    const/4 v8, 0x0

    invoke-virtual {v1, v2, v8, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 1016
    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-nez v3, :cond_9

    rem-int/lit16 v3, v0, 0x400

    if-nez v3, :cond_9

    .line 1017
    new-instance v3, Ljava/io/File;

    iget-object v8, p0, Lcom/ensighten/M$2$1;->d:Lcom/ensighten/M$2;

    iget-object v8, v8, Lcom/ensighten/M$2;->e:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/ensighten/O;->a(Ljava/io/File;)J

    move-result-wide v8

    .line 1018
    const-wide/32 v10, 0x800000

    cmp-long v3, v8, v10

    if-gez v3, :cond_9

    .line 1019
    iget-object v0, p0, Lcom/ensighten/M$2$1;->d:Lcom/ensighten/M$2;

    iget-object v0, v0, Lcom/ensighten/M$2;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_19
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_16
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1034
    if-eqz v1, :cond_6

    .line 1036
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_e

    .line 1043
    :cond_6
    :goto_7
    if-eqz v4, :cond_7

    .line 1045
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_f

    .line 1052
    :cond_7
    :goto_8
    if-eqz v5, :cond_8

    .line 1054
    :try_start_a
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_10

    .line 1020
    :cond_8
    :goto_9
    const/4 v0, 0x0

    goto :goto_5

    .line 1023
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1025
    :catch_0
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    .line 1026
    :goto_a
    :try_start_b
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1027
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    .line 1028
    :cond_a
    iget-object v0, p0, Lcom/ensighten/M$2$1;->d:Lcom/ensighten/M$2;

    iget-object v0, v0, Lcom/ensighten/M$2;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 1034
    if-eqz v1, :cond_b

    .line 1036
    :try_start_c
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 1043
    :cond_b
    :goto_b
    if-eqz v2, :cond_c

    .line 1045
    :try_start_d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 1052
    :cond_c
    :goto_c
    if-eqz v3, :cond_d

    .line 1054
    :try_start_e
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 1063
    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/ensighten/M$2$1;->d:Lcom/ensighten/M$2;

    iget-object v0, v0, Lcom/ensighten/M$2;->j:Lcom/ensighten/M;

    iget-object v1, p0, Lcom/ensighten/M$2$1;->d:Lcom/ensighten/M$2;

    iget-object v1, v1, Lcom/ensighten/M$2;->f:Ljava/io/File;

    iget-object v2, p0, Lcom/ensighten/M$2$1;->d:Lcom/ensighten/M$2;

    iget-object v2, v2, Lcom/ensighten/M$2;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/ensighten/M$2$1;->d:Lcom/ensighten/M$2;

    iget-object v3, v3, Lcom/ensighten/M$2;->h:Landroid/content/Context;

    iget v4, p0, Lcom/ensighten/M$2$1;->b:I

    iget v5, p0, Lcom/ensighten/M$2$1;->c:I

    invoke-static/range {v0 .. v5}, Lcom/ensighten/M;->a(Lcom/ensighten/M;Ljava/io/File;Ljava/lang/String;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_5

    .line 1029
    :catch_1
    move-exception v0

    move-object v5, v4

    .line 1030
    :goto_e
    :try_start_f
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1031
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    .line 1032
    :cond_e
    iget-object v0, p0, Lcom/ensighten/M$2$1;->d:Lcom/ensighten/M$2;

    iget-object v0, v0, Lcom/ensighten/M$2;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1034
    if-eqz v2, :cond_f

    .line 1036
    :try_start_10
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_9

    .line 1043
    :cond_f
    :goto_f
    if-eqz v3, :cond_10

    .line 1045
    :try_start_11
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_a

    .line 1052
    :cond_10
    :goto_10
    if-eqz v5, :cond_d

    .line 1054
    :try_start_12
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2

    goto :goto_d

    .line 1055
    :catch_2
    move-exception v0

    .line 1056
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1057
    :goto_11
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_d

    .line 1034
    :catchall_0
    move-exception v0

    move-object v5, v4

    :goto_12
    if-eqz v2, :cond_11

    .line 1036
    :try_start_13
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_3

    .line 1043
    :cond_11
    :goto_13
    if-eqz v3, :cond_12

    .line 1045
    :try_start_14
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_4

    .line 1052
    :cond_12
    :goto_14
    if-eqz v5, :cond_13

    .line 1054
    :try_start_15
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_5

    .line 1034
    :cond_13
    :goto_15
    throw v0

    .line 1037
    :catch_3
    move-exception v1

    .line 1038
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1039
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_13

    .line 1046
    :catch_4
    move-exception v1

    .line 1047
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1048
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_14

    .line 1055
    :catch_5
    move-exception v1

    .line 1056
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1057
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_15

    .line 1037
    :catch_6
    move-exception v0

    .line 1038
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1039
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_b

    .line 1046
    :catch_7
    move-exception v0

    .line 1047
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1048
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_c

    .line 1055
    :catch_8
    move-exception v0

    .line 1056
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_11

    .line 1037
    :catch_9
    move-exception v0

    .line 1038
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 1039
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_f

    .line 1046
    :catch_a
    move-exception v0

    .line 1047
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1048
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_10

    .line 1037
    :catch_b
    move-exception v0

    .line 1038
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1039
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_2

    .line 1046
    :catch_c
    move-exception v0

    .line 1047
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1048
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_3

    .line 1055
    :catch_d
    move-exception v0

    .line 1056
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1057
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_4

    .line 1037
    :catch_e
    move-exception v0

    .line 1038
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1039
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_7

    .line 1046
    :catch_f
    move-exception v0

    .line 1047
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1048
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_8

    .line 1055
    :catch_10
    move-exception v0

    .line 1056
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1057
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_9

    .line 1034
    :cond_14
    if-eqz v1, :cond_15

    .line 1036
    :try_start_16
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_12

    .line 1043
    :cond_15
    :goto_16
    if-eqz v4, :cond_16

    .line 1045
    :try_start_17
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_13

    .line 1052
    :cond_16
    :goto_17
    if-eqz v5, :cond_d

    .line 1054
    :try_start_18
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_11

    goto/16 :goto_d

    .line 1055
    :catch_11
    move-exception v0

    .line 1056
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_d

    goto/16 :goto_11

    .line 1037
    :catch_12
    move-exception v0

    .line 1038
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1039
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_16

    .line 1046
    :catch_13
    move-exception v0

    .line 1047
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1048
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_17

    .line 1034
    :catchall_1
    move-exception v0

    goto/16 :goto_12

    :catchall_2
    move-exception v0

    move-object v3, v4

    goto/16 :goto_12

    :catchall_3
    move-exception v0

    move-object v2, v1

    move-object v3, v4

    goto/16 :goto_12

    :catchall_4
    move-exception v0

    move-object v5, v3

    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_12

    .line 1029
    :catch_14
    move-exception v0

    goto/16 :goto_e

    :catch_15
    move-exception v0

    move-object v3, v4

    goto/16 :goto_e

    :catch_16
    move-exception v0

    move-object v2, v1

    move-object v3, v4

    goto/16 :goto_e

    .line 1025
    :catch_17
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    move-object v3, v5

    goto/16 :goto_a

    :catch_18
    move-exception v0

    move-object v1, v2

    move-object v3, v5

    move-object v2, v4

    goto/16 :goto_a

    :catch_19
    move-exception v0

    move-object v2, v4

    move-object v3, v5

    goto/16 :goto_a

    :cond_17
    move-wide v6, v0

    goto/16 :goto_1
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/ensighten/M$2$1;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/M$2$1;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "M$2$1#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    :goto_0
    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ensighten/M$2$1;->a([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "M$2$1#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/M$2$1;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "M$2$1#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 962
    :goto_0
    check-cast p1, Landroid/graphics/Bitmap;

    .line 2068
    new-instance v1, Lcom/ensighten/M$2$1$1;

    invoke-direct {v1, p0}, Lcom/ensighten/M$2$1$1;-><init>(Lcom/ensighten/M$2$1;)V

    .line 2077
    if-nez p1, :cond_0

    .line 2078
    iget-object v0, p0, Lcom/ensighten/M$2$1;->d:Lcom/ensighten/M$2;

    iget-object v0, v0, Lcom/ensighten/M$2;->j:Lcom/ensighten/M;

    .line 3061
    iget-object v0, v0, Lcom/ensighten/M;->g:Ljava/util/HashSet;

    .line 2078
    iget-object v2, p0, Lcom/ensighten/M$2$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2079
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 2080
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    :goto_1
    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "M$2$1#onPostExecute"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2083
    :cond_0
    const/4 v0, 0x1

    .line 2084
    iget-object v2, p0, Lcom/ensighten/M$2$1;->d:Lcom/ensighten/M$2;

    iget-boolean v2, v2, Lcom/ensighten/M$2;->a:Z

    if-eqz v2, :cond_2

    .line 2085
    iget-object v2, p0, Lcom/ensighten/M$2$1;->d:Lcom/ensighten/M$2;

    iget-object v2, v2, Lcom/ensighten/M$2;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2092
    :goto_2
    :try_start_2
    iget-object v2, p0, Lcom/ensighten/M$2$1;->d:Lcom/ensighten/M$2;

    iget-object v2, v2, Lcom/ensighten/M$2;->i:Lorg/json/JSONObject;

    const-string/jumbo v3, "type"

    const-string v4, "file"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2093
    iget-object v2, p0, Lcom/ensighten/M$2$1;->d:Lcom/ensighten/M$2;

    iget-object v2, v2, Lcom/ensighten/M$2;->i:Lorg/json/JSONObject;

    const-string/jumbo v3, "value"

    iget-object v4, p0, Lcom/ensighten/M$2$1;->d:Lcom/ensighten/M$2;

    iget-object v4, v4, Lcom/ensighten/M$2;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2094
    iget-object v2, p0, Lcom/ensighten/M$2$1;->d:Lcom/ensighten/M$2;

    iget-object v2, v2, Lcom/ensighten/M$2;->j:Lcom/ensighten/M;

    const-string v3, "setImage() downloaded image"

    .line 5061
    invoke-virtual {v2}, Lcom/ensighten/M;->a()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 2101
    :goto_3
    if-nez v0, :cond_1

    .line 2102
    iget-object v0, p0, Lcom/ensighten/M$2$1;->d:Lcom/ensighten/M$2;

    iget-object v0, v0, Lcom/ensighten/M$2;->j:Lcom/ensighten/M;

    .line 6061
    iget-object v0, v0, Lcom/ensighten/M;->g:Ljava/util/HashSet;

    .line 2102
    iget-object v2, p0, Lcom/ensighten/M$2$1;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2103
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 962
    :cond_1
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    goto :goto_1

    .line 2087
    :cond_2
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/ensighten/M$2$1;->d:Lcom/ensighten/M$2;

    iget-object v3, v3, Lcom/ensighten/M$2;->j:Lcom/ensighten/M;

    .line 4061
    iget-object v3, v3, Lcom/ensighten/M;->h:Landroid/content/Context;

    .line 2087
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 2088
    iget-object v3, p0, Lcom/ensighten/M$2$1;->d:Lcom/ensighten/M$2;

    iget-object v3, v3, Lcom/ensighten/M$2;->b:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 2095
    :catch_1
    move-exception v0

    .line 2096
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2097
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    .line 2098
    :cond_3
    const/4 v0, 0x0

    goto :goto_3
.end method
