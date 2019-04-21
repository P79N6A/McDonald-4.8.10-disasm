.class public Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;
.super Ljava/lang/Object;
.source "NutritionInformationPresenter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

.field private mRecipeListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Lcom/mcdonalds/app/nutrition/NutritionInformationView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mcdonalds/app/nutrition/NutritionInformationView;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/mcdonalds/app/nutrition/NutritionInformationView;
    .param p3, "recipeId"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter$1;-><init>(Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;)V

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->mRecipeListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 41
    iput-object p2, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->mView:Lcom/mcdonalds/app/nutrition/NutritionInformationView;

    .line 42
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->mContext:Landroid/content/Context;

    .line 44
    invoke-direct {p0, p3}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->loadRecipe(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;)Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.nutrition.NutritionInformationPresenter"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    return-object v0
.end method

.method static synthetic access$002(Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.nutrition.NutritionInformationPresenter"

    const-string v2, "access$002"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    return-object p1
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.nutrition.NutritionInformationPresenter"

    const-string v2, "access$100"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->getComponentAllergens(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;)Lcom/mcdonalds/app/nutrition/NutritionInformationView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.nutrition.NutritionInformationPresenter"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->mView:Lcom/mcdonalds/app/nutrition/NutritionInformationView;

    return-object v0
.end method

.method private getComponentAllergens(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)Ljava/util/List;
    .locals 5
    .param p1, "recipe"    # Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v2, "getComponentAllergens"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getComponents()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 109
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getComponents()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;

    .line 110
    .local v0, "component":Lcom/mcdonalds/sdk/modules/models/RecipeComponent;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->getProductAllergen()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 111
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->getProductAllergen()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    :cond_1
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->getProductAdditionalAllergen()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 115
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->getProductAdditionalAllergen()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    .end local v0    # "component":Lcom/mcdonalds/sdk/modules/models/RecipeComponent;
    :cond_2
    return-object v1
.end method

.method private loadRecipe(Ljava/lang/String;)V
    .locals 4
    .param p1, "recipeId"    # Ljava/lang/String;

    .prologue
    const-string v1, "loadRecipe"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 101
    const-string v1, "nutritionInfo"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

    .line 102
    .local v0, "nutritionModule":Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->mRecipeListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->getRecipeForId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 103
    return-void
.end method


# virtual methods
.method public getRecipeServingSize()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v1, "getRecipeServingSize"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.nutritionalInfo.useMetricSystem"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    .line 97
    .local v0, "useMetric":Z
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getServingSizeString(Z)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public loadProductImage(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;

    .prologue
    const-string v0, "loadProductImage"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    if-nez v0, :cond_1

    .line 63
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getHeroImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getHeroImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    const-string v0, "mzk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "json:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    .line 58
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getHeroImage()Lcom/mcdonalds/sdk/modules/models/ImageInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/ImageInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v0

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 59
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/DrawableTypeRequest;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object v0

    .line 60
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_0
.end method

.method public shouldHideHundredG()Z
    .locals 2

    .prologue
    const-string v0, "shouldHideHundredG"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.nutritionalInfo.tabbedNutritionalInfo.nutritionTab.hiddenColumns.hundredG"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldHidePerProduct()Z
    .locals 2

    .prologue
    const-string v0, "shouldHidePerProduct"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.nutritionalInfo.tabbedNutritionalInfo.nutritionTab.hiddenColumns.perProduct"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldHidePercentRI()Z
    .locals 2

    .prologue
    const-string v0, "shouldHidePercentRI"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.nutritionalInfo.tabbedNutritionalInfo.nutritionTab.hiddenColumns.percentRI"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public shouldHideRINutrientIds()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "shouldHideRINutrientIds"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.nutritionalInfo.tabbedNutritionalInfo.nutritionTab.hiddenRINutrientIds"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public shouldShowAllergens()Z
    .locals 2

    .prologue
    const-string v0, "shouldShowAllergens"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.nutritionalInfo.tabbedNutritionalInfo.hideAllergens"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shouldShowIngredients()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "shouldShowIngredients"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object v3, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    .line 71
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getComponents()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getComponentsString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v0, v1

    .line 72
    .local v0, "isIngredientInformationAvailable":Z
    :goto_0
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "interface.nutritionalInfo.tabbedNutritionalInfo.hideIngredients"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    return v1

    .end local v0    # "isIngredientInformationAvailable":Z
    :cond_1
    move v0, v2

    .line 71
    goto :goto_0

    .restart local v0    # "isIngredientInformationAvailable":Z
    :cond_2
    move v1, v2

    .line 72
    goto :goto_1
.end method

.method public useDVInsteadOfRI()Z
    .locals 2

    .prologue
    const-string v0, "useDVInsteadOfRI"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.nutritionalInfo.tabbedNutritionalInfo.showDVInsteadOfRI"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
