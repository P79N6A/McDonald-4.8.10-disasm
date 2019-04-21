.class public Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "TabbedNutritionInformationPagerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAllergens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Allergen;",
            ">;"
        }
    .end annotation
.end field

.field private mComponentAllergens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

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

.field private mIngredients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/RecipeComponent;",
            ">;"
        }
    .end annotation
.end field

.field private mNutrients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Nutrient;",
            ">;"
        }
    .end annotation
.end field

.field private mPresenter:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

.field private mRecipeComponentsString:Ljava/lang/String;

.field private mTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "presenter"    # Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;
    .param p8, "recipeComponentsString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Nutrient;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Allergen;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/RecipeComponent;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    .local p3, "nutrients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Nutrient;>;"
    .local p4, "allergens":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Allergen;>;"
    .local p5, "componentAllergens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "components":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/RecipeComponent;>;"
    .local p7, "footers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mContext:Landroid/content/Context;

    .line 71
    iput-object p2, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mPresenter:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    .line 73
    iput-object p3, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mNutrients:Ljava/util/List;

    .line 74
    iput-object p4, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mAllergens:Ljava/util/List;

    .line 75
    iput-object p5, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mComponentAllergens:Ljava/util/List;

    .line 76
    iput-object p6, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mIngredients:Ljava/util/List;

    .line 77
    iput-object p8, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mRecipeComponentsString:Ljava/lang/String;

    .line 78
    iput-object p7, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mFooters:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mTitles:Ljava/util/List;

    .line 81
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mTitles:Ljava/util/List;

    const v1, 0x7f0905a4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mPresenter:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->shouldShowAllergens()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mTitles:Ljava/util/List;

    const v1, 0x7f0905a1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mPresenter:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->shouldShowIngredients()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mTitles:Ljava/util/List;

    const v1, 0x7f0905a3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_1
    return-void
.end method

.method private createAllergenRow(Landroid/view/LayoutInflater;Landroid/widget/TableLayout;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TableRow;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "table"    # Landroid/widget/TableLayout;
    .param p3, "allergenName"    # Ljava/lang/String;
    .param p4, "allergenValue"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const-string v3, "createAllergenRow"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    aput-object p4, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    const v3, 0x7f040035

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    .line 312
    .local v1, "row":Landroid/widget/TableRow;
    const v3, 0x7f1100fc

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 313
    .local v0, "name":Landroid/widget/TextView;
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    const v3, 0x7f1100fd

    invoke-virtual {v1, v3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 316
    .local v2, "value":Landroid/widget/TextView;
    invoke-virtual {v2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 317
    return-object v1
.end method

.method private getAllergensView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v7, 0x0

    const-string v5, "getAllergensView"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    iget-object v5, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 281
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f040034

    invoke-virtual {v1, v5, p1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 282
    .local v2, "main":Landroid/view/ViewGroup;
    const v5, 0x7f1100f9

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TableLayout;

    .line 283
    .local v4, "table":Landroid/widget/TableLayout;
    iget-object v5, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mAllergens:Ljava/util/List;

    invoke-static {v5}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mComponentAllergens:Ljava/util/List;

    invoke-static {v5}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 285
    :cond_0
    iget-object v5, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mAllergens:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 286
    iget-object v5, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mAllergens:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Allergen;

    .line 287
    .local v0, "allergen":Lcom/mcdonalds/sdk/modules/models/Allergen;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Allergen;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Allergen;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v1, v4, v6, v7}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->createAllergenRow(Landroid/view/LayoutInflater;Landroid/widget/TableLayout;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TableRow;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 291
    .end local v0    # "allergen":Lcom/mcdonalds/sdk/modules/models/Allergen;
    :cond_1
    iget-object v5, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mComponentAllergens:Ljava/util/List;

    if-eqz v5, :cond_3

    .line 292
    iget-object v5, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mComponentAllergens:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 293
    .local v0, "allergen":Ljava/lang/String;
    iget-object v6, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mContext:Landroid/content/Context;

    const v7, 0x7f090826

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v1, v4, v0, v6}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->createAllergenRow(Landroid/view/LayoutInflater;Landroid/widget/TableLayout;Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TableRow;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 298
    .end local v0    # "allergen":Ljava/lang/String;
    :cond_2
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 299
    const v5, 0x7f1100fa

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 300
    .local v3, "noAllergenText":Landroid/widget/TextView;
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    .end local v3    # "noAllergenText":Landroid/widget/TextView;
    :cond_3
    invoke-direct {p0, v2}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->showLegalDesclaimerView(Landroid/view/ViewGroup;)V

    .line 306
    return-object v2
.end method

.method private getIngredientsView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const-string v4, "getIngredientsView"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    iget-object v4, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 322
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f040133

    invoke-virtual {v0, v4, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 324
    .local v3, "rootView":Landroid/view/ViewGroup;
    const v4, 0x7f11042f

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 325
    .local v2, "list":Landroid/widget/LinearLayout;
    const v4, 0x7f11042c

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 328
    .local v1, "ingredientStatementView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mIngredients:Ljava/util/List;

    invoke-static {v4}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 330
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 331
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    invoke-direct {p0, v2}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->setupIngredientList(Landroid/widget/LinearLayout;)V

    .line 337
    :cond_0
    :goto_0
    invoke-direct {p0, v2}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->setupFooters(Landroid/widget/LinearLayout;)V

    .line 339
    invoke-direct {p0, v3}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->showLegalDesclaimerView(Landroid/view/ViewGroup;)V

    .line 341
    return-object v3

    .line 333
    :cond_1
    iget-object v4, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mRecipeComponentsString:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 334
    iget-object v4, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mRecipeComponentsString:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private getNutritionTableHeader(Landroid/view/LayoutInflater;Landroid/widget/TableLayout;ZZZZ)Landroid/widget/TableRow;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "table"    # Landroid/widget/TableLayout;
    .param p3, "hideHundredG"    # Z
    .param p4, "hidePerProduct"    # Z
    .param p5, "hidePercentRI"    # Z
    .param p6, "useDVInsteadOfRI"    # Z

    .prologue
    const/4 v7, 0x0

    const-string v3, "getNutritionTableHeader"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v7

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p3}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v4, v5

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v4, v5

    const/4 v5, 0x4

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p5}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v4, v5

    const/4 v5, 0x5

    new-instance v6, Ljava/lang/Boolean;

    invoke-direct {v6, p6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    const v3, 0x7f04015b

    invoke-virtual {p1, v3, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableRow;

    .line 197
    .local v0, "header":Landroid/widget/TableRow;
    if-eqz p3, :cond_0

    .line 198
    const v3, 0x7f110492

    invoke-virtual {v0, v3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 199
    .local v1, "hundredGHeader":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/widget/TableRow;->removeView(Landroid/view/View;)V

    .line 201
    .end local v1    # "hundredGHeader":Landroid/view/View;
    :cond_0
    if-eqz p4, :cond_1

    .line 202
    const v3, 0x7f110491

    invoke-virtual {v0, v3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 203
    .local v2, "perProductHeader":Landroid/view/View;
    invoke-virtual {v0, v2}, Landroid/widget/TableRow;->removeView(Landroid/view/View;)V

    .line 212
    .end local v2    # "perProductHeader":Landroid/view/View;
    :cond_1
    return-object v0
.end method

.method private getNutritionTableRow(Landroid/view/LayoutInflater;Landroid/widget/TableLayout;ZZZLcom/mcdonalds/sdk/modules/models/Nutrient;Z)Landroid/widget/TableRow;
    .locals 23
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "table"    # Landroid/widget/TableLayout;
    .param p3, "hideHundredG"    # Z
    .param p4, "hidePerProduct"    # Z
    .param p5, "hidePercentRI"    # Z
    .param p6, "nutrient"    # Lcom/mcdonalds/sdk/modules/models/Nutrient;
    .param p7, "useDVInsteadOfRI"    # Z
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    const-string v2, "getNutritionTableRow"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v3, v6

    const/4 v6, 0x1

    aput-object p2, v3, v6

    const/4 v6, 0x2

    new-instance v8, Ljava/lang/Boolean;

    move/from16 v0, p3

    invoke-direct {v8, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v8, v3, v6

    const/4 v6, 0x3

    new-instance v8, Ljava/lang/Boolean;

    move/from16 v0, p4

    invoke-direct {v8, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v8, v3, v6

    const/4 v6, 0x4

    new-instance v8, Ljava/lang/Boolean;

    move/from16 v0, p5

    invoke-direct {v8, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v8, v3, v6

    const/4 v6, 0x5

    aput-object p6, v3, v6

    const/4 v6, 0x6

    new-instance v8, Ljava/lang/Boolean;

    move/from16 v0, p7

    invoke-direct {v8, v0}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v8, v3, v6

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    const-string v4, ""

    .line 220
    .local v4, "unit":Ljava/lang/String;
    invoke-virtual/range {p6 .. p6}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getUnit()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 221
    invoke-virtual/range {p6 .. p6}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getUnit()Ljava/lang/String;

    move-result-object v4

    .line 224
    :cond_0
    const v2, 0x7f04015c

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TableRow;

    .line 226
    .local v5, "row":Landroid/widget/TableRow;
    const v2, 0x7f110493

    invoke-virtual {v5, v2}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 227
    .local v21, "name":Landroid/widget/TextView;
    invoke-virtual/range {p6 .. p6}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    const v2, 0x7f110495

    invoke-virtual {v5, v2}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 230
    .local v7, "hundredG":Landroid/widget/TextView;
    invoke-virtual/range {p6 .. p6}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getHundredG()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p6 .. p6}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getId()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v2, p0

    move/from16 v3, p3

    invoke-direct/range {v2 .. v8}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->setupTableCell(ZLjava/lang/String;Landroid/widget/TableRow;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 232
    const v2, 0x7f110494

    invoke-virtual {v5, v2}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 233
    .local v13, "perProduct":Landroid/widget/TextView;
    invoke-virtual/range {p6 .. p6}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getValue()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p6 .. p6}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getId()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v8, p0

    move/from16 v9, p4

    move-object v10, v4

    move-object v11, v5

    invoke-direct/range {v8 .. v14}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->setupTableCell(ZLjava/lang/String;Landroid/widget/TableRow;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 235
    const v2, 0x7f110496

    invoke-virtual {v5, v2}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 236
    .local v19, "percentRI":Landroid/widget/TextView;
    const-string v16, "%"

    .line 237
    .local v16, "DV":Ljava/lang/String;
    if-eqz p7, :cond_1

    .line 238
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f09020d

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 240
    :cond_1
    invoke-virtual/range {p6 .. p6}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getAdultDailyValue()Ljava/lang/String;

    move-result-object v18

    .line 241
    .local v18, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mPresenter:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    invoke-virtual {v2}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->shouldHideRINutrientIds()Ljava/util/List;

    move-result-object v22

    .line 242
    .local v22, "nutrientIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    invoke-static/range {v22 .. v22}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p6 .. p6}, Lcom/mcdonalds/sdk/modules/models/Nutrient;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 243
    const-string v18, "-"

    .line 244
    const-string v16, ""

    .line 246
    :cond_2
    const/16 v20, 0x0

    move-object/from16 v14, p0

    move/from16 v15, p5

    move-object/from16 v17, v5

    invoke-direct/range {v14 .. v20}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->setupTableCell(ZLjava/lang/String;Landroid/widget/TableRow;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;)V

    .line 247
    return-object v5
.end method

.method private getNutritionView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 23
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    const-string v2, "getNutritionView"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    move-object/from16 v0, p0

    invoke-static {v0, v2, v9}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 137
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04015a

    const/4 v9, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v2, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/view/ViewGroup;

    .line 139
    .local v18, "main":Landroid/view/ViewGroup;
    const v2, 0x7f11048d

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    .line 140
    .local v20, "servingSize":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mContext:Landroid/content/Context;

    const v9, 0x7f0906d1

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 141
    .local v21, "servingSizeLabel":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mPresenter:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    invoke-virtual {v2}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->getRecipeServingSize()Ljava/lang/String;

    move-result-object v22

    .line 142
    .local v22, "servingSizeString":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 143
    const-string v2, "%s: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v21, v9, v10

    const/4 v10, 0x1

    aput-object v22, v9, v10

    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :goto_0
    const v2, 0x7f11048e

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TableLayout;

    .line 150
    .local v4, "table":Landroid/widget/TableLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mPresenter:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    invoke-virtual {v2}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->shouldHideHundredG()Z

    move-result v5

    .line 151
    .local v5, "hideHundredG":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mPresenter:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    invoke-virtual {v2}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->shouldHidePerProduct()Z

    move-result v6

    .line 152
    .local v6, "hidePerProduct":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mPresenter:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    invoke-virtual {v2}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->shouldHidePercentRI()Z

    move-result v7

    .line 153
    .local v7, "hidePercentRI":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mPresenter:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    invoke-virtual {v2}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->useDVInsteadOfRI()Z

    move-result v8

    .local v8, "useDVInsteadOfRI":Z
    move-object/from16 v2, p0

    .line 156
    invoke-direct/range {v2 .. v8}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->getNutritionTableHeader(Landroid/view/LayoutInflater;Landroid/widget/TableLayout;ZZZZ)Landroid/widget/TableRow;

    move-result-object v17

    .line 164
    .local v17, "header":Landroid/widget/TableRow;
    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mNutrients:Ljava/util/List;

    invoke-static {v2}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 168
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mNutrients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/mcdonalds/sdk/modules/models/Nutrient;

    .local v15, "nutrient":Lcom/mcdonalds/sdk/modules/models/Nutrient;
    move-object/from16 v9, p0

    move-object v10, v3

    move-object v11, v4

    move v12, v5

    move v13, v6

    move v14, v7

    move/from16 v16, v8

    .line 170
    invoke-direct/range {v9 .. v16}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->getNutritionTableRow(Landroid/view/LayoutInflater;Landroid/widget/TableLayout;ZZZLcom/mcdonalds/sdk/modules/models/Nutrient;Z)Landroid/widget/TableRow;

    move-result-object v19

    .line 179
    .local v19, "row":Landroid/widget/TableRow;
    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 145
    .end local v4    # "table":Landroid/widget/TableLayout;
    .end local v5    # "hideHundredG":Z
    .end local v6    # "hidePerProduct":Z
    .end local v7    # "hidePercentRI":Z
    .end local v8    # "useDVInsteadOfRI":Z
    .end local v15    # "nutrient":Lcom/mcdonalds/sdk/modules/models/Nutrient;
    .end local v17    # "header":Landroid/widget/TableRow;
    .end local v19    # "row":Landroid/widget/TableRow;
    :cond_0
    const/16 v2, 0x8

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 185
    .restart local v4    # "table":Landroid/widget/TableLayout;
    .restart local v5    # "hideHundredG":Z
    .restart local v6    # "hidePerProduct":Z
    .restart local v7    # "hidePercentRI":Z
    .restart local v8    # "useDVInsteadOfRI":Z
    .restart local v17    # "header":Landroid/widget/TableRow;
    :cond_1
    if-eqz v8, :cond_2

    .line 186
    const v2, 0x7f11048f

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v9, 0x7f090598

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 189
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->showLegalDesclaimerView(Landroid/view/ViewGroup;)V

    .line 191
    return-object v18
.end method

.method private setupFooters(Landroid/widget/LinearLayout;)V
    .locals 9
    .param p1, "list"    # Landroid/widget/LinearLayout;

    .prologue
    const-string v6, "setupFooters"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 468
    .local v2, "inflater":Landroid/view/LayoutInflater;
    iget-object v6, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mFooters:Ljava/util/List;

    if-eqz v6, :cond_0

    .line 469
    const/4 v4, 0x0

    .local v4, "position":I
    :goto_0
    iget-object v6, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mFooters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_0

    .line 470
    const v6, 0x7f040132

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 471
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f11042b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 472
    .local v3, "name":Landroid/widget/TextView;
    const v6, 0x7f11042c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 474
    .local v0, "description":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mFooters:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 475
    .local v1, "footer":Ljava/lang/String;
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    invoke-virtual {p1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 469
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 481
    .end local v0    # "description":Landroid/widget/TextView;
    .end local v1    # "footer":Ljava/lang/String;
    .end local v3    # "name":Landroid/widget/TextView;
    .end local v4    # "position":I
    .end local v5    # "view":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setupIngredientList(Landroid/widget/LinearLayout;)V
    .locals 17
    .param p1, "list"    # Landroid/widget/LinearLayout;

    .prologue
    const-string v13, "setupIngredientList"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    move-object/from16 v0, p0

    invoke-static {v0, v13, v14}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 421
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mContext:Landroid/content/Context;

    const-string v14, "layout_inflater"

    .line 422
    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 424
    .local v8, "inflater":Landroid/view/LayoutInflater;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v13

    const-string v14, "interface.nutritionalInfo.tabbedNutritionalInfo.showAllergensInIngredientsTab"

    invoke-virtual {v13, v14}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v11

    .line 431
    .local v11, "showAllergens":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mIngredients:Ljava/util/List;

    if-eqz v13, :cond_3

    .line 432
    const/4 v10, 0x0

    .local v10, "position":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mIngredients:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-ge v10, v13, :cond_3

    .line 433
    const v13, 0x7f040132

    const/4 v14, 0x0

    invoke-virtual {v8, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 434
    .local v12, "view":Landroid/view/View;
    const v13, 0x7f11042b

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 435
    .local v9, "name":Landroid/widget/TextView;
    const v13, 0x7f11042c

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 436
    .local v7, "description":Landroid/widget/TextView;
    const v13, 0x7f11042d

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 437
    .local v3, "allergens":Landroid/widget/TextView;
    const v13, 0x7f11042e

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 438
    .local v2, "additionalAllergens":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mIngredients:Ljava/util/List;

    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;

    .line 439
    .local v6, "component":Lcom/mcdonalds/sdk/modules/models/RecipeComponent;
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->getProductName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->getIngredientStatement()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 441
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->getIngredientStatement()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v13

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 443
    :cond_0
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->getProductAllergen()Ljava/lang/String;

    move-result-object v4

    .line 444
    .local v4, "allergensString":Ljava/lang/String;
    if-eqz v11, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 445
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f09074f

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v4, v15, v16

    .line 446
    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 447
    .local v5, "allergensText":Ljava/lang/String;
    const/4 v13, 0x0

    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 448
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    .end local v5    # "allergensText":Ljava/lang/String;
    :cond_1
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/RecipeComponent;->getProductAdditionalAllergen()Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, "additionalAllergenString":Ljava/lang/String;
    if-eqz v11, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 453
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mContext:Landroid/content/Context;

    const v14, 0x7f09074d

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v1, v15, v16

    .line 454
    invoke-virtual {v13, v14, v15}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 455
    .restart local v5    # "allergensText":Ljava/lang/String;
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 456
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    .end local v5    # "allergensText":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 432
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 462
    .end local v1    # "additionalAllergenString":Ljava/lang/String;
    .end local v2    # "additionalAllergens":Landroid/widget/TextView;
    .end local v3    # "allergens":Landroid/widget/TextView;
    .end local v4    # "allergensString":Ljava/lang/String;
    .end local v6    # "component":Lcom/mcdonalds/sdk/modules/models/RecipeComponent;
    .end local v7    # "description":Landroid/widget/TextView;
    .end local v9    # "name":Landroid/widget/TextView;
    .end local v10    # "position":I
    .end local v12    # "view":Landroid/view/View;
    :cond_3
    return-void
.end method

.method private setupTableCell(ZLjava/lang/String;Landroid/widget/TableRow;Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 8
    .param p1, "hide"    # Z
    .param p2, "unit"    # Ljava/lang/String;
    .param p3, "row"    # Landroid/widget/TableRow;
    .param p4, "value"    # Ljava/lang/String;
    .param p5, "textView"    # Landroid/widget/TextView;
    .param p6, "mId"    # Ljava/lang/String;

    .prologue
    const-string v4, "setupTableCell"

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    const/4 v6, 0x3

    aput-object p4, v5, v6

    const/4 v6, 0x4

    aput-object p5, v5, v6

    const/4 v6, 0x5

    aput-object p6, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    if-nez p1, :cond_5

    .line 253
    if-eqz p4, :cond_1

    .line 254
    :try_start_0
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 255
    invoke-static {p4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    .line 256
    .local v3, "litersOfPetrol":Ljava/lang/Float;
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_2

    .line 257
    const-string p4, "0"

    .line 269
    .end local v3    # "litersOfPetrol":Ljava/lang/Float;
    :cond_0
    :goto_0
    const-string v4, "%s%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p4, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    :cond_1
    :goto_1
    return-void

    .line 259
    .restart local v3    # "litersOfPetrol":Ljava/lang/Float;
    :cond_2
    const-string v4, "1"

    invoke-virtual {p6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "8"

    invoke-virtual {p6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 260
    :cond_3
    new-instance v4, Ljava/math/BigDecimal;

    invoke-direct {v4, p4}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/math/BigDecimal;->stripTrailingZeros()Ljava/math/BigDecimal;

    move-result-object v0

    .line 261
    .local v0, "d":Ljava/math/BigDecimal;
    invoke-virtual {v0}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object p4

    .line 262
    goto :goto_0

    .line 263
    .end local v0    # "d":Ljava/math/BigDecimal;
    :cond_4
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v4, "0.0"

    invoke-direct {v1, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 264
    .local v1, "df":Ljava/text/DecimalFormat;
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/text/DecimalFormat;->setMaximumFractionDigits(I)V

    .line 265
    invoke-virtual {v1, v3}, Ljava/text/DecimalFormat;->format(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    goto :goto_0

    .line 271
    .end local v1    # "df":Ljava/text/DecimalFormat;
    .end local v3    # "litersOfPetrol":Ljava/lang/Float;
    :catch_0
    move-exception v2

    .line 272
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 275
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    invoke-virtual {p3, p5}, Landroid/widget/TableRow;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private showLegalDesclaimerView(Landroid/view/ViewGroup;)V
    .locals 7
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const-string v4, "showLegalDesclaimerView"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "zh"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 348
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "interface.nutritionalInfo.legalDisclaimer.zh"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 352
    .local v3, "urlDisclaimer":Ljava/lang/String;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 353
    const v4, 0x7f1100fb

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 354
    .local v2, "nutrition_disclaimer_link":Landroid/widget/TextView;
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 356
    .local v0, "content":Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v0, v4, v6, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 357
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 358
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    .end local v0    # "content":Landroid/text/SpannableString;
    .end local v2    # "nutrition_disclaimer_link":Landroid/widget/TextView;
    :cond_0
    const-string v3, ""

    .line 362
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "zh"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 363
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "interface.nutritionalInfo.learnMcdonalds.zh"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "urlDisclaimer":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 367
    .restart local v3    # "urlDisclaimer":Ljava/lang/String;
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 368
    const v4, 0x7f110490

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 369
    .local v1, "learn_mcdonalds_link":Landroid/widget/TextView;
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 371
    .restart local v0    # "content":Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v5

    invoke-virtual {v0, v4, v6, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 372
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    .end local v0    # "content":Landroid/text/SpannableString;
    .end local v1    # "learn_mcdonalds_link":Landroid/widget/TextView;
    :cond_1
    return-void

    .line 350
    .end local v3    # "urlDisclaimer":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "interface.nutritionalInfo.legalDisclaimer.en"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .restart local v3    # "urlDisclaimer":Ljava/lang/String;
    goto/16 :goto_0

    .line 365
    :cond_3
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "interface.nutritionalInfo.learnMcdonalds.en"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "urlDisclaimer":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "urlDisclaimer":Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 4
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;

    .prologue
    const-string v0, "destroyItem"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    check-cast p3, Landroid/view/View;

    .end local p3    # "view":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 123
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    const-string v0, "getCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mTitles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const-string v0, "getItemPosition"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    const/4 v0, -0x2

    return v0
.end method

.method public getPageTitle(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "getPageTitle"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mTitles:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    const-string v2, "instantiateItem"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    nop

    .line 103
    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mTitles:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 105
    .local v0, "itemTitle":I
    packed-switch v0, :pswitch_data_0

    .line 113
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->getNutritionView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 116
    .local v1, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 117
    return-object v1

    .line 107
    .end local v1    # "view":Landroid/view/View;
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->getAllergensView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 108
    .restart local v1    # "view":Landroid/view/View;
    goto :goto_0

    .line 110
    .end local v1    # "view":Landroid/view/View;
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->getIngredientsView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 111
    .restart local v1    # "view":Landroid/view/View;
    goto :goto_0

    .line 105
    :pswitch_data_0
    .packed-switch 0x7f0905a1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "isViewFromObject"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    aput-object p2, v3, v0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    if-ne p1, p2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v4, "onClick"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 380
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 384
    :sswitch_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "zh"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 385
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "interface.nutritionalInfo.legalDisclaimer.zh"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 389
    .local v2, "urlDisclaimer":Ljava/lang/String;
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 390
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 391
    .local v1, "mArgs":Landroid/os/Bundle;
    const-string v4, "link"

    invoke-virtual {v1, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v4, "view_title"

    const v5, 0x7f090599

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 393
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mContext:Landroid/content/Context;

    const-class v5, Lcom/mcdonalds/app/web/WebActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 394
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 395
    const-string v4, "fragment"

    const-string v5, "web"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    iget-object v4, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 387
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "mArgs":Landroid/os/Bundle;
    .end local v2    # "urlDisclaimer":Ljava/lang/String;
    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "interface.nutritionalInfo.legalDisclaimer.en"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .restart local v2    # "urlDisclaimer":Ljava/lang/String;
    goto :goto_1

    .line 401
    .end local v2    # "urlDisclaimer":Ljava/lang/String;
    :sswitch_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "zh"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 402
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "interface.nutritionalInfo.learnMcdonalds.zh"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 406
    .local v3, "urlearnMcdonalds":Ljava/lang/String;
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 407
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 408
    .restart local v1    # "mArgs":Landroid/os/Bundle;
    const-string v4, "link"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v4, "view_title"

    const v5, 0x7f090447

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 410
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mContext:Landroid/content/Context;

    const-class v5, Lcom/mcdonalds/app/web/WebActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 411
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 412
    const-string v4, "fragment"

    const-string v5, "web"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    iget-object v4, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 404
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "mArgs":Landroid/os/Bundle;
    .end local v3    # "urlearnMcdonalds":Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "interface.nutritionalInfo.learnMcdonalds.en"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .restart local v3    # "urlearnMcdonalds":Ljava/lang/String;
    goto :goto_2

    .line 380
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1100fb -> :sswitch_0
        0x7f110490 -> :sswitch_1
    .end sparse-switch
.end method

.method public setDataLayerTag(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 4
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    const-string v1, "setDataLayerTag"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 484
    const/4 v0, 0x0

    .line 485
    .local v0, "tabText":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 486
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 489
    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_1

    .line 490
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0905a4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 491
    const-string v1, "NutritionTabPressed"

    invoke-static {p1, v1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/support/design/widget/TabLayout$Tab;Ljava/lang/String;)V

    .line 498
    :cond_1
    :goto_0
    return-void

    .line 492
    :cond_2
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0905a1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 493
    const-string v1, "AllergensTabPressed"

    invoke-static {p1, v1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/support/design/widget/TabLayout$Tab;Ljava/lang/String;)V

    goto :goto_0

    .line 494
    :cond_3
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f0905a3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 495
    const-string v1, "IngredientsTabPressed"

    invoke-static {p1, v1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/support/design/widget/TabLayout$Tab;Ljava/lang/String;)V

    goto :goto_0
.end method
