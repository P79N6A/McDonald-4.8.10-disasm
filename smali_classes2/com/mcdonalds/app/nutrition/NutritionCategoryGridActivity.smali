.class public Lcom/mcdonalds/app/nutrition/NutritionCategoryGridActivity;
.super Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;
.source "NutritionCategoryGridActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    const-string v1, "onBackPressed"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridActivity;->getDisplayedFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;

    .line 40
    .local v0, "nutritionCategoryGridFragment":Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;
    invoke-virtual {v0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->isSearchFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-virtual {v0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->onBackPressed()V

    .line 48
    .end local v0    # "nutritionCategoryGridFragment":Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;
    :goto_0
    return-void

    .line 43
    .restart local v0    # "nutritionCategoryGridFragment":Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;
    :cond_0
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->onBackPressed()V

    goto :goto_0

    .line 46
    .end local v0    # "nutritionCategoryGridFragment":Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;
    :cond_1
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 19
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 24
    .local v0, "transaction":Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridActivity;->getContainerResource()I

    move-result v1

    new-instance v2, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;

    invoke-direct {v2}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;-><init>()V

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridActivity;->passIntentExtrasAsArgument(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 27
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 28
    return-void
.end method

.method protected shouldShowHamburgerMenu()Z
    .locals 2

    .prologue
    const-string v0, "shouldShowHamburgerMenu"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    const/4 v0, 0x1

    return v0
.end method
