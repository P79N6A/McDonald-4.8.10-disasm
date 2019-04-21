.class public interface abstract Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;
.super Ljava/lang/Object;
.source "StoreLocatorInteractionListener.java"


# virtual methods
.method public abstract addStoreToFavorites(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcom/mcdonalds/app/storelocator/StoreLocatorSection;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract removeStoreFromFavorites(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;Lcom/mcdonalds/sdk/AsyncListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcom/mcdonalds/app/storelocator/StoreLocatorSection;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract renameStoreInFavorites(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcom/mcdonalds/app/storelocator/StoreLocatorSection;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract requestUpdateStoresByAddress(Ljava/lang/String;Z)V
.end method

.method public abstract requestUpdateStoresByCurrentLocation(Z)V
.end method

.method public abstract requestUpdateStoresByScrolledLocation(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;)V
.end method

.method public abstract selectStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V
.end method
