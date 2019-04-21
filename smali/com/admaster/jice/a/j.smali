.class public Lcom/admaster/jice/a/j;
.super Ljava/lang/Object;
.source "JicePushManager.java"


# instance fields
.field a:Lcom/admaster/jice/a/w;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/admaster/jice/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/admaster/jice/b/d;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/admaster/jice/api/JiceViewListener;

.field private e:Z

.field private f:Z

.field private g:Landroid/content/Context;

.field private h:Lcom/admaster/jice/api/JiceSDK;

.field private i:Lcom/admaster/jice/d/b;

.field private j:Ljava/util/concurrent/ExecutorService;

.field private k:Landroid/content/SharedPreferences;

.field private l:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/admaster/jice/api/JiceSDK;Landroid/content/Context;Ljava/lang/String;Lcom/admaster/jice/d/b;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object v0, p0, Lcom/admaster/jice/a/j;->b:Ljava/util/List;

    .line 56
    iput-object v0, p0, Lcom/admaster/jice/a/j;->c:Ljava/util/List;

    .line 58
    iput-object v0, p0, Lcom/admaster/jice/a/j;->d:Lcom/admaster/jice/api/JiceViewListener;

    .line 63
    iput-boolean v3, p0, Lcom/admaster/jice/a/j;->e:Z

    .line 68
    iput-boolean v3, p0, Lcom/admaster/jice/a/j;->f:Z

    .line 74
    iput-object v0, p0, Lcom/admaster/jice/a/j;->h:Lcom/admaster/jice/api/JiceSDK;

    .line 75
    iput-object v0, p0, Lcom/admaster/jice/a/j;->i:Lcom/admaster/jice/d/b;

    .line 77
    iput-object v0, p0, Lcom/admaster/jice/a/j;->j:Ljava/util/concurrent/ExecutorService;

    .line 78
    iput-object v0, p0, Lcom/admaster/jice/a/j;->k:Landroid/content/SharedPreferences;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/admaster/jice/a/j;->l:Ljava/lang/String;

    .line 565
    new-instance v0, Lcom/admaster/jice/a/k;

    invoke-direct {v0, p0}, Lcom/admaster/jice/a/k;-><init>(Lcom/admaster/jice/a/j;)V

    iput-object v0, p0, Lcom/admaster/jice/a/j;->a:Lcom/admaster/jice/a/w;

    .line 84
    iput-object p2, p0, Lcom/admaster/jice/a/j;->g:Landroid/content/Context;

    .line 85
    iput-object p1, p0, Lcom/admaster/jice/a/j;->h:Lcom/admaster/jice/api/JiceSDK;

    .line 86
    iput-object p3, p0, Lcom/admaster/jice/a/j;->l:Ljava/lang/String;

    .line 87
    iput-object p4, p0, Lcom/admaster/jice/a/j;->i:Lcom/admaster/jice/d/b;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/admaster/jice/a/j;->b:Ljava/util/List;

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/admaster/jice/a/j;->c:Ljava/util/List;

    .line 91
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/admaster/jice/a/j;->j:Ljava/util/concurrent/ExecutorService;

    .line 92
    iget-object v0, p0, Lcom/admaster/jice/a/j;->g:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "com.admaster.jice.pushconfig"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/admaster/jice/a/j;->k:Landroid/content/SharedPreferences;

    .line 97
    invoke-direct {p0}, Lcom/admaster/jice/a/j;->c()V

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/admaster/jice/a/j;)Lcom/admaster/jice/api/JiceViewListener;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/admaster/jice/a/j;->d:Lcom/admaster/jice/api/JiceViewListener;

    return-object v0
.end method

.method private a(I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/admaster/jice/b/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/admaster/jice/a/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 174
    iget-object v0, p0, Lcom/admaster/jice/a/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/admaster/jice/a/j;->c:Ljava/util/List;

    return-object v0

    .line 174
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admaster/jice/b/d;

    .line 178
    invoke-virtual {v0}, Lcom/admaster/jice/b/d;->getPushId()I

    move-result v1

    .line 177
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/admaster/jice/a/j;->b(Ljava/lang/String;)I

    move-result v3

    .line 183
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 184
    invoke-virtual {v0}, Lcom/admaster/jice/b/d;->getHorizontal()Lcom/admaster/jice/b/e;

    move-result-object v1

    .line 189
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "canShowlistItem:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/admaster/jice/b/d;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",hasShowCount:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",Material:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/admaster/jice/a/j;->c(Ljava/lang/String;)V

    .line 194
    if-eqz v1, :cond_0

    .line 199
    :try_start_0
    invoke-virtual {v1}, Lcom/admaster/jice/b/e;->getType()Lcom/admaster/jice/b/f;

    move-result-object v4

    .line 200
    sget-object v5, Lcom/admaster/jice/b/f;->IMAGE:Lcom/admaster/jice/b/f;

    if-ne v4, v5, :cond_2

    .line 201
    invoke-virtual {v1}, Lcom/admaster/jice/b/e;->hasCached()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    :cond_2
    invoke-virtual {v0}, Lcom/admaster/jice/b/d;->hasInSchedule()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 211
    invoke-virtual {v0}, Lcom/admaster/jice/b/d;->getShowTimes()I

    move-result v1

    if-ge v3, v1, :cond_0

    .line 212
    iget-object v1, p0, Lcom/admaster/jice/a/j;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 214
    :catch_0
    move-exception v0

    .line 215
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 186
    :cond_3
    invoke-virtual {v0}, Lcom/admaster/jice/b/d;->getVertical()Lcom/admaster/jice/b/e;

    move-result-object v1

    goto :goto_1
.end method

.method static synthetic a(Lcom/admaster/jice/a/j;Lcom/admaster/jice/b/d;)V
    .locals 0

    .prologue
    .line 464
    invoke-direct {p0, p1}, Lcom/admaster/jice/a/j;->a(Lcom/admaster/jice/b/d;)V

    return-void
.end method

.method static synthetic a(Lcom/admaster/jice/a/j;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/admaster/jice/a/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/admaster/jice/a/j;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 622
    invoke-direct {p0, p1, p2}, Lcom/admaster/jice/a/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/admaster/jice/a/j;Z)V
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/admaster/jice/a/j;->e:Z

    return-void
.end method

.method private a(Lcom/admaster/jice/b/d;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 468
    invoke-direct {p0}, Lcom/admaster/jice/a/j;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 500
    :cond_0
    :goto_0
    return-void

    .line 472
    :cond_1
    invoke-virtual {p1}, Lcom/admaster/jice/b/d;->getPushId()I

    move-result v1

    .line 473
    invoke-virtual {p1}, Lcom/admaster/jice/b/d;->getVertical()Lcom/admaster/jice/b/e;

    move-result-object v2

    .line 474
    invoke-virtual {p1}, Lcom/admaster/jice/b/d;->getHorizontal()Lcom/admaster/jice/b/e;

    move-result-object v3

    .line 477
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "handlerViewMaterial:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "  ver:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Lcom/admaster/jice/b/e;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-direct {p0, v0}, Lcom/admaster/jice/a/j;->c(Ljava/lang/String;)V

    .line 481
    if-eqz v2, :cond_3

    .line 482
    invoke-virtual {p1, v2}, Lcom/admaster/jice/b/d;->hasCacheImage(Lcom/admaster/jice/b/e;)Z

    move-result v0

    .line 484
    if-nez v0, :cond_3

    .line 485
    new-instance v0, Lcom/admaster/jice/a/m;

    invoke-direct {v0, p0, v2}, Lcom/admaster/jice/a/m;-><init>(Lcom/admaster/jice/a/j;Lcom/admaster/jice/b/e;)V

    invoke-virtual {v0}, Lcom/admaster/jice/a/m;->start()V

    .line 489
    :cond_3
    if-eqz v3, :cond_0

    .line 490
    invoke-virtual {p1, v3}, Lcom/admaster/jice/b/d;->hasCacheImage(Lcom/admaster/jice/b/e;)Z

    move-result v0

    .line 492
    if-nez v0, :cond_0

    .line 493
    new-instance v0, Lcom/admaster/jice/a/m;

    invoke-direct {v0, p0, v3}, Lcom/admaster/jice/a/m;-><init>(Lcom/admaster/jice/a/j;Lcom/admaster/jice/b/e;)V

    invoke-virtual {v0}, Lcom/admaster/jice/a/m;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 497
    :catch_0
    move-exception v0

    .line 498
    const-string v1, "JiceSDK.JicePushManager"

    const-string v2, "JCMaterial parsing failed."

    invoke-static {v1, v2, v0}, Lcom/admaster/jice/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 478
    :cond_4
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "  hor:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v3}, Lcom/admaster/jice/b/e;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method private declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/admaster/jice/a/j;->k:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 109
    const-string v1, "configlist"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 111
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    monitor-exit p0

    return-void

    .line 108
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 130
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/admaster/jice/a/j;->k:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 131
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 132
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    monitor-exit p0

    return-void

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 623
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 625
    :try_start_0
    const-string v0, "pushid"

    invoke-virtual {v1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    :goto_0
    iget-object v0, p0, Lcom/admaster/jice/a/j;->h:Lcom/admaster/jice/api/JiceSDK;

    invoke-virtual {v0, p1, v1}, Lcom/admaster/jice/api/JiceSDK;->track(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 630
    return-void

    .line 626
    :catch_0
    move-exception v0

    .line 627
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private declared-synchronized b(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/admaster/jice/a/j;->k:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b()Ljava/lang/String;
    .locals 3

    .prologue
    .line 120
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/admaster/jice/a/j;->k:Landroid/content/SharedPreferences;

    const-string v1, "configlist"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(Lcom/admaster/jice/a/j;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 751
    invoke-direct {p0, p1}, Lcom/admaster/jice/a/j;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/admaster/jice/a/j;Z)V
    .locals 0

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/admaster/jice/a/j;->f:Z

    return-void
.end method

.method static synthetic b(Lcom/admaster/jice/a/j;)Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/admaster/jice/a/j;->e:Z

    return v0
.end method

.method static synthetic c(Lcom/admaster/jice/a/j;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/admaster/jice/a/j;->g:Landroid/content/Context;

    return-object v0
.end method

.method private c()V
    .locals 6

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/admaster/jice/a/j;->b()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 154
    iget-object v0, p0, Lcom/admaster/jice/a/j;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 155
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 156
    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 165
    :cond_0
    :goto_1
    return-void

    .line 157
    :cond_1
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 158
    new-instance v4, Lcom/admaster/jice/b/d;

    iget-object v5, p0, Lcom/admaster/jice/a/j;->l:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Lcom/admaster/jice/b/d;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 159
    iget-object v3, p0, Lcom/admaster/jice/a/j;->b:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    const-string v0, "JiceSDK.JicePushManager"

    const-string v1, "pushconfig data legal format."

    invoke-static {v0, v1}, Lcom/admaster/jice/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 755
    return-void
.end method

.method static synthetic d(Lcom/admaster/jice/a/j;)Lcom/admaster/jice/d/b;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/admaster/jice/a/j;->i:Lcom/admaster/jice/d/b;

    return-object v0
.end method

.method private d()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 634
    iget-object v1, p0, Lcom/admaster/jice/a/j;->i:Lcom/admaster/jice/d/b;

    iget-object v2, p0, Lcom/admaster/jice/a/j;->g:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/admaster/jice/d/b;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 635
    const-string v1, "network is disable!"

    invoke-direct {p0, v1}, Lcom/admaster/jice/a/j;->c(Ljava/lang/String;)V

    .line 647
    :goto_0
    return v0

    .line 639
    :cond_0
    invoke-static {}, Lcom/admaster/jice/b/a;->c()Z

    move-result v1

    .line 640
    if-eqz v1, :cond_1

    .line 641
    iget-object v1, p0, Lcom/admaster/jice/a/j;->g:Landroid/content/Context;

    invoke-static {v1}, Lcom/admaster/jice/d/e;->d(Landroid/content/Context;)Z

    move-result v1

    .line 642
    if-nez v1, :cond_1

    .line 643
    const-string v1, "JiceSDK.JicePushManager"

    const-string v2, "load push config or material condition only in WIFI"

    invoke-static {v1, v2}, Lcom/admaster/jice/d/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 647
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic e(Lcom/admaster/jice/a/j;)Ljava/util/List;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/admaster/jice/a/j;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic f(Lcom/admaster/jice/a/j;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/admaster/jice/a/j;->l:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 3

    .prologue
    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start update jice conf:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/admaster/jice/a/j;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   isUpdating:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/admaster/jice/a/j;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/admaster/jice/a/j;->c(Ljava/lang/String;)V

    .line 368
    invoke-direct {p0}, Lcom/admaster/jice/a/j;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-boolean v0, p0, Lcom/admaster/jice/a/j;->f:Z

    if-nez v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/admaster/jice/a/j;->j:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/admaster/jice/a/n;

    iget-object v2, p0, Lcom/admaster/jice/a/j;->l:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Lcom/admaster/jice/a/n;-><init>(Lcom/admaster/jice/a/j;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected a(Landroid/content/Context;Lcom/admaster/jice/api/JiceViewListener;)V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 234
    iput-object p2, p0, Lcom/admaster/jice/a/j;->d:Lcom/admaster/jice/api/JiceViewListener;

    .line 235
    const-string v0, ""

    .line 237
    iget-boolean v0, p0, Lcom/admaster/jice/a/j;->e:Z

    if-eqz v0, :cond_1

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[JicePush] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/admaster/jice/api/JicePushShowError;->JicePushIsShowing:Lcom/admaster/jice/api/JicePushShowError;

    invoke-virtual {v1}, Lcom/admaster/jice/api/JicePushShowError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 239
    const-string v1, "JiceSDK"

    invoke-static {v1, v0}, Lcom/admaster/jice/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v1, p0, Lcom/admaster/jice/a/j;->d:Lcom/admaster/jice/api/JiceViewListener;

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/admaster/jice/a/j;->d:Lcom/admaster/jice/api/JiceViewListener;

    invoke-interface {v1, v0}, Lcom/admaster/jice/api/JiceViewListener;->onJiceViewError(Ljava/lang/String;)V

    .line 358
    :cond_0
    :goto_0
    return-void

    .line 247
    :cond_1
    invoke-static {p1}, Lcom/admaster/jice/d/e;->c(Landroid/content/Context;)I

    move-result v3

    .line 249
    invoke-direct {p0, v3}, Lcom/admaster/jice/a/j;->a(I)Ljava/util/List;

    move-result-object v1

    .line 250
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 252
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "addJiceView-->canshowlist:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  has callback:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/admaster/jice/a/j;->c(Ljava/lang/String;)V

    .line 255
    if-ge v0, v6, :cond_2

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[JicePush] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/admaster/jice/api/JicePushShowError;->JicePushNoData:Lcom/admaster/jice/api/JicePushShowError;

    invoke-virtual {v1}, Lcom/admaster/jice/api/JicePushShowError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    const-string v1, "JiceSDK"

    invoke-static {v1, v0}, Lcom/admaster/jice/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v1, p0, Lcom/admaster/jice/a/j;->d:Lcom/admaster/jice/api/JiceViewListener;

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/admaster/jice/a/j;->d:Lcom/admaster/jice/api/JiceViewListener;

    invoke-interface {v1, v0}, Lcom/admaster/jice/api/JiceViewListener;->onJiceViewError(Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_2
    iget-object v4, p0, Lcom/admaster/jice/a/j;->g:Landroid/content/Context;

    invoke-static {v4}, Lcom/admaster/jice/d/e;->a(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[JicePush] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/admaster/jice/api/JicePushShowError;->JicePushNoNet:Lcom/admaster/jice/api/JicePushShowError;

    invoke-virtual {v1}, Lcom/admaster/jice/api/JicePushShowError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    const-string v1, "JiceSDK"

    invoke-static {v1, v0}, Lcom/admaster/jice/d/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/admaster/jice/a/j;->d:Lcom/admaster/jice/api/JiceViewListener;

    if-eqz v1, :cond_0

    .line 269
    iget-object v1, p0, Lcom/admaster/jice/a/j;->d:Lcom/admaster/jice/api/JiceViewListener;

    invoke-interface {v1, v0}, Lcom/admaster/jice/api/JiceViewListener;->onJiceViewError(Ljava/lang/String;)V

    goto :goto_0

    .line 278
    :cond_3
    if-le v0, v6, :cond_9

    .line 279
    :try_start_0
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 280
    invoke-virtual {v4, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 284
    :goto_1
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admaster/jice/b/d;

    .line 286
    invoke-virtual {v0}, Lcom/admaster/jice/b/d;->getVertical()Lcom/admaster/jice/b/e;

    move-result-object v1

    if-nez v1, :cond_4

    .line 287
    invoke-virtual {v0}, Lcom/admaster/jice/b/d;->getHorizontal()Lcom/admaster/jice/b/e;

    move-result-object v1

    if-nez v1, :cond_4

    .line 288
    const-string v0, "the pushview both vertical and horizontal material is null!"

    .line 289
    invoke-direct {p0, v0}, Lcom/admaster/jice/a/j;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 356
    iput-boolean v2, p0, Lcom/admaster/jice/a/j;->e:Z

    goto/16 :goto_0

    .line 297
    :cond_4
    const/4 v1, 0x0

    .line 299
    if-ne v3, v6, :cond_6

    .line 300
    :try_start_1
    invoke-virtual {v0}, Lcom/admaster/jice/b/d;->getVertical()Lcom/admaster/jice/b/e;

    move-result-object v1

    .line 305
    :cond_5
    :goto_2
    if-nez v1, :cond_7

    .line 307
    invoke-static {v3}, Lcom/admaster/jice/d/e;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "current orientation:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 310
    const-string v1, "  has not material,please confirm your pushview Material on Jice System"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    const-string v1, "JiceSDK.JicePushManager"

    invoke-static {v1, v0}, Lcom/admaster/jice/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 301
    :cond_6
    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 302
    invoke-virtual {v0}, Lcom/admaster/jice/b/d;->getHorizontal()Lcom/admaster/jice/b/e;

    move-result-object v1

    goto :goto_2

    .line 319
    :cond_7
    iget-object v3, p0, Lcom/admaster/jice/a/j;->d:Lcom/admaster/jice/api/JiceViewListener;

    if-eqz v3, :cond_8

    .line 320
    iget-object v3, p0, Lcom/admaster/jice/a/j;->d:Lcom/admaster/jice/api/JiceViewListener;

    invoke-interface {v3}, Lcom/admaster/jice/api/JiceViewListener;->onJiceViewWillShow()V

    .line 330
    :cond_8
    invoke-virtual {v0}, Lcom/admaster/jice/b/d;->getPushId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 331
    invoke-direct {p0, v3}, Lcom/admaster/jice/a/j;->b(Ljava/lang/String;)I

    move-result v4

    .line 332
    add-int/lit8 v4, v4, 0x1

    .line 333
    invoke-direct {p0, v3, v4}, Lcom/admaster/jice/a/j;->a(Ljava/lang/String;I)V

    .line 336
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/admaster/jice/a/j;->e:Z

    .line 339
    new-instance v5, Landroid/os/Handler;

    iget-object v6, p0, Lcom/admaster/jice/a/j;->g:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 340
    new-instance v6, Lcom/admaster/jice/a/l;

    invoke-direct {v6, p0, v0}, Lcom/admaster/jice/a/l;-><init>(Lcom/admaster/jice/a/j;Lcom/admaster/jice/b/d;)V

    .line 349
    const-wide/16 v8, 0xc8

    .line 340
    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, " jicePushView [id:"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] has Showed "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  materical has cached:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Lcom/admaster/jice/b/e;->hasCached()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/admaster/jice/a/j;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_9
    move v0, v2

    goto/16 :goto_1
.end method

.method protected a(Landroid/content/Context;Ljava/lang/String;Lcom/admaster/jice/api/JiceViewListener;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 661
    iput-object p3, p0, Lcom/admaster/jice/a/j;->d:Lcom/admaster/jice/api/JiceViewListener;

    .line 662
    iget-boolean v0, p0, Lcom/admaster/jice/a/j;->e:Z

    if-eqz v0, :cond_1

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[JicePushTest] "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/admaster/jice/api/JicePushShowError;->JicePushIsShowing:Lcom/admaster/jice/api/JicePushShowError;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 664
    const-string v1, "JiceSDK"

    invoke-static {v1, v0}, Lcom/admaster/jice/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    iget-object v1, p0, Lcom/admaster/jice/a/j;->d:Lcom/admaster/jice/api/JiceViewListener;

    if-eqz v1, :cond_0

    .line 666
    iget-object v1, p0, Lcom/admaster/jice/a/j;->d:Lcom/admaster/jice/api/JiceViewListener;

    invoke-interface {v1, v0}, Lcom/admaster/jice/api/JiceViewListener;->onJiceViewError(Ljava/lang/String;)V

    .line 748
    :cond_0
    :goto_0
    return-void

    .line 672
    :cond_1
    iget-object v0, p0, Lcom/admaster/jice/a/j;->g:Landroid/content/Context;

    invoke-static {v0}, Lcom/admaster/jice/d/e;->c(Landroid/content/Context;)I

    move-result v1

    .line 677
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-static {p2}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 678
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 679
    new-instance v2, Lcom/admaster/jice/b/d;

    iget-object v3, p0, Lcom/admaster/jice/a/j;->l:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/admaster/jice/b/d;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 681
    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    .line 682
    invoke-virtual {v2}, Lcom/admaster/jice/b/d;->getHorizontal()Lcom/admaster/jice/b/e;

    move-result-object v0

    .line 687
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "testShowConfig:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/admaster/jice/b/d;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",Material:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/admaster/jice/a/j;->c(Ljava/lang/String;)V

    .line 690
    if-nez v0, :cond_3

    .line 691
    invoke-static {v1}, Lcom/admaster/jice/d/e;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 692
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "current orientation:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 693
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 694
    const-string v1, "  has not material,please confirm your test pushview Material on Jice System"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 692
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 695
    const-string v1, "JiceSDK.JicePushManager"

    invoke-static {v1, v0}, Lcom/admaster/jice/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    iget-object v0, p0, Lcom/admaster/jice/a/j;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/admaster/jice/a/j;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/admaster/jice/a/t;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 743
    :catch_0
    move-exception v0

    .line 744
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 745
    iput-boolean v5, p0, Lcom/admaster/jice/a/j;->e:Z

    goto :goto_0

    .line 684
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lcom/admaster/jice/b/d;->getVertical()Lcom/admaster/jice/b/e;

    move-result-object v0

    goto :goto_1

    .line 704
    :cond_3
    invoke-virtual {v0}, Lcom/admaster/jice/b/e;->getType()Lcom/admaster/jice/b/f;

    move-result-object v1

    .line 705
    sget-object v3, Lcom/admaster/jice/b/f;->IMAGE:Lcom/admaster/jice/b/f;

    if-ne v1, v3, :cond_4

    .line 706
    invoke-virtual {v0}, Lcom/admaster/jice/b/e;->hasCached()Z

    move-result v0

    if-nez v0, :cond_4

    .line 707
    const-string v0, "JiceSDK.JicePushManager"

    const-string/jumbo v1, "\u6d4b\u8bd5\u63a8\u9001\u6d3b\u52a8\u6ca1\u6709\u7f13\u5b58\u7d20\u6750\u6587\u4ef6\uff0c\u8bf7\u91cd\u65b0\u626b\u63cf\u4e8c\u7ef4\u7801\u6d4b\u8bd5"

    invoke-static {v0, v1}, Lcom/admaster/jice/d/d;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/admaster/jice/a/j;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/admaster/jice/a/j;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/admaster/jice/a/t;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 713
    :cond_4
    iget-object v0, p0, Lcom/admaster/jice/a/j;->d:Lcom/admaster/jice/api/JiceViewListener;

    if-eqz v0, :cond_5

    .line 714
    iget-object v0, p0, Lcom/admaster/jice/a/j;->d:Lcom/admaster/jice/api/JiceViewListener;

    invoke-interface {v0}, Lcom/admaster/jice/api/JiceViewListener;->onJiceViewWillShow()V

    .line 722
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/admaster/jice/a/j;->e:Z

    .line 736
    new-instance v0, Lcom/admaster/jice/a/o;

    iget-object v1, p0, Lcom/admaster/jice/a/j;->a:Lcom/admaster/jice/a/w;

    invoke-direct {v0, p1, v2, v1}, Lcom/admaster/jice/a/o;-><init>(Landroid/content/Context;Lcom/admaster/jice/b/d;Lcom/admaster/jice/a/w;)V

    .line 737
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/admaster/jice/a/o;->a(Ljava/lang/Boolean;)V

    .line 738
    invoke-virtual {v0}, Lcom/admaster/jice/a/o;->c()V

    .line 741
    iget-object v0, p0, Lcom/admaster/jice/a/j;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/admaster/jice/a/j;->l:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/admaster/jice/a/t;->b(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
