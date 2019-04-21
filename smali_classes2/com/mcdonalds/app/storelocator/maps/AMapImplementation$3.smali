.class Lcom/mcdonalds/app/storelocator/maps/AMapImplementation$3;
.super Ljava/lang/Object;
.source "AMapImplementation.java"

# interfaces
.implements Lcom/amap/api/maps/AMap$OnCameraChangeListener;


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
    .line 209
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation$3;->this$0:Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraChange(Lcom/amap/api/maps/model/CameraPosition;)V
    .locals 3
    .param p1, "cameraPosition"    # Lcom/amap/api/maps/model/CameraPosition;

    .prologue
    const-string v0, "onCameraChange"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation$3;->this$0:Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->access$200(Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;)Lcom/mcdonalds/app/storelocator/maps/McdMap$OnCameraChangeListener;

    move-result-object v0

    invoke-static {p1}, Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;->fromAmap(Lcom/amap/api/maps/model/CameraPosition;)Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/storelocator/maps/McdMap$OnCameraChangeListener;->onCameraChange(Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;)V

    .line 213
    return-void
.end method

.method public onCameraChangeFinish(Lcom/amap/api/maps/model/CameraPosition;)V
    .locals 3
    .param p1, "cameraPosition"    # Lcom/amap/api/maps/model/CameraPosition;

    .prologue
    const-string v0, "onCameraChangeFinish"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation$3;->this$0:Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;

    invoke-static {v0}, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->access$200(Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;)Lcom/mcdonalds/app/storelocator/maps/McdMap$OnCameraChangeListener;

    move-result-object v0

    invoke-static {p1}, Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;->fromAmap(Lcom/amap/api/maps/model/CameraPosition;)Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/storelocator/maps/McdMap$OnCameraChangeListener;->onCameraChange(Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;)V

    .line 218
    return-void
.end method
