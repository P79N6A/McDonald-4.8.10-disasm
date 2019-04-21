.class Lcom/amap/api/services/route/m;
.super Landroid/os/Handler;
.source "RouteSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/route/RouteSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/route/RouteSearch;


# direct methods
.method constructor <init>(Lcom/amap/api/services/route/RouteSearch;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/amap/api/services/route/m;->a:Lcom/amap/api/services/route/RouteSearch;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 312
    iget-object v0, p0, Lcom/amap/api/services/route/m;->a:Lcom/amap/api/services/route/RouteSearch;

    invoke-static {v0}, Lcom/amap/api/services/route/RouteSearch;->a(Lcom/amap/api/services/route/RouteSearch;)Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 316
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 317
    if-eqz v0, :cond_0

    .line 318
    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 319
    iget-object v0, p0, Lcom/amap/api/services/route/m;->a:Lcom/amap/api/services/route/RouteSearch;

    invoke-static {v0}, Lcom/amap/api/services/route/RouteSearch;->a(Lcom/amap/api/services/route/RouteSearch;)Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/route/BusRouteResult;

    invoke-interface {v2, v0, v1}, Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;->onBusRouteSearched(Lcom/amap/api/services/route/BusRouteResult;I)V

    goto :goto_0

    .line 322
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    .line 323
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 324
    if-eqz v0, :cond_0

    .line 325
    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 326
    iget-object v0, p0, Lcom/amap/api/services/route/m;->a:Lcom/amap/api/services/route/RouteSearch;

    invoke-static {v0}, Lcom/amap/api/services/route/RouteSearch;->a(Lcom/amap/api/services/route/RouteSearch;)Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/route/DriveRouteResult;

    invoke-interface {v2, v0, v1}, Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;->onDriveRouteSearched(Lcom/amap/api/services/route/DriveRouteResult;I)V

    goto :goto_0

    .line 329
    :cond_3
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 330
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 331
    if-eqz v0, :cond_0

    .line 332
    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 333
    iget-object v0, p0, Lcom/amap/api/services/route/m;->a:Lcom/amap/api/services/route/RouteSearch;

    invoke-static {v0}, Lcom/amap/api/services/route/RouteSearch;->a(Lcom/amap/api/services/route/RouteSearch;)Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/route/WalkRouteResult;

    invoke-interface {v2, v0, v1}, Lcom/amap/api/services/route/RouteSearch$OnRouteSearchListener;->onWalkRouteSearched(Lcom/amap/api/services/route/WalkRouteResult;I)V

    goto :goto_0
.end method
