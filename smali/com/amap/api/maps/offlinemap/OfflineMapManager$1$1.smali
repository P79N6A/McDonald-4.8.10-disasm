.class Lcom/amap/api/maps/offlinemap/OfflineMapManager$1$1;
.super Ljava/lang/Object;
.source "OfflineMapManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/maps/offlinemap/OfflineMapManager$1;->a(Lcom/amap/api/mapcore/util/bg;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/bg;

.field final synthetic b:Lcom/amap/api/maps/offlinemap/OfflineMapManager$1;


# direct methods
.method constructor <init>(Lcom/amap/api/maps/offlinemap/OfflineMapManager$1;Lcom/amap/api/mapcore/util/bg;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager$1$1;->b:Lcom/amap/api/maps/offlinemap/OfflineMapManager$1;

    iput-object p2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager$1$1;->a:Lcom/amap/api/mapcore/util/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager$1$1;->b:Lcom/amap/api/maps/offlinemap/OfflineMapManager$1;

    iget-object v0, v0, Lcom/amap/api/maps/offlinemap/OfflineMapManager$1;->a:Lcom/amap/api/maps/offlinemap/OfflineMapManager;

    invoke-static {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a(Lcom/amap/api/maps/offlinemap/OfflineMapManager;)Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager$1$1;->a:Lcom/amap/api/mapcore/util/bg;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/bg;->c()Lcom/amap/api/mapcore/util/cl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/cl;->b()I

    move-result v1

    iget-object v2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager$1$1;->a:Lcom/amap/api/mapcore/util/bg;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/bg;->getcompleteCode()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager$1$1;->a:Lcom/amap/api/mapcore/util/bg;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/bg;->getCity()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;->onDownload(IILjava/lang/String;)V

    .line 83
    return-void
.end method
