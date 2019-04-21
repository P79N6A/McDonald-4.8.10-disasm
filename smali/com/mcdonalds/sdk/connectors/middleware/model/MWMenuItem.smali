.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;
.super Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;
.source "MWMenuItem.java"


# instance fields
.field public description:Ljava/lang/String;

.field public displayOrder:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "display_order"
    .end annotation
.end field

.field public recipeDetailedInfo:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;-><init>()V

    return-void
.end method

.method private setRecipeCategories(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)V
    .locals 3
    .param p1, "recipe"    # Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    .prologue
    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    .local v0, "allCategories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Category;>;"
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->defaultCategory:Lcom/mcdonalds/sdk/connectors/middleware/model/MWDefaultCategory;

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->defaultCategory:Lcom/mcdonalds/sdk/connectors/middleware/model/MWDefaultCategory;

    iget-object v1, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDefaultCategory;->category:Lcom/mcdonalds/sdk/connectors/middleware/model/MWDefaultCategoryCategory;

    .line 93
    .local v1, "mwCategory":Lcom/mcdonalds/sdk/connectors/middleware/model/MWDefaultCategoryCategory;
    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWDefaultCategoryCategory;->toCategory()Lcom/mcdonalds/sdk/modules/models/Category;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .end local v1    # "mwCategory":Lcom/mcdonalds/sdk/connectors/middleware/model/MWDefaultCategoryCategory;
    :cond_0
    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setCategories(Ljava/util/List;)V

    .line 100
    return-void
.end method

.method private setRecipeNutrientList(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)V
    .locals 6
    .param p1, "recipe"    # Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    .prologue
    .line 64
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->nutrientFacts:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrientFacts;

    if-nez v5, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->nutrientFacts:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrientFacts;

    iget-object v2, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrientFacts;->nutrientList:Ljava/util/List;

    .line 69
    .local v2, "mwNutrientList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;>;"
    if-eqz v2, :cond_0

    .line 73
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 74
    .local v4, "size":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 76
    .local v3, "nutrients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Nutrient;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_2

    .line 77
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;

    .line 78
    .local v1, "mwNutrient":Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;->toNutrient()Lcom/mcdonalds/sdk/modules/models/Nutrient;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v5, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;->value:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setServingSizeValue(Ljava/lang/String;)V

    .line 81
    iget-object v5, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;->unit:Ljava/lang/String;

    invoke-virtual {p1, v5}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setServingSizeUnit(Ljava/lang/String;)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 84
    .end local v1    # "mwNutrient":Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;
    :cond_2
    invoke-virtual {p1, v3}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setNutrients(Ljava/util/List;)V

    goto :goto_0
.end method

.method public static toMWRecipeForIdItem(Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;
    .locals 2
    .param p0, "item"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;

    .prologue
    .line 25
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;-><init>()V

    .line 26
    .local v0, "recipeForIdItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->carouselImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCarouselImage;

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->carouselImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCarouselImage;

    .line 27
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->itemThumbNailImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemThumbnailImage;

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->itemThumbNailImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemThumbnailImage;

    .line 28
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->defaultCategory:Lcom/mcdonalds/sdk/connectors/middleware/model/MWDefaultCategory;

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->defaultCategory:Lcom/mcdonalds/sdk/connectors/middleware/model/MWDefaultCategory;

    .line 29
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->name:Ljava/lang/String;

    .line 30
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->id:Ljava/lang/String;

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->id:Ljava/lang/String;

    .line 31
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->externalId:Ljava/lang/String;

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->externalId:Ljava/lang/String;

    .line 32
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->nutrientFacts:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrientFacts;

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->nutrientFacts:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrientFacts;

    .line 33
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->itemAllergen:Ljava/lang/String;

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->itemAllergen:Ljava/lang/String;

    .line 34
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->itemAdditionalAllergen:Ljava/lang/String;

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->itemAdditionalAllergen:Ljava/lang/String;

    .line 36
    return-object v0
.end method


# virtual methods
.method public toRecipe(Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    .locals 3
    .param p1, "baseImagePath"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;->toRecipe(Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-result-object v1

    .line 43
    .local v1, "recipe":Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setName(Ljava/lang/String;)V

    .line 44
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->marketingName:Ljava/lang/String;

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/utils/Utils;->cleanToMarketName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setMarketingName(Ljava/lang/String;)V

    .line 45
    iget v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->displayOrder:I

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setDisplayOrder(I)V

    .line 46
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->menuItemNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setMenuItemNumber(Ljava/lang/String;)V

    .line 47
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setNeedsFullDetails(Z)V

    .line 50
    :try_start_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->externalId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 51
    .local v0, "externalIdVal":I
    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setExternalId(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v0    # "externalIdVal":I
    :goto_0
    invoke-direct {p0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->setRecipeNutrientList(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)V

    .line 57
    invoke-direct {p0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->setRecipeCategories(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)V

    .line 58
    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->setRelationTypeToCategory(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)V

    .line 60
    return-object v1

    .line 52
    :catch_0
    move-exception v2

    goto :goto_0
.end method
