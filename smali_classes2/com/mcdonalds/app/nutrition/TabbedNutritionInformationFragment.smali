.class public Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "TabbedNutritionInformationFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/nutrition/NutritionInformationView;


# static fields
.field public static NAME:Ljava/lang/String;


# instance fields
.field private mPagerAdapter:Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;

.field private mPresenter:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

.field private mRootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    return-void
.end method

.method private static formatDescription(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "description"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const-string v2, "com.mcdonalds.app.nutrition.TabbedNutritionInformationFragment"

    const-string v3, "formatDescription"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.nutritionalInfo.hideHrefRecipeDescription"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    .line 94
    .local v0, "hideHrefRecipeDescripton":Z
    if-eqz v0, :cond_0

    .line 95
    const-string v1, "<a[^>]+href=\"(.*?)\"[^>]*>.*?</a>"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 98
    :cond_0
    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public displayRecipeInformation(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V
    .locals 16
    .param p1, "recipeName"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p8, "recipeComponentsString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
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
    .local p3, "nutrients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Nutrient;>;"
    .local p4, "allergens":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Allergen;>;"
    .local p5, "componentAllergens":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p6, "ingredients":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/RecipeComponent;>;"
    .local p7, "footers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "displayRecipeInformation"

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    const/4 v3, 0x4

    aput-object p5, v2, v3

    const/4 v3, 0x5

    aput-object p6, v2, v3

    const/4 v3, 0x6

    aput-object p7, v2, v3

    const/4 v3, 0x7

    aput-object p8, v2, v3

    move-object/from16 v0, p0

    invoke-static {v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f110063

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 68
    .local v12, "imageView":Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationFragment;->mPresenter:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    invoke-virtual {v1, v12}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;->loadProductImage(Landroid/widget/ImageView;)V

    .line 70
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f1100e8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 71
    .local v10, "descriptionView":Landroid/widget/TextView;
    if-eqz p2, :cond_0

    .line 72
    invoke-static/range {p2 .. p2}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationFragment;->formatDescription(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    :cond_0
    new-instance v1, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationFragment;->mPresenter:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;-><init>(Landroid/content/Context;Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationFragment;->mPagerAdapter:Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;

    .line 77
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f1100ea

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/support/v4/view/ViewPager;

    .line 78
    .local v13, "pager":Landroid/support/v4/view/ViewPager;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationFragment;->mPagerAdapter:Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;

    invoke-virtual {v13, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 79
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f1100e9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/support/design/widget/TabLayout;

    .line 80
    .local v15, "tabs":Landroid/support/design/widget/TabLayout;
    invoke-virtual {v15, v13}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 81
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-virtual {v15}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v1

    if-ge v11, v1, :cond_2

    .line 82
    invoke-virtual {v15, v11}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v14

    .line 83
    .local v14, "tab":Landroid/support/design/widget/TabLayout$Tab;
    if-eqz v14, :cond_1

    .line 84
    const v1, 0x7f040199

    invoke-virtual {v14, v1}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(I)Landroid/support/design/widget/TabLayout$Tab;

    .line 87
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationFragment;->mPagerAdapter:Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;

    invoke-virtual {v1, v14}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationPagerAdapter;->setDataLayerTag(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 81
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 89
    .end local v14    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    :cond_2
    return-void
.end method

.method protected getDataLayerEvent()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "getDataLayerEvent"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    return-object v1
.end method

.method protected getDataLayerPageSection()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "getDataLayerPageSection"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    .line 39
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 41
    .local v0, "actionBar":Landroid/support/v7/app/ActionBar;
    if-eqz v0, :cond_0

    .line 42
    const v3, 0x7f04001b

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setCustomView(I)V

    .line 43
    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0907aa

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 44
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 45
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/v7/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 46
    invoke-virtual {v0, v5}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 50
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 51
    const-string v3, "recipe_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    .local v2, "recipeId":Ljava/lang/String;
    new-instance v3, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v4

    invoke-direct {v3, v4, p0, v2}, Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;-><init>(Landroid/content/Context;Lcom/mcdonalds/app/nutrition/NutritionInformationView;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationFragment;->mPresenter:Lcom/mcdonalds/app/nutrition/NutritionInformationPresenter;

    .line 54
    .end local v2    # "recipeId":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 59
    const v0, 0x7f04002d

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationFragment;->mRootView:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/TabbedNutritionInformationFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method
