.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8;
.super Ljava/lang/Object;
.source "MWNutritionConnectorHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->onMWGetAllRecipesResponse(Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$response:Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;

.field final synthetic val$token:Lcom/mcdonalds/sdk/AsyncToken;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8;->val$response:Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    iput-object p4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8;->val$token:Lcom/mcdonalds/sdk/AsyncToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 295
    const/4 v1, 0x0

    .line 297
    .local v1, "recipes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;"
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8;->val$response:Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8;->val$response:Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;->hasFullMenuItemList()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$002(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Ljava/util/Map;)Ljava/util/Map;

    .line 300
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$802(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Ljava/util/Map;)Ljava/util/Map;

    .line 302
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8;->val$response:Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->processDepMenuItems(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;)Ljava/util/List;

    move-result-object v1

    .line 304
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v2

    const-string v3, "MW_ALL_RECIPES"

    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8;->val$response:Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    invoke-static {v5}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$1200(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)J

    move-result-wide v6

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->addObjectToCache(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 305
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v2

    const-string v3, "MW_RECIPE_MAP_KEY"

    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    invoke-static {v4}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$000(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    invoke-static {v5}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$1200(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)J

    move-result-wide v6

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->addObjectToCache(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 306
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v2

    const-string v3, "MW_RECIPE_EXTERNAL_MAP_KEY"

    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    invoke-static {v4}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$800(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)Ljava/util/Map;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    invoke-static {v5}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$1200(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)J

    move-result-wide v6

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->addObjectToCache(Ljava/lang/String;Ljava/lang/Object;J)V

    .line 309
    :cond_0
    move-object v0, v1

    .line 310
    .local v0, "finalRecipes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;"
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8$1;

    invoke-direct {v3, p0, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8$1;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 317
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$902(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Z)Z

    .line 318
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$1000(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)V

    .line 319
    return-void
.end method
