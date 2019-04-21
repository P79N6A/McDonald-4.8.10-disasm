.class public interface abstract Lcom/mcdonalds/app/ordering/choiceselector/ChoiceSelectorView;
.super Ljava/lang/Object;
.source "ChoiceSelectorView.java"


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract finalize(Lcom/mcdonalds/sdk/modules/models/OrderProduct;II)V
.end method

.method public abstract setDoneEnabled(Z)V
.end method

.method public abstract setSelected(I)V
.end method

.method public abstract showOptions(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateCustomization(I)V
.end method
