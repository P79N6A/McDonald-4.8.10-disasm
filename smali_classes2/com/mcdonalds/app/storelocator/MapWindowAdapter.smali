.class public Lcom/mcdonalds/app/storelocator/MapWindowAdapter;
.super Ljava/lang/Object;
.source "MapWindowAdapter.java"

# interfaces
.implements Lcom/mcdonalds/app/storelocator/maps/McdMap$InfoWindowAdapter;


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/MapWindowAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 22
    return-void
.end method


# virtual methods
.method public getInfoWindow(Lcom/mcdonalds/app/storelocator/maps/model/Marker;)Landroid/view/View;
    .locals 4
    .param p1, "marker"    # Lcom/mcdonalds/app/storelocator/maps/model/Marker;

    .prologue
    const/4 v3, 0x0

    const-string v0, "getInfoWindow"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/MapWindowAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040144

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public toAMap()Lcom/amap/api/maps/AMap$InfoWindowAdapter;
    .locals 2

    .prologue
    const-string v0, "toAMap"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    new-instance v0, Lcom/mcdonalds/app/storelocator/MapWindowAdapter$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/storelocator/MapWindowAdapter$2;-><init>(Lcom/mcdonalds/app/storelocator/MapWindowAdapter;)V

    return-object v0
.end method

.method public toAMap2D()Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;
    .locals 2

    .prologue
    const-string v0, "toAMap2D"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    new-instance v0, Lcom/mcdonalds/app/storelocator/MapWindowAdapter$3;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/storelocator/MapWindowAdapter$3;-><init>(Lcom/mcdonalds/app/storelocator/MapWindowAdapter;)V

    return-object v0
.end method

.method public toGMap()Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
    .locals 2

    .prologue
    const-string v0, "toGMap"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    new-instance v0, Lcom/mcdonalds/app/storelocator/MapWindowAdapter$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/storelocator/MapWindowAdapter$1;-><init>(Lcom/mcdonalds/app/storelocator/MapWindowAdapter;)V

    return-object v0
.end method
