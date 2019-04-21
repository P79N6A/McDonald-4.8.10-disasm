.class public Lcom/mcdonalds/app/storelocator/StoresManager;
.super Ljava/lang/Object;
.source "StoresManager.java"


# static fields
.field private static sInstance:Lcom/mcdonalds/app/storelocator/StoresManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFavoritesData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mFavoritesDataListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSortByDistance:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation
.end field

.field private mStoreLocatorController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoresManager$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/storelocator/StoresManager$1;-><init>(Lcom/mcdonalds/app/storelocator/StoresManager;)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoresManager;->mFavoritesDataListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 119
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoresManager$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/storelocator/StoresManager$2;-><init>(Lcom/mcdonalds/app/storelocator/StoresManager;)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoresManager;->mSortByDistance:Ljava/util/Comparator;

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/StoresManager;->mFavoritesData:Landroid/util/SparseArray;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/storelocator/StoresManager;)Landroid/util/SparseArray;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/storelocator/StoresManager;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoresManager"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoresManager;->mFavoritesData:Landroid/util/SparseArray;

    return-object v0
.end method

.method public static getInstance()Lcom/mcdonalds/app/storelocator/StoresManager;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.storelocator.StoresManager"

    const-string v1, "getInstance"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoresManager;->sInstance:Lcom/mcdonalds/app/storelocator/StoresManager;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoresManager;

    invoke-direct {v0}, Lcom/mcdonalds/app/storelocator/StoresManager;-><init>()V

    sput-object v0, Lcom/mcdonalds/app/storelocator/StoresManager;->sInstance:Lcom/mcdonalds/app/storelocator/StoresManager;

    .line 101
    :cond_0
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoresManager;->sInstance:Lcom/mcdonalds/app/storelocator/StoresManager;

    return-object v0
.end method


# virtual methods
.method public getAvailableNickNames()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v6, "getAvailableNickNames"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    const-string v6, "customer"

    invoke-static {v6}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 77
    .local v1, "module":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v6

    const-string v7, "interface.customer.presetStoreNames"

    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 78
    .local v4, "presets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 79
    .local v2, "nicknames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    .line 80
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 81
    .local v3, "preset":Ljava/lang/String;
    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/StoresManager;->mContext:Landroid/content/Context;

    invoke-static {v7, v3}, Lcom/mcdonalds/app/util/UIUtils;->getStringByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 85
    .end local v3    # "preset":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 86
    .local v0, "availableNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getFavoriteStores()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 87
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getFavoriteStores()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 88
    .local v5, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 92
    .end local v5    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_1
    return-object v0
.end method

.method public getController()Lcom/mcdonalds/app/storelocator/StoreLocatorController;
    .locals 2

    .prologue
    const-string v0, "getController"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoresManager;->mStoreLocatorController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    return-object v0
.end method

.method public refreshFavorites()V
    .locals 4

    .prologue
    const-string v1, "refreshFavorites"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 40
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    invoke-static {}, Lcom/mcdonalds/app/util/ServiceUtils;->getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;

    move-result-object v1

    .line 42
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoresManager;->mFavoritesDataListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 41
    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/util/ServiceUtils;->retrieveFavoriteStores(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 45
    :cond_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-string v0, "setContext"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoresManager;->mContext:Landroid/content/Context;

    .line 136
    return-void
.end method

.method public setController(Lcom/mcdonalds/app/storelocator/StoreLocatorController;)V
    .locals 3
    .param p1, "storeLocatorController"    # Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .prologue
    const-string v0, "setController"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/StoresManager;->mStoreLocatorController:Lcom/mcdonalds/app/storelocator/StoreLocatorController;

    .line 49
    return-void
.end method

.method public sortByDistance(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const-string v0, "sortByDistance"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/StoresManager;->mSortByDistance:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 69
    return-void
.end method

.method public updateFavoriteInfo(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const-string/jumbo v2, "updateFavoriteInfo"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 59
    .local v1, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    iget-object v3, p0, Lcom/mcdonalds/app/storelocator/StoresManager;->mFavoritesData:Landroid/util/SparseArray;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;

    .line 60
    .local v0, "info":Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;
    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->getFavoriteId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteId(Ljava/lang/Integer;)V

    .line 62
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;->getFavoriteNickName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    .end local v0    # "info":Lcom/mcdonalds/sdk/modules/models/StoreFavoriteInfo;
    .end local v1    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_1
    return-void
.end method
