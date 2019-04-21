.class Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$RecipeFilter;
.super Landroid/widget/Filter;
.source "NutritionCategoryGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecipeFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$RecipeFilter;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 8
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    const-string v5, "performFiltering"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 69
    .local v0, "filterResults":Landroid/widget/Filter$FilterResults;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .local v1, "filteredList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$RecipeFilter;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;

    invoke-static {v5}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;->access$000(Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 73
    iget-object v5, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$RecipeFilter;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;

    invoke-static {v5}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;->access$000(Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {v5, v6}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v4

    .line 76
    .local v4, "normalizedName":Ljava/lang/String;
    iget-object v5, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$RecipeFilter;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;

    invoke-static {v5}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;->access$000(Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getMarketingName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {v5, v6}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "marketingName":Ljava/lang/String;
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 79
    :cond_0
    iget-object v5, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$RecipeFilter;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;

    invoke-static {v5}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;->access$000(Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 83
    .end local v3    # "marketingName":Ljava/lang/String;
    .end local v4    # "normalizedName":Ljava/lang/String;
    :cond_2
    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 84
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    iput v5, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 85
    return-object v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    const-string v0, "publishResults"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$RecipeFilter;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;->clear()V

    .line 91
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$RecipeFilter;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;->addAll(Ljava/util/Collection;)V

    .line 92
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$RecipeFilter;->this$0:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;->notifyDataSetChanged()V

    .line 93
    return-void
.end method
