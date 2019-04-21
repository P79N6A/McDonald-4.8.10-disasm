.class Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter$1;
.super Ljava/lang/Object;
.source "NutritionInformationPresenter.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;
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
        "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 9
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    invoke-static {v0, p1}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->access$002(Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    .line 128
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    invoke-static {v0}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->access$000(Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;)Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    invoke-static {v0}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->access$200(Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;)Lcom/mcdonalds/app/nutrition/NutritionInformationView;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    .line 130
    invoke-static {v1}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->access$000(Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;)Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    .line 131
    invoke-static {v2}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->access$000(Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;)Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getDescription()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    .line 132
    invoke-static {v3}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->access$000(Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;)Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getNutrients()Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    .line 133
    invoke-static {v4}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->access$000(Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;)Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getAllergens()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    iget-object v6, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    .line 134
    invoke-static {v6}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->access$000(Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;)Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->access$100(Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    .line 135
    invoke-static {v6}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->access$000(Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;)Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getComponents()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    .line 136
    invoke-static {v7}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->access$000(Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;)Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getFooters()Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    .line 137
    invoke-static {v8}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->access$000(Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;)Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getComponentsString()Ljava/lang/String;

    move-result-object v8

    .line 129
    invoke-interface/range {v0 .. v8}, Lcom/mcdonalds/app/nutrition/NutritionInformationView;->displayRecipeInformation(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    .line 139
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v1

    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    invoke-static {v0}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->access$000(Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;)Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getMarketingName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    invoke-static {v0}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->access$000(Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;)Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getMarketingName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setPageSection(Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    invoke-static {v1}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->access$000(Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;)Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setRecipe(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)V

    .line 141
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v0

    const-string v1, "RecipeInfoTabbed"

    const-string v2, "PageViewed"

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->logPageLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    invoke-static {v0}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->access$000(Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;)Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 123
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter$1;->onResponse(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
