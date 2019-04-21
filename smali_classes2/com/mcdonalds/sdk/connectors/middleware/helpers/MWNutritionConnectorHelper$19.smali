.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19;
.super Ljava/lang/Object;
.source "MWNutritionConnectorHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->commonRecipeForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

.field final synthetic val$externalId:Ljava/lang/String;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    .prologue
    .line 497
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19;->val$externalId:Ljava/lang/String;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 501
    const/4 v0, 0x0

    .line 503
    .local v0, "fetchFromNetwork":Z
    const/4 v3, 0x0

    .line 504
    .local v3, "mwMenuItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    invoke-static {v6}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$800(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)Ljava/util/Map;

    move-result-object v6

    if-nez v6, :cond_1

    .line 505
    const/4 v0, 0x1

    .line 532
    :goto_0
    if-eqz v0, :cond_0

    .line 533
    new-instance v5, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetItemListOnExternalIDRequest;

    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19;->val$externalId:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetItemListOnExternalIDRequest;-><init>(Ljava/lang/String;)V

    .line 537
    .local v5, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetItemListOnExternalIDRequest;
    move-object v1, v3

    .line 538
    .local v1, "menuItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    invoke-static {v6}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$300(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v6

    new-instance v7, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19$2;

    invoke-direct {v7, p0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19$2;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;)V

    invoke-virtual {v6, v5, v7}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 560
    .end local v1    # "menuItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;
    .end local v5    # "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetItemListOnExternalIDRequest;
    :cond_0
    return-void

    .line 507
    :cond_1
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    invoke-static {v6}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$800(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)Ljava/util/Map;

    move-result-object v6

    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19;->val$externalId:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "mwMenuItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;
    check-cast v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;

    .line 508
    .restart local v3    # "mwMenuItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;
    if-eqz v3, :cond_3

    iget-object v6, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->recipeDetailedInfo:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;

    if-eqz v6, :cond_3

    .line 509
    iget-object v6, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->externalId:Ljava/lang/String;

    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19;->val$externalId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 510
    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;-><init>()V

    .line 511
    .local v2, "mwGetRecipeForIdResponse":Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;
    iget-object v6, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->recipeDetailedInfo:Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;

    invoke-virtual {v2, v6}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;->setItem(Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;)V

    .line 512
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    invoke-static {v6, v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$100(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;)Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-result-object v4

    .line 513
    .local v4, "recipe":Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v6, v4, v8, v8}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 514
    const/4 v0, 0x0

    .line 515
    goto :goto_0

    .line 518
    .end local v2    # "mwGetRecipeForIdResponse":Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;
    .end local v4    # "recipe":Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    :cond_2
    new-instance v6, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v7, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19$1;

    invoke-direct {v7, p0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19$1;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 527
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
