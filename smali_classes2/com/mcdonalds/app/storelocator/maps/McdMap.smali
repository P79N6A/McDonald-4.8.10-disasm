.class public interface abstract Lcom/mcdonalds/app/storelocator/maps/McdMap;
.super Ljava/lang/Object;
.source "McdMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapLoadedListener;,
        Lcom/mcdonalds/app/storelocator/maps/McdMap$InfoWindowAdapter;,
        Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMarkerClickListener;,
        Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapClickListener;,
        Lcom/mcdonalds/app/storelocator/maps/McdMap$OnCameraChangeListener;
    }
.end annotation


# virtual methods
.method public abstract addMarker(Lcom/mcdonalds/app/storelocator/maps/model/MarkerOptions;)Lcom/mcdonalds/app/storelocator/maps/model/Marker;
.end method

.method public abstract animateCamera(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;F)V
.end method

.method public abstract animateCamera(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/storelocator/maps/model/LatLng;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract clear()V
.end method

.method public abstract configure()V
.end method

.method public abstract getCameraPosition()Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;
.end method

.method public abstract getCurrentZoom()F
.end method

.method public abstract getUserLocation()Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
.end method

.method public abstract moveCamera(Lcom/mcdonalds/app/storelocator/maps/model/CameraPosition;)V
.end method

.method public abstract moveCamera(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;F)V
.end method

.method public abstract onPause()V
.end method

.method public abstract setCurrentZoom(F)V
.end method

.method public abstract setInfoWindowAdapter(Lcom/mcdonalds/app/storelocator/maps/McdMap$InfoWindowAdapter;)V
.end method

.method public abstract setMyLocationEnabled(Z)V
.end method

.method public abstract setOnCameraChangeListener(Lcom/mcdonalds/app/storelocator/maps/McdMap$OnCameraChangeListener;)V
.end method

.method public abstract setOnMapClickListener(Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapClickListener;)V
.end method

.method public abstract setOnMapLoadedListener(Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMapLoadedListener;)V
.end method

.method public abstract setOnMarkerClickListener(Lcom/mcdonalds/app/storelocator/maps/McdMap$OnMarkerClickListener;)V
.end method
