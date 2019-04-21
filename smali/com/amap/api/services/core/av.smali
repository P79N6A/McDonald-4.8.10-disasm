.class Lcom/amap/api/services/core/av;
.super Ljava/lang/Object;
.source "ThreadPool.java"

# interfaces
.implements Lcom/amap/api/services/core/aw$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/core/au;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/core/au;


# direct methods
.method constructor <init>(Lcom/amap/api/services/core/au;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/amap/api/services/core/av;->a:Lcom/amap/api/services/core/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/services/core/aw;)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method

.method public b(Lcom/amap/api/services/core/aw;)V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amap/api/services/core/av;->a:Lcom/amap/api/services/core/au;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/amap/api/services/core/au;->a(Lcom/amap/api/services/core/au;Lcom/amap/api/services/core/aw;Z)V

    .line 39
    return-void
.end method
