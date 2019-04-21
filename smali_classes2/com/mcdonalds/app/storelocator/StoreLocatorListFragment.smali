.class public Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;
.super Landroid/support/v4/app/ListFragment;
.source "StoreLocatorListFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/storelocator/StoreLocationListener;
.implements Lcom/mcdonalds/app/ui/listview/ExpandCollapseListener;
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field public _nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

.field private mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

.field private mInteractionListener:Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

.field private mLastExpandedPosition:I

.field private mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mOffersOnlyMode:Ljava/lang/Boolean;

.field private mPreviousId:Ljava/lang/Integer;

.field private mProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

.field private mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private mStoreDelayRefresh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/support/v4/app/ListFragment;-><init>()V

    .line 49
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mOffersOnlyMode:Ljava/lang/Boolean;

    .line 50
    iput-boolean v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mStoreDelayRefresh:Z

    .line 51
    const/4 v0, -0x1

    iput v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mLastExpandedPosition:I

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorListFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mStoreDelayRefresh:Z

    return v0
.end method

.method static synthetic access$002(Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorListFragment"

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

    .line 30
    iput-boolean p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mStoreDelayRefresh:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;)Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorListFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mInteractionListener:Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorListFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->scheduleMinRefreshDelay()V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorListFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 30
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method private clearPreviousCurrentStoreState(Ljava/lang/String;)V
    .locals 9
    .param p1, "previousStoreId"    # Ljava/lang/String;

    .prologue
    const-string v6, "clearPreviousCurrentStoreState"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 338
    sget-object v6, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->LOG_TAG:Ljava/lang/String;

    const-string v7, "clearPreviousCurrentStoreState"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    const/4 v2, -0x1

    .line 342
    .local v2, "previousId":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 349
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    invoke-virtual {v6}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->getCount()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 351
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    invoke-virtual {v6, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 352
    .local v3, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v6

    if-ne v6, v2, :cond_0

    .line 354
    invoke-direct {p0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->isPositionVisible(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 356
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v7

    sub-int v7, v1, v7

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 357
    .local v4, "view":Landroid/view/View;
    if-eqz v4, :cond_0

    .line 359
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;

    .line 360
    .local v5, "viewHolder":Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;
    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    invoke-virtual {v6, v1, v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->refreshContent(ILcom/mcdonalds/app/storelocator/StoreItemViewHolder;)V

    .line 349
    .end local v4    # "view":Landroid/view/View;
    .end local v5    # "viewHolder":Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 343
    .end local v1    # "i":I
    .end local v3    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :catch_0
    move-exception v0

    .line 344
    .local v0, "e":Ljava/lang/NullPointerException;
    sget-object v6, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->LOG_TAG:Ljava/lang/String;

    const-string v7, "no previous id"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 345
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v6, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->LOG_TAG:Ljava/lang/String;

    const-string v7, "invalid id"

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 365
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v1    # "i":I
    :cond_1
    return-void
.end method

.method private isPositionVisible(I)Z
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "isPositionVisible"

    new-array v3, v0, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListView:Landroid/widget/ListView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListView:Landroid/widget/ListView;

    .line 170
    invoke-virtual {v2}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    if-lt p1, v2, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListView:Landroid/widget/ListView;

    .line 171
    invoke-virtual {v2}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v2

    if-gt p1, v2, :cond_0

    .line 169
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 171
    goto :goto_0
.end method

.method private scheduleMinRefreshDelay()V
    .locals 4

    .prologue
    const-string v0, "scheduleMinRefreshDelay"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mStoreDelayRefresh:Z

    .line 370
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment$2;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment$2;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 378
    return-void
.end method


# virtual methods
.method public clearZoomFlag()V
    .locals 2

    .prologue
    const-string v0, "clearZoomFlag"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 334
    return-void
.end method

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
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const-string v4, "onActivityResult"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x1

    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 383
    sget-object v4, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->LOG_TAG:Ljava/lang/String;

    const-string v5, "onActivityResult"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/ListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 387
    const/16 v4, 0x16

    if-ne p1, v4, :cond_0

    const/4 v4, -0x1

    if-ne p2, v4, :cond_0

    .line 389
    const-string v4, "name"

    invoke-virtual {p3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "newName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 393
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getSelectedStoreSection()Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    move-result-object v4

    sget-object v5, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Nearby:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    if-ne v4, v5, :cond_1

    .line 395
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mInteractionListener:Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .line 396
    invoke-virtual {v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getSelectedStoreId()Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .line 397
    invoke-virtual {v6}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getSelectedStoreSection()Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    move-result-object v6

    .line 395
    invoke-interface {v4, v5, v6, v0, v8}, Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;->addStoreToFavorites(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 413
    :goto_0
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .line 414
    invoke-virtual {v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getSelectedStoreId()Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .line 415
    invoke-virtual {v6}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getSelectedStoreSection()Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    move-result-object v6

    .line 413
    invoke-virtual {v4, v5, v6}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->getPosition(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)I

    move-result v1

    .line 418
    .local v1, "position":I
    invoke-direct {p0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->isPositionVisible(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 420
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int v5, v1, v5

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 421
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;

    .line 423
    .local v3, "viewHolder":Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;
    invoke-virtual {v3}, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;->getNickName()Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 427
    .end local v0    # "newName":Ljava/lang/String;
    .end local v1    # "position":I
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "viewHolder":Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;
    :cond_0
    return-void

    .line 404
    .restart local v0    # "newName":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mInteractionListener:Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .line 405
    invoke-virtual {v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getSelectedStoreId()Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .line 406
    invoke-virtual {v6}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getSelectedStoreSection()Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    move-result-object v6

    .line 404
    invoke-interface {v4, v5, v6, v0, v8}, Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;->renameStoreInFavorites(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0
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

.method public onChange(Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;)V
    .locals 9
    .param p1, "provider"    # Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .prologue
    const/16 v8, 0x14

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v4, "onChange"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    sget-object v4, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->LOG_TAG:Ljava/lang/String;

    const-string v5, "onChange"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->isRefreshing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 181
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v4, v6}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 184
    :cond_0
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    if-eqz v4, :cond_3

    .line 186
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->setCurrentStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 187
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getFavoriteStores()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->setFavoriteStores(Ljava/util/List;)V

    .line 188
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->setDataProvider(Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;)V

    .line 189
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->setListener(Lcom/mcdonalds/app/storelocator/PagerItemListener;)V

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v1, "nearby":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getNearByStores()Ljava/util/List;

    move-result-object v3

    .line 194
    .local v3, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "modules.storeLocator.sortStoresDistanceOnlyRelativeToUserLocation"

    .line 195
    invoke-virtual {v4, v5, v7}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;Z)Z

    move-result v2

    .line 197
    .local v2, "sortOnlyByUserLocation":Z
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v4

    const-string v5, "interface.storelocator.ignoreSortingForUserDistanceOnFinalStoreList"

    .line 198
    invoke-virtual {v4, v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;Z)Z

    move-result v0

    .line 200
    .local v0, "ignoreSortingForUserDistanceOnFinalStoreList":Z
    if-eqz v2, :cond_1

    .line 201
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v4, v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->sortStoresByDistance(Ljava/util/List;)V

    .line 204
    :cond_1
    if-eqz v3, :cond_5

    .line 205
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v8, :cond_4

    .line 207
    invoke-interface {v3, v6, v8}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 211
    :goto_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    iget-object v4, v4, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mMobileOrderFilterLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 216
    :goto_1
    if-nez v2, :cond_2

    if-nez v0, :cond_2

    .line 217
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v4, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->sortStoresByDistance(Ljava/util/List;)V

    .line 219
    :cond_2
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    invoke-virtual {v4, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->setNearByStores(Ljava/util/List;)V

    .line 220
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    invoke-virtual {v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->storesUpdated()V

    .line 222
    .end local v0    # "ignoreSortingForUserDistanceOnFinalStoreList":Z
    .end local v1    # "nearby":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    .end local v2    # "sortOnlyByUserLocation":Z
    .end local v3    # "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    :cond_3
    return-void

    .line 209
    .restart local v0    # "ignoreSortingForUserDistanceOnFinalStoreList":Z
    .restart local v1    # "nearby":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    .restart local v2    # "sortOnlyByUserLocation":Z
    .restart local v3    # "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    :cond_4
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 213
    :cond_5
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    iget-object v4, v4, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->mMobileOrderFilterLayout:Landroid/widget/LinearLayout;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const-string v0, "StoreLocatorListFragment"

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->startTracing(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v1, "StoreLocatorListFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "onCreate"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    invoke-super {p0, p1}, Landroid/support/v4/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 78
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    if-nez v0, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getController()Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 82
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 94
    :goto_1
    const-string v0, "onCreate"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-void

    .line 4294967295
    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "StoreLocatorListFragment#onCreate"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorContainerFragment;->getController()Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->setController(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)V

    .line 89
    :cond_1
    const-string v0, "ordering"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isModuleEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mOffersOnlyMode:Ljava/lang/Boolean;

    .line 92
    :cond_2
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    .line 93
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->setLimit(I)V

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->_nr_trace:Lcom/newrelic/agent/android/tracing/Trace;

    const-string v2, "StoreLocatorListFragment#onCreateView"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v1, "onCreateView"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->LOG_TAG:Ljava/lang/String;

    const-string v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const v1, 0x7f04011e

    invoke-virtual {p1, v1, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 113
    .local v0, "group":Landroid/view/ViewGroup;
    const v1, 0x7f110296

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 114
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils;->setDefaultRefreshColors(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    .line 116
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->scheduleMinRefreshDelay()V

    .line 118
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v2, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment$1;-><init>(Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 133
    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListView:Landroid/widget/ListView;

    .line 135
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 136
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 138
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->setAbsListView(Landroid/widget/AbsListView;)V

    .line 139
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mOffersOnlyMode:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->setOffersOnly(Ljava/lang/Boolean;)V

    .line 140
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    invoke-virtual {v1, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->setExpandCollapseListener(Lcom/mcdonalds/app/ui/listview/ExpandCollapseListener;)V

    .line 142
    invoke-static {}, Lcom/newrelic/agent/android/tracing/TraceMachine;->exitMethod()V

    return-object v0

    .line 4294967295
    .end local v0    # "group":Landroid/view/ViewGroup;
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    :try_start_1
    const-string v2, "StoreLocatorListFragment#onCreateView"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/tracing/TraceMachine;->enterMethod(Lcom/newrelic/agent/android/tracing/Trace;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onCurrentStoreChange(Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;Ljava/lang/String;)V
    .locals 3
    .param p1, "provider"    # Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;
    .param p2, "previousCurrentStoreId"    # Ljava/lang/String;

    .prologue
    const-string v0, "onCurrentStoreChange"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onCurrentStoreChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->setDataProvider(Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;)V

    .line 305
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-interface {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->setCurrentStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 306
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->storesUpdated()V

    .line 308
    invoke-direct {p0, p2}, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->clearPreviousCurrentStoreState(Ljava/lang/String;)V

    .line 310
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const-string v0, "onDestroy"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroy()V

    .line 101
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->removeListener(Lcom/mcdonalds/app/storelocator/StoreLocationListener;)V

    .line 104
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    const-string v0, "onDestroyView"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/ListFragment;->onDestroyView()V

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

.method public onItemCollapsed(I)V
    .locals 6
    .param p1, "position"    # I

    .prologue
    const-string v2, "onItemCollapsed"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    sget-object v2, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemCollapsed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->isPositionVisible(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    sub-int v3, p1, v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 161
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;

    .line 163
    .local v1, "viewHolder":Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    invoke-virtual {v2, p1, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->refreshContent(ILcom/mcdonalds/app/storelocator/StoreItemViewHolder;)V

    .line 165
    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;
    :cond_0
    return-void
.end method

.method public onItemExpanded(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "onItemExpanded"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 149
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemExpanded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iput p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mLastExpandedPosition:I

    .line 151
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
    .locals 2

    const-string v0, "onResume"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/model/activity/EnsightenActivityHandler;->onLifecycleMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    const-string v0, "onResume"

    invoke-static {p0, v0}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onSelectedStoreChange(Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;Ljava/lang/String;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;Z)V
    .locals 8
    .param p1, "provider"    # Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;
    .param p2, "previousSelectionId"    # Ljava/lang/String;
    .param p3, "previousSection"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;
    .param p4, "shouldExpand"    # Z

    .prologue
    const-string v4, "onSelectedStoreChange"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    const/4 v6, 0x3

    new-instance v7, Ljava/lang/Boolean;

    invoke-direct {v7, p4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v7, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    invoke-interface {p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getSelectedStoreId()Ljava/lang/Integer;

    move-result-object v3

    .line 250
    .local v3, "storeId":Ljava/lang/Integer;
    sget-object v4, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSelectedStoreChange: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    if-eqz v4, :cond_2

    .line 256
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v4, v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->setDataProvider(Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;)V

    .line 258
    if-eqz v3, :cond_4

    .line 260
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 261
    invoke-interface {v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getSelectedStoreId()Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 262
    invoke-interface {v6}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getSelectedStoreSection()Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    move-result-object v6

    .line 260
    invoke-virtual {v4, v5, v6}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->getPosition(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)I

    move-result v1

    .line 265
    .local v1, "position":I
    invoke-direct {p0, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->isPositionVisible(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 266
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 269
    :cond_0
    if-eqz p4, :cond_3

    .line 271
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    invoke-virtual {v4, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->isExpanded(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 272
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    invoke-virtual {v4, v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->expand(I)V

    .line 286
    :cond_1
    :goto_0
    iput-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mPreviousId:Ljava/lang/Integer;

    .line 294
    .end local v1    # "position":I
    :cond_2
    return-void

    .line 278
    .restart local v1    # "position":I
    :cond_3
    if-eqz p2, :cond_1

    .line 279
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, p3}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->getPosition(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)I

    move-result v2

    .line 280
    .local v2, "previousPosition":I
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    invoke-virtual {v4, v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->isExpanded(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 281
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    invoke-virtual {v4, v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->collapse(I)V

    goto :goto_0

    .line 290
    .end local v1    # "position":I
    .end local v2    # "previousPosition":I
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    invoke-virtual {v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->getCount()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 291
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    invoke-virtual {v4, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->collapse(I)V

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
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

.method public refreshSelectedStore()V
    .locals 6

    .prologue
    const-string v3, "refreshSelectedStore"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    sget-object v3, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->LOG_TAG:Ljava/lang/String;

    const-string v4, "refreshSelectedStore"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 318
    invoke-interface {v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getSelectedStoreId()Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 319
    invoke-interface {v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;->getSelectedStoreSection()Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    move-result-object v5

    .line 317
    invoke-virtual {v3, v4, v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->getPosition(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)I

    move-result v0

    .line 322
    .local v0, "position":I
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->isPositionVisible(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 324
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v0, v4

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 325
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;

    .line 327
    .local v2, "viewHolder":Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mListAdapter:Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;

    invoke-virtual {v3, v0, v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorListAdapter;->refreshContent(ILcom/mcdonalds/app/storelocator/StoreItemViewHolder;)V

    .line 329
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "viewHolder":Lcom/mcdonalds/app/storelocator/StoreItemViewHolder;
    :cond_0
    return-void
.end method

.method public setController(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)V
    .locals 3
    .param p1, "controller"    # Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .prologue
    const-string v0, "setController"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    if-nez p1, :cond_0

    .line 71
    :goto_0
    return-void

    .line 64
    :cond_0
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->LOG_TAG:Ljava/lang/String;

    const-string v1, "setController"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .line 67
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 68
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mInteractionListener:Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

    .line 70
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorListFragment;->mController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    invoke-virtual {v0, p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->addListener(Lcom/mcdonalds/app/storelocator/StoreLocationListener;)V

    goto :goto_0
.end method
