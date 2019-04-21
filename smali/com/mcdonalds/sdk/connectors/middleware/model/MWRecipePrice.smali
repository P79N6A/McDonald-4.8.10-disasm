.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipePrice;
.super Ljava/lang/Object;
.source "MWRecipePrice.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public isValid:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsValid"
    .end annotation
.end field

.field public price:D
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "Price"
    .end annotation
.end field

.field public priceTypeID:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PriceTypeID"
    .end annotation
.end field

.field public recipeID:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RecipeID"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
