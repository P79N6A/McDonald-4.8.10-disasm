.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6;
.super Ljava/lang/Object;
.source "MWNutritionConnectorHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->getAllRecipes(Lcom/mcdonalds/sdk/AsyncListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;

.field final synthetic val$networkTask:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Ljava/lang/Runnable;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6;->val$networkTask:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 245
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    const-string v2, "MW_ALL_RECIPES"

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$600(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getObjectFromCache(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;

    invoke-static {v1, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$502(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;)Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;

    .line 247
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$500(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;

    move-result-object v0

    if-nez v0, :cond_0

    .line 249
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6;->val$networkTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    const-string v2, "MW_RECIPE_MAP_KEY"

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$700(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getObjectFromCache(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$002(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Ljava/util/Map;)Ljava/util/Map;

    .line 254
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    const-string v2, "MW_RECIPE_EXTERNAL_MAP_KEY"

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$700(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getObjectFromCache(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->access$802(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Ljava/util/Map;)Ljava/util/Map;

    .line 256
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6$1;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
