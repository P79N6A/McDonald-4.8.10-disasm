.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$13;
.super Ljava/lang/Object;
.source "MWNutritionConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->getRecipesForCategory(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetCategoryDetailsResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    .prologue
    .line 394
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$13;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$13;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetCategoryDetailsResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 7
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetCategoryDetailsResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 397
    const/4 v3, 0x0

    .line 398
    .local v3, "recipes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;"
    if-nez p3, :cond_0

    .line 399
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "recipes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .restart local v3    # "recipes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;"
    if-eqz p1, :cond_0

    iget-object v5, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetCategoryDetailsResponse;->categoryDetailsCategory:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryDetailsCategory;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetCategoryDetailsResponse;->categoryDetailsCategory:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryDetailsCategory;

    iget-object v5, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryDetailsCategory;->categoryItems:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryItems;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetCategoryDetailsResponse;->categoryDetailsCategory:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryDetailsCategory;

    iget-object v5, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryDetailsCategory;->categoryItems:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryItems;

    iget-object v5, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryItems;->categoryItemList:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 401
    iget-object v5, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetCategoryDetailsResponse;->categoryDetailsCategory:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryDetailsCategory;

    iget-object v5, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryDetailsCategory;->categoryItems:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryItems;

    iget-object v0, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryItems;->categoryItemList:Ljava/util/List;

    .line 402
    .local v0, "categoryItemList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 404
    .local v4, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 405
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;

    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$13;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    invoke-static {v6}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$1400(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->toRecipe(Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-result-object v2

    .line 406
    .local v2, "recipe":Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    iget-object v5, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetCategoryDetailsResponse;->categoryDetailsCategory:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryDetailsCategory;

    iget-object v5, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryDetailsCategory;->categoryMarketingName:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->setCategoryMarketingName(Ljava/lang/String;)V

    .line 407
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 404
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 411
    .end local v0    # "categoryItemList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;>;"
    .end local v1    # "i":I
    .end local v2    # "recipe":Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    .end local v4    # "size":I
    :cond_0
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$13;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v5, v3, p2, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 412
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 394
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetCategoryDetailsResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$13;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetCategoryDetailsResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
