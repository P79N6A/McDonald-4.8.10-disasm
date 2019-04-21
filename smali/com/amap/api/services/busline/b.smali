.class Lcom/amap/api/services/busline/b;
.super Landroid/os/Handler;
.source "BusLineSearch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/busline/BusLineSearch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/services/busline/BusLineSearch;


# direct methods
.method constructor <init>(Lcom/amap/api/services/busline/BusLineSearch;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/amap/api/services/busline/b;->a:Lcom/amap/api/services/busline/BusLineSearch;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/amap/api/services/busline/b;->a:Lcom/amap/api/services/busline/BusLineSearch;

    invoke-static {v0}, Lcom/amap/api/services/busline/BusLineSearch;->a(Lcom/amap/api/services/busline/BusLineSearch;)Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;

    move-result-object v0

    if-nez v0, :cond_0

    .line 137
    :goto_0
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x0

    .line 133
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_1

    .line 134
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/amap/api/services/busline/BusLineResult;

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/amap/api/services/busline/b;->a:Lcom/amap/api/services/busline/BusLineSearch;

    invoke-static {v1}, Lcom/amap/api/services/busline/BusLineSearch;->a(Lcom/amap/api/services/busline/BusLineSearch;)Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-interface {v1, v0, v2}, Lcom/amap/api/services/busline/BusLineSearch$OnBusLineSearchListener;->onBusLineSearched(Lcom/amap/api/services/busline/BusLineResult;I)V

    goto :goto_0
.end method
