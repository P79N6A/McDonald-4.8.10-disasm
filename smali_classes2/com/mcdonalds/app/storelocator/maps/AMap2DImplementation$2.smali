.class Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation$2;
.super Ljava/lang/Object;
.source "AMap2DImplementation.java"

# interfaces
.implements Lcom/amap/api/maps2d/AMap$CancelableCallback;


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
    .line 194
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation$2;->this$0:Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;

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

    .line 203
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    const-string v0, "onFinish"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation$2;->this$0:Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation$2;->this$0:Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->access$100(Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;)Lcom/amap/api/maps2d/AMap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amap/api/maps2d/AMap;->getCameraPosition()Lcom/amap/api/maps2d/model/CameraPosition;

    move-result-object v1

    iget v1, v1, Lcom/amap/api/maps2d/model/CameraPosition;->zoom:F

    invoke-static {v0, v1}, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->access$002(Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;F)F

    .line 198
    return-void
.end method
