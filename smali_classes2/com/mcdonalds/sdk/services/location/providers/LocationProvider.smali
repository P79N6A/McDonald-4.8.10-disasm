.class public interface abstract Lcom/mcdonalds/sdk/services/location/providers/LocationProvider;
.super Ljava/lang/Object;
.source "LocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;
    }
.end annotation


# virtual methods
.method public abstract disableLocationUpdates()V
.end method

.method public abstract enableLocationUpdates(Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;)V
.end method

.method public abstract enableLocationUpdates(Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;I)V
.end method

.method public abstract getCurrentLocation()Landroid/location/Location;
.end method

.method public abstract requestSingleUpdate(Lcom/mcdonalds/sdk/services/location/providers/LocationProvider$LocationUpdateListener;)V
.end method

.method public abstract searchAddress(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end method

.method public abstract searchAddress(Ljava/lang/String;DDDD)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "DDDD)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation
.end method
