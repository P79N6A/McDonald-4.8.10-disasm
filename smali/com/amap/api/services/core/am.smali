.class public Lcom/amap/api/services/core/am;
.super Ljava/lang/Object;
.source "SDKDBOperation.java"


# instance fields
.field private a:Lcom/amap/api/services/core/ah;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amap/api/services/core/am;->b:Landroid/content/Context;

    .line 17
    iget-object v0, p0, Lcom/amap/api/services/core/am;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/am;->a(Landroid/content/Context;)Lcom/amap/api/services/core/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/am;->a:Lcom/amap/api/services/core/ah;

    .line 18
    return-void
.end method

.method private a(Landroid/content/Context;)Lcom/amap/api/services/core/ah;
    .locals 4

    .prologue
    .line 22
    const/4 v1, 0x0

    .line 24
    :try_start_0
    new-instance v0, Lcom/amap/api/services/core/ah;

    invoke-direct {v0, p1}, Lcom/amap/api/services/core/ah;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-object v0

    .line 25
    :catch_0
    move-exception v0

    .line 26
    const-string v2, "SDKDB"

    const-string v3, "getDB"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/amap/api/services/core/ac;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 79
    :try_start_0
    new-instance v1, Lcom/amap/api/services/core/an;

    invoke-direct {v1}, Lcom/amap/api/services/core/an;-><init>()V

    .line 80
    invoke-static {}, Lcom/amap/api/services/core/an;->c()Ljava/lang/String;

    move-result-object v2

    .line 81
    iget-object v3, p0, Lcom/amap/api/services/core/am;->a:Lcom/amap/api/services/core/ah;

    invoke-virtual {v3, v2, v1}, Lcom/amap/api/services/core/ah;->c(Ljava/lang/String;Lcom/amap/api/services/core/ao;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 85
    :goto_0
    return-object v0

    .line 82
    :catch_0
    move-exception v1

    .line 83
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public a(Lcom/amap/api/services/core/ac;)V
    .locals 4

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 58
    :goto_0
    return-void

    .line 38
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/core/am;->a:Lcom/amap/api/services/core/ah;

    if-nez v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/amap/api/services/core/am;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amap/api/services/core/am;->a(Landroid/content/Context;)Lcom/amap/api/services/core/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/core/am;->a:Lcom/amap/api/services/core/ah;

    .line 41
    :cond_1
    new-instance v0, Lcom/amap/api/services/core/an;

    invoke-direct {v0}, Lcom/amap/api/services/core/an;-><init>()V

    .line 42
    invoke-interface {v0, p1}, Lcom/amap/api/services/core/ao;->a(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p1}, Lcom/amap/api/services/core/ac;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/services/core/an;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/amap/api/services/core/am;->a:Lcom/amap/api/services/core/ah;

    new-instance v3, Lcom/amap/api/services/core/an;

    invoke-direct {v3}, Lcom/amap/api/services/core/an;-><init>()V

    invoke-virtual {v2, v1, v3}, Lcom/amap/api/services/core/ah;->c(Ljava/lang/String;Lcom/amap/api/services/core/ao;)Ljava/util/List;

    move-result-object v2

    .line 47
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 48
    :cond_2
    iget-object v1, p0, Lcom/amap/api/services/core/am;->a:Lcom/amap/api/services/core/ah;

    invoke-virtual {v1, v0}, Lcom/amap/api/services/core/ah;->a(Lcom/amap/api/services/core/ao;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 54
    const-string v1, "SDKDB"

    const-string v2, "insert"

    invoke-static {v0, v1, v2}, Lcom/amap/api/services/core/ax;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 50
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/services/core/am;->a:Lcom/amap/api/services/core/ah;

    invoke-virtual {v2, v1, v0}, Lcom/amap/api/services/core/ah;->b(Ljava/lang/String;Lcom/amap/api/services/core/ao;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
