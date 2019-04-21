.class public interface abstract Lcom/mcdonalds/app/ordering/productdetail/MealAdapter$OnMealChangedListener;
.super Ljava/lang/Object;
.source "MealAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/productdetail/MealAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnMealChangedListener"
.end annotation


# virtual methods
.method public abstract onChange(Lcom/mcdonalds/sdk/modules/models/OrderProduct;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/OrderProduct;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;)V"
        }
    .end annotation
.end method
