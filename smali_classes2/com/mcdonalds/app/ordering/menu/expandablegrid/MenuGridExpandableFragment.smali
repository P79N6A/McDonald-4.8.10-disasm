.class public Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;
.super Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;
.source "MenuGridExpandableFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnDayPartChangeListener;
.implements Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnPodChangeListener;
.implements Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter$ExpandCollapseListener;
.implements Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter$OnMenuGridItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment$UpdateOfferFlagsTask;
    }
.end annotation


# instance fields
.field private categoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            ">;"
        }
    .end annotation
.end field

.field private mActivity:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

.field mBuildProductMapParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

.field private mCurrentMenuTypeId:I

.field mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field mMenuGrid:Landroid/support/v7/widget/RecyclerView;

.field private mMenuGridAdapter:Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;

.field mNoItemFound:Landroid/widget/TextView;

.field mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

.field private mPod:Ljava/lang/String;

.field private mSearchQuery:Ljava/lang/String;

.field mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;-><init>()V

    .line 69
    const-string v0, "Pickup"

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mPod:Ljava/lang/String;

    .line 112
    new-instance v0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment$1;-><init>(Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;)Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.expandablegrid.MenuGridExpandableFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mMenuGridAdapter:Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;Z)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.expandablegrid.MenuGridExpandableFragment"

    const-string v2, "access$100"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->setIsDataRefreshing(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;Ljava/util/Map;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.expandablegrid.MenuGridExpandableFragment"

    const-string v2, "access$200"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->onProductMapCompleted(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;)Lcom/mcdonalds/app/ordering/menu/MenuActivity;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.expandablegrid.MenuGridExpandableFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mActivity:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    return-object v0
.end method

.method private onProductMapCompleted(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, "productMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/mcdonalds/sdk/modules/models/Category;Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;>;"
    const-string v0, "onProductMapCompleted"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->updateMenuGridAdapterData(Ljava/util/Map;Ljava/util/List;)V

    .line 216
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->updateFavorites()V

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->categoryList:Ljava/util/List;

    .line 219
    return-void
.end method

.method private setupBuildRecipeMapParams()V
    .locals 2

    .prologue
    const-string v0, "setupBuildRecipeMapParams"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    new-instance v0, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    invoke-direct {v0}, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mBuildProductMapParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    .line 201
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mBuildProductMapParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;->context:Landroid/content/Context;

    .line 202
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mBuildProductMapParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mPod:Ljava/lang/String;

    iput-object v1, v0, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;->pod:Ljava/lang/String;

    .line 203
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mBuildProductMapParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mSearchQuery:Ljava/lang/String;

    iput-object v1, v0, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;->searchQuery:Ljava/lang/String;

    .line 204
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mBuildProductMapParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    const-string v1, "enableMultipleMenuTypes"

    invoke-static {v1}, Lcom/mcdonalds/sdk/services/configuration/AppParameters;->getBooleanForParameter(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;->enableMultipleMenuTypes:Z

    .line 205
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mBuildProductMapParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    iget v1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mCurrentMenuTypeId:I

    iput v1, v0, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;->currentMenuPartId:I

    .line 206
    return-void
.end method

.method private updateMenuGridAdapterData(Ljava/util/Map;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product;",
            ">;>;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "productMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/mcdonalds/sdk/modules/models/Category;Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Product;>;>;"
    .local p2, "favoriteItemList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v1, "updateMenuGridAdapterData"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 224
    :cond_0
    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->setIsProductMapEmpty(Z)V

    .line 237
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 227
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mActivity:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-virtual {v1, v3}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setCatalogSync(Z)V

    .line 228
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->setIsProductMapEmpty(Z)V

    .line 229
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mMenuGridAdapter:Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;

    invoke-virtual {v1, v3}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->setFilterFlag(Z)V

    .line 230
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mMenuGridAdapter:Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;

    invoke-virtual {v1, p1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->setProductMap(Ljava/util/Map;)V

    .line 233
    new-instance v0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment$UpdateOfferFlagsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment$UpdateOfferFlagsTask;-><init>(Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment$1;)V

    .line 234
    .local v0, "task":Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment$UpdateOfferFlagsTask;
    new-array v1, v3, [Ljava/lang/Void;

    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment$UpdateOfferFlagsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    check-cast v0, Landroid/os/AsyncTask;

    .end local v0    # "task":Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment$UpdateOfferFlagsTask;
    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 123
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mActivity:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->addOnDayPartChangeListener(Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnDayPartChangeListener;)V

    .line 124
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mActivity:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->addOnPodChangeListener(Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnPodChangeListener;)V

    .line 125
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mActivity:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->addCatalogListener(Lcom/mcdonalds/app/ordering/menu/MenuActivity$CatalogListener;)V

    .line 126
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SEARCH_QUERY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mSearchQuery:Ljava/lang/String;

    .line 85
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->setupBuildRecipeMapParams()V

    .line 87
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mActivity:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    .line 89
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->setupModules()V

    .line 90
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    const v2, 0x7f0400d5

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 95
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f1102ee

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mMenuGrid:Landroid/support/v7/widget/RecyclerView;

    .line 96
    const v2, 0x7f1102ef

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mNoItemFound:Landroid/widget/TextView;

    .line 97
    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 98
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 99
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mMenuGrid:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 101
    new-instance v2, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mMenuGridAdapter:Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;

    .line 102
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mMenuGridAdapter:Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;

    invoke-virtual {v2, p0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->setOnMenuGridItemClickListener(Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter$OnMenuGridItemClickListener;)V

    .line 103
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mMenuGridAdapter:Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;

    invoke-virtual {v2, p0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->setExpandCollapseListener(Lcom/mcdonalds/app/ordering/menu/expandablegrid/ExpandableRecyclerAdapter$ExpandCollapseListener;)V

    .line 104
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mMenuGrid:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mMenuGridAdapter:Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 106
    new-instance v0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapterFilter;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mBuildProductMapParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mMenuGridAdapter:Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mNoItemFound:Landroid/widget/TextView;

    invoke-direct {v0, v2, v3, v4}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapterFilter;-><init>(Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;Landroid/widget/TextView;)V

    .line 107
    .local v0, "filter":Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapterFilter;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mActivity:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-virtual {v2, v0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setSearchFilter(Landroid/widget/Filter;)V

    .line 109
    return-object v1
.end method

.method public onDayPartChange(Lcom/mcdonalds/sdk/modules/models/MenuType;)V
    .locals 3
    .param p1, "newMenuType"    # Lcom/mcdonalds/sdk/modules/models/MenuType;

    .prologue
    const-string v0, "onDayPartChange"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    if-eqz p1, :cond_0

    .line 131
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getID()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mCurrentMenuTypeId:I

    .line 132
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mBuildProductMapParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    iget v1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mCurrentMenuTypeId:I

    iput v1, v0, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;->currentMenuPartId:I

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->refreshData()V

    .line 135
    return-void
.end method

.method public onListItemCollapsed(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "onListItemCollapsed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 252
    return-void
.end method

.method public onListItemExpanded(I)V
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "onListItemExpanded"

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mActivity:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-virtual {v0, v4}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->collapseHeader(Z)V

    .line 242
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, p1, v3}, Landroid/support/v7/widget/GridLayoutManager;->scrollToPositionWithOffset(II)V

    .line 244
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->categoryList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->categoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 245
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v1

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->categoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Category;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Category;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setCurrentPageSection(Ljava/lang/String;)V

    .line 247
    :cond_0
    return-void
.end method

.method public onPodChange(Ljava/lang/String;)V
    .locals 3
    .param p1, "newPod"    # Ljava/lang/String;

    .prologue
    const-string v0, "onPodChange"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mPod:Ljava/lang/String;

    .line 257
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mBuildProductMapParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    iput-object p1, v0, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;->pod:Ljava/lang/String;

    .line 258
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->refreshData()V

    .line 259
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->onStop()V

    .line 140
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mMenuGridAdapter:Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mMenuGridAdapter:Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->dispatchEvents()V

    .line 143
    :cond_0
    return-void
.end method

.method protected refreshData()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const-string v1, "refreshData"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->getSyncStatus()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->isDataRefreshing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->setIsDataRefreshing(Z)V

    .line 185
    new-instance v0, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask;

    invoke-direct {v0}, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask;-><init>()V

    .line 186
    .local v0, "buildProductMapTask":Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask;
    new-instance v1, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment$3;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment$3;-><init>(Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;)V

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask;->setListener(Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapListener;)V

    .line 194
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->setupBuildRecipeMapParams()V

    .line 195
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mBuildProductMapParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    aput-object v4, v2, v3

    instance-of v3, v0, Landroid/os/AsyncTask;

    if-nez v3, :cond_2

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_2
    check-cast v0, Landroid/os/AsyncTask;

    .end local v0    # "buildProductMapTask":Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask;
    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->executeOnExecutor(Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected setupModules()V
    .locals 2

    .prologue
    const-string v0, "setupModules"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 211
    const-string v0, "ordering"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 212
    return-void
.end method

.method protected updateFavorites()V
    .locals 5

    .prologue
    const-string v2, "updateFavorites"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mMenuGridAdapter:Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 149
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 152
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->needsFavoriteProductsRefresh()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0903ed

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 155
    invoke-static {}, Lcom/mcdonalds/app/util/ServiceUtils;->getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment$2;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment$2;-><init>(Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;)V

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/ServiceUtils;->retrieveFavoriteProducts(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 165
    .local v1, "favoriteItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getFavoriteProducts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;

    .line 166
    .local v0, "favoriteItem":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getType()Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    move-result-object v3

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;->FAVORITE_PRODUCT_TYPE_ITEM:Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    if-ne v3, v4, :cond_2

    .line 167
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 170
    .end local v0    # "favoriteItem":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    :cond_3
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableFragment;->mMenuGridAdapter:Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;

    invoke-virtual {v2, v1}, Lcom/mcdonalds/app/ordering/menu/expandablegrid/MenuGridExpandableAdapter;->updateFavorites(Ljava/util/List;)V

    goto :goto_0
.end method
