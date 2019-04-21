.class public Lcom/admaster/square/api/e;
.super Ljava/lang/Object;
.source "ConvMobiInstance.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static volatile c:Lcom/admaster/square/api/e;

.field private static d:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private a:Lcom/admaster/square/api/a;

.field private b:Ljava/lang/String;

.field private e:Lcom/admaster/square/utils/b;

.field private f:Landroid/content/Context;

.field private g:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/admaster/square/api/e;->c:Lcom/admaster/square/api/e;

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admaster/square/api/e;->b:Ljava/lang/String;

    .line 153
    new-instance v0, Lcom/admaster/square/api/f;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/admaster/square/api/f;-><init>(Lcom/admaster/square/api/e;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/admaster/square/api/e;->g:Landroid/os/Handler;

    .line 34
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/admaster/square/api/e;->d:Ljava/util/concurrent/ExecutorService;

    .line 35
    return-void
.end method

.method static synthetic a(Lcom/admaster/square/api/e;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/admaster/square/api/e;->f:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a()Lcom/admaster/square/api/e;
    .locals 2

    .prologue
    .line 42
    const-class v1, Lcom/admaster/square/api/e;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/admaster/square/api/e;->c:Lcom/admaster/square/api/e;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/admaster/square/api/e;

    invoke-direct {v0}, Lcom/admaster/square/api/e;-><init>()V

    sput-object v0, Lcom/admaster/square/api/e;->c:Lcom/admaster/square/api/e;

    .line 45
    :cond_0
    sget-object v0, Lcom/admaster/square/api/e;->c:Lcom/admaster/square/api/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/admaster/square/api/e;Lcom/admaster/square/api/a;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/admaster/square/api/e;->a:Lcom/admaster/square/api/a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 49
    invoke-static {p0}, Lcom/admaster/square/api/e;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    const/4 v0, 0x0

    .line 51
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic b(Lcom/admaster/square/api/e;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/admaster/square/api/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method private c()Z
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/admaster/square/api/e;->a:Lcom/admaster/square/api/a;

    if-nez v0, :cond_0

    .line 241
    const-string v0, "Please initialize AdconvMobi by calling \'init\' before"

    invoke-static {v0}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V

    .line 242
    const/4 v0, 0x0

    .line 244
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 67
    if-nez p0, :cond_0

    .line 68
    :try_start_0
    const-string v1, "Missing context"

    invoke-static {v1}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V

    .line 78
    :goto_0
    return v0

    .line 71
    :cond_0
    const-string v1, "android.permission.INTERNET"

    invoke-static {p0, v1}, Lcom/admaster/square/utils/a;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    const-string v1, "Missing permission: INTERNET"

    invoke-static {v1}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 77
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 75
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private d(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/admaster/square/api/e;->g:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 212
    :try_start_0
    invoke-static {}, Lcom/admaster/square/utils/b;->a()Lcom/admaster/square/utils/b;

    move-result-object v0

    iput-object v0, p0, Lcom/admaster/square/api/e;->e:Lcom/admaster/square/utils/b;

    .line 213
    iput-object p1, p0, Lcom/admaster/square/api/e;->f:Landroid/content/Context;

    .line 214
    invoke-static {p1}, Lcom/admaster/square/utils/s;->b(Landroid/content/Context;)V

    .line 215
    invoke-direct {p0, p1}, Lcom/admaster/square/api/e;->d(Landroid/content/Context;)V

    .line 216
    sget-object v0, Lcom/admaster/square/api/e;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/admaster/square/api/j;

    invoke-direct {v1, p0, p1, p2}, Lcom/admaster/square/api/j;-><init>(Lcom/admaster/square/api/e;Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :goto_0
    return-void

    .line 225
    :catch_0
    move-exception v0

    .line 226
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 124
    :try_start_0
    iput-object p1, p0, Lcom/admaster/square/api/e;->f:Landroid/content/Context;

    .line 125
    invoke-static {}, Lcom/admaster/square/utils/b;->a()Lcom/admaster/square/utils/b;

    move-result-object v0

    iput-object v0, p0, Lcom/admaster/square/api/e;->e:Lcom/admaster/square/utils/b;

    .line 126
    invoke-static {p1}, Lcom/admaster/square/utils/s;->b(Landroid/content/Context;)V

    .line 127
    invoke-direct {p0, p1}, Lcom/admaster/square/api/e;->d(Landroid/content/Context;)V

    .line 128
    sget-object v0, Lcom/admaster/square/api/e;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/admaster/square/api/h;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/admaster/square/api/h;-><init>(Lcom/admaster/square/api/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 94
    :try_start_0
    iput-object p1, p0, Lcom/admaster/square/api/e;->f:Landroid/content/Context;

    .line 95
    invoke-static {}, Lcom/admaster/square/utils/b;->a()Lcom/admaster/square/utils/b;

    move-result-object v0

    iput-object v0, p0, Lcom/admaster/square/api/e;->e:Lcom/admaster/square/utils/b;

    .line 96
    invoke-static {p1}, Lcom/admaster/square/utils/s;->b(Landroid/content/Context;)V

    .line 97
    invoke-direct {p0, p1}, Lcom/admaster/square/api/e;->d(Landroid/content/Context;)V

    .line 98
    sget-object v6, Lcom/admaster/square/api/e;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/admaster/square/api/g;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/admaster/square/api/g;-><init>(Lcom/admaster/square/api/e;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 185
    :try_start_0
    invoke-static {}, Lcom/admaster/square/utils/b;->a()Lcom/admaster/square/utils/b;

    move-result-object v0

    iput-object v0, p0, Lcom/admaster/square/api/e;->e:Lcom/admaster/square/utils/b;

    .line 186
    iput-object p1, p0, Lcom/admaster/square/api/e;->f:Landroid/content/Context;

    .line 187
    invoke-static {p1}, Lcom/admaster/square/utils/s;->b(Landroid/content/Context;)V

    .line 188
    invoke-direct {p0, p1}, Lcom/admaster/square/api/e;->d(Landroid/content/Context;)V

    .line 189
    sget-object v0, Lcom/admaster/square/api/e;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/admaster/square/api/i;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/admaster/square/api/i;-><init>(Lcom/admaster/square/api/e;Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    :goto_0
    return-void

    .line 198
    :catch_0
    move-exception v0

    .line 199
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 397
    iget-object v0, p0, Lcom/admaster/square/api/e;->a:Lcom/admaster/square/api/a;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/admaster/square/api/e;->a:Lcom/admaster/square/api/a;

    invoke-virtual {v0, p1}, Lcom/admaster/square/api/a;->a(Landroid/content/Intent;)V

    .line 400
    :cond_0
    return-void
.end method

.method public a(Lcom/admaster/square/api/CustomEvent;J)V
    .locals 2

    .prologue
    .line 360
    iget-object v0, p0, Lcom/admaster/square/api/e;->a:Lcom/admaster/square/api/a;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/admaster/square/api/e;->a:Lcom/admaster/square/api/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/admaster/square/api/a;->a(Lcom/admaster/square/api/CustomEvent;J)V

    .line 365
    :goto_0
    return-void

    .line 363
    :cond_0
    const-string v0, "Please initialize AdconvMobi by calling \'init\' before"

    invoke-static {v0}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 55
    iput-object p1, p0, Lcom/admaster/square/api/e;->b:Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/admaster/square/api/e;->a:Lcom/admaster/square/api/a;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/admaster/square/api/e;->a:Lcom/admaster/square/api/a;

    invoke-virtual {v0, p1}, Lcom/admaster/square/api/a;->a(Ljava/lang/String;)V

    .line 59
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 264
    iget-object v0, p0, Lcom/admaster/square/api/e;->a:Lcom/admaster/square/api/a;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/admaster/square/api/e;->a:Lcom/admaster/square/api/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/admaster/square/api/a;->a(Ljava/lang/String;J)V

    .line 269
    :goto_0
    return-void

    .line 267
    :cond_0
    const-string v0, "Please initialize AdconvMobi by calling \'init\' before"

    invoke-static {v0}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Lcom/admaster/square/utils/Order;)V
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/admaster/square/api/e;->a:Lcom/admaster/square/api/a;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/admaster/square/api/e;->a:Lcom/admaster/square/api/a;

    invoke-virtual {v0, p1, p2}, Lcom/admaster/square/api/a;->a(Ljava/lang/String;Lcom/admaster/square/utils/Order;)V

    .line 301
    :goto_0
    return-void

    .line 299
    :cond_0
    const-string v0, "Please initialize AdconvMobi by calling \'init\' before"

    invoke-static {v0}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/admaster/square/api/e;->a:Lcom/admaster/square/api/a;

    if-eqz v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/admaster/square/api/e;->a:Lcom/admaster/square/api/a;

    invoke-virtual {v0, p1}, Lcom/admaster/square/api/a;->a(Ljava/lang/Throwable;)V

    .line 389
    :goto_0
    return-void

    .line 387
    :cond_0
    const-string v0, "Please initialize AdconvMobi by calling \'init\' before"

    invoke-static {v0}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 252
    invoke-static {p1}, Lcom/admaster/square/api/m;->a(Z)V

    .line 253
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 371
    invoke-direct {p0}, Lcom/admaster/square/api/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/admaster/square/api/e;->a:Lcom/admaster/square/api/a;

    invoke-virtual {v0}, Lcom/admaster/square/api/a;->a()V

    .line 373
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/admaster/square/api/e;->a:Lcom/admaster/square/api/a;

    .line 375
    :cond_0
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 230
    sget-object v0, Lcom/admaster/square/utils/h;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/admaster/square/utils/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    sget-object v1, Lcom/admaster/square/utils/h;->f:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/admaster/square/utils/a;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    invoke-virtual {p0, p1, v0, v3}, Lcom/admaster/square/api/e;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 237
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-virtual {p0, p1, v0, v1, v3}, Lcom/admaster/square/api/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;J)V
    .locals 2

    .prologue
    .line 280
    iget-object v0, p0, Lcom/admaster/square/api/e;->a:Lcom/admaster/square/api/a;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/admaster/square/api/e;->a:Lcom/admaster/square/api/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/admaster/square/api/a;->b(Ljava/lang/String;J)V

    .line 285
    :goto_0
    return-void

    .line 283
    :cond_0
    const-string v0, "Please initialize AdconvMobi by calling \'init\' before"

    invoke-static {v0}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Lcom/admaster/square/utils/Order;)V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/admaster/square/api/e;->a:Lcom/admaster/square/api/a;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/admaster/square/api/e;->a:Lcom/admaster/square/api/a;

    invoke-virtual {v0, p1, p2}, Lcom/admaster/square/api/a;->b(Ljava/lang/String;Lcom/admaster/square/utils/Order;)V

    .line 349
    :goto_0
    return-void

    .line 347
    :cond_0
    const-string v0, "Please initialize AdconvMobi by calling \'init\' before"

    invoke-static {v0}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
