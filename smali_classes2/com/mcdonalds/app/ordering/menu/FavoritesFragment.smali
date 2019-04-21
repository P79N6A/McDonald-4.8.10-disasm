.class public Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;
.super Landroid/support/v4/app/Fragment;
.source "FavoritesFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$OnMenuGridItemClickListener;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private isRefreshed:Z

.field mContentObserver:Landroid/database/ContentObserver;

.field private mFavoriteItemComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FavoriteItem;",
            ">;"
        }
    .end annotation
.end field

.field mFavoritesAdapter:Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;

.field mFavoritesGrid:Landroid/support/v7/widget/RecyclerView;

.field mNoFavoritesView:Landroid/view/View;

.field mProgressBar:Landroid/widget/ProgressBar;

.field mRegisterButton:Landroid/view/View;

.field mSignInButton:Landroid/view/View;

.field mSignedOutView:Landroid/view/View;

.field mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 156
    new-instance v0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$1;-><init>(Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 282
    new-instance v0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$6;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$6;-><init>(Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mFavoriteItemComparator:Ljava/util/Comparator;

    .line 292
    new-instance v0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$7;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$7;-><init>(Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 70
    return-void
.end method

.method static synthetic access$002(Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.FavoritesFragment"

    const-string v2, "access$002"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->isRefreshed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.FavoritesFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->processFavoriteItems()V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;Z)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.FavoritesFragment"

    const-string v2, "access$200"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->setRefreshing(Z)V

    return-void
.end method

.method private processFavoriteItems()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x8

    const/4 v10, 0x0

    const-string v7, "processFavoriteItems"

    invoke-static {p0, v7, v12}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    const-string v7, "customer"

    invoke-static {v7}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 174
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v7

    if-nez v7, :cond_1

    .line 175
    invoke-direct {p0, v10}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->setRefreshing(Z)V

    .line 176
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mSignedOutView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mFavoritesGrid:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7, v11}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 280
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mFavoritesGrid:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7, v10}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 181
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mSignedOutView:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 184
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->needsFavoriteProductsRefresh()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 185
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    const v8, 0x7f0903ed

    invoke-static {v7, v8}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 187
    invoke-static {}, Lcom/mcdonalds/app/util/ServiceUtils;->getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;

    move-result-object v7

    new-instance v8, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$2;

    invoke-direct {v8, p0}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$2;-><init>(Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;)V

    invoke-virtual {v7, v8}, Lcom/mcdonalds/app/util/ServiceUtils;->retrieveFavoriteProducts(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0

    .line 196
    :cond_2
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getFavoriteProducts()Ljava/util/List;

    move-result-object v2

    .line 198
    .local v2, "favoriteItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 199
    .local v4, "favoriteProductItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 201
    .local v3, "favoriteOrderItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;

    .line 202
    .local v1, "favoriteItem":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getType()Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    move-result-object v8

    sget-object v9, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;->FAVORITE_PRODUCT_TYPE_ORDER:Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    if-ne v8, v9, :cond_3

    .line 203
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 205
    :cond_3
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 209
    .end local v1    # "favoriteItem":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    :cond_4
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mFavoriteItemComparator:Ljava/util/Comparator;

    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 211
    const-string v7, "ordering"

    invoke-static {v7}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 213
    .local v6, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 214
    invoke-direct {p0, v10}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->setRefreshing(Z)V

    .line 215
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mNoFavoritesView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mFavoritesGrid:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7, v11}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 219
    :cond_5
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mNoFavoritesView:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 220
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mFavoritesGrid:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v7, v10}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 223
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    .line 224
    new-instance v7, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$3;

    invoke-direct {v7, p0}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$3;-><init>(Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;)V

    invoke-static {v3, v6, v7}, Lcom/mcdonalds/app/ordering/OrderUtils;->ordersFromFavoriteItems(Ljava/util/List;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 239
    :cond_6
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    if-eqz v7, :cond_7

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_7

    .line 240
    new-instance v5, Lcom/mcdonalds/sdk/AsyncCounter;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    new-instance v8, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$4;

    invoke-direct {v8, p0}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$4;-><init>(Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;)V

    invoke-direct {v5, v7, v8}, Lcom/mcdonalds/sdk/AsyncCounter;-><init>(ILcom/mcdonalds/sdk/AsyncListener;)V

    .line 260
    .local v5, "favoriteProductsCounter":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;

    .line 261
    .restart local v1    # "favoriteItem":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getProducts()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    new-instance v9, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$5;

    invoke-direct {v9, p0, v1, v5}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment$5;-><init>(Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;Lcom/mcdonalds/sdk/modules/models/FavoriteItem;Lcom/mcdonalds/sdk/AsyncCounter;)V

    invoke-static {v7, v6, v9}, Lcom/mcdonalds/app/ordering/ProductUtils;->createOrderProduct(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_2

    .line 277
    .end local v1    # "favoriteItem":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    .end local v5    # "favoriteProductsCounter":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<Lcom/mcdonalds/sdk/modules/models/OrderProduct;>;"
    :cond_7
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {v3}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 278
    iget-object v7, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mFavoritesAdapter:Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;

    invoke-virtual {v7, v12}, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->setProducts(Ljava/util/List;)V

    goto/16 :goto_0
.end method

.method private refreshData()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const-string v0, "refreshData"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    iput-boolean v2, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->isRefreshed:Z

    .line 166
    invoke-direct {p0, v2}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->setRefreshing(Z)V

    .line 167
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->processFavoriteItems()V

    .line 168
    return-void
.end method

.method private setRefreshing(Z)V
    .locals 4
    .param p1, "refreshing"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "setRefreshing"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v2, v0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 154
    return-void

    .line 153
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "onActivityCreated"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const-string v0, "onActivityResult"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3

    const-string v0, "onAttach"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v1, "onClick"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 144
    .local v0, "id":I
    const v1, 0x7f110515

    if-ne v0, v1, :cond_1

    .line 145
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/mcdonalds/app/customer/SignInActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->startActivity(Landroid/content/Intent;)V

    .line 150
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    const v1, 0x7f110516

    if-ne v0, v1, :cond_0

    .line 147
    const-string v1, "/order/favorites"

    const-string v2, "Start Registration"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/mcdonalds/app/customer/SignUpActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "FavoritesFragment"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "FavoritesFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "onCreate"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "onCreate"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "FavoritesFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v4, "FavoritesFragment#onCreateView"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v3, "onCreateView"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    aput-object p2, v4, v7

    aput-object p3, v4, v8

    invoke-static {p0, v3, v4}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    const v3, 0x7f0400bb

    invoke-virtual {p1, v3, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 101
    .local v2, "v":Landroid/view/View;
    const v3, 0x7f1102b1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ProgressBar;

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 102
    const v3, 0x7f1102b2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mSignedOutView:Landroid/view/View;

    .line 103
    const v3, 0x7f110515

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mSignInButton:Landroid/view/View;

    .line 104
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mSignInButton:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v3, 0x7f110516

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mRegisterButton:Landroid/view/View;

    .line 106
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mRegisterButton:Landroid/view/View;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v3, 0x7f1102b3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mNoFavoritesView:Landroid/view/View;

    .line 109
    const v3, 0x7f1102b4

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v7/widget/RecyclerView;

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mFavoritesGrid:Landroid/support/v7/widget/RecyclerView;

    .line 111
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 113
    .local v0, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    new-instance v3, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mFavoritesAdapter:Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;

    .line 114
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mFavoritesAdapter:Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;

    invoke-virtual {v3, p0}, Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;->setOnMenuGridItemClickListener(Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter$OnMenuGridItemClickListener;)V

    .line 115
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mFavoritesGrid:Landroid/support/v7/widget/RecyclerView;

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mFavoritesAdapter:Lcom/mcdonalds/app/ordering/menu/FavoritesAdapter;

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 117
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3, v8}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 118
    .local v1, "manager":Landroid/support/v7/widget/GridLayoutManager;
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 119
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mFavoritesGrid:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 121
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/mcdonalds/sdk/services/data/provider/Contract$Favorites;->CONTENT_URI:Landroid/net/Uri;

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v7, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 125
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v2

    .line 4294967295
    .end local v0    # "fragmentManager":Landroid/support/v4/app/FragmentManager;
    .end local v1    # "manager":Landroid/support/v7/widget/GridLayoutManager;
    .end local v2    # "v":Landroid/view/View;
    :catch_0
    move-exception v3

    const/4 v3, 0x0

    :try_start_1
    const-string v4, "FavoritesFragment#onCreateView"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "onDestroy"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const-string v0, "onDestroyView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 92
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 93
    return-void
.end method

.method public onDetach()V
    .locals 2

    const-string v0, "onDetach"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    return-void
.end method

.method public onMenuGridItemClicked(Landroid/view/View;Lcom/mcdonalds/sdk/modules/models/OrderProduct;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "product"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    const/4 v6, 0x1

    const-string v3, "onMenuGridItemClicked"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object p2, v4, v6

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 132
    .local v1, "args":Landroid/os/Bundle;
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v3

    const-string v4, "ARG_PRODUCT"

    invoke-virtual {v3, v4, p2}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    const-string v3, "arg_favorite_product"

    invoke-virtual {v1, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 135
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    .line 136
    .local v0, "activity":Lcom/mcdonalds/app/ordering/menu/MenuActivity;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 138
    invoke-virtual {v0, v2}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 139
    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "onPause"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    const-string v0, "onPause"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const-string v3, "onResume"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 75
    iget-boolean v3, p0, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->isRefreshed:Z

    if-nez v3, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/FavoritesFragment;->refreshData()V

    .line 79
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->isEnabled(Lcom/mcdonalds/sdk/services/configuration/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 80
    const-string v2, "ProductsFilterFavoritesSubview"

    .line 81
    .local v2, "pageSection":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setPageSection(Ljava/lang/String;)V

    .line 83
    const-string v1, "ProductsFilterFavoritesSubview"

    .line 84
    .local v1, "pageName":Ljava/lang/String;
    const-string v0, "PageViewed"

    .line 85
    .local v0, "eventName":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->logPageLoad(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .end local v0    # "eventName":Ljava/lang/String;
    .end local v1    # "pageName":Ljava/lang/String;
    .end local v2    # "pageSection":Ljava/lang/String;
    :cond_1
    const-string v3, "onResume"

    invoke-static {p0, v3}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    const-string v0, "onStart"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    const-string v0, "onStart"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    const-string v0, "onStop"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "onViewStateRestored"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    const-string v0, "onViewStateRestored"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
