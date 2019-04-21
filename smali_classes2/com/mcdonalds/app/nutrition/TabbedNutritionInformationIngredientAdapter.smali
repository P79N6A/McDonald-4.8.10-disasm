.class public Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TabbedNutritionInformationIngredientAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/RecipeComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mFooters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private showAllergens:Z


# virtual methods
.method public getItemCount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-string v0, "getItemCount"

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter;->mComponents:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter;->mComponents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter;->mFooters:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter;->mFooters:Ljava/util/List;

    .line 83
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 82
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .prologue
    const-string v0, "onBindViewHolder"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    check-cast p1, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter;->onBindViewHolder(Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter$ViewHolder;I)V
    .locals 10
    .param p1, "holder"    # Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v5, "onBindViewHolder"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v8

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v6, v9

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 46
    iget-object v5, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter;->mComponents:Ljava/util/List;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter;->mComponents:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge p2, v5, :cond_3

    .line 47
    iget-object v5, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter;->mComponents:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;

    .line 48
    .local v3, "component":Lcom/mcdonalds/sdk/modules/models/RecipeComponent;
    iget-object v5, p1, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter$ViewHolder;->name:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->getProductName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->getIngredientStatement()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 50
    iget-object v5, p1, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->getIngredientStatement()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_0
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->getProductAllergen()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "allergens":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter;->showAllergens:Z

    if-eqz v5, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 54
    iget-object v5, p1, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f09074f

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v1, v7, v8

    .line 55
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "allergensText":Ljava/lang/String;
    iget-object v5, p1, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter$ViewHolder;->allergens:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    iget-object v5, p1, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter$ViewHolder;->allergens:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    .end local v2    # "allergensText":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->getProductAdditionalAllergen()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "additionalAllergens":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter;->showAllergens:Z

    if-eqz v5, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 62
    iget-object v5, p1, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f09074d

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v0, v7, v8

    .line 63
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .restart local v2    # "allergensText":Ljava/lang/String;
    iget-object v5, p1, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter$ViewHolder;->additionalAllergens:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object v5, p1, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter$ViewHolder;->additionalAllergens:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    .end local v0    # "additionalAllergens":Ljava/lang/String;
    .end local v1    # "allergens":Ljava/lang/String;
    .end local v2    # "allergensText":Ljava/lang/String;
    .end local v3    # "component":Lcom/mcdonalds/sdk/modules/models/RecipeComponent;
    :cond_2
    :goto_0
    iget-object v5, p1, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter$ViewHolder;->itemView:Landroid/view/View;

    const-class v6, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter$ViewHolder;

    invoke-static {v5, v6, p2}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/Class;I)V

    .line 78
    return-void

    .line 68
    :cond_3
    iget-object v5, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter;->mFooters:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 69
    iget-object v5, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter;->mComponents:Ljava/util/List;

    if-eqz v5, :cond_4

    .line 70
    iget-object v5, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter;->mComponents:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr p2, v5

    .line 72
    :cond_4
    iget-object v5, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter;->mFooters:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 73
    .local v4, "footer":Ljava/lang/String;
    iget-object v5, p1, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter$ViewHolder;->name:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 74
    iget-object v5, p1, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter$ViewHolder;->description:Landroid/widget/TextView;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4

    .prologue
    const-string v0, "onCreateViewHolder"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040132

    const/4 v3, 0x0

    .line 39
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 40
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter$ViewHolder;-><init>(Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationIngredientAdapter;Landroid/view/View;)V

    return-object v1
.end method
