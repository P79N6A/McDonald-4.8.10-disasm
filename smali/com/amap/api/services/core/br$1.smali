.class Lcom/amap/api/services/core/br$1;
.super Lcom/amap/api/services/core/aw;
.source "NetManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/core/br;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/amap/api/services/core/bs;

.field final synthetic c:Lcom/amap/api/services/core/bt;

.field final synthetic d:Lcom/amap/api/services/core/br;


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/core/br$1;->d:Lcom/amap/api/services/core/br;

    iget-object v1, p0, Lcom/amap/api/services/core/br$1;->b:Lcom/amap/api/services/core/bs;

    invoke-virtual {v0, v1}, Lcom/amap/api/services/core/br;->b(Lcom/amap/api/services/core/bs;)[B

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/amap/api/services/core/br$1;->d:Lcom/amap/api/services/core/br;

    iget-object v2, p0, Lcom/amap/api/services/core/br$1;->c:Lcom/amap/api/services/core/bt;

    invoke-static {v1, v0, v2}, Lcom/amap/api/services/core/br;->a(Lcom/amap/api/services/core/br;[BLcom/amap/api/services/core/bt;)V
    :try_end_0
    .catch Lcom/amap/api/services/core/u; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    iget-object v1, p0, Lcom/amap/api/services/core/br$1;->d:Lcom/amap/api/services/core/br;

    iget-object v2, p0, Lcom/amap/api/services/core/br$1;->c:Lcom/amap/api/services/core/bt;

    invoke-static {v1, v0, v2}, Lcom/amap/api/services/core/br;->a(Lcom/amap/api/services/core/br;Lcom/amap/api/services/core/u;Lcom/amap/api/services/core/bt;)V

    goto :goto_0
.end method
