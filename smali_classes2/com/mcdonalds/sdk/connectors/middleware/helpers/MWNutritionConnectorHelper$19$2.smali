.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19$2;
.super Ljava/lang/Object;
.source "MWNutritionConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19;->run()V
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
        "Lcom/mcdonalds/sdk/connectors/middleware/model/MWGetItemByExternalIdResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19;

.field final synthetic val$menuItem:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19;

    .prologue
    .line 538
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19$2;->this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19$2;->val$menuItem:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/model/MWGetItemByExternalIdResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWGetItemByExternalIdResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v3, 0x0

    .line 541
    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWGetItemByExternalIdResponse;->item:Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;

    if-eqz v1, :cond_2

    if-nez p3, :cond_2

    .line 542
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19$2;->this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19;

    iget-object v1, v1, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    iget-object v2, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWGetItemByExternalIdResponse;->item:Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;

    invoke-static {v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$100(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;)Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-result-object v0

    .line 543
    .local v0, "recipe":Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getExternalId()I

    move-result v1

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19$2;->this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19;

    iget-object v2, v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19;->val$externalId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 545
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19$2;->val$menuItem:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;

    if-eqz v1, :cond_0

    .line 546
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19$2;->val$menuItem:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;

    iget-object v2, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWGetItemByExternalIdResponse;->item:Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;->getItem()Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;

    move-result-object v2

    iput-object v2, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->recipeDetailedInfo:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;

    .line 549
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19$2;->this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19;

    iget-object v1, v1, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v1, v0, p2, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 557
    .end local v0    # "recipe":Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    :goto_0
    return-void

    .line 551
    .restart local v0    # "recipe":Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19$2;->this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19;

    iget-object v1, v1, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v1, v3, p2, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 555
    .end local v0    # "recipe":Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    :cond_2
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19$2;->this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19;

    iget-object v1, v1, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v1, v3, p2, p3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 538
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWGetItemByExternalIdResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19$2;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/model/MWGetItemByExternalIdResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
