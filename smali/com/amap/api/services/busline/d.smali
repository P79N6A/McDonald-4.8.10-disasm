.class Lcom/amap/api/services/busline/d;
.super Landroid/os/Handler;
.source "BusStationSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/busline/BusStationSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/busline/BusStationSearch;


# direct methods
.method constructor <init>(Lcom/amap/api/services/busline/BusStationSearch;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/amap/api/services/busline/d;->a:Lcom/amap/api/services/busline/BusStationSearch;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/amap/api/services/busline/d;->a:Lcom/amap/api/services/busline/BusStationSearch;

    invoke-static {v0}, Lcom/amap/api/services/busline/BusStationSearch;->a(Lcom/amap/api/services/busline/BusStationSearch;)Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 186
    :cond_0
    const/4 v0, 0x0

    .line 187
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_1

    .line 188
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/busline/BusStationResult;

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/amap/api/services/busline/d;->a:Lcom/amap/api/services/busline/BusStationSearch;

    invoke-static {v1}, Lcom/amap/api/services/busline/BusStationSearch;->a(Lcom/amap/api/services/busline/BusStationSearch;)Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v1, v0, v2}, Lcom/amap/api/services/busline/BusStationSearch$OnBusStationSearchListener;->onBusStationSearched(Lcom/amap/api/services/busline/BusStationResult;I)V

    goto :goto_0
.end method
