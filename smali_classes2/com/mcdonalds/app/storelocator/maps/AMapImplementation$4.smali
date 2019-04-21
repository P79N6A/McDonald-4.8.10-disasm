.class Lcom/mcdonalds/app/storelocator/maps/AMapImplementation$4;
.super Ljava/lang/Object;
.source "AMapImplementation.java"

# interfaces
.implements Lcom/amap/api/maps/AMap$OnMapClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation$4;->this$0:Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMapClick(Lcom/amap/api/maps/model/LatLng;)V
    .locals 3
    .param p1, "latLng"    # Lcom/amap/api/maps/model/LatLng;

    .prologue
    const-string v0, "onMapClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation$4;->this$0:Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->access$300(Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;)Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapClickListener;

    move-result-object v0

    invoke-static {p1}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->fromAMaps(Lcom/amap/api/maps/model/LatLng;)Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapClickListener;->onMapClick(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;)V

    .line 225
    return-void
.end method
