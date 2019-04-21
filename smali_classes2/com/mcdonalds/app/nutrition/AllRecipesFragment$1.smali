.class Lcom/mcdonalds/app/nutrition/AllRecipesFragment$1;
.super Ljava/lang/Object;
.source "AllRecipesFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/nutrition/AllRecipesFragment;->onCreate(Landroid/os/Bundle;)V
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
        "Lcom/mcdonalds/sdk/modules/models/Product;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/nutrition/AllRecipesFragment;

.field final synthetic val$recipeListAdapter:Lcom/mcdonalds/app/nutrition/AllRecipesFragment$RecipeListAdapter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/nutrition/AllRecipesFragment;Lcom/mcdonalds/app/nutrition/AllRecipesFragment$RecipeListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/nutrition/AllRecipesFragment;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/AllRecipesFragment$1;->this$0:Lcom/mcdonalds/app/nutrition/AllRecipesFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/nutrition/AllRecipesFragment$1;->val$recipeListAdapter:Lcom/mcdonalds/app/nutrition/AllRecipesFragment$RecipeListAdapter;

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

    .line 63
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/nutrition/AllRecipesFragment$1;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

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
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;"
    const/4 v3, 0x0

    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    if-nez p3, :cond_0

    .line 68
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/AllRecipesFragment$1;->this$0:Lcom/mcdonalds/app/nutrition/AllRecipesFragment;

    invoke-static {v0, p1}, Lcom/mcdonalds/app/nutrition/AllRecipesFragment;->access$002(Lcom/mcdonalds/app/nutrition/AllRecipesFragment;Ljava/util/List;)Ljava/util/List;

    .line 69
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/AllRecipesFragment$1;->this$0:Lcom/mcdonalds/app/nutrition/AllRecipesFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/nutrition/AllRecipesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recipes loaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 70
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/AllRecipesFragment$1;->val$recipeListAdapter:Lcom/mcdonalds/app/nutrition/AllRecipesFragment$RecipeListAdapter;

    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/AllRecipesFragment$1;->this$0:Lcom/mcdonalds/app/nutrition/AllRecipesFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/nutrition/AllRecipesFragment;->access$000(Lcom/mcdonalds/app/nutrition/AllRecipesFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/nutrition/AllRecipesFragment$RecipeListAdapter;->setProductList(Ljava/util/List;)V

    .line 71
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/AllRecipesFragment$1;->val$recipeListAdapter:Lcom/mcdonalds/app/nutrition/AllRecipesFragment$RecipeListAdapter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/nutrition/AllRecipesFragment$RecipeListAdapter;->notifyDataSetChanged()V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/nutrition/AllRecipesFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
