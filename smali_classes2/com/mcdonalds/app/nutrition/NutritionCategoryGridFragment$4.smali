.class Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment$4;
.super Ljava/lang/Object;
.source "NutritionCategoryGridFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->getCategories()V
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
        "Ljava/util/List",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment$4;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 168
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment$4;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;"
    const-string v1, "onResponse"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment$4;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 175
    if-nez p3, :cond_2

    .line 176
    if-eqz p1, :cond_0

    .line 177
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment$4;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;

    invoke-static {v1, p1}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->access$200(Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 178
    .local v0, "recipes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;"
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment$4;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->access$300(Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;)Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;->clear()V

    .line 179
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment$4;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->access$300(Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;)Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;->addAll(Ljava/util/Collection;)V

    .line 185
    .end local v0    # "recipes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;"
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 187
    :cond_1
    return-void

    .line 182
    :cond_2
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method
