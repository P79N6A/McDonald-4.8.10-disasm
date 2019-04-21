.class Lcom/mcdonalds/app/nutrition/NutritionInformationFragment$1;
.super Ljava/lang/Object;
.source "NutritionInformationFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->refresh()V
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
.field final synthetic this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 6
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const-string v2, "onResponse"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 142
    if-eqz p1, :cond_5

    .line 143
    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;

    iput-object p1, v2, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    .line 146
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getComponentsString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getComponents()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 148
    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getComponents()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->populateRecipeComponents(Ljava/util/List;)V

    .line 157
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->populateNutritionDetails()V

    .line 159
    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;

    iget-object v2, v2, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getFooters()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;

    iget-object v2, v2, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getFooters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;

    iget-object v2, v2, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getFooters()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 162
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 163
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 152
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getComponentsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getAllergensString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getAdditionalAllergensString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->populateRecipeComponents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 169
    .restart local v0    # "builder":Ljava/lang/StringBuilder;
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_3
    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;

    const-string v3, "Important Notes"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->fillImportantNoteLayout(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->getTitleFromProductInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setPageSection(Ljava/lang/String;)V

    .line 173
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;

    iget-object v3, v3, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment;->mRecipe:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setRecipe(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)V

    .line 174
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v2

    const-string v3, "RecipeInfoTabbed"

    const-string v4, "PageViewed"

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->logPageLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_5
    if-eqz p3, :cond_6

    .line 178
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 181
    :cond_6
    return-void
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

    .line 137
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/nutrition/NutritionInformationFragment$1;->onResponse(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
