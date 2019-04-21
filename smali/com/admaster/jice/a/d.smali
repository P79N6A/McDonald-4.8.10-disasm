.class Lcom/admaster/jice/a/d;
.super Landroid/os/Handler;
.source "JiceCore.java"


# instance fields
.field final synthetic a:Lcom/admaster/jice/a/c;

.field private b:Landroid/content/Context;

.field private final c:Ljava/util/concurrent/locks/Lock;

.field private d:Ljava/util/Timer;

.field private e:Ljava/util/Timer;

.field private f:Lcom/admaster/jice/a/h;

.field private g:Lcom/admaster/jice/a/h;

.field private final h:Lcom/admaster/jice/d/b;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(Lcom/admaster/jice/a/c;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 352
    iput-object p1, p0, Lcom/admaster/jice/a/d;->a:Lcom/admaster/jice/a/c;

    .line 353
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 331
    iput-object v0, p0, Lcom/admaster/jice/a/d;->d:Ljava/util/Timer;

    .line 333
    iput-object v0, p0, Lcom/admaster/jice/a/d;->e:Ljava/util/Timer;

    .line 335
    iput-object v0, p0, Lcom/admaster/jice/a/d;->f:Lcom/admaster/jice/a/h;

    .line 337
    iput-object v0, p0, Lcom/admaster/jice/a/d;->g:Lcom/admaster/jice/a/h;

    .line 341
    iput-object v0, p0, Lcom/admaster/jice/a/d;->i:Ljava/util/List;

    .line 343
    iput-object v0, p0, Lcom/admaster/jice/a/d;->j:Ljava/util/List;

    .line 346
    iput v1, p0, Lcom/admaster/jice/a/d;->k:I

    .line 348
    iput v1, p0, Lcom/admaster/jice/a/d;->l:I

    .line 354
    iput-object p2, p0, Lcom/admaster/jice/a/d;->b:Landroid/content/Context;

    .line 356
    new-instance v0, Lcom/admaster/jice/d/b;

    invoke-direct {v0, p2}, Lcom/admaster/jice/d/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/admaster/jice/a/d;->h:Lcom/admaster/jice/d/b;

    .line 360
    iget-object v0, p0, Lcom/admaster/jice/a/d;->d:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 361
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/admaster/jice/a/d;->d:Ljava/util/Timer;

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/admaster/jice/a/d;->e:Ljava/util/Timer;

    if-nez v0, :cond_1

    .line 364
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/admaster/jice/a/d;->e:Ljava/util/Timer;

    .line 370
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/admaster/jice/a/d;->i:Ljava/util/List;

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/admaster/jice/a/d;->j:Ljava/util/List;

    .line 379
    new-instance v0, Lcom/admaster/jice/a/j;

    invoke-static {p1}, Lcom/admaster/jice/a/c;->b(Lcom/admaster/jice/a/c;)Lcom/admaster/jice/api/JiceSDK;

    move-result-object v1

    invoke-static {p1}, Lcom/admaster/jice/a/c;->c(Lcom/admaster/jice/a/c;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/admaster/jice/a/d;->h:Lcom/admaster/jice/d/b;

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/admaster/jice/a/j;-><init>(Lcom/admaster/jice/api/JiceSDK;Landroid/content/Context;Ljava/lang/String;Lcom/admaster/jice/d/b;)V

    invoke-static {p1, v0}, Lcom/admaster/jice/a/c;->a(Lcom/admaster/jice/a/c;Lcom/admaster/jice/a/j;)V

    .line 380
    invoke-static {p1}, Lcom/admaster/jice/a/c;->d(Lcom/admaster/jice/a/c;)Lcom/admaster/jice/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/admaster/jice/a/j;->a()V

    .line 382
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/admaster/jice/a/d;->c:Ljava/util/concurrent/locks/Lock;

    .line 383
    iget-object v0, p0, Lcom/admaster/jice/a/d;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 385
    invoke-direct {p0}, Lcom/admaster/jice/a/d;->b()V

    .line 386
    return-void
.end method

.method static synthetic a(Lcom/admaster/jice/a/d;)I
    .locals 1

    .prologue
    .line 348
    iget v0, p0, Lcom/admaster/jice/a/d;->l:I

    return v0
.end method

.method private a(J)Ljava/lang/String;
    .locals 9

    .prologue
    .line 807
    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    .line 809
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 810
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 811
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 812
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 813
    const/16 v4, 0x17

    const/16 v5, 0x3b

    const/16 v6, 0x3b

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 814
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 816
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 817
    const-string v2, "#"

    invoke-virtual {v7, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 818
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 819
    const-string v0, "#"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 820
    const-string v0, "0"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    :goto_0
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 821
    :catch_0
    move-exception v0

    .line 822
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/admaster/jice/a/d;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 803
    invoke-direct {p0, p1, p2}, Lcom/admaster/jice/a/d;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/admaster/jice/a/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 835
    invoke-direct {p0, p1, p2, p3}, Lcom/admaster/jice/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 836
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 840
    :try_start_0
    iget-object v1, p0, Lcom/admaster/jice/a/d;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/admaster/jice/a/d;->a:Lcom/admaster/jice/a/c;

    invoke-static {v2}, Lcom/admaster/jice/a/c;->c(Lcom/admaster/jice/a/c;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/admaster/jice/d/e;->c(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 843
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 844
    iget-object v2, p0, Lcom/admaster/jice/a/d;->b:Landroid/content/Context;

    const-string v3, "EXCEPTION"

    const-string v4, "buildEventData receive eventname is empty"

    .line 845
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "eventname:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "eventlabel:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 844
    invoke-static {v2, v3, v4, v5, v6}, Lcom/admaster/jice/d/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 850
    const-string v4, "time"

    invoke-virtual {v0, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 852
    const-string v2, "system"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 854
    const-string v1, "eventname"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 855
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 856
    const-string v1, "eventlabel"

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 861
    :goto_0
    iget-object v1, p0, Lcom/admaster/jice/a/d;->a:Lcom/admaster/jice/a/c;

    invoke-static {v1}, Lcom/admaster/jice/a/c;->e(Lcom/admaster/jice/a/c;)Lcom/admaster/jice/a/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/admaster/jice/a/x;->b()Ljava/lang/String;

    move-result-object v1

    .line 863
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 864
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 868
    :goto_1
    const-string v2, "profile"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 870
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 871
    const-string v1, "errormsg"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    :cond_1
    :goto_2
    instance-of v1, v0, Lorg/json/JSONObject;

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3
    return-object v0

    .line 858
    :cond_2
    :try_start_1
    const-string v1, "eventlabel"

    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 873
    :catch_0
    move-exception v1

    .line 874
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 875
    iget-object v2, p0, Lcom/admaster/jice/a/d;->b:Landroid/content/Context;

    const-string v3, "EXCEPTION"

    const-string v4, "buildEventData failed"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, ""

    invoke-static {v2, v3, v4, v1, v5}, Lcom/admaster/jice/d/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 866
    :cond_3
    :try_start_2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 877
    :cond_4
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/16 v2, 0x1e

    .line 590
    .line 591
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 593
    new-instance v0, Ljava/util/ArrayList;

    .line 594
    const/4 v1, 0x0

    invoke-interface {p1, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 593
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 599
    :goto_0
    return-object v0

    .line 597
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method private a(Landroid/net/Uri;)V
    .locals 5

    .prologue
    .line 771
    .line 775
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 776
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 777
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 780
    :cond_0
    const-string v0, "campaignId"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 782
    iget-object v1, p0, Lcom/admaster/jice/a/d;->a:Lcom/admaster/jice/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handlerTestPushConfig:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   campaignId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/admaster/jice/a/c;->a(Lcom/admaster/jice/a/c;Ljava/lang/String;)V

    .line 784
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 785
    const-string v0, "JiceSDK"

    const-string v1, "the campaignid is empty! please check Android scheme url on Jice Web System."

    invoke-static {v0, v1}, Lcom/admaster/jice/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    :goto_0
    return-void

    .line 789
    :cond_1
    new-instance v1, Lcom/admaster/jice/a/t;

    iget-object v2, p0, Lcom/admaster/jice/a/d;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/admaster/jice/a/d;->h:Lcom/admaster/jice/d/b;

    iget-object v4, p0, Lcom/admaster/jice/a/d;->a:Lcom/admaster/jice/a/c;

    invoke-static {v4}, Lcom/admaster/jice/a/c;->c(Lcom/admaster/jice/a/c;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/admaster/jice/a/t;-><init>(Landroid/content/Context;Lcom/admaster/jice/d/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    invoke-virtual {v1}, Lcom/admaster/jice/a/t;->a()V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 791
    :catch_0
    move-exception v0

    .line 792
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 685
    :try_start_0
    const-string v0, "eventname"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 687
    const-string v0, "eventlabel"

    const-string v1, "defaultlabel"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 689
    const/4 v0, 0x0

    .line 691
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "defaultlabel"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 692
    :cond_0
    const-string v1, ""

    .line 693
    const-string v0, "handlerCustomEvent bundle get eventname is empty or eventlabel is defaultlabel"

    .line 696
    :cond_1
    invoke-direct {p0, v2, v1, v0}, Lcom/admaster/jice/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 698
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/admaster/jice/a/d;->a(J)Ljava/lang/String;

    move-result-object v1

    .line 701
    iget-object v2, p0, Lcom/admaster/jice/a/d;->a:Lcom/admaster/jice/a/c;

    invoke-static {v2}, Lcom/admaster/jice/a/c;->a(Lcom/admaster/jice/a/c;)Lcom/admaster/jice/a/a;

    move-result-object v2

    sget-object v3, Lcom/admaster/jice/a/b;->NORMAL:Lcom/admaster/jice/a/b;

    invoke-virtual {v2, v3, v0, v1}, Lcom/admaster/jice/a/a;->a(Lcom/admaster/jice/a/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-object v2, p0, Lcom/admaster/jice/a/d;->i:Ljava/util/List;

    new-instance v3, Landroid/support/v4/util/Pair;

    invoke-direct {v3, v0, v1}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 707
    iget-object v0, p0, Lcom/admaster/jice/a/d;->f:Lcom/admaster/jice/a/h;

    sget-object v1, Lcom/admaster/jice/a/b;->NORMAL:Lcom/admaster/jice/a/b;

    invoke-direct {p0, v0, v1}, Lcom/admaster/jice/a/d;->a(Lcom/admaster/jice/a/h;Lcom/admaster/jice/a/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    :goto_0
    return-void

    .line 708
    :catch_0
    move-exception v0

    .line 709
    const-string v1, "JiceSDK"

    const-string v2, "build custom event failed:"

    invoke-static {v1, v2, v0}, Lcom/admaster/jice/d/d;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 710
    iget-object v1, p0, Lcom/admaster/jice/a/d;->b:Landroid/content/Context;

    const-string v2, "EXCEPTION"

    const-string v3, "build custom event failed"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-static {v1, v2, v3, v0, v4}, Lcom/admaster/jice/d/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/admaster/jice/a/d;I)V
    .locals 0

    .prologue
    .line 346
    iput p1, p0, Lcom/admaster/jice/a/d;->k:I

    return-void
.end method

.method static synthetic a(Lcom/admaster/jice/a/d;Lcom/admaster/jice/a/h;Lcom/admaster/jice/a/b;)V
    .locals 0

    .prologue
    .line 510
    invoke-direct {p0, p1, p2}, Lcom/admaster/jice/a/d;->a(Lcom/admaster/jice/a/h;Lcom/admaster/jice/a/b;)V

    return-void
.end method

.method private a(Lcom/admaster/jice/a/h;Lcom/admaster/jice/a/b;)V
    .locals 6

    .prologue
    .line 512
    const-class v1, Lcom/admaster/jice/a/d;

    monitor-enter v1

    .line 514
    if-eqz p1, :cond_1

    .line 515
    :try_start_0
    invoke-virtual {p1}, Lcom/admaster/jice/a/h;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v2, Ljava/lang/Thread$State;->NEW:Ljava/lang/Thread$State;

    if-eq v0, v2, :cond_0

    .line 516
    invoke-virtual {p1}, Lcom/admaster/jice/a/h;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/admaster/jice/a/h;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    sget-object v2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-eq v0, v2, :cond_1

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/admaster/jice/a/d;->a:Lcom/admaster/jice/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "************************thread working return:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/admaster/jice/a/h;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "************************"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/admaster/jice/a/c;->a(Lcom/admaster/jice/a/c;Ljava/lang/String;)V

    .line 518
    monitor-exit v1

    .line 580
    :goto_0
    return-void

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/admaster/jice/a/d;->h:Lcom/admaster/jice/d/b;

    iget-object v2, p0, Lcom/admaster/jice/a/d;->b:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/admaster/jice/d/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 523
    iget-object v0, p0, Lcom/admaster/jice/a/d;->a:Lcom/admaster/jice/a/c;

    const-string v2, "************************no network return************************"

    invoke-static {v0, v2}, Lcom/admaster/jice/a/c;->a(Lcom/admaster/jice/a/c;Ljava/lang/String;)V

    .line 524
    monitor-exit v1

    goto :goto_0

    .line 512
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 528
    :cond_2
    :try_start_1
    invoke-static {}, Lcom/admaster/jice/b/a;->b()Z

    move-result v0

    .line 529
    if-eqz v0, :cond_3

    .line 530
    iget-object v0, p0, Lcom/admaster/jice/a/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/admaster/jice/d/e;->d(Landroid/content/Context;)Z

    move-result v0

    .line 531
    if-nez v0, :cond_3

    .line 532
    iget-object v0, p0, Lcom/admaster/jice/a/d;->a:Lcom/admaster/jice/a/c;

    const-string v2, "************************send condition is WIFI only return************************"

    invoke-static {v0, v2}, Lcom/admaster/jice/a/c;->a(Lcom/admaster/jice/a/c;Ljava/lang/String;)V

    .line 533
    monitor-exit v1

    goto :goto_0

    .line 538
    :cond_3
    sget-object v0, Lcom/admaster/jice/a/b;->NORMAL:Lcom/admaster/jice/a/b;

    if-ne p2, v0, :cond_5

    .line 539
    iget-object v0, p0, Lcom/admaster/jice/a/d;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 540
    iget-object v0, p0, Lcom/admaster/jice/a/d;->a:Lcom/admaster/jice/a/c;

    const-string v2, "************************ normalstore empty return ************************"

    invoke-static {v0, v2}, Lcom/admaster/jice/a/c;->a(Lcom/admaster/jice/a/c;Ljava/lang/String;)V

    .line 541
    monitor-exit v1

    goto :goto_0

    .line 543
    :cond_4
    iget v0, p0, Lcom/admaster/jice/a/d;->k:I

    if-lez v0, :cond_7

    .line 544
    iget-object v0, p0, Lcom/admaster/jice/a/d;->a:Lcom/admaster/jice/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "************************ normal has unfinished task return:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/admaster/jice/a/d;->k:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "************************"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/admaster/jice/a/c;->a(Lcom/admaster/jice/a/c;Ljava/lang/String;)V

    .line 545
    monitor-exit v1

    goto :goto_0

    .line 549
    :cond_5
    iget-object v0, p0, Lcom/admaster/jice/a/d;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 550
    iget-object v0, p0, Lcom/admaster/jice/a/d;->a:Lcom/admaster/jice/a/c;

    const-string v2, "************************ failedstore empty return ************************"

    invoke-static {v0, v2}, Lcom/admaster/jice/a/c;->a(Lcom/admaster/jice/a/c;Ljava/lang/String;)V

    .line 551
    monitor-exit v1

    goto :goto_0

    .line 553
    :cond_6
    iget v0, p0, Lcom/admaster/jice/a/d;->l:I

    if-lez v0, :cond_7

    .line 554
    iget-object v0, p0, Lcom/admaster/jice/a/d;->a:Lcom/admaster/jice/a/c;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "************************ failed has unfinished task return:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/admaster/jice/a/d;->l:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ************************"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/admaster/jice/a/c;->a(Lcom/admaster/jice/a/c;Ljava/lang/String;)V

    .line 555
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 563
    :cond_7
    :try_start_2
    sget-object v0, Lcom/admaster/jice/a/b;->NORMAL:Lcom/admaster/jice/a/b;

    if-ne p2, v0, :cond_8

    .line 564
    iget-object v0, p0, Lcom/admaster/jice/a/d;->i:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/admaster/jice/a/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 569
    :goto_1
    iget-object v2, p0, Lcom/admaster/jice/a/d;->a:Lcom/admaster/jice/a/c;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "************************  execute task on:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  eventTask:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ************************"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/admaster/jice/a/c;->a(Lcom/admaster/jice/a/c;Ljava/lang/String;)V

    .line 571
    new-instance v2, Lcom/admaster/jice/a/h;

    invoke-direct {v2, p0, p2, v0}, Lcom/admaster/jice/a/h;-><init>(Lcom/admaster/jice/a/d;Lcom/admaster/jice/a/b;Ljava/util/List;)V

    .line 572
    invoke-virtual {v2}, Lcom/admaster/jice/a/h;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 512
    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 566
    :cond_8
    :try_start_4
    iget-object v0, p0, Lcom/admaster/jice/a/d;->j:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/admaster/jice/a/d;->a(Ljava/util/List;)Ljava/util/List;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 574
    :catch_0
    move-exception v0

    .line 575
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 576
    iget-object v2, p0, Lcom/admaster/jice/a/d;->b:Landroid/content/Context;

    const-string v3, "EXCEPTION"

    const-string v4, "handlerTaskQueue exception"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    invoke-static {v2, v3, v4, v0, v5}, Lcom/admaster/jice/d/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 647
    :try_start_0
    iget-object v1, p0, Lcom/admaster/jice/a/d;->a:Lcom/admaster/jice/a/c;

    invoke-static {v1}, Lcom/admaster/jice/a/c;->e(Lcom/admaster/jice/a/c;)Lcom/admaster/jice/a/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/admaster/jice/a/x;->b()Ljava/lang/String;

    move-result-object v1

    .line 648
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 650
    iget-object v1, p0, Lcom/admaster/jice/a/d;->a:Lcom/admaster/jice/a/c;

    invoke-static {v1}, Lcom/admaster/jice/a/c;->e(Lcom/admaster/jice/a/c;)Lcom/admaster/jice/a/x;

    move-result-object v2

    instance-of v1, p1, Lorg/json/JSONObject;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Lcom/admaster/jice/a/x;->b(Ljava/lang/String;)V

    .line 674
    :goto_1
    return-void

    .line 650
    :cond_0
    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 652
    :cond_1
    const-string v2, "id"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 654
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 656
    const-string v1, "id"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 657
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 658
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 659
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    .line 663
    iget-object v1, p0, Lcom/admaster/jice/a/d;->a:Lcom/admaster/jice/a/c;

    invoke-static {v1}, Lcom/admaster/jice/a/c;->e(Lcom/admaster/jice/a/c;)Lcom/admaster/jice/a/x;

    move-result-object v3

    instance-of v1, v2, Lorg/json/JSONObject;

    if-nez v1, :cond_3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {v3, v1}, Lcom/admaster/jice/a/x;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 671
    :catch_0
    move-exception v1

    .line 672
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 660
    :cond_2
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 661
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 663
    :cond_3
    move-object v0, v2

    check-cast v0, Lorg/json/JSONObject;

    move-object v1, v0

    invoke-static {v1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 665
    :cond_4
    iget-object v1, p0, Lcom/admaster/jice/a/d;->a:Lcom/admaster/jice/a/c;

    invoke-static {v1}, Lcom/admaster/jice/a/c;->e(Lcom/admaster/jice/a/c;)Lcom/admaster/jice/a/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/admaster/jice/a/x;->c()V

    .line 666
    iget-object v1, p0, Lcom/admaster/jice/a/d;->a:Lcom/admaster/jice/a/c;

    invoke-static {v1}, Lcom/admaster/jice/a/c;->e(Lcom/admaster/jice/a/c;)Lcom/admaster/jice/a/x;

    move-result-object v2

    instance-of v1, p1, Lorg/json/JSONObject;

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {v2, v1}, Lcom/admaster/jice/a/x;->b(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_4
.end method

.method private a(Z)V
    .locals 6

    .prologue
    .line 484
    :try_start_0
    iget-object v0, p0, Lcom/admaster/jice/a/d;->d:Ljava/util/Timer;

    new-instance v1, Lcom/admaster/jice/a/f;

    invoke-direct {v1, p0}, Lcom/admaster/jice/a/f;-><init>(Lcom/admaster/jice/a/d;)V

    .line 490
    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3a98

    .line 484
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 492
    iget-object v0, p0, Lcom/admaster/jice/a/d;->e:Ljava/util/Timer;

    new-instance v1, Lcom/admaster/jice/a/g;

    invoke-direct {v1, p0}, Lcom/admaster/jice/a/g;-><init>(Lcom/admaster/jice/a/d;)V

    .line 498
    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0x3a98

    .line 492
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :goto_0
    return-void

    .line 499
    :catch_0
    move-exception v0

    .line 500
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/admaster/jice/a/d;)I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Lcom/admaster/jice/a/d;->k:I

    return v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 411
    :try_start_0
    iget-object v1, p0, Lcom/admaster/jice/a/d;->a:Lcom/admaster/jice/a/c;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/admaster/jice/a/e;

    invoke-direct {v2, p0}, Lcom/admaster/jice/a/e;-><init>(Lcom/admaster/jice/a/d;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 468
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 411
    monitor-exit v1

    .line 475
    :goto_0
    return-void

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    const-string v1, "JiceSDK"

    const-string v2, "init sys event failed:"

    invoke-static {v1, v2, v0}, Lcom/admaster/jice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 473
    iget-object v1, p0, Lcom/admaster/jice/a/d;->b:Landroid/content/Context;

    const-string v2, "EXCEPTION"

    const-string v3, "init sys event failed"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-static {v1, v2, v3, v0, v4}, Lcom/admaster/jice/d/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/admaster/jice/a/d;I)V
    .locals 0

    .prologue
    .line 348
    iput p1, p0, Lcom/admaster/jice/a/d;->l:I

    return-void
.end method

.method static synthetic c(Lcom/admaster/jice/a/d;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/admaster/jice/a/d;->b:Landroid/content/Context;

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 720
    :try_start_0
    iget-object v0, p0, Lcom/admaster/jice/a/d;->a:Lcom/admaster/jice/a/c;

    invoke-static {v0}, Lcom/admaster/jice/a/c;->a(Lcom/admaster/jice/a/c;)Lcom/admaster/jice/a/a;

    move-result-object v0

    .line 721
    sget-object v1, Lcom/admaster/jice/a/b;->NORMAL:Lcom/admaster/jice/a/b;

    invoke-virtual {v0, v1}, Lcom/admaster/jice/a/a;->a(Lcom/admaster/jice/a/b;)Ljava/util/Map;

    move-result-object v0

    .line 724
    if-eqz v0, :cond_0

    .line 725
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/admaster/jice/a/d;->a:Lcom/admaster/jice/a/c;

    invoke-static {v0}, Lcom/admaster/jice/a/c;->a(Lcom/admaster/jice/a/c;)Lcom/admaster/jice/a/a;

    move-result-object v0

    .line 740
    sget-object v1, Lcom/admaster/jice/a/b;->FAILED:Lcom/admaster/jice/a/b;

    invoke-virtual {v0, v1}, Lcom/admaster/jice/a/a;->a(Lcom/admaster/jice/a/b;)Ljava/util/Map;

    move-result-object v0

    .line 742
    if-eqz v0, :cond_1

    .line 743
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_5

    .line 760
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/admaster/jice/a/d;->a:Lcom/admaster/jice/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initLocalEvent finished   normalist:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/admaster/jice/a/d;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  failedlist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/admaster/jice/a/d;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/admaster/jice/a/c;->a(Lcom/admaster/jice/a/c;Ljava/lang/String;)V

    .line 763
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/admaster/jice/a/d;->a(Z)V

    .line 764
    return-void

    .line 725
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 726
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 727
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 728
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 729
    :cond_3
    const-string v3, "JiceError"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initLocalEvent->normalsets expire:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   event:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    :cond_4
    iget-object v3, p0, Lcom/admaster/jice/a/d;->i:Ljava/util/List;

    new-instance v4, Landroid/support/v4/util/Pair;

    invoke-direct {v4, v1, v0}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 755
    :catch_0
    move-exception v0

    .line 756
    const-string v1, "JiceSDK"

    const-string v2, "load cache event to list failed:"

    invoke-static {v1, v2, v0}, Lcom/admaster/jice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 757
    iget-object v1, p0, Lcom/admaster/jice/a/d;->b:Landroid/content/Context;

    const-string v2, "EXCEPTION"

    const-string v3, "load cache event to list failed"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-static {v1, v2, v3, v0, v4}, Lcom/admaster/jice/d/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 743
    :cond_5
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 744
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 745
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 746
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 747
    :cond_6
    const-string v3, "JiceError"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "initLocalEvent->failedsets expire:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "   event:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_7
    iget-object v3, p0, Lcom/admaster/jice/a/d;->j:Ljava/util/List;

    new-instance v4, Landroid/support/v4/util/Pair;

    invoke-direct {v4, v1, v0}, Landroid/support/v4/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_1
.end method

.method static synthetic d(Lcom/admaster/jice/a/d;)Ljava/util/List;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/admaster/jice/a/d;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/admaster/jice/a/d;)Lcom/admaster/jice/d/b;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/admaster/jice/a/d;->h:Lcom/admaster/jice/d/b;

    return-object v0
.end method

.method static synthetic f(Lcom/admaster/jice/a/d;)Ljava/util/List;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/admaster/jice/a/d;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic g(Lcom/admaster/jice/a/d;)Lcom/admaster/jice/a/h;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/admaster/jice/a/d;->f:Lcom/admaster/jice/a/h;

    return-object v0
.end method

.method static synthetic h(Lcom/admaster/jice/a/d;)Lcom/admaster/jice/a/h;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/admaster/jice/a/d;->g:Lcom/admaster/jice/a/h;

    return-object v0
.end method

.method static synthetic i(Lcom/admaster/jice/a/d;)Lcom/admaster/jice/a/c;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/admaster/jice/a/d;->a:Lcom/admaster/jice/a/c;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 603
    iget-object v0, p0, Lcom/admaster/jice/a/d;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 604
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    .line 608
    iget-object v0, p0, Lcom/admaster/jice/a/d;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 610
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    packed-switch v0, :pswitch_data_0

    .line 634
    :goto_0
    iget-object v0, p0, Lcom/admaster/jice/a/d;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 636
    :goto_1
    return-void

    .line 613
    :pswitch_0
    :try_start_1
    invoke-direct {p0}, Lcom/admaster/jice/a/d;->c()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 630
    :catch_0
    move-exception v0

    .line 631
    :try_start_2
    const-string v1, "JiceSDK"

    const-string v2, "JiceHandler Message error"

    invoke-static {v1, v2, v0}, Lcom/admaster/jice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 632
    iget-object v1, p0, Lcom/admaster/jice/a/d;->b:Landroid/content/Context;

    const-string v2, "EXCEPTION"

    const-string v3, "JiceHandler Message error"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, ""

    invoke-static {v1, v2, v3, v0, v4}, Lcom/admaster/jice/d/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 634
    iget-object v0, p0, Lcom/admaster/jice/a/d;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 616
    :pswitch_1
    :try_start_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 617
    invoke-direct {p0, v0}, Lcom/admaster/jice/a/d;->a(Landroid/os/Bundle;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 633
    :catchall_0
    move-exception v0

    .line 634
    iget-object v1, p0, Lcom/admaster/jice/a/d;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 635
    throw v0

    .line 620
    :pswitch_2
    :try_start_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lorg/json/JSONObject;

    .line 621
    invoke-direct {p0, v0}, Lcom/admaster/jice/a/d;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 624
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/Uri;

    .line 625
    invoke-direct {p0, v0}, Lcom/admaster/jice/a/d;->a(Landroid/net/Uri;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 611
    nop

    :pswitch_data_0
    .packed-switch 0x100
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
