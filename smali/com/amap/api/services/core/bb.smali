.class Lcom/amap/api/services/core/bb;
.super Lcom/amap/api/services/core/bh;
.source "CrashLogWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/core/bb$a;
    }
.end annotation


# instance fields
.field private a:Lcom/amap/api/services/core/bb$a;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/amap/api/services/core/bh;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method protected a(Lcom/amap/api/services/core/aj;)Lcom/amap/api/services/core/bm;
    .locals 1

    .prologue
    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/core/bb;->a:Lcom/amap/api/services/core/bb$a;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/amap/api/services/core/bb$a;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/core/bb$a;-><init>(Lcom/amap/api/services/core/bb;Lcom/amap/api/services/core/aj;)V

    iput-object v0, p0, Lcom/amap/api/services/core/bb;->a:Lcom/amap/api/services/core/bb$a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/core/bb;->a:Lcom/amap/api/services/core/bb$a;

    return-object v0

    .line 76
    :catch_0
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    .line 24
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/amap/api/services/core/bi;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 25
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/amap/api/services/core/aa;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    return-object v0
.end method

.method protected a(Ljava/util/List;)Ljava/lang/String;
    .locals 1
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

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/amap/api/services/core/be;->c:Ljava/lang/String;

    return-object v0
.end method
