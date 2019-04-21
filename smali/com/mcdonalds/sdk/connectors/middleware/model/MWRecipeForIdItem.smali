.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;
.super Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;
.source "MWRecipeForIdItem.java"


# static fields
.field private static final SERVING_SIZE_NUTRIENT_NAME:Ljava/lang/String; = "Serving Size"

.field private static final SERVING_SIZE_NUTRIENT_NAME_CANADA_FR:Ljava/lang/String; = "Portion"

.field private static final UNKNOWN_PRODUCT_ID:Ljava/lang/Integer;


# instance fields
.field public additionalIngredientStatement:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "item_additional_text_ingredient_statement"
    .end annotation
.end field

.field public allergens:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeAllergenItem;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "allergens"
    .end annotation
.end field

.field public ingredientStatement:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "item_ingredient_statement"
    .end annotation
.end field

.field public itemComments:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "item_comments"
    .end annotation
.end field

.field public itemDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field public itemId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "item_id"
    .end annotation
.end field

.field public keywords:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "keywords"
    .end annotation
.end field

.field public recipeComponents:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponents;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "components"
    .end annotation
.end field

.field public text:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "text"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->UNKNOWN_PRODUCT_ID:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;-><init>()V

    return-void
.end method

.method private setRecipeAllergens(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)V
    .locals 5
    .param p1, "recipe"    # Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    .prologue
    .line 137
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->allergens:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeAllergenItem;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->allergens:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeAllergenItem;

    iget-object v3, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeAllergenItem;->allergenList:Ljava/util/List;

    invoke-static {v3}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 139
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v2, "recipeAllergens":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Allergen;>;"
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->allergens:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeAllergenItem;

    iget-object v3, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeAllergenItem;->allergenList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAllergen;

    .line 141
    .local v1, "mwAllergen":Lcom/mcdonalds/sdk/connectors/middleware/model/MWAllergen;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAllergen;->toAllergen()Lcom/mcdonalds/sdk/modules/models/Allergen;

    move-result-object v0

    .line 142
    .local v0, "allergen":Lcom/mcdonalds/sdk/modules/models/Allergen;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    .end local v0    # "allergen":Lcom/mcdonalds/sdk/modules/models/Allergen;
    .end local v1    # "mwAllergen":Lcom/mcdonalds/sdk/connectors/middleware/model/MWAllergen;
    :cond_0
    invoke-virtual {p1, v2}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setAllergens(Ljava/util/List;)V

    .line 149
    .end local v2    # "recipeAllergens":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Allergen;>;"
    :goto_1
    return-void

    .line 146
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->itemAllergen:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setAllergensString(Ljava/lang/String;)V

    .line 147
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->itemAdditionalAllergen:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setAdditionalAllergensString(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setRecipeComponents(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)V
    .locals 7
    .param p1, "recipe"    # Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    .prologue
    .line 108
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->recipeComponents:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponents;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->recipeComponents:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponents;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponents;->recipeComponentList:Ljava/util/List;

    if-eqz v6, :cond_1

    .line 110
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->recipeComponents:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponents;

    iget-object v3, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponents;->recipeComponentList:Ljava/util/List;

    .line 111
    .local v3, "mwRecipeComponents":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponent;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 112
    .local v5, "size":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .local v0, "components":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/RecipeComponent;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 115
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponent;

    .line 117
    .local v2, "mwRecipeComponent":Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponent;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponent;->toRecipeComponent()Lcom/mcdonalds/sdk/modules/models/RecipeComponent;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 120
    .end local v2    # "mwRecipeComponent":Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponent;
    :cond_0
    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setComponents(Ljava/util/List;)V

    .line 133
    .end local v1    # "i":I
    .end local v3    # "mwRecipeComponents":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponent;>;"
    .end local v5    # "size":I
    :goto_1
    return-void

    .line 122
    .end local v0    # "components":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/RecipeComponent;>;"
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v6, 0x1

    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    .restart local v0    # "components":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/RecipeComponent;>;"
    new-instance v4, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;-><init>()V

    .line 124
    .local v4, "recipeComponent":Lcom/mcdonalds/sdk/modules/models/RecipeComponent;
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->itemAllergen:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->setProductAllergen(Ljava/lang/String;)V

    .line 125
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->itemAdditionalAllergen:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->setProductAdditionalAllergen(Ljava/lang/String;)V

    .line 126
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->additionalIngredientStatement:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->setAdditionalIngredient(Ljava/lang/String;)V

    .line 127
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->ingredientStatement:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->setIngredientStatement(Ljava/lang/String;)V

    .line 128
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setComponents(Ljava/util/List;)V

    .line 130
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->additionalIngredientStatement:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setAdditionalIngredientStatement(Ljava/lang/String;)V

    .line 131
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->ingredientStatement:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setComponentsString(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setRecipeNutrientList(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)V
    .locals 6
    .param p1, "recipe"    # Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    .prologue
    .line 82
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v2, "nutrientsList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Nutrient;>;"
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->nutrientFacts:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrientFacts;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->nutrientFacts:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrientFacts;

    iget-object v4, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrientFacts;->nutrientList:Ljava/util/List;

    if-eqz v4, :cond_2

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->nutrientFacts:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrientFacts;

    iget-object v4, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrientFacts;->nutrientList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 86
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->nutrientFacts:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrientFacts;

    iget-object v4, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrientFacts;->nutrientList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;

    .line 87
    .local v1, "mwNutrient":Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;
    iget-object v4, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;->name:Ljava/lang/String;

    const-string v5, "Serving Size"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 88
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getServingSizeValue()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 89
    iget-object v4, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;->value:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setServingSizeValue(Ljava/lang/String;)V

    .line 90
    iget-object v4, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;->unit:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setServingSizeUnit(Ljava/lang/String;)V

    .line 85
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;->toNutrient()Lcom/mcdonalds/sdk/modules/models/Nutrient;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 98
    .end local v0    # "i":I
    .end local v1    # "mwNutrient":Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;
    .end local v3    # "size":I
    :cond_2
    invoke-virtual {p1, v2}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setNutrients(Ljava/util/List;)V

    .line 99
    return-void
.end method


# virtual methods
.method public toRecipe(Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    .locals 5
    .param p1, "baseImagePath"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeItem;->toRecipe(Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-result-object v1

    .line 54
    .local v1, "product":Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->externalId:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 55
    const-string v3, "\\D"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->externalId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 56
    .local v0, "mt":Ljava/util/regex/Matcher;
    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->externalId:Ljava/lang/String;

    .line 59
    .end local v0    # "mt":Ljava/util/regex/Matcher;
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->externalId:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setExternalId(I)V

    .line 60
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->marketingName:Ljava/lang/String;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/utils/Utils;->cleanToMarketName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setName(Ljava/lang/String;)V

    .line 61
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->itemDescription:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setDescription(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->setRelationTypeToCategory(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)V

    .line 65
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "interface.nutritionalInfo.useMetricSystem"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v2

    .line 66
    .local v2, "useMetric":Z
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->servingSizeMetric:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;

    if-eqz v3, :cond_2

    .line 67
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->servingSizeMetric:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;

    iget-object v3, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;->value:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setServingSizeValue(Ljava/lang/String;)V

    .line 68
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->servingSizeMetric:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;

    iget-object v3, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;->unit:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setServingSizeUnit(Ljava/lang/String;)V

    .line 74
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->setRecipeNutrientList(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)V

    .line 75
    invoke-direct {p0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->setRecipeComponents(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)V

    .line 76
    invoke-direct {p0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->setRecipeAllergens(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)V

    .line 78
    return-object v1

    .line 69
    :cond_2
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->servingSizeImperial:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;

    if-eqz v3, :cond_1

    .line 70
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->servingSizeImperial:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;

    iget-object v3, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;->value:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setServingSizeValue(Ljava/lang/String;)V

    .line 71
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->servingSizeImperial:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;

    iget-object v3, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutrient;->unit:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setServingSizeUnit(Ljava/lang/String;)V

    goto :goto_0
.end method
