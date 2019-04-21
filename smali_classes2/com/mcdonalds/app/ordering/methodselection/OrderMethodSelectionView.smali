.class public interface abstract Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;
.super Ljava/lang/Object;
.source "OrderMethodSelectionView.java"


# virtual methods
.method public abstract hideActivityIndicator()V
.end method

.method public abstract save()V
.end method

.method public abstract setAsapDelivery(Z)V
.end method

.method public abstract setAsapDeliveryFirst(Z)V
.end method

.method public abstract setSaveButtonState(Z)V
.end method

.method public abstract showActivityIndicator(I)V
.end method

.method public abstract showDelivery()V
.end method

.method public abstract showDeliveryTimeSelector()V
.end method

.method public abstract showPickup()V
.end method

.method public abstract updateAsapDeliveryDate(Ljava/lang/String;)V
.end method

.method public abstract updateScheduledDeliveryDate(Ljava/lang/String;)V
.end method

.method public abstract updateSelectedAddress(Ljava/lang/String;)V
.end method

.method public abstract updateSelectedStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
.end method

.method public abstract updateStores(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)V"
        }
    .end annotation
.end method
