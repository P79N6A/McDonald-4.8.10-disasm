.class Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation$3;
.super Ljava/lang/Object;
.source "AMap2DImplementation.java"

# interfaces
.implements Lcom/amap/api/maps2d/AMap$OnCameraChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;

    .prologue
    .line 206
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation$3;->this$0:Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraChange(Lcom/amap/api/maps2d/model/CameraPosition;)V
    .locals 3
    .param p1, "cameraPosition"    # Lcom/amap/api/maps2d/model/CameraPosition;

    .prologue
    const-string v0, "onCameraChange"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation$3;->this$0:Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->access$200(Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;)Lcom/mcdonalds/app/storelocator/maps/McdMap$OnCameraChangeListener;

    move-result-object v0

    invoke-static {p1}, Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;->fromAmap2D(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/storelocator/maps/McdMap$OnCameraChangeListener;->onCameraChange(Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;)V

    .line 210
    return-void
.end method

.method public onCameraChangeFinish(Lcom/amap/api/maps2d/model/CameraPosition;)V
    .locals 3
    .param p1, "cameraPosition"    # Lcom/amap/api/maps2d/model/CameraPosition;

    .prologue
    const-string v0, "onCameraChangeFinish"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation$3;->this$0:Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->access$200(Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;)Lcom/mcdonalds/app/storelocator/maps/McdMap$OnCameraChangeListener;

    move-result-object v0

    invoke-static {p1}, Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;->fromAmap2D(Lcom/amap/api/maps2d/model/CameraPosition;)Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/storelocator/maps/McdMap$OnCameraChangeListener;->onCameraChange(Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;)V

    .line 215
    return-void
.end method
