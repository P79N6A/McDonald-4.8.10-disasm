.class Lcom/amap/api/mapcore2d/m;
.super Ljava/lang/Object;
.source "CancelAnimObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore2d/m$a;
    }
.end annotation


# static fields
.field private static a:Lcom/amap/api/mapcore2d/m;


# instance fields
.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/amap/api/mapcore2d/m$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    new-instance v0, Lcom/amap/api/mapcore2d/m;

    invoke-direct {v0}, Lcom/amap/api/mapcore2d/m;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore2d/m;->a:Lcom/amap/api/mapcore2d/m;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore2d/m;->b:Ljava/util/ArrayList;

    .line 15
    return-void
.end method

.method public static a()Lcom/amap/api/mapcore2d/m;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/amap/api/mapcore2d/m;->a:Lcom/amap/api/mapcore2d/m;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/amap/api/mapcore2d/m$a;)V
    .locals 1

    .prologue
    .line 28
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 29
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_0
    monitor-exit p0

    return-void

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    .prologue
    .line 20
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore2d/m$a;

    .line 21
    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0}, Lcom/amap/api/mapcore2d/m$a;->O()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 25
    :cond_1
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized b(Lcom/amap/api/mapcore2d/m$a;)V
    .locals 1

    .prologue
    .line 33
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore2d/m;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_0
    monitor-exit p0

    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
