.class public Lcom/mcdonalds/app/storelocator/maps/model/Marker;
.super Ljava/lang/Object;
.source "Marker.java"


# instance fields
.field private id:Ljava/lang/String;

.field private mAMap2DMarker:Lcom/amap/api/maps2d/model/Marker;

.field private mAMapMarker:Lcom/amap/api/maps/model/Marker;

.field private mGoogleMarker:Lcom/google/android/gms/maps/model/Marker;

.field private mMapsSDK:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

.field private position:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromAMap(Lcom/amap/api/maps/model/Marker;)Lcom/mcdonalds/app/storelocator/maps/model/Marker;
    .locals 6
    .param p0, "marker"    # Lcom/amap/api/maps/model/Marker;

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.storelocator.maps.model.Marker"

    const-string v3, "fromAMap"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    new-instance v0, Lcom/mcdonalds/app/storelocator/maps/model/Marker;

    invoke-direct {v0}, Lcom/mcdonalds/app/storelocator/maps/model/Marker;-><init>()V

    .line 68
    .local v0, "clone":Lcom/mcdonalds/app/storelocator/maps/model/Marker;
    invoke-virtual {p0}, Lcom/amap/api/maps/model/Marker;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->fromAMaps(Lcom/amap/api/maps/model/LatLng;)Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->position:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    .line 69
    invoke-virtual {p0}, Lcom/amap/api/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->id:Ljava/lang/String;

    .line 70
    iput-object p0, v0, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->mAMapMarker:Lcom/amap/api/maps/model/Marker;

    .line 71
    sget-object v1, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;->AutoNavi:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

    iput-object v1, v0, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->mMapsSDK:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

    .line 73
    return-object v0
.end method

.method public static fromAMap2D(Lcom/amap/api/maps2d/model/Marker;)Lcom/mcdonalds/app/storelocator/maps/model/Marker;
    .locals 6
    .param p0, "marker"    # Lcom/amap/api/maps2d/model/Marker;

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.storelocator.maps.model.Marker"

    const-string v3, "fromAMap2D"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    new-instance v0, Lcom/mcdonalds/app/storelocator/maps/model/Marker;

    invoke-direct {v0}, Lcom/mcdonalds/app/storelocator/maps/model/Marker;-><init>()V

    .line 79
    .local v0, "clone":Lcom/mcdonalds/app/storelocator/maps/model/Marker;
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/Marker;->getPosition()Lcom/amap/api/maps2d/model/LatLng;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->fromAMaps2D(Lcom/amap/api/maps2d/model/LatLng;)Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->position:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    .line 80
    invoke-virtual {p0}, Lcom/amap/api/maps2d/model/Marker;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->id:Ljava/lang/String;

    .line 81
    iput-object p0, v0, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->mAMap2DMarker:Lcom/amap/api/maps2d/model/Marker;

    .line 82
    sget-object v1, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;->AutoNavi2D:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

    iput-object v1, v0, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->mMapsSDK:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

    .line 84
    return-object v0
.end method

.method public static fromGMap(Lcom/google/android/gms/maps/model/Marker;)Lcom/mcdonalds/app/storelocator/maps/model/Marker;
    .locals 6
    .param p0, "marker"    # Lcom/google/android/gms/maps/model/Marker;

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.storelocator.maps.model.Marker"

    const-string v3, "fromGMap"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    new-instance v0, Lcom/mcdonalds/app/storelocator/maps/model/Marker;

    invoke-direct {v0}, Lcom/mcdonalds/app/storelocator/maps/model/Marker;-><init>()V

    .line 57
    .local v0, "clone":Lcom/mcdonalds/app/storelocator/maps/model/Marker;
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/Marker;->getPosition()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/storelocator/maps/model/LatLng;->fromGMap(Lcom/google/android/gms/maps/model/LatLng;)Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->position:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    .line 58
    invoke-virtual {p0}, Lcom/google/android/gms/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->id:Ljava/lang/String;

    .line 59
    iput-object p0, v0, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->mGoogleMarker:Lcom/google/android/gms/maps/model/Marker;

    .line 60
    sget-object v1, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;->Google:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

    iput-object v1, v0, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->mMapsSDK:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

    .line 62
    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getId"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPosition()Lcom/mcdonalds/app/storelocator/maps/model/LatLng;
    .locals 2

    .prologue
    const-string v0, "getPosition"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->position:Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    return-object v0
.end method

.method public setIcon(I)V
    .locals 4
    .param p1, "resId"    # I

    .prologue
    const-string v0, "setIcon"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    nop

    .line 37
    sget-object v0, Lcom/mcdonalds/app/storelocator/maps/model/Marker$1;->$SwitchMap$com$mcdonalds$sdk$modules$storelocator$StoreLocatorModule$NativeMapsSDK:[I

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->mMapsSDK:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 48
    :goto_0
    return-void

    .line 39
    :pswitch_0
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->mGoogleMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-static {p1}, Lcom/mcdonalds/app/storelocator/maps/model/BitmapDescriptorFactory;->fromResourceToGMap(I)Lcom/google/android/gms/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/Marker;->setIcon(Lcom/google/android/gms/maps/model/BitmapDescriptor;)V

    goto :goto_0

    .line 42
    :pswitch_1
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->mAMapMarker:Lcom/amap/api/maps/model/Marker;

    invoke-static {p1}, Lcom/mcdonalds/app/storelocator/maps/model/BitmapDescriptorFactory;->fromResourceToAMap(I)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    goto :goto_0

    .line 45
    :pswitch_2
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->mAMap2DMarker:Lcom/amap/api/maps2d/model/Marker;

    invoke-static {p1}, Lcom/mcdonalds/app/storelocator/maps/model/BitmapDescriptorFactory;->fromResourceToAMap2D(I)Lcom/amap/api/maps2d/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps2d/model/Marker;->setIcon(Lcom/amap/api/maps2d/model/BitmapDescriptor;)V

    goto :goto_0

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public showInfoWindow()V
    .locals 2

    .prologue
    const-string v0, "showInfoWindow"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 23
    sget-object v0, Lcom/mcdonalds/app/storelocator/maps/model/Marker$1;->$SwitchMap$com$mcdonalds$sdk$modules$storelocator$StoreLocatorModule$NativeMapsSDK:[I

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->mMapsSDK:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule$NativeMapsSDK;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 34
    :goto_0
    return-void

    .line 25
    :pswitch_0
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->mGoogleMarker:Lcom/google/android/gms/maps/model/Marker;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Marker;->showInfoWindow()V

    goto :goto_0

    .line 28
    :pswitch_1
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->mAMapMarker:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->showInfoWindow()V

    goto :goto_0

    .line 31
    :pswitch_2
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/maps/model/Marker;->mAMap2DMarker:Lcom/amap/api/maps2d/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps2d/model/Marker;->showInfoWindow()V

    goto :goto_0

    .line 23
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
