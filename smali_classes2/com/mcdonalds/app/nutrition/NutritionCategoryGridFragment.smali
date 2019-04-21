.class public Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "NutritionCategoryGridFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$GridItemClickListener;


# static fields
.field public static CATEGORY:Ljava/lang/String;

.field public static NAME:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;

.field private mCategory:Lcom/mcdonalds/sdk/modules/models/Category;

.field private mNutritionSearchEditorListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mSearchBar:Landroid/widget/EditText;

.field private mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->NAME:Ljava/lang/String;

    .line 51
    const-string v0, "category"

    sput-object v0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->CATEGORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 58
    new-instance v0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment$1;-><init>(Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->mNutritionSearchEditorListener:Landroid/widget/TextView$OnEditorActionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;Ljava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.nutrition.NutritionCategoryGridFragment"

    const-string v2, "access$000"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->trackNutritionPageSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.nutrition.NutritionCategoryGridFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->mSearchBar:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.nutrition.NutritionCategoryGridFragment"

    const-string v2, "access$200"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->getFilteredRecipes(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;)Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.nutrition.NutritionCategoryGridFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->mAdapter:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;

    return-object v0
.end method

.method private getCategories()V
    .locals 3

    .prologue
    const-string v1, "getCategories"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    const-string v1, "nutritionInfo"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;

    .line 166
    .local v0, "nutritionModule":Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->mCategory:Lcom/mcdonalds/sdk/modules/models/Category;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->mCategory:Lcom/mcdonalds/sdk/modules/models/Category;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Category;->getID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment$4;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment$4;-><init>(Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/nutrition/NutritionModule;->getAllRecipesForCategory(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 190
    :cond_0
    return-void
.end method

.method private getFilteredRecipes(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;"
    const-string v2, "getFilteredRecipes"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v1, "recipes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    .line 197
    .local v0, "recipe":Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->shouldShow()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 201
    .end local v0    # "recipe":Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    :cond_1
    return-object v1
.end method

.method private trackNutritionPageSearch(Ljava/lang/String;)V
    .locals 3
    .param p1, "searchString"    # Ljava/lang/String;

    .prologue
    const-string v0, "trackNutritionPageSearch"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 158
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->mSearchBar:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->dismissKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    const-string v0, "/nutrition/food-search"

    invoke-static {v0, p1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackFoodSearch(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    return-void
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    const v0, 0x7f090881

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDataLayerPageSection()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getDataLayerPageSection"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->mCategory:Lcom/mcdonalds/sdk/modules/models/Category;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Category;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSearchFocused()Z
    .locals 2

    .prologue
    const-string v0, "isSearchFocused"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onAttach(Landroid/app/Activity;)V

    .line 84
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/network/RequestManager;->register(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    .line 85
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    const-string v0, "onBackPressed"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->mSearchBar:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->mSearchBar:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 223
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    sget-object v2, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->CATEGORY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Category;

    .line 97
    .local v0, "category":Lcom/mcdonalds/sdk/modules/models/Category;
    if-eqz v0, :cond_0

    .line 98
    iput-object v0, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->mCategory:Lcom/mcdonalds/sdk/modules/models/Category;

    .line 99
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->mCategory:Lcom/mcdonalds/sdk/modules/models/Category;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Category;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->setHasOptionsMenu(Z)V

    .line 103
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    const v4, 0x7f0400e6

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 108
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f040159

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 109
    .local v1, "headerView":Landroid/view/View;
    const v4, 0x7f110321

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/widget/HeaderGridView;

    .line 110
    .local v0, "gridView":Lcom/mcdonalds/app/widget/HeaderGridView;
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/widget/HeaderGridView;->addHeaderView(Landroid/view/View;)V

    .line 111
    new-instance v4, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;

    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v5

    const v6, 0x7f04012d

    invoke-direct {v4, v5, v6, p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;-><init>(Landroid/content/Context;ILcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter$GridItemClickListener;)V

    iput-object v4, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->mAdapter:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;

    .line 112
    iget-object v4, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->mAdapter:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;

    invoke-virtual {v0, v4}, Lcom/mcdonalds/app/widget/HeaderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 114
    const v4, 0x7f11048c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 116
    .local v2, "searchClearButton":Landroid/widget/Button;
    const v4, 0x7f110084

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->mSearchBar:Landroid/widget/EditText;

    .line 117
    iget-object v4, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->mSearchBar:Landroid/widget/EditText;

    new-instance v5, Lcom/mcdonalds/app/util/TextChangeFilter;

    iget-object v6, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->mAdapter:Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;

    invoke-virtual {v6}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/mcdonalds/app/util/TextChangeFilter;-><init>(Landroid/widget/Filter;)V

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 119
    iget-object v4, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->mSearchBar:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->mNutritionSearchEditorListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 121
    new-instance v4, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment$2;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment$2;-><init>(Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;)V

    invoke-virtual {v0, v4}, Lcom/mcdonalds/app/widget/HeaderGridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 137
    new-instance v4, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment$3;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment$3;-><init>(Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    const-string v4, "CancelSearchPressed"

    invoke-static {v2, v4}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v4

    const v5, 0x7f09040c

    invoke-virtual {p0, v5}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->getCategories()V

    .line 153
    return-object v3
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onDetach()V

    .line 90
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/services/network/RequestManager;->unregister(Landroid/content/Context;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V

    .line 91
    return-void
.end method

.method public onItemClick(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)V
    .locals 7
    .param p1, "recipe"    # Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    .prologue
    const-string v0, "onItemClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 209
    .local v6, "custom":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/16 v0, 0x1d

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 210
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Nutrition info"

    invoke-static {v0, v1, v6}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 212
    invoke-static {}, Lcom/mcdonalds/app/navigation/NavigationManager;->getInstance()Lcom/mcdonalds/app/navigation/NavigationManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->mCategory:Lcom/mcdonalds/sdk/modules/models/Category;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Category;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/NutritionCategoryGridFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Lcom/mcdonalds/app/navigation/NavigationManager;->showNutrition(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 213
    return-void
.end method
