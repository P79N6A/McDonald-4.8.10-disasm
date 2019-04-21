.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponent;
.super Ljava/lang/Object;
.source "MWRecipeComponent.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public additionalIngredient:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product_additional_text_ingredient_statement"
    .end annotation
.end field

.field public displayOrder:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "display_order"
    .end annotation
.end field

.field public externalId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "external_id"
    .end annotation
.end field

.field public ingredientStatement:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ingredient_statement"
    .end annotation
.end field

.field public ingredients:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeIngredients;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ingredients"
    .end annotation
.end field

.field public isDefault:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_default"
    .end annotation
.end field

.field public isTestProduct:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_test_product"
    .end annotation
.end field

.field public productAdditionalAllergen:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product_additional_allergen"
    .end annotation
.end field

.field public productAllergen:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product_allergen"
    .end annotation
.end field

.field public productId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product_id"
    .end annotation
.end field

.field public productMarketingName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product_marketing_name"
    .end annotation
.end field

.field public productName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product_name"
    .end annotation
.end field

.field public productType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "product_type"
    .end annotation
.end field

.field public recipeComponentId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
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
.method public toRecipeComponent()Lcom/mcdonalds/sdk/modules/models/RecipeComponent;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;-><init>()V

    .line 48
    .local v0, "recipeComponent":Lcom/mcdonalds/sdk/modules/models/RecipeComponent;
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponent;->displayOrder:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->setDisplayOrder(I)V

    .line 49
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponent;->ingredientStatement:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->setIngredientStatement(Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponent;->productName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->setProductName(Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponent;->productAllergen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->setProductAllergen(Ljava/lang/String;)V

    .line 52
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponent;->productAdditionalAllergen:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->setProductAdditionalAllergen(Ljava/lang/String;)V

    .line 53
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponent;->additionalIngredient:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->setAdditionalIngredient(Ljava/lang/String;)V

    .line 55
    return-object v0
.end method
