.class Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$1;
.super Ljava/lang/Object;
.source "NutritionCategoryListAdapter.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;
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
        "Lcom/mcdonalds/app/nutrition/CategoryImagesResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/app/nutrition/CategoryImagesResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p1, "response"    # Lcom/mcdonalds/app/nutrition/CategoryImagesResponse;
    .param p2, "asyncToken"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "e"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
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

    .line 111
    if-eqz p1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    invoke-static {v1, v2}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;->access$302(Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;Landroid/util/SparseArray;)Landroid/util/SparseArray;

    .line 114
    invoke-virtual {p1}, Lcom/mcdonalds/app/nutrition/CategoryImagesResponse;->getCategories()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/nutrition/CategoryImage;

    .line 115
    .local v0, "item":Lcom/mcdonalds/app/nutrition/CategoryImage;
    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;

    invoke-static {v2}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;->access$300(Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mcdonalds/app/nutrition/CategoryImage;->getCategory()I

    move-result v3

    invoke-virtual {v0}, Lcom/mcdonalds/app/nutrition/CategoryImage;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 119
    .end local v0    # "item":Lcom/mcdonalds/app/nutrition/CategoryImage;
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$1;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;

    invoke-virtual {v1}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter;->notifyDataSetChanged()V

    .line 120
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

    .line 105
    check-cast p1, Lcom/mcdonalds/app/nutrition/CategoryImagesResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/nutrition/NutritionCategoryListAdapter$1;->onResponse(Lcom/mcdonalds/app/nutrition/CategoryImagesResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
