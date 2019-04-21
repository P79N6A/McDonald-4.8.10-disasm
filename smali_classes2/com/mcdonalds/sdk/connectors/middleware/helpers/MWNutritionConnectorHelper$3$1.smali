.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3$1;
.super Ljava/lang/Object;
.source "MWNutritionConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;->run()V
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
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;

.field final synthetic val$menuItem:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3$1;->this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3$1;->val$menuItem:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 7
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v6, 0x0

    .line 167
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;->getItem()Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;->getItem()Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;

    move-result-object v2

    iget-object v2, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->externalId:Ljava/lang/String;

    if-eqz v2, :cond_1

    if-nez p3, :cond_1

    .line 168
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3$1;->val$menuItem:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;

    if-eqz v2, :cond_0

    .line 170
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3$1;->val$menuItem:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;->getItem()Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;

    move-result-object v3

    iput-object v3, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->recipeDetailedInfo:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;

    .line 174
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;->getItem()Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;

    move-result-object v0

    .line 175
    .local v0, "itemDetails":Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3$1;->val$menuItem:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;

    iget-object v2, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->carouselImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCarouselImage;

    iput-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->carouselImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCarouselImage;

    .line 176
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3$1;->val$menuItem:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;

    iget-object v2, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->itemThumbNailImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemThumbnailImage;

    iput-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->itemThumbNailImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemThumbnailImage;

    .line 177
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3$1;->val$menuItem:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;

    iget-object v2, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->itemHeroImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemHeroImage;

    iput-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->itemHeroImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemHeroImage;

    .line 179
    .end local v0    # "itemDetails":Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3$1;->this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;

    iget-object v2, v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    invoke-static {v2, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$100(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;)Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-result-object v1

    .line 181
    .local v1, "recipe":Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3$1;->this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;

    iget-object v2, v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v2, v1, p2, v6}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 189
    .end local v1    # "recipe":Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3$1;->this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;

    iget-object v2, v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$200(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/utils/Utils;->checkConnection(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 184
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3$1;->this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;

    iget-object v2, v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    new-instance v3, Lcom/mcdonalds/sdk/AsyncException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No item found with ID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3$1;->this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;

    iget-object v5, v5, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;->val$itemId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v6, p2, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 186
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3$1;->this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;

    iget-object v2, v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    new-instance v3, Lcom/mcdonalds/sdk/AsyncException;

    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3$1;->this$1:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;

    iget-object v4, v4, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    invoke-static {v4}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$200(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/mcdonalds/sdk/R$string;->connectionless_error:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v6, p2, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 164
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3$1;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
