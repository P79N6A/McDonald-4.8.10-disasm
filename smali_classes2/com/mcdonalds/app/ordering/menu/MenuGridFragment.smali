.class public Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;
.super Landroid/support/v4/app/Fragment;
.source "MenuGridFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/ordering/menu/MenuActivity$CatalogListener;
.implements Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnDayPartChangeListener;
.implements Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnPodChangeListener;
.implements Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$OnMenuGridItemClickListener;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$UpdateOfferFlagsTask;
    }
.end annotation


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private isProductMapEmpty:Z

.field private mActivity:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

.field mBuildProductMapParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

.field private mCategoryId:Ljava/lang/String;

.field private mCurrentMenuTypeId:I

.field mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field mFavoritesContentObserver:Landroid/database/ContentObserver;

.field private mIsDataRefreshing:Z

.field private mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

.field mMenuGrid:Landroid/support/v7/widget/RecyclerView;

.field private mMenuGridAdapter:Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;

.field mNoItemFound:Landroid/widget/TextView;

.field mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

.field private mOutageProductCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPod:Ljava/lang/String;

.field mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

.field private mSearchQuery:Ljava/lang/String;

.field mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 93
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mIsDataRefreshing:Z

    .line 89
    const-string v0, "Pickup"

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mPod:Ljava/lang/String;

    .line 90
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->isProductMapEmpty:Z

    .line 134
    new-instance v0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$1;-><init>(Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    .line 141
    new-instance v0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$2;-><init>(Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    .line 296
    new-instance v0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$5;-><init>(Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mFavoritesContentObserver:Landroid/database/ContentObserver;

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;)Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.MenuGridFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mMenuGridAdapter:Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;)Lcom/mcdonalds/app/ordering/menu/MenuActivity;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.MenuGridFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mActivity:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;)Landroid/support/v7/widget/GridLayoutManager;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.MenuGridFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;Ljava/util/Map;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.MenuGridFragment"

    const-string v2, "access$300"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->onProductMapCompleted(Ljava/util/Map;)V

    return-void
.end method

.method private finishSetup()V
    .locals 2

    .prologue
    const-string v0, "finishSetup"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-nez v0, :cond_0

    .line 316
    :cond_0
    return-void
.end method

.method private goToReceivedCategory()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v1, "goToReceivedCategory"

    invoke-static {p0, v1, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mCategoryId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mMenuGridAdapter:Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mCategoryId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->getPositionForCategoryId(I)I

    move-result v0

    .line 390
    .local v0, "position":I
    if-lez v0, :cond_0

    .line 391
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mMenuGrid:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 394
    .end local v0    # "position":I
    :cond_0
    iput-object v3, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mCategoryId:Ljava/lang/String;

    .line 395
    return-void
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

    .line 360
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->updateOutageProducts()V

    .line 361
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->updateMenuGridAdapterData(Ljava/util/Map;Ljava/util/List;)V

    .line 362
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->updateFavorites()V

    .line 363
    return-void
.end method

.method private refreshFilter()V
    .locals 4

    .prologue
    const-string v1, "refreshFilter"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    new-instance v0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapterFilter;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mBuildProductMapParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mMenuGridAdapter:Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mNoItemFound:Landroid/widget/TextView;

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapterFilter;-><init>(Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;Landroid/widget/TextView;)V

    .line 355
    .local v0, "filter":Lcom/mcdonalds/app/ordering/menu/MenuGridAdapterFilter;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mActivity:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->removeSearchFilter()V

    .line 356
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mActivity:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setSearchFilter(Landroid/widget/Filter;)V

    .line 357
    return-void
.end method

.method private setupBuildRecipeMapParams()V
    .locals 2

    .prologue
    const-string v0, "setupBuildRecipeMapParams"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    new-instance v0, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    invoke-direct {v0}, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mBuildProductMapParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    .line 284
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mBuildProductMapParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;->context:Landroid/content/Context;

    .line 285
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mBuildProductMapParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mPod:Ljava/lang/String;

    iput-object v1, v0, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;->pod:Ljava/lang/String;

    .line 286
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mBuildProductMapParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mSearchQuery:Ljava/lang/String;

    iput-object v1, v0, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;->searchQuery:Ljava/lang/String;

    .line 287
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mBuildProductMapParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    const-string v1, "enableMultipleMenuTypes"

    invoke-static {v1}, Lcom/mcdonalds/sdk/services/configuration/AppParameters;->getBooleanForParameter(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;->enableMultipleMenuTypes:Z

    .line 288
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mBuildProductMapParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    iget v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mCurrentMenuTypeId:I

    iput v1, v0, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;->currentMenuPartId:I

    .line 289
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

    .line 371
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 372
    :cond_0
    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->setIsProductMapEmpty(Z)V

    .line 385
    :goto_0
    return-void

    .line 374
    :cond_1
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 375
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mActivity:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-virtual {v1, v3}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setCatalogSync(Z)V

    .line 376
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->setIsProductMapEmpty(Z)V

    .line 377
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mMenuGridAdapter:Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;

    invoke-virtual {v1, p1}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->setProductMap(Ljava/util/Map;)V

    .line 380
    new-instance v0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$UpdateOfferFlagsTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$UpdateOfferFlagsTask;-><init>(Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$1;)V

    .line 381
    .local v0, "task":Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$UpdateOfferFlagsTask;
    new-array v1, v3, [Ljava/lang/Void;

    instance-of v2, v0, Landroid/os/AsyncTask;

    if-nez v2, :cond_2

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$UpdateOfferFlagsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 383
    .end local v0    # "task":Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$UpdateOfferFlagsTask;
    :goto_1
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->goToReceivedCategory()V

    goto :goto_0

    .line 381
    .restart local v0    # "task":Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$UpdateOfferFlagsTask;
    :cond_2
    check-cast v0, Landroid/os/AsyncTask;

    .end local v0    # "task":Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$UpdateOfferFlagsTask;
    invoke-static {v0, v1}, Lcom/newrelic/agent/android/instrumentation/AsyncTaskInstrumentation;->execute(Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method

.method private updateOutageProducts()V
    .locals 3

    .prologue
    const-string v1, "updateOutageProducts"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mMenuGridAdapter:Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 238
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 240
    .local v0, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getOutageProducts()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mOutageProductCodes:Ljava/util/List;

    .line 242
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mOutageProductCodes:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mOutageProductCodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mMenuGridAdapter:Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mOutageProductCodes:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->setOutageProduct(Ljava/util/List;)V

    .line 248
    .end local v0    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_0
    return-void
.end method


# virtual methods
.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 398
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0907b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected isDataRefreshing()Z
    .locals 2

    .prologue
    const-string v0, "isDataRefreshing"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mIsDataRefreshing:Z

    return v0
.end method

.method public isProductMapEmpty()Z
    .locals 2

    .prologue
    const-string v0, "isProductMapEmpty"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 366
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->isProductMapEmpty:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "onActivityCreated"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 179
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mActivity:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->addOnDayPartChangeListener(Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnDayPartChangeListener;)V

    .line 180
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mActivity:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->addOnPodChangeListener(Lcom/mcdonalds/app/ordering/menu/MenuActivity$OnPodChangeListener;)V

    .line 181
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mActivity:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->addCatalogListener(Lcom/mcdonalds/app/ordering/menu/MenuActivity$CatalogListener;)V

    .line 182
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

.method public onCatalogReady()V
    .locals 2

    .prologue
    const-string v0, "onCatalogReady"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->refreshData()V

    .line 294
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const-string v0, "MenuGridFragment"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "MenuGridFragment#onCreate"

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

    .line 100
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SEARCH_QUERY"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mSearchQuery:Ljava/lang/String;

    .line 104
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_category_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mCategoryId:Ljava/lang/String;

    .line 107
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->setupBuildRecipeMapParams()V

    .line 109
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mActivity:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    .line 110
    const-string v0, "onCreate"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "MenuGridFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v3, "MenuGridFragment#onCreateView"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v2, "onCreateView"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    aput-object p3, v3, v6

    invoke-static {p0, v2, v3}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    const v2, 0x7f0400d5

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 116
    .local v1, "v":Landroid/view/View;
    const v2, 0x7f1102ee

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mMenuGrid:Landroid/support/v7/widget/RecyclerView;

    .line 117
    const v2, 0x7f1102ef

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mNoItemFound:Landroid/widget/TextView;

    .line 118
    new-instance v2, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v6}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    .line 119
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mSpanSizeLookup:Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 120
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mMenuGrid:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mLayoutManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 122
    new-instance v2, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mMenuGridAdapter:Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;

    .line 123
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mMenuGridAdapter:Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;

    invoke-virtual {v2, p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->setOnMenuGridItemClickListener(Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter$OnMenuGridItemClickListener;)V

    .line 124
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mMenuGrid:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mMenuGridAdapter:Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 125
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mMenuGrid:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mScrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 127
    new-instance v0, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapterFilter;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mBuildProductMapParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mMenuGridAdapter:Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mNoItemFound:Landroid/widget/TextView;

    invoke-direct {v0, v2, v3, v4}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapterFilter;-><init>(Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;Landroid/widget/TextView;)V

    .line 128
    .local v0, "filter":Lcom/mcdonalds/app/ordering/menu/MenuGridAdapterFilter;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mActivity:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-virtual {v2, v0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->setSearchFilter(Landroid/widget/Filter;)V

    .line 130
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->setupModules()V

    .line 131
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v1

    .line 4294967295
    .end local v0    # "filter":Lcom/mcdonalds/app/ordering/menu/MenuGridAdapterFilter;
    .end local v1    # "v":Landroid/view/View;
    :catch_0
    move-exception v2

    const/4 v2, 0x0

    :try_start_1
    const-string v3, "MenuGridFragment#onCreateView"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
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

    .line 186
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getID()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mCurrentMenuTypeId:I

    .line 187
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mBuildProductMapParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    iget v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mCurrentMenuTypeId:I

    iput v1, v0, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;->currentMenuPartId:I

    .line 188
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->refreshData()V

    .line 189
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->refreshFilter()V

    .line 190
    return-void
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

    const-string v0, "onDestroyView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

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

.method public onMenuGridItemClicked(Landroid/view/View;Lcom/mcdonalds/sdk/modules/models/Product;Ljava/lang/String;I)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "product"    # Lcom/mcdonalds/sdk/modules/models/Product;
    .param p3, "categoryName"    # Ljava/lang/String;
    .param p4, "categoryId"    # I

    .prologue
    const-string v3, "onMenuGridItemClicked"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object p3, v4, v5

    const/4 v5, 0x3

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 329
    .local v0, "args":Landroid/os/Bundle;
    const-string v3, "ARG_RECIPE_ID"

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/Product;->getExternalId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 330
    const-string v3, "ARG_CAT_ID"

    invoke-virtual {v0, v3, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 332
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v3

    const-string v4, "ARG_PRODUCT_PASSED"

    invoke-virtual {v3, v4, p2}, Lcom/mcdonalds/sdk/services/data/DataPasser;->putData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 334
    const-string v3, "ARG_ANALYTICS_DAYPART_INDEX"

    iget v4, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mCurrentMenuTypeId:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 335
    const-string v3, "ARG_ANALYTICS_CATEGORY_NAME"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->reportCurrentPageSection()V

    .line 338
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mActivity:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    const-class v4, Lcom/mcdonalds/app/ordering/productdetail/ProductDetailsActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 339
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 340
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    .line 341
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    const-string v4, "interface.ordering.disableTransitionAnimation"

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 342
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mActivity:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-virtual {v3, v1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->startActivity(Landroid/content/Intent;)V

    .line 351
    :goto_0
    return-void

    .line 344
    :cond_0
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mActivity:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    const-string v4, "image"

    .line 345
    invoke-static {v3, p1, v4}, Landroid/support/v4/app/ActivityOptionsCompat;->makeSceneTransitionAnimation(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)Landroid/support/v4/app/ActivityOptionsCompat;

    move-result-object v2

    .line 346
    .local v2, "options":Landroid/support/v4/app/ActivityOptionsCompat;
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mActivity:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-virtual {v2}, Landroid/support/v4/app/ActivityOptionsCompat;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 349
    .end local v2    # "options":Landroid/support/v4/app/ActivityOptionsCompat;
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mActivity:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-virtual {v3, v1}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const-string v0, "onPause"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mFavoritesContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 321
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 322
    const-string v0, "onPause"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

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

    .line 403
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mPod:Ljava/lang/String;

    .line 404
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mBuildProductMapParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    iput-object p1, v0, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;->pod:Ljava/lang/String;

    .line 405
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->refreshData()V

    .line 406
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->refreshFilter()V

    .line 407
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const-string v0, "onResume"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 167
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-nez v0, :cond_1

    .line 168
    :cond_0
    const-string v0, "ordering"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 169
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 171
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->updateFavorites()V

    .line 172
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/mcdonalds/sdk/services/data/provider/Contract$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mFavoritesContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 173
    const-string v0, "onResume"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

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

    .prologue
    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    const-string v0, "onStop"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 195
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mFavoritesContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 201
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

.method protected refreshData()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const-string v1, "refreshData"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/CatalogManager;->getSyncStatus()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->isDataRefreshing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 267
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->setIsDataRefreshing(Z)V

    .line 269
    new-instance v0, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask;

    invoke-direct {v0}, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask;-><init>()V

    .line 270
    .local v0, "buildProductMapTask":Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask;
    new-instance v1, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$4;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$4;-><init>(Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;)V

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask;->setListener(Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapListener;)V

    .line 277
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->setupBuildRecipeMapParams()V

    .line 278
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v3, [Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mBuildProductMapParams:Lcom/mcdonalds/app/nutrition/tasks/BuildProductMapTask$BuildProductMapParams;

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

.method protected setIsDataRefreshing(Z)V
    .locals 4
    .param p1, "isRefreshing"    # Z

    .prologue
    const-string v0, "setIsDataRefreshing"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mIsDataRefreshing:Z

    .line 252
    return-void
.end method

.method protected setIsProductMapEmpty(Z)V
    .locals 4
    .param p1, "isEmpty"    # Z

    .prologue
    const-string v0, "setIsProductMapEmpty"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->isProductMapEmpty:Z

    .line 411
    return-void
.end method

.method protected setupModules()V
    .locals 2

    .prologue
    const-string v0, "setupModules"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 306
    const-string v0, "ordering"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 307
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->finishSetup()V

    .line 308
    return-void
.end method

.method protected updateFavorites()V
    .locals 5

    .prologue
    const-string v2, "updateFavorites"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mMenuGridAdapter:Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 206
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 207
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 208
    .local v1, "favoriteItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->needsFavoriteProductsRefresh()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0903ed

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 211
    invoke-static {}, Lcom/mcdonalds/app/util/ServiceUtils;->getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$3;

    invoke-direct {v3, p0, v1}, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment$3;-><init>(Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/ServiceUtils;->retrieveFavoriteProducts(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 233
    .end local v1    # "favoriteItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    :cond_0
    :goto_0
    return-void

    .line 226
    .restart local v1    # "favoriteItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FavoriteItem;>;"
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

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

    .line 227
    .local v0, "favoriteItem":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem;->getType()Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    move-result-object v3

    sget-object v4, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;->FAVORITE_PRODUCT_TYPE_ITEM:Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    if-ne v3, v4, :cond_2

    .line 228
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 231
    .end local v0    # "favoriteItem":Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
    :cond_3
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuGridFragment;->mMenuGridAdapter:Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;

    invoke-virtual {v2, v1}, Lcom/mcdonalds/app/ordering/menu/MenuGridAdapter;->updateFavorites(Ljava/util/List;)V

    goto :goto_0
.end method
