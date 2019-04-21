.class final Lcom/ensighten/M$3;
.super Landroid/os/AsyncTask;
.source "SourceFile"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ensighten/M;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/ensighten/M;


# direct methods
.method constructor <init>(Lcom/ensighten/M;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1482
    iput-object p1, p0, Lcom/ensighten/M$3;->b:Lcom/ensighten/M;

    iput-object p2, p0, Lcom/ensighten/M$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1485
    .line 1490
    :try_start_0
    iget-object v1, p0, Lcom/ensighten/M$3;->b:Lcom/ensighten/M;

    .line 2061
    iget-object v1, v1, Lcom/ensighten/M;->h:Landroid/content/Context;

    .line 1490
    const-string v2, "ensightenOptimizationConfig_new"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 1491
    :try_start_1
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1f
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_16
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1492
    :try_start_2
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v4}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_20
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_17
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1493
    :try_start_3
    iget-object v1, p0, Lcom/ensighten/M$3;->a:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_21
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_18
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1494
    const/4 v0, 0x1

    .line 1508
    if-eqz v2, :cond_0

    .line 1510
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_13

    .line 1517
    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    .line 1519
    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_14

    .line 1526
    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    .line 1528
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_15

    .line 1536
    :cond_2
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ensighten/M$3;->b:Lcom/ensighten/M;

    .line 3061
    iget-object v2, v2, Lcom/ensighten/M;->h:Landroid/content/Context;

    .line 1536
    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1537
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ensightenOptimizationConfig_new"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1538
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "ensightenOptimizationConfig"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1541
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1544
    if-eqz v0, :cond_13

    .line 1545
    invoke-virtual {v2, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 1550
    :cond_3
    :goto_3
    return-object v3

    .line 1495
    :catch_0
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    .line 1496
    :goto_4
    :try_start_7
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1497
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1508
    :cond_4
    if-eqz v2, :cond_5

    .line 1510
    :try_start_8
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b

    .line 1517
    :cond_5
    :goto_5
    if-eqz v4, :cond_6

    .line 1519
    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_c

    .line 1526
    :cond_6
    :goto_6
    if-eqz v5, :cond_2

    .line 1528
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_2

    .line 1529
    :catch_1
    move-exception v1

    .line 1530
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1531
    :goto_7
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_2

    .line 1498
    :catch_2
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    .line 1499
    :goto_8
    :try_start_b
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1500
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 1508
    :cond_7
    if-eqz v2, :cond_8

    .line 1510
    :try_start_c
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_d

    .line 1517
    :cond_8
    :goto_9
    if-eqz v4, :cond_9

    .line 1519
    :try_start_d
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_e

    .line 1526
    :cond_9
    :goto_a
    if-eqz v5, :cond_2

    .line 1528
    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_2

    .line 1529
    :catch_3
    move-exception v1

    .line 1530
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_7

    .line 1501
    :catch_4
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    .line 1502
    :goto_b
    :try_start_f
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1503
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 1508
    :cond_a
    if-eqz v2, :cond_b

    .line 1510
    :try_start_10
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_f

    .line 1517
    :cond_b
    :goto_c
    if-eqz v4, :cond_c

    .line 1519
    :try_start_11
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_10

    .line 1526
    :cond_c
    :goto_d
    if-eqz v5, :cond_2

    .line 1528
    :try_start_12
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5

    goto/16 :goto_2

    .line 1529
    :catch_5
    move-exception v1

    .line 1530
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_7

    .line 1504
    :catch_6
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    .line 1505
    :goto_e
    :try_start_13
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 1506
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 1508
    :cond_d
    if-eqz v2, :cond_e

    .line 1510
    :try_start_14
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_11

    .line 1517
    :cond_e
    :goto_f
    if-eqz v4, :cond_f

    .line 1519
    :try_start_15
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_12

    .line 1526
    :cond_f
    :goto_10
    if-eqz v5, :cond_2

    .line 1528
    :try_start_16
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7

    goto/16 :goto_2

    .line 1529
    :catch_7
    move-exception v1

    .line 1530
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_7

    .line 1508
    :catchall_0
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    move-object v5, v3

    :goto_11
    if-eqz v2, :cond_10

    .line 1510
    :try_start_17
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_8

    .line 1517
    :cond_10
    :goto_12
    if-eqz v4, :cond_11

    .line 1519
    :try_start_18
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_9

    .line 1526
    :cond_11
    :goto_13
    if-eqz v5, :cond_12

    .line 1528
    :try_start_19
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_a

    .line 1508
    :cond_12
    :goto_14
    throw v0

    .line 1547
    :cond_13
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto/16 :goto_3

    .line 1511
    :catch_8
    move-exception v1

    .line 1512
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1513
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_12

    .line 1520
    :catch_9
    move-exception v1

    .line 1521
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1522
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_13

    .line 1529
    :catch_a
    move-exception v1

    .line 1530
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1531
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto :goto_14

    .line 1511
    :catch_b
    move-exception v1

    .line 1512
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1513
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_5

    .line 1520
    :catch_c
    move-exception v1

    .line 1521
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1522
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_6

    .line 1511
    :catch_d
    move-exception v1

    .line 1512
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1513
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_9

    .line 1520
    :catch_e
    move-exception v1

    .line 1521
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1522
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_a

    .line 1511
    :catch_f
    move-exception v1

    .line 1512
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1513
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_c

    .line 1520
    :catch_10
    move-exception v1

    .line 1521
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1522
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_d

    .line 1511
    :catch_11
    move-exception v1

    .line 1512
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1513
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_f

    .line 1520
    :catch_12
    move-exception v1

    .line 1521
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1522
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_10

    .line 1511
    :catch_13
    move-exception v1

    .line 1512
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1513
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 1520
    :catch_14
    move-exception v1

    .line 1521
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1522
    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 1529
    :catch_15
    move-exception v1

    .line 1530
    invoke-static {}, Lcom/ensighten/i;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_7

    .line 1508
    :catchall_1
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    goto/16 :goto_11

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto/16 :goto_11

    :catchall_3
    move-exception v0

    goto/16 :goto_11

    .line 1504
    :catch_16
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    goto/16 :goto_e

    :catch_17
    move-exception v1

    move-object v2, v3

    goto/16 :goto_e

    :catch_18
    move-exception v1

    goto/16 :goto_e

    .line 1501
    :catch_19
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    goto/16 :goto_b

    :catch_1a
    move-exception v1

    move-object v2, v3

    goto/16 :goto_b

    :catch_1b
    move-exception v1

    goto/16 :goto_b

    .line 1498
    :catch_1c
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    goto/16 :goto_8

    :catch_1d
    move-exception v1

    move-object v2, v3

    goto/16 :goto_8

    :catch_1e
    move-exception v1

    goto/16 :goto_8

    .line 1495
    :catch_1f
    move-exception v1

    move-object v2, v3

    move-object v4, v3

    goto/16 :goto_4

    :catch_20
    move-exception v1

    move-object v2, v3

    goto/16 :goto_4

    :catch_21
    move-exception v1

    goto/16 :goto_4
.end method


# virtual methods
.method public _nr_setTrace(Lcom/newrelic/agent/android/tracing/Trace;)V
    .locals 1

    :try_start_0
    iput-object p1, p0, Lcom/ensighten/M$3;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;
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
    iget-object v0, p0, Lcom/ensighten/M$3;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "M$3#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1482
    :goto_0
    invoke-direct {p0}, Lcom/ensighten/M$3;->a()Ljava/lang/Void;

    move-result-object v0

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    invoke-static {p0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->unloadTraceContext(Ljava/lang/Object;)V

    return-object v0

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "M$3#doInBackground"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
