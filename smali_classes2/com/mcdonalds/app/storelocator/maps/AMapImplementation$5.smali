.class Lcom/mcdonalds/app/storelocator/maps/AMapImplementation$5;
.super Ljava/lang/Object;
.source "AMapImplementation.java"

# interfaces
.implements Lcom/amap/api/maps/AMap$OnMarkerClickListener;


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
    .line 228
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation$5;->this$0:Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMarkerClick(Lcom/amap/api/maps/model/Marker;)Z
    .locals 4
    .param p1, "marker"    # Lcom/amap/api/maps/model/Marker;

    .prologue
    const-string v1, "onMarkerClick"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 232
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation$5;->this$0:Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->access$400(Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;Ljava/lang/String;)Lcom/mcdonalds/app/storelocator/maps/model/Marker;

    move-result-object v0

    .line 233
    .local v0, "local":Lcom/mcdonalds/app/storelocator/maps/model/Marker;
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation$5;->this$0:Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;->access$500(Lcom/mcdonalds/app/storelocator/maps/AMapImplementation;)Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMarkerClickListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMarkerClickListener;->onMarkerClick(Lcom/mcdonalds/app/storelocator/maps/model/Marker;)Z

    move-result v1

    return v1
.end method
