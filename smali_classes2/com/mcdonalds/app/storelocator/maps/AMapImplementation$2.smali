.class Lcom/mcdonalds/app/storelocator/maps/AMapImplementation$2;
.super Ljava/lang/Object;
.source "AMapImplementation.java"

# interfaces
.implements Lcom/amap/api/maps/AMap$CancelableCallback;


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
    .line 197
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation$2;->this$0:Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .prologue
    const-string v0, "onCancel"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    const-string v0, "onFinish"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation$2;->this$0:Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation$2;->this$0:Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->access$100(Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;)Lcom/amap/api/maps/AMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v1

    iget v1, v1, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    invoke-static {v0, v1}, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->access$002(Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;F)F

    .line 201
    return-void
.end method
