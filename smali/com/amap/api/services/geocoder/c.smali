.class Lcom/amap/api/services/geocoder/c;
.super Landroid/os/Handler;
.source "GeocodeSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/geocoder/GeocodeSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/geocoder/GeocodeSearch;


# direct methods
.method constructor <init>(Lcom/amap/api/services/geocoder/GeocodeSearch;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/amap/api/services/geocoder/c;->a:Lcom/amap/api/services/geocoder/GeocodeSearch;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 149
    iget-object v1, p0, Lcom/amap/api/services/geocoder/c;->a:Lcom/amap/api/services/geocoder/GeocodeSearch;

    invoke-static {v1}, Lcom/amap/api/services/geocoder/GeocodeSearch;->a(Lcom/amap/api/services/geocoder/GeocodeSearch;)Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

    move-result-object v1

    if-nez v1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 153
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x65

    if-ne v1, v2, :cond_2

    .line 155
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-nez v1, :cond_1

    .line 156
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/geocoder/RegeocodeResult;

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/amap/api/services/geocoder/c;->a:Lcom/amap/api/services/geocoder/GeocodeSearch;

    invoke-static {v1}, Lcom/amap/api/services/geocoder/GeocodeSearch;->a(Lcom/amap/api/services/geocoder/GeocodeSearch;)Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, v2}, Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;->onRegeocodeSearched(Lcom/amap/api/services/geocoder/RegeocodeResult;I)V

    goto :goto_0

    .line 161
    :cond_2
    iget v1, p1, Landroid/os/Message;->arg2:I

    if-nez v1, :cond_3

    .line 162
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/geocoder/GeocodeResult;

    .line 163
    :cond_3
    iget-object v1, p0, Lcom/amap/api/services/geocoder/c;->a:Lcom/amap/api/services/geocoder/GeocodeSearch;

    invoke-static {v1}, Lcom/amap/api/services/geocoder/GeocodeSearch;->a(Lcom/amap/api/services/geocoder/GeocodeSearch;)Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v0, v2}, Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;->onGeocodeSearched(Lcom/amap/api/services/geocoder/GeocodeResult;I)V

    goto :goto_0
.end method
