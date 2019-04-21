.class public Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;
.super Ljava/lang/Object;
.source "MWNutritionConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/connectors/NutritionConnector;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$GetAllRecipesFromCacheTasks;
    }
.end annotation


# static fields
.field public static final CORE_KEY:Ljava/lang/String; = "Core"

.field public static final CURRENT_LANGUAGE:Ljava/lang/String; = "CURRENT_LANGUAGE"

.field private static final DEFAULT_CACHE_DAY_COUNT:J = 0x7L

.field public static final MW_CATEGORY_RECIPE_RESPONSE_KEY:Ljava/lang/String; = "MW_CATEGORY_RECIPE_RESPONSE_KEY"

.field public static final MW_CATEGORY_RESPONSE_KEY:Ljava/lang/String; = "MW_CATEGORY_RESPONSE_KEY"

.field public static final MW_RECIPES_KEY:Ljava/lang/String; = "MW_ALL_RECIPES"

.field public static final MW_RECIPE_EXTERNAL_MAP_KEY:Ljava/lang/String; = "MW_RECIPE_EXTERNAL_MAP_KEY"

.field public static final MW_RECIPE_MAP_KEY:Ljava/lang/String; = "MW_RECIPE_MAP_KEY"

.field private static final REFRESH_CACHE_DAY_COUNT_KEY:Ljava/lang/String; = "modules.nutritionInfo.refreshCacheDayCount"


# instance fields
.field private mAllRecipesResponseCache:Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;

.field private mBaseImagePath:Ljava/lang/String;

.field private mCatalogOperationInProgress:Z

.field private mContext:Landroid/content/Context;

.field private mDelayedTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mExternalMenuItemCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mMenuItemCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

.field private mapStringMWMenuItemType:Ljava/lang/reflect/Type;

.field private mwGetAllRecipesResponseType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;Landroid/content/Context;)V
    .locals 2
    .param p1, "sharedData"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mCatalogOperationInProgress:Z

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mDelayedTasks:Ljava/util/List;

    .line 87
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$1;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)V

    .line 88
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mwGetAllRecipesResponseType:Ljava/lang/reflect/Type;

    .line 90
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$2;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)V

    .line 91
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mapStringMWMenuItemType:Ljava/lang/reflect/Type;

    .line 94
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mHandler:Landroid/os/Handler;

    .line 96
    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mContext:Landroid/content/Context;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mMenuItemCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mMenuItemCache:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;)Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->processRecipeForId(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;)Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->runDelayedRecipeTasks()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/AsyncListener;
    .param p2, "x2"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;
    .param p3, "x3"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p4, "x4"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->onMWGetAllRecipesResponse(Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)J
    .locals 2
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->getNutritionCacheExpirationInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetCategoryDetailsResponse;Lcom/mcdonalds/sdk/AsyncToken;Ljava/util/List;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetCategoryDetailsResponse;
    .param p2, "x2"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # Ljava/util/List;
    .param p5, "x5"    # Lcom/mcdonalds/sdk/AsyncListener;

    .prologue
    .line 56
    invoke-direct/range {p0 .. p5}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->processRecipesForCategory(Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetCategoryDetailsResponse;Lcom/mcdonalds/sdk/AsyncToken;Ljava/util/List;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mBaseImagePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mDelayedTasks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/AsyncListener;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->getAllRecipesFromNetwork(Lcom/mcdonalds/sdk/AsyncListener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mAllRecipesResponseCache:Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;)Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mAllRecipesResponseCache:Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mwGetAllRecipesResponseType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mapStringMWMenuItemType:Ljava/lang/reflect/Type;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mExternalMenuItemCache:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mExternalMenuItemCache:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$902(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mCatalogOperationInProgress:Z

    return p1
.end method

.method private commonRecipeForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 1
    .param p1, "externalId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 497
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;"
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19;

    invoke-direct {v0, p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$19;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 563
    .local v0, "task":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->runRecipeTask(Ljava/lang/Runnable;)V

    .line 564
    return-void
.end method

.method private getAllRecipesFromNetwork(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;>;"
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetAllItemsRequest;

    const-string v1, "1"

    const-string v2, "true"

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetAllItemsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    .local v0, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetAllItemsRequest;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$7;

    invoke-direct {v2, p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$7;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 281
    return-void
.end method

.method private getNutritionCacheExpirationInterval()J
    .locals 6

    .prologue
    .line 869
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "modules.nutritionInfo.refreshCacheDayCount"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 870
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "modules.nutritionInfo.refreshCacheDayCount"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getLongForKey(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 874
    .local v0, "expirationInterval":J
    :goto_0
    return-wide v0

    .line 872
    .end local v0    # "expirationInterval":J
    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x7

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .restart local v0    # "expirationInterval":J
    goto :goto_0
.end method

.method private onMWGetAllRecipesResponse(Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p2, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;
    .param p3, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p4, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;>;",
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 287
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;>;"
    if-eqz p4, :cond_1

    .line 288
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$GetAllRecipesFromCacheTasks;

    invoke-direct {v0, p0, p1, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$GetAllRecipesFromCacheTasks;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$GetAllRecipesFromCacheTasks;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 289
    :goto_0
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->runDelayedRecipeTasks()V

    .line 321
    :goto_1
    return-void

    .line 288
    :cond_0
    check-cast v0, Landroid/os/AsyncTask;

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 293
    :cond_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$8;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 320
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method

.method private processRecipeForId(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;)Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    .locals 2
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;

    .prologue
    .line 567
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetRecipeForIdResponse;->getItem()Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;

    move-result-object v0

    .line 569
    .local v0, "mwMenuItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mBaseImagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeForIdItem;->toRecipe(Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-result-object v1

    return-object v1
.end method

.method private processRecipes(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 638
    .local p1, "menuItemList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 639
    .local v4, "recipes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;"
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 640
    .local v5, "relationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 642
    .local v0, "defaultMenuItems":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;>;"
    invoke-virtual {p0, p1, v5, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->processRelations(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V

    .line 644
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mMenuItemCache:Ljava/util/Map;

    if-nez v7, :cond_0

    .line 645
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mMenuItemCache:Ljava/util/Map;

    .line 648
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    .local v6, "size":I
    :goto_0
    if-ge v1, v6, :cond_4

    .line 649
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;

    .line 650
    .local v2, "mwMenuItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;
    if-nez v2, :cond_2

    .line 648
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 654
    :cond_2
    invoke-virtual {p0, v2, v0, v5}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->fixMWMenuItemImages(Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;Ljava/util/Map;Ljava/util/Map;)V

    .line 656
    iget-object v7, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->itemRelationTypes:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;

    if-eqz v7, :cond_3

    iget-object v7, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->itemRelationTypes:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;->hasMasterChild()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->id:Ljava/lang/String;

    .line 657
    invoke-interface {v0, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 661
    :cond_3
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mBaseImagePath:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->toRecipe(Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-result-object v3

    .line 662
    .local v3, "recipe":Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mMenuItemCache:Ljava/util/Map;

    iget-object v8, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->id:Ljava/lang/String;

    invoke-interface {v7, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 668
    .end local v2    # "mwMenuItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;
    .end local v3    # "recipe":Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    :cond_4
    return-object v4
.end method

.method private processRecipesForCategory(Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetCategoryDetailsResponse;Lcom/mcdonalds/sdk/AsyncToken;Ljava/util/List;Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 4
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetCategoryDetailsResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetCategoryDetailsResponse;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 476
    .local p3, "categoryRecipeList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;"
    .local p4, "mwMenuItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;>;"
    .local p5, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;>;"
    iget-object v0, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetCategoryDetailsResponse;->categoryDetailsCategory:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryDetailsCategory;

    .line 478
    .local v0, "details":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryDetailsCategory;
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryDetailsCategory;->categoryItems:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryItems;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryDetailsCategory;->categoryItems:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryItems;

    iget-object v2, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryItems;->categoryItemList:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 482
    iget-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryDetailsCategory;->categoryItems:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryItems;

    iget-object v2, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryItems;->categoryItemList:Ljava/util/List;

    invoke-interface {p4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 484
    invoke-direct {p0, p4}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->processRecipes(Ljava/util/List;)Ljava/util/List;

    move-result-object p3

    .line 485
    const/4 v2, 0x0

    invoke-interface {p5, p3, p2, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 494
    :goto_0
    return-void

    .line 489
    :cond_0
    if-eqz v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No category details for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryDetailsCategory;->categoryId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, "message":Ljava/lang/String;
    :goto_1
    new-instance v2, Lcom/mcdonalds/sdk/AsyncException;

    invoke-direct {v2, v1}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-interface {p5, p3, p2, v2}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 489
    .end local v1    # "message":Ljava/lang/String;
    :cond_1
    const-string v1, "No category details"

    goto :goto_1
.end method

.method private refreshCache()V
    .locals 3

    .prologue
    .line 199
    :try_start_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    const-string v1, "MW_RECIPE_MAP_KEY"

    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mMenuItemCache:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->updateObjectInCache(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    :goto_0
    return-void

    .line 200
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private runDelayedRecipeTasks()V
    .locals 2

    .prologue
    .line 851
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$20;

    invoke-direct {v1, p0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$20;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 865
    return-void
.end method

.method private runRecipeTask(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "recipeTask"    # Ljava/lang/Runnable;

    .prologue
    .line 843
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mCatalogOperationInProgress:Z

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mDelayedTasks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 848
    :goto_0
    return-void

    .line 846
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method protected findDefault(Ljava/util/Map;Ljava/util/Map;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;)Ljava/lang/String;
    .locals 8
    .param p3, "mwMenuItem"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;
    .param p4, "mwMenuItemRelationType"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;",
            ">;",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "relationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p2, "defaultMenuItems":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;>;"
    const/4 v6, 0x0

    .line 724
    if-nez p4, :cond_1

    move-object v0, v6

    .line 749
    :cond_0
    :goto_0
    return-object v0

    .line 728
    :cond_1
    iget-object v2, p4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;->menuItemRelatedItems:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItems;

    .line 729
    .local v2, "itemRelatedItems":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItems;
    if-nez v2, :cond_2

    move-object v0, v6

    .line 730
    goto :goto_0

    .line 733
    :cond_2
    iget-object v3, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItems;->menuItemRelatedItemList:Ljava/util/List;

    .line 734
    .local v3, "menuItemRelatedItemList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    move-object v0, v6

    .line 735
    goto :goto_0

    .line 738
    :cond_4
    const/4 v0, 0x0

    .line 739
    .local v0, "defaultId":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .local v5, "size":I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 740
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;

    .line 742
    .local v4, "mwMenuItemRelatedItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;
    iget-object v7, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;->isDefault:Ljava/lang/Boolean;

    if-eqz v7, :cond_5

    iget-object v7, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;->isDefault:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 743
    iget-object v0, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;->id:Ljava/lang/String;

    .line 744
    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    invoke-interface {p1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected findDefaultItem(Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;Ljava/util/Map;Ljava/util/Map;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;
    .locals 7
    .param p1, "mwMenuItem"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;"
        }
    .end annotation

    .prologue
    .line 617
    .local p2, "defaultMenuItems":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;>;"
    .local p3, "relationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 618
    .local v0, "defaultId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 622
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 623
    .local v3, "relationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v3}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 624
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 625
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 627
    .local v2, "relationId":Ljava/lang/String;
    iget-object v6, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->id:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 628
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;

    .line 634
    .end local v0    # "defaultId":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "relationId":Ljava/lang/String;
    .end local v3    # "relationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "size":I
    :goto_1
    return-object v5

    .line 624
    .restart local v0    # "defaultId":Ljava/lang/String;
    .restart local v1    # "i":I
    .restart local v2    # "relationId":Ljava/lang/String;
    .restart local v3    # "relationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "size":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 634
    .end local v0    # "defaultId":Ljava/lang/String;
    .end local v1    # "i":I
    .end local v2    # "relationId":Ljava/lang/String;
    .end local v3    # "relationIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "size":I
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected fixMWMenuItemImages(Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .param p1, "mwMenuItem"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "defaultMenuItems":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;>;"
    .local p3, "relationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v3, 0x0

    .line 675
    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->findDefaultItem(Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;Ljava/util/Map;Ljava/util/Map;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;

    move-result-object v1

    .line 676
    .local v1, "parentItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;
    if-nez v1, :cond_1

    .line 705
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    invoke-virtual {p0, v1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->findDefaultItem(Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;Ljava/util/Map;Ljava/util/Map;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;

    move-result-object v0

    .line 683
    .local v0, "grandParentItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;
    iget-object v2, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->carouselImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCarouselImage;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->carouselImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCarouselImage;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCarouselImage;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 684
    :cond_2
    iget-object v4, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->carouselImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCarouselImage;

    if-eqz v0, :cond_8

    iget-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->carouselImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCarouselImage;

    :goto_1
    invoke-virtual {p0, v4, v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->getMWMenuItemImage(Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemImageBase;Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemImageBase;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemImageBase;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCarouselImage;

    iput-object v2, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->carouselImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCarouselImage;

    .line 691
    :cond_3
    iget-object v2, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->itemThumbNailImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemThumbnailImage;

    if-eqz v2, :cond_4

    iget-object v2, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->itemThumbNailImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemThumbnailImage;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemThumbnailImage;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 692
    :cond_4
    iget-object v4, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->itemThumbNailImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemThumbnailImage;

    if-eqz v0, :cond_9

    iget-object v2, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->itemThumbNailImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemThumbnailImage;

    :goto_2
    invoke-virtual {p0, v4, v2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->getMWMenuItemImage(Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemImageBase;Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemImageBase;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemImageBase;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemThumbnailImage;

    iput-object v2, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->itemThumbNailImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemThumbnailImage;

    .line 699
    :cond_5
    iget-object v2, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->itemHeroImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemHeroImage;

    if-eqz v2, :cond_6

    iget-object v2, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->itemHeroImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemHeroImage;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemHeroImage;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 700
    :cond_6
    iget-object v2, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->itemHeroImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemHeroImage;

    if-eqz v0, :cond_7

    iget-object v3, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->itemHeroImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemHeroImage;

    :cond_7
    invoke-virtual {p0, v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->getMWMenuItemImage(Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemImageBase;Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemImageBase;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemImageBase;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemHeroImage;

    iput-object v2, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->itemHeroImage:Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemHeroImage;

    goto :goto_0

    :cond_8
    move-object v2, v3

    .line 684
    goto :goto_1

    :cond_9
    move-object v2, v3

    .line 692
    goto :goto_2
.end method

.method public getAllCategories(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 420
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Category;>;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v7, "getAllCategories"

    invoke-direct {v0, v7}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 422
    .local v0, "asyncToken":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v7, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$14;

    invoke-direct {v7, p0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$14;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)V

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$14;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 423
    .local v6, "type":Ljava/lang/reflect/Type;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v7

    const-string v8, "MW_CATEGORY_RESPONSE_KEY"

    invoke-virtual {v7, v8, v6}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getObjectFromCache(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetAllCategoriesResponse;

    .line 425
    .local v1, "cacheResponse":Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetAllCategoriesResponse;
    new-instance v7, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$15;

    invoke-direct {v7, p0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$15;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)V

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$15;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 426
    .local v4, "languageType":Ljava/lang/reflect/Type;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v7

    const-string v8, "CURRENT_LANGUAGE"

    invoke-virtual {v7, v8, v4}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getObjectFromCache(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 427
    .local v3, "languageResponse":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v2

    .line 429
    .local v2, "currentLanguage":Ljava/lang/String;
    if-eqz v1, :cond_0

    iget-object v7, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetAllCategoriesResponse;->error:Lcom/mcdonalds/sdk/connectors/middleware/model/MWDefaultError;

    if-nez v7, :cond_0

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 431
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$16;

    invoke-direct {v8, p0, v1, p1, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$16;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetAllCategoriesResponse;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 459
    :goto_0
    return-void

    .line 440
    :cond_0
    new-instance v5, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetAllCategoriesRequest;

    const-string v7, "1"

    invoke-direct {v5, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetAllCategoriesRequest;-><init>(Ljava/lang/String;)V

    .line 442
    .local v5, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetAllCategoriesRequest;
    iget-object v7, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v7

    new-instance v8, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$17;

    invoke-direct {v8, p0, v2, p1, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$17;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/AsyncToken;)V

    invoke-virtual {v7, v5, v8}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public getAllRecipes(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 211
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;>;"
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mMenuItemCache:Ljava/util/Map;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mCatalogOperationInProgress:Z

    if-eqz v1, :cond_1

    .line 214
    :cond_0
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$4;

    invoke-direct {v1, p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$4;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-direct {p0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->runRecipeTask(Ljava/lang/Runnable;)V

    .line 268
    :goto_0
    return-void

    .line 228
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mCatalogOperationInProgress:Z

    .line 232
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$5;

    invoke-direct {v0, p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$5;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 241
    .local v0, "networkTask":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6;

    invoke-direct {v2, p0, v0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$6;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Ljava/lang/Runnable;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 267
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public getAllRecipesForCategory(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 7
    .param p1, "categoryId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 325
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;>;"
    new-instance v0, Lcom/mcdonalds/sdk/AsyncToken;

    const-string v4, "#getAllRecipesForCategory"

    invoke-direct {v0, v4}, Lcom/mcdonalds/sdk/AsyncToken;-><init>(Ljava/lang/String;)V

    .line 328
    .local v0, "asyncToken":Lcom/mcdonalds/sdk/AsyncToken;
    new-instance v3, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$9;

    invoke-direct {v3, p0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$9;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;)V

    .line 331
    .local v3, "typeToken":Lcom/google/gson/reflect/TypeToken;, "Lcom/google/gson/reflect/TypeToken<Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetCategoryDetailsResponse;>;"
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MW_CATEGORY_RECIPE_RESPONSE_KEY"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 332
    invoke-virtual {v3}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 331
    invoke-virtual {v4, v5, v6}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getObjectFromCache(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetCategoryDetailsResponse;

    .line 336
    .local v1, "cacheResponse":Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetCategoryDetailsResponse;
    if-eqz v1, :cond_0

    .line 337
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$10;

    invoke-direct {v5, p0, v1, v0, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$10;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetCategoryDetailsResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 374
    :goto_0
    return-void

    .line 353
    :cond_0
    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetCategoryDetailsRequest;

    const-string v4, "true"

    invoke-direct {v2, p1, v4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetCategoryDetailsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    .local v2, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetCategoryDetailsRequest;
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v4

    new-instance v5, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$11;

    invoke-direct {v5, p0, p1, v0, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$11;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v4, v2, v5}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
.end method

.method public getFullImagePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "itemName"    # Ljava/lang/String;

    .prologue
    .line 101
    const-string v1, ""

    .line 102
    .local v1, "imageName":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 103
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 104
    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 105
    .local v2, "parsingImageName":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 107
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-static {v5, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 112
    :goto_1
    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    if-eq v0, v4, :cond_0

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :catch_0
    move-exception v3

    .line 109
    .local v3, "uee":Ljava/io/UnsupportedEncodingException;
    const-string v4, "MWNutritionConnectorHelper"

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mcdonalds/sdk/services/log/MCDLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    .line 118
    .end local v0    # "i":I
    .end local v2    # "parsingImageName":[Ljava/lang/String;
    .end local v3    # "uee":Ljava/io/UnsupportedEncodingException;
    :cond_1
    :try_start_1
    const-string v4, "UTF-8"

    invoke-static {p1, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 126
    :cond_2
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mBaseImagePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 119
    :catch_1
    move-exception v3

    .line 120
    .restart local v3    # "uee":Ljava/io/UnsupportedEncodingException;
    const-string v4, "MWNutritionConnectorHelper"

    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mcdonalds/sdk/services/log/MCDLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2
.end method

.method protected getMWMenuItemImage(Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemImageBase;Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemImageBase;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemImageBase;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemImageBase;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .prologue
    .line 710
    .local p1, "parentImage":Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemImageBase;, "TT;"
    .local p2, "grandParentImage":Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemImageBase;, "TT;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemImageBase;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 718
    .end local p1    # "parentImage":Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemImageBase;, "TT;"
    :goto_0
    return-object p1

    .line 714
    .restart local p1    # "parentImage":Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemImageBase;, "TT;"
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWItemImageBase;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move-object p1, p2

    .line 715
    goto :goto_0

    .line 718
    :cond_1
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public getNutritionCategoryDetail(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 3
    .param p1, "categoryId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetCategoryDetailsResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 379
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetCategoryDetailsResponse;>;"
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetCategoryDetailsRequest;

    const-string v1, "true"

    invoke-direct {v0, p1, v1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetCategoryDetailsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .local v0, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetCategoryDetailsRequest;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$12;

    invoke-direct {v2, p0, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$12;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 387
    return-void
.end method

.method public getRecipeForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "externalId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;"
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->commonRecipeForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 207
    return-void
.end method

.method public getRecipeForId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;"
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$3;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 194
    .local v0, "task":Ljava/lang/Runnable;
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->runRecipeTask(Ljava/lang/Runnable;)V

    .line 195
    return-void
.end method

.method public getRecipesForCategory(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 3
    .param p1, "categoryId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 392
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;>;"
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetCategoryDetailsRequest;

    const-string v1, "true"

    invoke-direct {v0, p1, v1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetCategoryDetailsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    .local v0, "request":Lcom/mcdonalds/sdk/connectors/middleware/request/MWNutritionGetCategoryDetailsRequest;
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mSharedData:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWConnectorShared;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$13;

    invoke-direct {v2, p0, p2}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$13;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 414
    return-void
.end method

.method public populateFullRecipeDetails(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 2
    .param p1, "recipe"    # Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 463
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;"
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$18;

    invoke-direct {v1, p0, p2, p1}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper$18;-><init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 469
    return-void
.end method

.method public processCategoryResponse(Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetAllCategoriesResponse;)Ljava/util/List;
    .locals 6
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetAllCategoriesResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetAllCategoriesResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 575
    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetAllCategoriesResponse;->categories:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionCategories;

    if-nez v4, :cond_2

    .line 576
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 588
    :cond_1
    return-object v0

    .line 579
    :cond_2
    iget-object v4, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionGetAllCategoriesResponse;->categories:Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionCategories;

    iget-object v2, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionCategories;->categoryList:Ljava/util/List;

    .line 580
    .local v2, "mwCategories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionCategory;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 581
    .local v3, "size":I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 583
    .local v0, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Category;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 584
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionCategory;

    iget-object v4, v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionCategory;->doNotShow:Ljava/lang/String;

    const-string v5, "Core"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 585
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionCategory;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWNutritionCategory;->toCategory()Lcom/mcdonalds/sdk/modules/models/Category;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public processDepMenuItems(Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;)Ljava/util/List;
    .locals 2
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 609
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWGetAllRecipesResponse;->getFullMenu()Lcom/mcdonalds/sdk/connectors/middleware/model/MWFullMenu;

    move-result-object v1

    iget-object v1, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWFullMenu;->fullMenuItems:Lcom/mcdonalds/sdk/connectors/middleware/model/MWFullMenuItems;

    iget-object v0, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWFullMenuItems;->menuItemList:Ljava/util/List;

    .line 610
    .local v0, "menuItemList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;>;"
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->processRecipes(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method protected processRelation(Ljava/util/Map;Ljava/util/Map;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;Ljava/lang/String;)V
    .locals 9
    .param p3, "mwMenuItem"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;
    .param p4, "mwMenuItemRelationType"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;
    .param p5, "defaultId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;",
            ">;",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 798
    .local p1, "relationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p2, "defaultMenuItems":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;>;"
    if-nez p4, :cond_1

    .line 840
    :cond_0
    :goto_0
    return-void

    .line 802
    :cond_1
    iget-object v3, p4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;->menuItemRelatedItems:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItems;

    .line 803
    .local v3, "itemRelatedItems":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItems;
    if-eqz v3, :cond_0

    .line 807
    iget-object v4, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItems;->menuItemRelatedItemList:Ljava/util/List;

    .line 808
    .local v4, "menuItemRelatedItemList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 812
    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 814
    .local v6, "relatedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    .local v7, "size":I
    :goto_2
    if-ge v1, v7, :cond_4

    .line 815
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;

    .line 817
    .local v5, "mwMenuItemRelatedItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;
    iget-object v8, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;->isDefault:Ljava/lang/Boolean;

    if-eqz v8, :cond_3

    iget-object v8, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;->isDefault:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 818
    iget-object p5, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;->id:Ljava/lang/String;

    .line 819
    invoke-interface {p2, p5, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 812
    .end local v1    # "i":I
    .end local v5    # "mwMenuItemRelatedItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;
    .end local v6    # "relatedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "size":I
    :cond_2
    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    move-object v6, v8

    goto :goto_1

    .line 821
    .restart local v1    # "i":I
    .restart local v5    # "mwMenuItemRelatedItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;
    .restart local v6    # "relatedIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "size":I
    :cond_3
    iget-object v8, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;->id:Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 825
    .end local v5    # "mwMenuItemRelatedItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelatedItem;
    :cond_4
    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_7

    .line 826
    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 829
    .local v0, "existingRelations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    :goto_4
    if-ge v1, v7, :cond_6

    .line 830
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 831
    .local v2, "id":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 832
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 836
    .end local v2    # "id":Ljava/lang/String;
    :cond_6
    invoke-interface {p1, p5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 838
    .end local v0    # "existingRelations":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    invoke-interface {p1, p5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected processRelations(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 756
    .local p1, "menuItemList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;>;"
    .local p2, "relationMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p3, "defaultMenuItems":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    .local v10, "size":I
    :goto_0
    if-ge v6, v10, :cond_5

    .line 757
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;

    .line 758
    .local v3, "mwMenuItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;
    if-nez v3, :cond_1

    .line 756
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 762
    :cond_1
    iget-object v8, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;->itemRelationTypes:Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;

    .line 763
    .local v8, "itemRelationTypes":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;
    if-eqz v8, :cond_0

    .line 767
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;->getItemRelationType()Ljava/util/List;

    move-result-object v7

    .line 769
    .local v7, "itemRelationType":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;>;"
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;->hasSize()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 771
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;->getSize()Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    .line 770
    invoke-virtual/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->processRelation(Ljava/util/Map;Ljava/util/Map;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;Ljava/lang/String;)V

    .line 775
    :cond_2
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;->hasMasterChild()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 777
    invoke-virtual {v8}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;->getMasterChild()Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    .line 776
    invoke-virtual/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->processRelation(Ljava/util/Map;Ljava/util/Map;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;Ljava/lang/String;)V

    goto :goto_1

    .line 782
    :cond_3
    const/4 v5, 0x0

    .line 783
    .local v5, "defaultId":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "j":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    .local v11, "typeSize":I
    :goto_2
    if-ge v9, v11, :cond_0

    .line 784
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;

    .line 786
    .local v4, "mwMenuItemRelationType":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;
    if-nez v5, :cond_4

    .line 787
    invoke-virtual {p0, p2, p3, v3, v4}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->findDefault(Ljava/util/Map;Ljava/util/Map;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;)Ljava/lang/String;

    move-result-object v5

    :cond_4
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    .line 790
    invoke-virtual/range {v0 .. v5}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->processRelation(Ljava/util/Map;Ljava/util/Map;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;Ljava/lang/String;)V

    .line 783
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 793
    .end local v3    # "mwMenuItem":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;
    .end local v4    # "mwMenuItemRelationType":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;
    .end local v5    # "defaultId":Ljava/lang/String;
    .end local v7    # "itemRelationType":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationType;>;"
    .end local v8    # "itemRelationTypes":Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItemRelationTypes;
    .end local v9    # "j":I
    .end local v11    # "typeSize":I
    :cond_5
    return-void
.end method

.method public setBaseImagePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "mBaseImagePath"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWNutritionConnectorHelper;->mBaseImagePath:Ljava/lang/String;

    .line 83
    return-void
.end method
