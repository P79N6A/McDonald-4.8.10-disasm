.class public Lcom/admaster/square/api/c;
.super Ljava/lang/Object;
.source "ConvMobiHelper.java"


# static fields
.field private static h:Lcom/admaster/square/api/c;


# instance fields
.field private a:Lcom/admaster/square/api/k;

.field private b:Lcom/admaster/square/api/l;

.field private c:Landroid/content/Context;

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/admaster/square/api/k;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object v0, p0, Lcom/admaster/square/api/c;->a:Lcom/admaster/square/api/k;

    .line 27
    iput-object v0, p0, Lcom/admaster/square/api/c;->b:Lcom/admaster/square/api/l;

    .line 28
    iput-object v0, p0, Lcom/admaster/square/api/c;->c:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lcom/admaster/square/api/c;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/admaster/square/api/c;->g:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/admaster/square/api/c;->i:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/admaster/square/api/c;->a:Lcom/admaster/square/api/k;

    .line 35
    new-instance v0, Lcom/admaster/square/api/l;

    invoke-direct {v0, p2}, Lcom/admaster/square/api/l;-><init>(Lcom/admaster/square/api/k;)V

    iput-object v0, p0, Lcom/admaster/square/api/c;->b:Lcom/admaster/square/api/l;

    .line 36
    iput-object p1, p0, Lcom/admaster/square/api/c;->c:Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lcom/admaster/square/api/c;->b:Lcom/admaster/square/api/l;

    invoke-virtual {v0}, Lcom/admaster/square/api/l;->a()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/admaster/square/api/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    const-string v0, "sp_store"

    const-string v1, "m2id"

    invoke-static {p1, v0, v1}, Lcom/admaster/square/utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admaster/square/api/c;->f:Ljava/lang/String;

    .line 39
    const-string v0, "sp_store"

    const-string v1, "ch"

    invoke-static {p1, v0, v1}, Lcom/admaster/square/utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admaster/square/api/c;->g:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/admaster/square/api/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/admaster/square/api/c;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/admaster/square/api/c;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Lcom/admaster/square/api/k;)Lcom/admaster/square/api/c;
    .locals 2

    .prologue
    .line 44
    const-class v1, Lcom/admaster/square/api/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/admaster/square/api/c;->h:Lcom/admaster/square/api/c;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/admaster/square/api/c;

    invoke-direct {v0, p0, p1}, Lcom/admaster/square/api/c;-><init>(Landroid/content/Context;Lcom/admaster/square/api/k;)V

    sput-object v0, Lcom/admaster/square/api/c;->h:Lcom/admaster/square/api/c;

    .line 47
    :cond_0
    sget-object v0, Lcom/admaster/square/api/c;->h:Lcom/admaster/square/api/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 44
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/admaster/square/utils/Order;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 227
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 229
    const/4 v1, 0x0

    const/16 v3, 0x8

    :try_start_1
    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 234
    :goto_0
    :try_start_2
    const-string/jumbo v1, "|"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    iget-object v1, p0, Lcom/admaster/square/api/c;->i:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    const-string/jumbo v1, "|"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 237
    if-eqz p3, :cond_1

    .line 239
    :try_start_3
    const-string v1, "orderId"

    invoke-virtual {p3, v1}, Lcom/admaster/square/utils/Order;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    const-string v1, "orderId"

    invoke-virtual {p3, v1}, Lcom/admaster/square/utils/Order;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    const-string/jumbo v1, "|"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_0
    const-string v1, "orderAmount"

    invoke-virtual {p3, v1}, Lcom/admaster/square/utils/Order;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 244
    const-string v1, "orderAmount"

    invoke-virtual {p3, v1}, Lcom/admaster/square/utils/Order;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    const-string/jumbo v1, "|"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 252
    :cond_1
    :try_start_4
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admaster/square/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 256
    :goto_1
    return-object v0

    .line 230
    :catch_0
    move-exception v1

    .line 231
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 254
    :catch_1
    move-exception v1

    .line 255
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 247
    :catch_2
    move-exception v1

    .line 248
    :try_start_5
    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/admaster/square/api/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/admaster/square/api/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/admaster/square/api/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 54
    :cond_0
    invoke-direct {p0}, Lcom/admaster/square/api/c;->b()V

    .line 55
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 326
    const-string v0, "sp_store"

    const-string v1, "is_install"

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/admaster/square/utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 327
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 361
    :try_start_0
    const-string v0, "com.admaster.convmobisdk.failed.active"

    .line 362
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 361
    invoke-static {p1, v0, v1, v2}, Lcom/admaster/square/utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    return-void

    .line 363
    :catch_0
    move-exception v0

    .line 364
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/admaster/square/api/c;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0, p1, p2}, Lcom/admaster/square/api/c;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/admaster/square/api/CustomEvent;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 270
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/admaster/square/api/d;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/admaster/square/api/d;-><init>(Lcom/admaster/square/api/c;Ljava/lang/String;Lcom/admaster/square/api/CustomEvent;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 304
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 305
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 58
    iget-object v0, p0, Lcom/admaster/square/api/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "os"

    iget-object v2, p0, Lcom/admaster/square/api/c;->a:Lcom/admaster/square/api/k;

    iget-object v2, v2, Lcom/admaster/square/api/k;->o:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 59
    iget-object v0, p0, Lcom/admaster/square/api/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "sdkv"

    iget-object v2, p0, Lcom/admaster/square/api/c;->a:Lcom/admaster/square/api/k;

    iget-object v2, v2, Lcom/admaster/square/api/k;->p:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 60
    iget-object v0, p0, Lcom/admaster/square/api/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "appv"

    iget-object v2, p0, Lcom/admaster/square/api/c;->a:Lcom/admaster/square/api/k;

    iget-object v2, v2, Lcom/admaster/square/api/k;->q:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 61
    iget-object v0, p0, Lcom/admaster/square/api/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "package_name"

    iget-object v2, p0, Lcom/admaster/square/api/c;->a:Lcom/admaster/square/api/k;

    iget-object v2, v2, Lcom/admaster/square/api/k;->r:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 62
    iget-object v0, p0, Lcom/admaster/square/api/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "deviceID"

    iget-object v2, p0, Lcom/admaster/square/api/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 63
    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 147
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    sget-object v1, Lcom/admaster/square/utils/h;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/admaster/square/utils/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 149
    iget-object v2, p0, Lcom/admaster/square/api/c;->a:Lcom/admaster/square/api/k;

    iget-object v2, v2, Lcom/admaster/square/api/k;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/admaster/square/utils/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 150
    iget-object v2, p0, Lcom/admaster/square/api/c;->a:Lcom/admaster/square/api/k;

    iget-object v2, v2, Lcom/admaster/square/api/k;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/admaster/square/utils/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 151
    iget-object v2, p0, Lcom/admaster/square/api/c;->a:Lcom/admaster/square/api/k;

    iget-object v2, v2, Lcom/admaster/square/api/k;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/admaster/square/utils/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 152
    iget-object v2, p0, Lcom/admaster/square/api/c;->a:Lcom/admaster/square/api/k;

    iget-object v2, v2, Lcom/admaster/square/api/k;->d:Ljava/lang/String;

    invoke-static {v2}, Lcom/admaster/square/utils/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    iget-object v2, p0, Lcom/admaster/square/api/c;->a:Lcom/admaster/square/api/k;

    iget-object v2, v2, Lcom/admaster/square/api/k;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/admaster/square/utils/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/square/utils/n;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 158
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admaster/square/api/CustomEvent;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 181
    :try_start_0
    iget-object v1, p0, Lcom/admaster/square/api/c;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    const-string v1, "m2id cann\'t be null or empty!"

    invoke-static {v1}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V

    .line 210
    :cond_0
    :goto_0
    return-object v0

    .line 185
    :cond_1
    invoke-direct {p0}, Lcom/admaster/square/api/c;->a()V

    .line 186
    iget-object v1, p0, Lcom/admaster/square/api/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "m2id"

    iget-object v3, p0, Lcom/admaster/square/api/c;->f:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 188
    invoke-virtual {p4}, Lcom/admaster/square/api/CustomEvent;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 189
    iget-object v2, p0, Lcom/admaster/square/api/c;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 190
    iget-object v2, p0, Lcom/admaster/square/api/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "ch"

    iget-object v4, p0, Lcom/admaster/square/api/c;->g:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 192
    :cond_2
    iget-object v2, p0, Lcom/admaster/square/api/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v3, "type"

    const/4 v4, 0x1

    invoke-static {v2, v3, v1, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 193
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 194
    iget-object v1, p0, Lcom/admaster/square/api/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v2, "uid"

    const/4 v3, 0x1

    invoke-static {v1, v2, p3, v3}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 196
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    iget-object v2, p0, Lcom/admaster/square/api/c;->c:Landroid/content/Context;

    const-string v3, "it"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/admaster/square/utils/s;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 198
    iget-object v3, p0, Lcom/admaster/square/api/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "it"

    const/4 v5, 0x1

    invoke-static {v3, v4, v2, v5}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 199
    iget-object v2, p0, Lcom/admaster/square/api/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "at"

    const/4 v4, 0x1

    invoke-static {v2, v3, v1, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 201
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 204
    iget-object v1, p0, Lcom/admaster/square/api/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "exception_message"

    const/4 v3, 0x1

    invoke-static {v1, v2, p1, v3}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 205
    iget-object v1, p0, Lcom/admaster/square/api/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "exception_time"

    const/4 v3, 0x1

    invoke-static {v1, v2, p2, v3}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 206
    iget-object v1, p0, Lcom/admaster/square/api/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    .line 208
    :catch_0
    move-exception v1

    .line 209
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 337
    new-instance v1, Lcom/admaster/square/utils/l;

    invoke-direct {v1}, Lcom/admaster/square/utils/l;-><init>()V

    .line 339
    :try_start_0
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/admaster/square/utils/l;->a(J)V

    .line 340
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/admaster/square/utils/l;->b(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/admaster/square/utils/l;->a(I)V

    .line 345
    invoke-virtual {v1, p3}, Lcom/admaster/square/utils/l;->a(Ljava/lang/String;)V

    .line 348
    const-string v0, "com.admaster.convmobisdk.falied"

    .line 349
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 348
    invoke-static {p1, v0, v2, v1}, Lcom/admaster/square/utils/i;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 350
    return-void

    .line 341
    :catch_0
    move-exception v0

    .line 342
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Lcom/admaster/square/api/CustomEvent;J)V
    .locals 6

    .prologue
    .line 84
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p4, p5}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/admaster/square/api/c;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string v0, "m2id cann\'t be null or empty!"

    invoke-static {v0}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V

    .line 143
    :goto_1
    return-void

    .line 85
    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 140
    :catch_1
    move-exception v0

    .line 141
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 92
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/admaster/square/api/c;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/admaster/square/api/c;->i:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/admaster/square/api/c;->e:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "adm_id"

    iget-object v2, p0, Lcom/admaster/square/api/c;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-direct {p0}, Lcom/admaster/square/api/c;->a()V

    .line 95
    iget-object v0, p0, Lcom/admaster/square/api/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v1, "m2id"

    iget-object v2, p0, Lcom/admaster/square/api/c;->f:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 96
    const/4 v0, 0x0

    .line 97
    if-eqz p2, :cond_1

    .line 98
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_1
    invoke-virtual {p3}, Lcom/admaster/square/api/CustomEvent;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 101
    iget-object v2, p0, Lcom/admaster/square/api/c;->g:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 102
    iget-object v2, p0, Lcom/admaster/square/api/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "ch"

    iget-object v4, p0, Lcom/admaster/square/api/c;->g:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 104
    :cond_2
    iget-object v2, p0, Lcom/admaster/square/api/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v3, "type"

    const/4 v4, 0x1

    invoke-static {v2, v3, v1, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 106
    iget-object v1, p0, Lcom/admaster/square/api/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v2, "uid"

    const/4 v3, 0x1

    invoke-static {v1, v2, p1, v3}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 108
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    iget-object v2, p0, Lcom/admaster/square/api/c;->c:Landroid/content/Context;

    const-string v3, "it"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v3, v4}, Lcom/admaster/square/utils/s;->a(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 110
    iget-object v3, p0, Lcom/admaster/square/api/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "it"

    const/4 v5, 0x1

    invoke-static {v3, v4, v2, v5}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 111
    iget-object v2, p0, Lcom/admaster/square/api/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "at"

    const/4 v4, 0x1

    invoke-static {v2, v3, v1, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 122
    sget-object v2, Lcom/admaster/square/api/CustomEvent;->ADORDER:Lcom/admaster/square/api/CustomEvent;

    if-eq p3, v2, :cond_4

    sget-object v2, Lcom/admaster/square/api/CustomEvent;->ADPURCHASE:Lcom/admaster/square/api/CustomEvent;

    if-ne p3, v2, :cond_6

    .line 124
    :cond_4
    if-eqz p2, :cond_6

    .line 126
    iget-object v2, p0, Lcom/admaster/square/api/c;->c:Landroid/content/Context;

    check-cast p2, Lcom/admaster/square/utils/Order;

    invoke-direct {p0, v2, v1, p2, p1}, Lcom/admaster/square/api/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/admaster/square/utils/Order;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 128
    iget-object v3, p0, Lcom/admaster/square/api/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v4, "orderSign"

    const/4 v5, 0x1

    invoke-static {v3, v4, v2, v5}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 131
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 132
    iget-object v2, p0, Lcom/admaster/square/api/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "orderMessages"

    const/4 v4, 0x0

    invoke-static {v2, v3, v0, v4}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 136
    :cond_6
    iget-object v0, p0, Lcom/admaster/square/api/c;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Lcom/admaster/square/utils/a;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 137
    invoke-direct {p0, v0, p3, v1}, Lcom/admaster/square/api/c;->a(Ljava/lang/String;Lcom/admaster/square/api/CustomEvent;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1
.end method
