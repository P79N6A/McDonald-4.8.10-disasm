.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetCategoryDetailsResponse;
.super Ljava/lang/Object;
.source "MWNutritionGetCategoryDetailsResponse.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public categoryDetailsCategory:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryDetailsCategory;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "category"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCategoryDetailsCategory()Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryDetailsCategory;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetCategoryDetailsResponse;->categoryDetailsCategory:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryDetailsCategory;

    return-object v0
.end method

.method public setCategoryDetailsCategory(Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryDetailsCategory;)V
    .locals 0
    .param p1, "categoryDetailsCategory"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryDetailsCategory;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetCategoryDetailsResponse;->categoryDetailsCategory:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryDetailsCategory;

    .line 21
    return-void
.end method
