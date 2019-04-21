.class public Lcom/amap/api/services/core/ap;
.super Ljava/lang/Object;
.source "UpdateLogDBOperation.java"


# instance fields
.field private a:Lcom/amap/api/services/core/ah;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/amap/api/services/core/ap;->b:Landroid/content/Context;

    .line 15
    iget-object v0, p0, Lcom/amap/api/services/core/ap;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/ap;->a(Landroid/content/Context;)Lcom/amap/api/services/core/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/ap;->a:Lcom/amap/api/services/core/ah;

    .line 16
    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/amap/api/services/core/ah;
    .locals 4

    .prologue
    .line 20
    const/4 v1, 0x0

    .line 22
    :try_start_0
    new-instance v0, Lcom/amap/api/services/core/ah;

    invoke-direct {v0, p1}, Lcom/amap/api/services/core/ah;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :goto_0
    return-object v0

    .line 23
    :catch_0
    move-exception v0

    .line 25
    const-string v2, "UpdateLogDB"

    const-string v3, "getDB"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/amap/api/services/core/ar;
    .locals 4

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/core/ap;->a:Lcom/amap/api/services/core/ah;

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/amap/api/services/core/ap;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/ap;->a(Landroid/content/Context;)Lcom/amap/api/services/core/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/ap;->a:Lcom/amap/api/services/core/ah;

    .line 39
    :cond_0
    const-string v0, "1=1"

    .line 40
    iget-object v2, p0, Lcom/amap/api/services/core/ap;->a:Lcom/amap/api/services/core/ah;

    new-instance v3, Lcom/amap/api/services/core/aq;

    invoke-direct {v3}, Lcom/amap/api/services/core/aq;-><init>()V

    invoke-virtual {v2, v0, v3}, Lcom/amap/api/services/core/ah;->c(Ljava/lang/String;Lcom/amap/api/services/core/ao;)Ljava/util/List;

    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 43
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/ar;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    return-object v0

    .line 45
    :catch_0
    move-exception v0

    .line 47
    const-string v2, "UpdateLogDB"

    const-string v3, "getUpdateLog"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Lcom/amap/api/services/core/ar;)V
    .locals 4

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 77
    :goto_0
    return-void

    .line 58
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/core/ap;->a:Lcom/amap/api/services/core/ah;

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/amap/api/services/core/ap;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/ap;->a(Landroid/content/Context;)Lcom/amap/api/services/core/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/ap;->a:Lcom/amap/api/services/core/ah;

    .line 61
    :cond_1
    new-instance v0, Lcom/amap/api/services/core/aq;

    invoke-direct {v0}, Lcom/amap/api/services/core/aq;-><init>()V

    .line 62
    invoke-interface {v0, p1}, Lcom/amap/api/services/core/ao;->a(Ljava/lang/Object;)V

    .line 64
    const-string v1, "1=1"

    .line 65
    iget-object v2, p0, Lcom/amap/api/services/core/ap;->a:Lcom/amap/api/services/core/ah;

    new-instance v3, Lcom/amap/api/services/core/aq;

    invoke-direct {v3}, Lcom/amap/api/services/core/aq;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/amap/api/services/core/ah;->c(Ljava/lang/String;Lcom/amap/api/services/core/ao;)Ljava/util/List;

    move-result-object v2

    .line 67
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/amap/api/services/core/ap;->a:Lcom/amap/api/services/core/ah;

    invoke-virtual {v1, v0}, Lcom/amap/api/services/core/ah;->a(Lcom/amap/api/services/core/ao;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 74
    const-string v1, "UpdateLogDB"

    const-string/jumbo v2, "updateLog"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 70
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/services/core/ap;->a:Lcom/amap/api/services/core/ah;

    invoke-virtual {v2, v1, v0}, Lcom/amap/api/services/core/ah;->b(Ljava/lang/String;Lcom/amap/api/services/core/ao;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
