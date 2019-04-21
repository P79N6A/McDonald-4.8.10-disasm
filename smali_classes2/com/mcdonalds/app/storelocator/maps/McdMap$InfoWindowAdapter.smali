.class public interface abstract Lcom/mcdonalds/app/storelocator/maps/McdMap$InfoWindowAdapter;
.super Ljava/lang/Object;
.source "McdMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/storelocator/maps/McdMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InfoWindowAdapter"
.end annotation


# virtual methods
.method public abstract toAMap()Lcom/amap/api/maps/AMap$InfoWindowAdapter;
.end method

.method public abstract toAMap2D()Lcom/amap/api/maps2d/AMap$InfoWindowAdapter;
.end method

.method public abstract toGMap()Lcom/google/android/gms/maps/GoogleMap$InfoWindowAdapter;
.end method
