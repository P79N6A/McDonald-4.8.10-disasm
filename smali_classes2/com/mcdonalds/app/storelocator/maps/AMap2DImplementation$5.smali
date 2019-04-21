.class Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation$5;
.super Ljava/lang/Object;
.source "AMap2DImplementation.java"

# interfaces
.implements Lcom/amap/api/maps2d/AMap$OnMarkerClickListener;


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
    .line 225
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation$5;->this$0:Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerClick(Lcom/amap/api/maps2d/model/Marker;)Z
    .locals 4
    .param p1, "marker"    # Lcom/amap/api/maps2d/model/Marker;

    .prologue
    const-string v1, "onMarkerClick"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation$5;->this$0:Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;

    invoke-virtual {p1}, Lcom/amap/api/maps2d/model/Marker;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->access$400(Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;Ljava/lang/String;)Lcom/mcdonalds/app/storelocator/maps/model/Marker;

    move-result-object v0

    .line 230
    .local v0, "local":Lcom/mcdonalds/app/storelocator/maps/model/Marker;
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation$5;->this$0:Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;->access$500(Lcom/mcdonalds/app/storelocator/maps/AMap2DImplementation;)Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMarkerClickListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMarkerClickListener;->onMarkerClick(Lcom/mcdonalds/app/storelocator/maps/model/Marker;)Z

    move-result v1

    return v1
.end method
