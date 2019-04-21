.class Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$3;
.super Ljava/lang/Object;
.source "NutritionCategoryListFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;
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
        "Lcom/mcdonalds/sdk/modules/models/Category;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$3;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;

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

    .line 213
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$3;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

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
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Category;>;"
    const/4 v3, 0x1

    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$3;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->access$100(Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;)Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;->clear()V

    .line 219
    invoke-static {p1}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$3;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->access$100(Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;)Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;->addAll(Ljava/util/Collection;)V

    .line 222
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$3;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->access$000(Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$3;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->access$200(Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 225
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 226
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment$3;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;

    invoke-static {v0, v3}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;->access$302(Lcom/mcdonalds/app/nutrition/NutritionCategoryListFragment;Z)Z

    .line 228
    if-eqz p3, :cond_1

    .line 229
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 231
    :cond_1
    return-void
.end method
