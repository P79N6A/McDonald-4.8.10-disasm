.class public Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "StoreLocatorPagerAdapter.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

.field private final mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mIncludesCurrent:Z

.field private final mInteractionListener:Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

.field private final mItemListener:Lcom/mcdonalds/app/storelocator/PagerItemListener;

.field private mStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;Lcom/mcdonalds/app/storelocator/PagerItemListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fragmentManager"    # Landroid/support/v4/app/FragmentManager;
    .param p3, "dataProvider"    # Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;
    .param p4, "interactionListener"    # Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;
    .param p5, "pagerItemListener"    # Lcom/mcdonalds/app/storelocator/PagerItemListener;

    .prologue
    .line 33
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mFragments:Ljava/util/List;

    .line 35
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mContext:Landroid/content/Context;

    .line 36
    iput-object p3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    .line 37
    iput-object p4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mInteractionListener:Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;

    .line 38
    iput-object p5, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mItemListener:Lcom/mcdonalds/app/storelocator/PagerItemListener;

    .line 39
    return-void
.end method

.method private refreshFragments()V
    .locals 5

    .prologue
    const-string v3, "refreshFragments"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 111
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mStores:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 113
    const/4 v0, 0x1

    .line 114
    .local v0, "first":Z
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mStores:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 116
    .local v2, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    new-instance v1, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;

    invoke-direct {v1}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;-><init>()V

    .line 117
    .local v1, "fragment":Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->setStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 119
    if-eqz v0, :cond_0

    iget-boolean v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mIncludesCurrent:Z

    if-eqz v4, :cond_0

    .line 120
    sget-object v4, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Current:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-virtual {v1, v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->setSection(Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V

    .line 121
    const/4 v0, 0x0

    .line 126
    :goto_1
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mDataProvider:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;

    invoke-virtual {v1, v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->setDataProvider(Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;)V

    .line 127
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mItemListener:Lcom/mcdonalds/app/storelocator/PagerItemListener;

    invoke-virtual {v1, v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->setListener(Lcom/mcdonalds/app/storelocator/PagerItemListener;)V

    .line 129
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    :cond_0
    sget-object v4, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Favorites:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-virtual {v1, v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->setSection(Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V

    goto :goto_1

    .line 132
    .end local v0    # "first":Z
    .end local v1    # "fragment":Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;
    .end local v2    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_1
    return-void
.end method

.method private removeDuplicatedAndNonFavoriteStores(I)V
    .locals 6
    .param p1, "currentStoreId"    # I

    .prologue
    const-string v2, "removeDuplicatedAndNonFavoriteStores"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mStores:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 86
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 88
    .local v1, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteId()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    .line 91
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 94
    .end local v1    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_2
    return-void
.end method


# virtual methods
.method public clearStoresState(I)V
    .locals 5
    .param p1, "except"    # I

    .prologue
    const/4 v4, 0x0

    const-string v1, "clearStoresState"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mFragments:Ljava/util/List;

    invoke-static {v1}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 191
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 192
    if-eq v0, p1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;

    invoke-virtual {v1, v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->setExpanded(Z)V

    .line 191
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    const-string v0, "getCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    const-string v0, "getItem"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->getItem(I)Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mFragments:Ljava/util/List;

    invoke-static {v0}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;

    .line 165
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    .line 172
    const/4 v0, -0x2

    return v0
.end method

.method public getPageWidth(I)F
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x1

    const-string v0, "getPageWidth"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 183
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->getCount()I

    move-result v0

    if-le v0, v4, :cond_0

    .line 184
    const v0, 0x3f75c28f    # 0.96f

    .line 186
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getPosition(Ljava/lang/Integer;)I
    .locals 5
    .param p1, "storeId"    # Ljava/lang/Integer;

    .prologue
    const-string v2, "getPosition"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mStores:Ljava/util/List;

    invoke-static {v2}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mStores:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 49
    iget-object v2, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mStores:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 50
    .local v1, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz p1, :cond_0

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 56
    .end local v0    # "i":I
    .end local v1    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :goto_1
    return v0

    .line 48
    .restart local v0    # "i":I
    .restart local v1    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    .end local v0    # "i":I
    .end local v1    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getStore(I)Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const-string v1, "getStore"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mFragments:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;

    .line 146
    .local v0, "fragment":Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerFragment;->getStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    .line 150
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStores()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getStores"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mStores:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mStores:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public includesCurrent()Z
    .locals 2

    .prologue
    const-string v0, "includesCurrent"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-boolean v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mIncludesCurrent:Z

    return v0
.end method

.method public setCurrentStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 3
    .param p1, "currentStore"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v2, 0x0

    const-string v0, "setCurrentStore"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mStores:Ljava/util/List;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mStores:Ljava/util/List;

    .line 65
    :cond_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->removeDuplicatedAndNonFavoriteStores(I)V

    .line 67
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mStores:Ljava/util/List;

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 69
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->refreshFragments()V

    .line 70
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->notifyDataSetChanged()V

    .line 71
    return-void
.end method

.method public setIncludesCurrent(Z)V
    .locals 4
    .param p1, "includesCurrent"    # Z

    .prologue
    const-string v0, "setIncludesCurrent"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 139
    iput-boolean p1, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mIncludesCurrent:Z

    .line 140
    return-void
.end method

.method public setStores(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "stores":Ljava/util/List;, "Ljava/util/List<+Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const-string v0, "setStores"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 99
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mStores:Ljava/util/List;

    .line 104
    :goto_0
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->refreshFragments()V

    .line 105
    return-void

    .line 101
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoreLocatorPagerAdapter;->mStores:Ljava/util/List;

    goto :goto_0
.end method
