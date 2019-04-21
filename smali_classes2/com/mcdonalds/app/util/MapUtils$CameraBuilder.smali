.class public Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;
.super Ljava/lang/Object;
.source "MapUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/util/MapUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraBuilder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private locations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/storelocator/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private map:Lcom/mcdonalds/app/storelocator/maps/McdMap;

.field private margin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->margin:I

    .line 78
    iput-object p1, p0, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->context:Landroid/content/Context;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->locations:Ljava/util/List;

    .line 80
    return-void
.end method

.method private checkPreconditions()V
    .locals 2

    .prologue
    const-string v0, "checkPreconditions"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    iget-object v0, p0, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->map:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There must be a map."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->locations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There must be locations."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_1
    return-void
.end method


# virtual methods
.method public map(Lcom/mcdonalds/app/storelocator/maps/McdMap;)Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;
    .locals 3
    .param p1, "map"    # Lcom/mcdonalds/app/storelocator/maps/McdMap;

    .prologue
    const-string v0, "map"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    iput-object p1, p0, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->map:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    .line 84
    return-object p0
.end method

.method public margin(I)Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;
    .locals 4
    .param p1, "marginInDp"    # I

    .prologue
    const-string v0, "margin"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    iput p1, p0, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->margin:I

    .line 105
    return-object p0
.end method

.method public move()V
    .locals 3

    .prologue
    const-string v1, "move"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    invoke-direct {p0}, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->checkPreconditions()V

    .line 114
    iget v1, p0, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->margin:I

    if-gtz v1, :cond_0

    .line 115
    const/16 v1, 0x18

    iput v1, p0, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->margin:I

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->context:Landroid/content/Context;

    iget v2, p0, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->margin:I

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v0

    .line 119
    .local v0, "marginInPx":I
    iget-object v1, p0, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->map:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    iget-object v2, p0, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->locations:Ljava/util/List;

    invoke-interface {v1, v2, v0}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->animateCamera(Ljava/util/List;I)V

    .line 120
    return-void
.end method

.method public move(F)V
    .locals 5
    .param p1, "zoom"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "move"

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Float;

    invoke-direct {v2, p1}, Ljava/lang/Float;-><init>(F)V

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 126
    invoke-direct {p0}, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->checkPreconditions()V

    .line 128
    iget-object v0, p0, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->locations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 129
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There must only be 1 location for a move with a zoom."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->map:Lcom/mcdonalds/app/storelocator/maps/McdMap;

    iget-object v0, p0, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->locations:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    invoke-interface {v1, v0, p1}, Lcom/mcdonalds/app/storelocator/maps/McdMap;->moveCamera(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;F)V

    .line 133
    return-void
.end method

.method public store(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;
    .locals 6
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const-string v1, "store"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    if-eqz p1, :cond_0

    .line 97
    new-instance v0, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;-><init>(DD)V

    .line 98
    .local v0, "storeLoc":Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    iget-object v1, p0, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->locations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v0    # "storeLoc":Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    :cond_0
    return-object p0
.end method

.method public userLocation(Landroid/location/Location;)Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;
    .locals 6
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const-string v1, "userLocation"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    if-eqz p1, :cond_0

    .line 89
    new-instance v0, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;-><init>(DD)V

    .line 90
    .local v0, "userLoc":Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    iget-object v1, p0, Lcom/mcdonalds/app/util/MapUtils$CameraBuilder;->locations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v0    # "userLoc":Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    :cond_0
    return-object p0
.end method
