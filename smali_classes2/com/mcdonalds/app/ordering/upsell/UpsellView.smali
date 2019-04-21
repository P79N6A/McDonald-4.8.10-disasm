.class public interface abstract Lcom/mcdonalds/app/ordering/upsell/UpsellView;
.super Ljava/lang/Object;
.source "UpsellView.java"


# virtual methods
.method public abstract displayItems(Ljava/util/List;Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;",
            "Lcom/mcdonalds/sdk/modules/models/Order$PriceType;",
            ")V"
        }
    .end annotation
.end method

.method public abstract markItemSelected(I)V
.end method

.method public abstract markItemUnselected(I)V
.end method

.method public abstract showCart()V
.end method

.method public abstract updateItemQuantity(II)V
.end method
