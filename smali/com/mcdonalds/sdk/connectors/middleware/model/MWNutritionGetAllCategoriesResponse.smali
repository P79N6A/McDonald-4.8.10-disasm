.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetAllCategoriesResponse;
.super Ljava/lang/Object;
.source "MWNutritionGetAllCategoriesResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public categories:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionCategories;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "categories"
    .end annotation
.end field

.field public error:Lcom/mcdonalds/sdk/connectors/middleware/model/MWDefaultError;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "error"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
