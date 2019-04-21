.class public Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;
.super Lcom/mcdonalds/sdk/modules/BaseModule;
.source "NutritionModule.java"


# static fields
.field private static final CONFIG_BASE_PATH:Ljava/lang/String; = "connectors.Middleware"

.field public static final CONNECTOR_KEY:Ljava/lang/String; = "connector"

.field public static final DEFAULT_IMAGE_PATH:Ljava/lang/String; = "http://www.mcdonalds.com/content/dam/McDonalds/item"

.field public static final KEY_NUTRITION_IMAGE_BASE_URL:Ljava/lang/String; = "nutritionInfo.nutritionImageBaseUrl"

.field public static final KEY_NUTRITION_THUMB_BASE_URL:Ljava/lang/String; = "modules.nutritionInfo.nutritionalInfoThumbBaseURL"

.field public static final NAME:Ljava/lang/String; = "nutritionInfo"


# instance fields
.field private mConnector:Lcom/mcdonalds/sdk/connectors/NutritionConnector;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/BaseModule;-><init>()V

    .line 41
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "modules.nutritionInfo.connector"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    .local v0, "implementation":Ljava/lang/String;
    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/NutritionConnector;

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->mConnector:Lcom/mcdonalds/sdk/connectors/NutritionConnector;

    .line 43
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->mConnector:Lcom/mcdonalds/sdk/connectors/NutritionConnector;

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->getBaseImagePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/mcdonalds/sdk/connectors/NutritionConnector;->setBaseImagePath(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;-><init>()V

    .line 38
    return-void
.end method


# virtual methods
.method public getAllCategories(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 1
    .param p1    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
    .line 154
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Category;>;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->mConnector:Lcom/mcdonalds/sdk/connectors/NutritionConnector;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->mConnector:Lcom/mcdonalds/sdk/connectors/NutritionConnector;

    invoke-interface {v0, p1}, Lcom/mcdonalds/sdk/connectors/NutritionConnector;->getAllCategories(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 158
    :cond_0
    return-void
.end method

.method public getAllRecipes(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 1
    .param p1    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
    .line 128
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->mConnector:Lcom/mcdonalds/sdk/connectors/NutritionConnector;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->mConnector:Lcom/mcdonalds/sdk/connectors/NutritionConnector;

    invoke-interface {v0, p1}, Lcom/mcdonalds/sdk/connectors/NutritionConnector;->getAllRecipes(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 132
    :cond_0
    return-void
.end method

.method public getAllRecipesForCategory(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 1
    .param p1, "categoryId"    # Ljava/lang/String;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
    .line 142
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->mConnector:Lcom/mcdonalds/sdk/connectors/NutritionConnector;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->mConnector:Lcom/mcdonalds/sdk/connectors/NutritionConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/NutritionConnector;->getAllRecipesForCategory(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 146
    :cond_0
    return-void
.end method

.method public getBaseImagePath()Ljava/lang/String;
    .locals 6

    .prologue
    .line 178
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "modules.nutritionInfo.nutritionalInfoThumbBaseURL"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 180
    const-string v2, "%s.%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "connectors.Middleware"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "nutritionInfo.nutritionImageBaseUrl"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "key":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    const-string v1, "http://www.mcdonalds.com/content/dam/McDonalds/item"

    .line 186
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getFullRecipeForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 1
    .param p1, "externalId"    # Ljava/lang/String;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
    .line 80
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;"
    new-instance v0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule$1;

    invoke-direct {v0, p0, p2}, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule$1;-><init>(Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {p0, p1, v0}, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->getRecipeForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 91
    return-void
.end method

.method public getRecipeForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 1
    .param p1, "externalId"    # Ljava/lang/String;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
    .line 66
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->mConnector:Lcom/mcdonalds/sdk/connectors/NutritionConnector;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->mConnector:Lcom/mcdonalds/sdk/connectors/NutritionConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/NutritionConnector;->getRecipeForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 70
    :cond_0
    return-void
.end method

.method public getRecipeForId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 1
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
    .line 54
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->mConnector:Lcom/mcdonalds/sdk/connectors/NutritionConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/NutritionConnector;->getRecipeForId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 55
    return-void
.end method

.method public getRecipesForCategory(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 2
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
    .line 191
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->mConnector:Lcom/mcdonalds/sdk/connectors/NutritionConnector;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->mConnector:Lcom/mcdonalds/sdk/connectors/NutritionConnector;

    new-instance v1, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule$3;

    invoke-direct {v1, p0, p2}, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule$3;-><init>(Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-interface {v0, p1, v1}, Lcom/mcdonalds/sdk/connectors/NutritionConnector;->getRecipesForCategory(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 199
    :cond_0
    return-void
.end method

.method public getRecipesWithExternalIds(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 4
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
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
    .line 99
    .local p1, "externalIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;>;"
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->mConnector:Lcom/mcdonalds/sdk/connectors/NutritionConnector;

    if-eqz v2, :cond_0

    .line 101
    new-instance v0, Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2, p2}, Lcom/mcdonalds/sdk/AsyncCounter;-><init>(ILcom/mcdonalds/sdk/AsyncListener;)V

    .line 102
    .local v0, "asyncCounter":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 103
    .local v1, "externalId":Ljava/lang/String;
    new-instance v3, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule$2;-><init>(Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;Lcom/mcdonalds/sdk/AsyncCounter;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v3}, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->getRecipeForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0

    .line 120
    .end local v0    # "asyncCounter":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;"
    .end local v1    # "externalId":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public populateFullRecipeDetails(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 1
    .param p1, "recipe"    # Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    .param p2    # Lcom/mcdonalds/sdk/AsyncListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
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
    .line 171
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->mConnector:Lcom/mcdonalds/sdk/connectors/NutritionConnector;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->mConnector:Lcom/mcdonalds/sdk/connectors/NutritionConnector;

    invoke-interface {v0, p1, p2}, Lcom/mcdonalds/sdk/connectors/NutritionConnector;->populateFullRecipeDetails(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 175
    :cond_0
    return-void
.end method

.method public supportsDayParts()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
