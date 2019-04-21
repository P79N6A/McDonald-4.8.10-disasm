.class public final Lcom/ensighten/h;
.super Landroid/os/Handler;
.source "SourceFile"

# interfaces
.implements Lcom/ensighten/X$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ensighten/h$3;,
        Lcom/ensighten/h$b;,
        Lcom/ensighten/h$a;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Ljava/lang/Thread;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/ensighten/h$a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:Z

.field public g:Z

.field private h:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue",
            "<",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/ensighten/h$b;

.field private j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 109
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ensighten/h;->c:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ensighten/h;->d:Ljava/util/Set;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/ensighten/h;->j:Ljava/util/Set;

    .line 86
    iput-boolean v2, p0, Lcom/ensighten/h;->k:Z

    .line 91
    iput-boolean v2, p0, Lcom/ensighten/h;->e:Z

    .line 96
    iput-boolean v2, p0, Lcom/ensighten/h;->f:Z

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ensighten/h;->g:Z

    .line 110
    iput-object p1, p0, Lcom/ensighten/h;->a:Landroid/content/Context;

    .line 1227
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/h;->a:Landroid/content/Context;

    const-string v1, "ensightenQ"

    invoke-virtual {v0, v1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 1228
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1229
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/LinkedBlockingQueue;

    iput-object v0, p0, Lcom/ensighten/h;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 1230
    iget-object v0, p0, Lcom/ensighten/h;->a:Landroid/content/Context;

    const-string v1, "ensightenQ"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 1231
    invoke-virtual {p0}, Lcom/ensighten/h;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    new-instance v0, Lcom/ensighten/h$b;

    invoke-direct {v0, p0, v2}, Lcom/ensighten/h$b;-><init>(Lcom/ensighten/h;B)V

    iput-object v0, p0, Lcom/ensighten/h;->i:Lcom/ensighten/h$b;

    .line 113
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/ensighten/h;->i:Lcom/ensighten/h$b;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 114
    return-void

    .line 1234
    :catch_0
    move-exception v0

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/ensighten/h;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    goto :goto_0
.end method

.method static synthetic a(Lcom/ensighten/h;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ensighten/h;->a:Landroid/content/Context;

    return-object v0
.end method

.method private a(Lcom/ensighten/I;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 149
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "Processing queue item with javascript %s."

    new-array v1, v4, [Ljava/lang/Object;

    .line 2026
    iget-object v2, p1, Lcom/ensighten/I;->a:Ljava/lang/String;

    .line 150
    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 3026
    :cond_0
    iget-object v0, p1, Lcom/ensighten/I;->a:Ljava/lang/String;

    .line 151
    invoke-virtual {p0, v0}, Lcom/ensighten/h;->d(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Lcom/ensighten/I;->a()Ljava/lang/String;

    move-result-object v0

    .line 153
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 154
    const-string v1, "The gateway wrapper is %s."

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    .line 155
    :cond_1
    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ensighten/h;->b(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/16 v7, 0x32

    const/4 v6, 0x0

    .line 140
    invoke-static {}, Lcom/ensighten/Ensighten;->getWebManager()Lcom/ensighten/X;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1242
    iget-object v0, v3, Lcom/ensighten/X;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 1243
    const-wide/16 v0, 0x0

    .line 1244
    invoke-static {}, Lcom/ensighten/j;->d()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1247
    :cond_0
    iget-object v3, v3, Lcom/ensighten/X;->b:Landroid/webkit/WebView;

    invoke-virtual {v3, v2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 1248
    invoke-static {}, Lcom/ensighten/j;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 1250
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_2

    invoke-virtual {v2, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1251
    :goto_0
    const-string v1, "The load URL call to %s took %s."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v6

    const/4 v0, 0x1

    invoke-static {v4, v5}, Lcom/ensighten/Utils;->durationToString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/j;->a(Ljava/lang/String;)V

    .line 141
    :cond_1
    return-void

    :cond_2
    move-object v0, v2

    .line 1250
    goto :goto_0
.end method

.method static synthetic a(Lcom/ensighten/h;Z)Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ensighten/h;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/ensighten/h;)Ljava/util/concurrent/LinkedBlockingQueue;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ensighten/h;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    return-object v0
.end method

.method private b(Lcom/ensighten/I;)V
    .locals 1

    .prologue
    .line 245
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const-string v0, "Adding rule to queue."

    invoke-static {v0}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/ensighten/h;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ensighten/h;->e:Z

    .line 249
    invoke-virtual {p0}, Lcom/ensighten/h;->a()V

    .line 251
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 299
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    const-string v0, "Queue processing has been requested."

    invoke-static {v0}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    .line 301
    :cond_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getWebManager()Lcom/ensighten/X;

    move-result-object v0

    .line 3488
    iget-boolean v0, v0, Lcom/ensighten/X;->l:Z

    .line 301
    if-nez v0, :cond_2

    .line 302
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 303
    const-string v0, "Queue was not processed because the webview has not yet been loaded."

    invoke-static {v0}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    .line 344
    :cond_1
    :goto_0
    return-void

    .line 313
    :cond_2
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v0

    .line 4181
    iget-object v1, v0, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 314
    iget-object v0, p0, Lcom/ensighten/h;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/ensighten/h;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    .line 4474
    iget v2, v1, Lcom/ensighten/e;->l:I

    .line 314
    if-lt v0, v2, :cond_4

    .line 316
    :try_start_0
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 317
    const-string v0, "Started processing the queue."

    invoke-static {v0}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    .line 318
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/ensighten/h;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 319
    invoke-static {}, Lcom/ensighten/Utils;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 320
    iget-object v0, p0, Lcom/ensighten/h;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/Serializable;

    .line 321
    check-cast v0, Lcom/ensighten/I;

    .line 322
    invoke-direct {p0, v0}, Lcom/ensighten/h;->a(Lcom/ensighten/I;)V

    .line 5438
    iget-boolean v0, v1, Lcom/ensighten/e;->s:Z

    .line 323
    if-eqz v0, :cond_3

    .line 324
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 338
    :catch_0
    move-exception v0

    .line 339
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 340
    invoke-static {v0}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    .line 343
    :cond_4
    :goto_2
    iput-boolean v3, p0, Lcom/ensighten/h;->k:Z

    goto :goto_0

    .line 331
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcom/ensighten/h;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ensighten/h;->e:Z

    .line 333
    iget-object v0, p0, Lcom/ensighten/h;->a:Landroid/content/Context;

    const-string v1, "ensightenQ"

    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    .line 336
    :cond_6
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 337
    const-string v0, "Finished processing the queue."

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public final a(Lcom/ensighten/h$a;)V
    .locals 2

    .prologue
    .line 499
    iget-object v1, p0, Lcom/ensighten/h;->d:Ljava/util/Set;

    monitor-enter v1

    .line 500
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/h;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 501
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 416
    const-string v0, "Bootstrapper.onMobileError(%s, params);"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/ensighten/Utils;->convertJSONObjectToString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 417
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 418
    const-string v1, "Processing javascript error %s."

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 419
    :cond_0
    invoke-virtual {p0, v0}, Lcom/ensighten/h;->c(Ljava/lang/String;)V

    .line 420
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v0

    .line 7181
    iget-object v0, v0, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 7438
    iget-boolean v0, v0, Lcom/ensighten/e;->s:Z

    .line 421
    if-eqz v0, :cond_1

    .line 422
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 424
    :cond_1
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 487
    if-eqz p1, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/ensighten/h;->a()V

    .line 490
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 521
    iget-object v1, p0, Lcom/ensighten/h;->d:Ljava/util/Set;

    monitor-enter v1

    .line 522
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/h;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/h$a;

    .line 523
    invoke-interface {v0}, Lcom/ensighten/h$a;->a()V

    goto :goto_0

    .line 525
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 165
    invoke-static {}, Lcom/ensighten/Ensighten;->isPrivacyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 169
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 170
    const-string v2, "js"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 172
    invoke-virtual {p0, v0}, Lcom/ensighten/h;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 357
    if-nez p1, :cond_1

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    invoke-static {}, Lcom/ensighten/Ensighten;->getStorageManager()Lcom/ensighten/N;

    move-result-object v0

    .line 361
    new-instance v1, Lcom/ensighten/I;

    invoke-static {}, Lcom/ensighten/Ensighten;->getEventManager()Lcom/ensighten/l;

    move-result-object v2

    .line 5915
    iget-object v2, v2, Lcom/ensighten/l;->c:Ljava/lang/String;

    .line 361
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Lcom/ensighten/N;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v2, v3, v0}, Lcom/ensighten/I;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;)V

    .line 362
    iget-object v0, p0, Lcom/ensighten/h;->h:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    .line 364
    const-string v2, "Bootstrapper."

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "http"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v2, "nexus.ensighten"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 365
    :cond_3
    invoke-direct {p0, v1}, Lcom/ensighten/h;->a(Lcom/ensighten/I;)V

    goto :goto_0

    .line 367
    :cond_4
    invoke-static {}, Lcom/ensighten/Ensighten;->getConfigurationManager()Lcom/ensighten/f;

    move-result-object v2

    .line 6181
    iget-object v2, v2, Lcom/ensighten/f;->a:Lcom/ensighten/e;

    .line 6470
    iget v2, v2, Lcom/ensighten/e;->k:I

    .line 368
    if-gt v0, v2, :cond_0

    .line 369
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 370
    const-string v0, "Queued event."

    invoke-static {v0}, Lcom/ensighten/i;->b(Ljava/lang/String;)V

    .line 371
    :cond_5
    invoke-direct {p0, v1}, Lcom/ensighten/h;->b(Lcom/ensighten/I;)V

    goto :goto_0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 559
    iget-object v1, p0, Lcom/ensighten/h;->j:Ljava/util/Set;

    monitor-enter v1

    .line 560
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/h;->j:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 563
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 131
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "js"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/h;->a(Ljava/lang/String;)V

    .line 132
    return-void
.end method
