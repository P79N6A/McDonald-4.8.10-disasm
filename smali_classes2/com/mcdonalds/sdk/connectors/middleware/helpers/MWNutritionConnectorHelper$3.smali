.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;
.super Ljava/lang/Object;
.source "MWNutritionConnectorHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->getRecipeForId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

.field final synthetic val$itemId:Ljava/lang/String;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;->val$itemId:Ljava/lang/String;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 136
    const/4 v3, 0x0

    .line 138
    .local v3, "mwMenuItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    invoke-static {v6}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$000(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)Ljava/util/Map;

    move-result-object v6

    if-nez v6, :cond_0

    .line 139
    const/4 v0, 0x1

    .line 155
    .local v0, "fetchFromNetwork":Z
    :goto_0
    if-nez v0, :cond_2

    .line 191
    :goto_1
    return-void

    .line 141
    .end local v0    # "fetchFromNetwork":Z
    :cond_0
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    invoke-static {v6}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$000(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;->val$itemId:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "mwMenuItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;
    check-cast v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;

    .line 142
    .restart local v3    # "mwMenuItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;
    if-eqz v3, :cond_1

    iget-object v6, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->recipeDetailedInfo:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;

    if-eqz v6, :cond_1

    iget-object v6, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->recipeDetailedInfo:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->externalId:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 143
    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;-><init>()V

    .line 144
    .local v2, "mwGetRecipeForIdResponse":Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;
    iget-object v6, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->recipeDetailedInfo:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;

    invoke-virtual {v2, v6}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;->setItem(Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;)V

    .line 145
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    invoke-static {v6, v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$100(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;)Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-result-object v4

    .line 146
    .local v4, "recipe":Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v6, v4, v8, v8}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 147
    const/4 v0, 0x0

    .line 148
    .restart local v0    # "fetchFromNetwork":Z
    goto :goto_0

    .line 150
    .end local v0    # "fetchFromNetwork":Z
    .end local v2    # "mwGetRecipeForIdResponse":Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;
    .end local v4    # "recipe":Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "fetchFromNetwork":Z
    goto :goto_0

    .line 159
    :cond_2
    new-instance v5, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetItemDetailsRequest;

    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;->val$itemId:Ljava/lang/String;

    const-string v7, "0"

    invoke-direct {v5, v6, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetItemDetailsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .local v5, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetItemDetailsRequest;
    move-object v1, v3

    .line 164
    .local v1, "menuItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    invoke-static {v6}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$300(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v6

    new-instance v7, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3$1;

    invoke-direct {v7, p0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3$1;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;)V

    invoke-virtual {v6, v5, v7}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_1
.end method
