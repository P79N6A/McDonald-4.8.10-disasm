.class Lcom/amap/api/services/geocoder/GeocodeSearch$2;
.super Ljava/lang/Object;
.source "GeocodeSearch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/services/geocoder/GeocodeSearch;->getFromLocationNameAsyn(Lcom/amap/api/services/geocoder/GeocodeQuery;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/geocoder/GeocodeQuery;

.field final synthetic b:Lcom/amap/api/services/geocoder/GeocodeSearch;


# direct methods
.method constructor <init>(Lcom/amap/api/services/geocoder/GeocodeSearch;Lcom/amap/api/services/geocoder/GeocodeQuery;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/amap/api/services/geocoder/GeocodeSearch$2;->b:Lcom/amap/api/services/geocoder/GeocodeSearch;

    iput-object p2, p0, Lcom/amap/api/services/geocoder/GeocodeSearch$2;->a:Lcom/amap/api/services/geocoder/GeocodeQuery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 126
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 128
    const/16 v0, 0x64

    :try_start_0
    iput v0, v1, Landroid/os/Message;->what:I

    .line 129
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch$2;->b:Lcom/amap/api/services/geocoder/GeocodeSearch;

    iget-object v2, p0, Lcom/amap/api/services/geocoder/GeocodeSearch$2;->a:Lcom/amap/api/services/geocoder/GeocodeQuery;

    invoke-virtual {v0, v2}, Lcom/amap/api/services/geocoder/GeocodeSearch;->getFromLocationName(Lcom/amap/api/services/geocoder/GeocodeQuery;)Ljava/util/List;

    move-result-object v0

    .line 130
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 131
    new-instance v2, Lcom/amap/api/services/geocoder/GeocodeResult;

    iget-object v3, p0, Lcom/amap/api/services/geocoder/GeocodeSearch$2;->a:Lcom/amap/api/services/geocoder/GeocodeQuery;

    invoke-direct {v2, v3, v0}, Lcom/amap/api/services/geocoder/GeocodeResult;-><init>(Lcom/amap/api/services/geocoder/GeocodeQuery;Ljava/util/List;)V

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch$2;->b:Lcom/amap/api/services/geocoder/GeocodeSearch;

    iget-object v0, v0, Lcom/amap/api/services/geocoder/GeocodeSearch;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 142
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    :try_start_1
    const-string v2, "GeocodeSearch"

    const-string v3, "getFromLocationNameAsyn"

    invoke-static {v0, v2, v3}, Lcom/amap/api/services/core/d;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v0}, Lcom/amap/api/services/core/AMapException;->getErrorCode()I

    move-result v0

    iput v0, v1, Landroid/os/Message;->arg1:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    iget-object v0, p0, Lcom/amap/api/services/geocoder/GeocodeSearch$2;->b:Lcom/amap/api/services/geocoder/GeocodeSearch;

    iget-object v0, v0, Lcom/amap/api/services/geocoder/GeocodeSearch;->a:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v2, p0, Lcom/amap/api/services/geocoder/GeocodeSearch$2;->b:Lcom/amap/api/services/geocoder/GeocodeSearch;

    iget-object v2, v2, Lcom/amap/api/services/geocoder/GeocodeSearch;->a:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    throw v0
.end method
