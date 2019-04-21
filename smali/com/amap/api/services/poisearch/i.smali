.class Lcom/amap/api/services/poisearch/i;
.super Landroid/os/Handler;
.source "PoiSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/poisearch/PoiSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/poisearch/PoiSearch;


# direct methods
.method constructor <init>(Lcom/amap/api/services/poisearch/PoiSearch;)V
    .locals 0

    .prologue
    .line 618
    iput-object p1, p0, Lcom/amap/api/services/poisearch/i;->a:Lcom/amap/api/services/poisearch/PoiSearch;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 621
    iget-object v0, p0, Lcom/amap/api/services/poisearch/i;->a:Lcom/amap/api/services/poisearch/PoiSearch;

    invoke-static {v0}, Lcom/amap/api/services/poisearch/PoiSearch;->a(Lcom/amap/api/services/poisearch/PoiSearch;)Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 624
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    .line 625
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 626
    if-eqz v0, :cond_0

    .line 627
    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 628
    iget-object v0, p0, Lcom/amap/api/services/poisearch/i;->a:Lcom/amap/api/services/poisearch/PoiSearch;

    invoke-static {v0}, Lcom/amap/api/services/poisearch/PoiSearch;->a(Lcom/amap/api/services/poisearch/PoiSearch;)Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/poisearch/PoiResult;

    invoke-interface {v2, v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;->onPoiSearched(Lcom/amap/api/services/poisearch/PoiResult;I)V

    goto :goto_0

    .line 630
    :cond_2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x65

    if-ne v0, v1, :cond_0

    .line 631
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 632
    if-eqz v0, :cond_0

    .line 633
    const-string v1, "errorCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 634
    iget-object v0, p0, Lcom/amap/api/services/poisearch/i;->a:Lcom/amap/api/services/poisearch/PoiSearch;

    invoke-static {v0}, Lcom/amap/api/services/poisearch/PoiSearch;->a(Lcom/amap/api/services/poisearch/PoiSearch;)Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/poisearch/PoiItemDetail;

    invoke-interface {v2, v0, v1}, Lcom/amap/api/services/poisearch/PoiSearch$OnPoiSearchListener;->onPoiItemDetailSearched(Lcom/amap/api/services/poisearch/PoiItemDetail;I)V

    goto :goto_0
.end method
