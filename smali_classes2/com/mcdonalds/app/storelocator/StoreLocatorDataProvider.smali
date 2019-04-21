.class public interface abstract Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;
.super Ljava/lang/Object;
.source "StoreLocatorDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;
    }
.end annotation


# virtual methods
.method public abstract allowsFavoritingWithoutMobileOrdering()Z
.end method

.method public abstract allowsSelectionWithoutMobileOrdering()Z
.end method

.method public abstract getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;
.end method

.method public abstract getFavoriteStores()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastLocation()Landroid/location/Location;
.end method

.method public abstract getMapPinResID(Ljava/lang/Integer;)I
.end method

.method public abstract getNearByStores()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getOfferState(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;
.end method

.method public abstract getSelectMapPinResID(Ljava/lang/Integer;)I
.end method

.method public abstract getSelectedStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;
.end method

.method public abstract getSelectedStoreId()Ljava/lang/Integer;
.end method

.method public abstract getSelectedStoreNickName()Ljava/lang/String;
.end method

.method public abstract getSelectedStoreSection()Lcom/mcdonalds/app/storelocator/StoreLocatorSection;
.end method

.method public abstract isCurrentStoreSelectionMode()Z
.end method

.method public abstract locationServicesEnabled()Z
.end method

.method public abstract stateForStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/app/storelocator/StoreItemViewState;
.end method
