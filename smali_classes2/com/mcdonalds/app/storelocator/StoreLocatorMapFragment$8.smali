.class Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$8;
.super Ljava/lang/Object;
.source "StoreLocatorMapFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/storelocator/maps/McdMap$OnCameraChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    .prologue
    .line 769
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraChange(Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;)V
    .locals 6
    .param p1, "position"    # Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;

    .prologue
    const-string v2, "onCameraChange"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 775
    iget v2, p1, Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;->zoom:F

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$1900(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Lcom/mcdonalds/app/storelocator/maps/McdMap;

    move-result-object v3

    invoke-interface {v3}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->getCurrentZoom()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpg-double v2, v2, v4

    if-gez v2, :cond_1

    .line 777
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$2000(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$1800(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 779
    iget-object v2, p1, Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;->target:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$2000(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/LocationUtils;->distanceBetween(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;Lcom/mcdonalds/app/storelocator/maps/model/LatLng;)D

    move-result-wide v0

    .line 780
    .local v0, "movement":D
    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    cmpl-double v2, v0, v2

    if-lez v2, :cond_0

    .line 781
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$2100(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)V

    .line 784
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$2202(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;)Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;

    .line 788
    .end local v0    # "movement":D
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    iget-object v3, p1, Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;->target:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    invoke-static {v2, v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$2002(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;Lcom/mcdonalds/app/storelocator/maps/model/LatLng;)Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    .line 789
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment$8;->this$0:Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;->access$1900(Lcom/mcdonalds/app/storelocator/StoreLocatorMapFragment;)Lcom/mcdonalds/app/storelocator/maps/McdMap;

    move-result-object v2

    iget v3, p1, Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;->zoom:F

    invoke-interface {v2, v3}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->setCurrentZoom(F)V

    .line 790
    return-void
.end method
