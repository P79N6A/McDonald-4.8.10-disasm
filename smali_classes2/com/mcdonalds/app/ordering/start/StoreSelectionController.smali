.class public Lcom/mcdonalds/app/ordering/start/StoreSelectionController;
.super Ljava/lang/Object;
.source "StoreSelectionController.java"

# interfaces
.implements Lcom/mcdonalds/app/storelocator/PagerItemListener;
.implements Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;
.implements Lcom/mcdonalds/app/storelocator/StoreLocatorInteractionListener;


# static fields
.field private static sNicknames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mFavoriteStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation
.end field

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/storelocator/StoreLocationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNearbyStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalCurrentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

.field private mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->sNicknames:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->refresh()V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/start/StoreSelectionController;)Landroid/content/Context;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/start/StoreSelectionController;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.start.StoreSelectionController"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/start/StoreSelectionController;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/start/StoreSelectionController;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.start.StoreSelectionController"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ordering/start/StoreSelectionController;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/start/StoreSelectionController;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.start.StoreSelectionController"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mFavoriteStores:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/mcdonalds/app/ordering/start/StoreSelectionController;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/start/StoreSelectionController;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.start.StoreSelectionController"

    const-string v2, "access$202"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mFavoriteStores:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/ordering/start/StoreSelectionController;)Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/start/StoreSelectionController;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.start.StoreSelectionController"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mOriginalCurrentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/ordering/start/StoreSelectionController;)Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/start/StoreSelectionController;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.start.StoreSelectionController"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/ordering/start/StoreSelectionController;Ljava/util/List;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/start/StoreSelectionController;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.start.StoreSelectionController"

    const-string v2, "access$500"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->updateFavoriteStores(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/ordering/start/StoreSelectionController;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/start/StoreSelectionController;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.start.StoreSelectionController"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->notifyObservers()V

    return-void
.end method

.method private getStore(Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 4
    .param p1, "storeId"    # Ljava/lang/Integer;

    .prologue
    const-string v1, "getStore"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mOriginalCurrentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mOriginalCurrentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 270
    :goto_0
    return-object v0

    .line 264
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mFavoriteStores:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 265
    .local v0, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 270
    .end local v0    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 6
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const-string v3, "getStore"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 565
    const/4 v2, 0x0

    .line 566
    .local v2, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    sget-object v3, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$5;->$SwitchMap$com$mcdonalds$app$storelocator$StoreLocatorSection:[I

    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 592
    const/4 v2, 0x0

    .line 595
    :cond_0
    :goto_0
    return-object v2

    .line 568
    :pswitch_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    .line 569
    goto :goto_0

    .line 572
    :pswitch_1
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mFavoriteStores:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 573
    .local v0, "favStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 574
    move-object v2, v0

    .line 575
    goto :goto_0

    .line 581
    .end local v0    # "favStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :pswitch_2
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mNearbyStores:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mNearbyStores:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 582
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mNearbyStores:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 583
    .local v1, "nearbyStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 584
    move-object v2, v1

    .line 585
    goto :goto_0

    .line 566
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private notifyObservers()V
    .locals 3

    .prologue
    const-string v1, "notifyObservers"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mListeners:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/storelocator/StoreLocationListener;

    .line 152
    .local v0, "listener":Lcom/mcdonalds/app/storelocator/StoreLocationListener;
    invoke-interface {v0, p0}, Lcom/mcdonalds/app/storelocator/StoreLocationListener;->onChange(Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;)V

    goto :goto_0

    .line 155
    .end local v0    # "listener":Lcom/mcdonalds/app/storelocator/StoreLocationListener;
    :cond_0
    return-void
.end method

.method private refreshStores()V
    .locals 3

    .prologue
    const-string v0, "refreshStores"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mOriginalCurrentStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 76
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mContext:Landroid/content/Context;

    const v1, 0x7f09065f

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 80
    invoke-static {}, Lcom/mcdonalds/app/util/ServiceUtils;->getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$1;-><init>(Lcom/mcdonalds/app/ordering/start/StoreSelectionController;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/ServiceUtils;->retrieveFavoriteStores(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 138
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 143
    :goto_0
    return-void

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->notifyObservers()V

    goto :goto_0
.end method

.method private updateFavoriteStores(Ljava/util/List;)V
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
    const-string v0, "updateFavoriteStores"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mFavoriteStores:Ljava/util/List;

    .line 433
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->notifyObservers()V

    .line 434
    return-void
.end method


# virtual methods
.method public addListener(Lcom/mcdonalds/app/storelocator/StoreLocationListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/mcdonalds/app/storelocator/StoreLocationListener;

    .prologue
    const-string v0, "addListener"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 161
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mListeners:Ljava/util/List;

    if-nez v0, :cond_0

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mListeners:Ljava/util/List;

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    invoke-interface {p1, p0}, Lcom/mcdonalds/app/storelocator/StoreLocationListener;->onChange(Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;)V

    .line 168
    :cond_1
    return-void
.end method

.method public addStoreToFavorites(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 5
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;
    .param p3, "nickName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcom/mcdonalds/app/storelocator/StoreLocatorSection;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "successListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const-string v1, "addStoreToFavorites"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 319
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->getStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 320
    .local v0, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0, p3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    .line 323
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 324
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 325
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$2;

    invoke-direct {v4, p0, v0, p4}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$2;-><init>(Lcom/mcdonalds/app/ordering/start/StoreSelectionController;Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 323
    invoke-virtual {v1, v2, v3, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->addFavoriteStores(Ljava/util/List;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 354
    :cond_0
    return-void
.end method

.method public addToFavoritesClicked(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V
    .locals 3
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const-string v0, "addToFavoritesClicked"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 529
    return-void
.end method

.method public allowsFavoritingWithoutMobileOrdering()Z
    .locals 2

    .prologue
    const-string v0, "allowsFavoritingWithoutMobileOrdering"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 217
    const/4 v0, 0x0

    return v0
.end method

.method public allowsSelectionWithoutMobileOrdering()Z
    .locals 2

    .prologue
    const-string v0, "allowsSelectionWithoutMobileOrdering"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public displayStoreDetails(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V
    .locals 6
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const-string v3, "displayStoreDetails"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->getStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    .line 444
    .local v2, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v2, :cond_1

    .line 446
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 447
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v3, "extra_store_section"

    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->ordinal()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 448
    const-string v3, "extra_store_detail"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 450
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mContext:Landroid/content/Context;

    instance-of v3, v3, Lcom/mcdonalds/app/ui/URLNavigationActivity;

    if-eqz v3, :cond_0

    .line 451
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/mcdonalds/app/ui/URLNavigationActivity;

    .line 452
    .local v0, "activity":Lcom/mcdonalds/app/ui/URLNavigationActivity;
    const-class v3, Lcom/mcdonalds/app/storelocator/StoreDetailsActivity;

    sget-object v4, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->NAME:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 458
    .end local v0    # "activity":Lcom/mcdonalds/app/ui/URLNavigationActivity;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 456
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mContext:Landroid/content/Context;

    const v4, 0x7f090200

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/sdk/AsyncException;->report(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public eatHereClicked(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V
    .locals 3
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const-string v0, "eatHereClicked"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->selectStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V

    .line 514
    return-void
.end method

.method public getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 2

    .prologue
    const/4 v0, 0x0

    const-string v1, "getCurrentStore"

    invoke-static {p0, v1, v0}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    goto :goto_0
.end method

.method public getFavoriteStores()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "getFavoriteStores"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mFavoriteStores:Ljava/util/List;

    return-object v0
.end method

.method public getLastLocation()Landroid/location/Location;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "getLastLocation"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    return-object v1
.end method

.method public getMapPinResID(Ljava/lang/Integer;)I
    .locals 3
    .param p1, "storeId"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x0

    const-string v0, "getMapPinResID"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 561
    return v2
.end method

.method public getNearByStores()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string v0, "getNearByStores"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    return-object v1
.end method

.method public getOfferState(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;
    .locals 3
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const-string v0, "getOfferState"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;->NO_OFFER:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    return-object v0
.end method

.method public getSelectMapPinResID(Ljava/lang/Integer;)I
    .locals 3
    .param p1, "storeId"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x0

    const-string v0, "getSelectMapPinResID"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 556
    return v2
.end method

.method public getSelectedStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "getSelectedStore"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    return-object v1
.end method

.method public getSelectedStoreId()Ljava/lang/Integer;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "getSelectedStoreId"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    return-object v1
.end method

.method public getSelectedStoreNickName()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "getSelectedStoreNickName"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    return-object v1
.end method

.method public getSelectedStoreSection()Lcom/mcdonalds/app/storelocator/StoreLocatorSection;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "getSelectedStoreSection"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    return-object v1
.end method

.method public infoClicked(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V
    .locals 3
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const-string v0, "infoClicked"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 534
    const-string v0, "/restaurant-locator"

    const-string v1, "Info Icon"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->displayStoreDetails(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V

    .line 537
    return-void
.end method

.method public isCurrentStoreSelectionMode()Z
    .locals 2

    .prologue
    const-string v0, "isCurrentStoreSelectionMode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    const/4 v0, 0x0

    return v0
.end method

.method public locationServicesEnabled()Z
    .locals 2

    .prologue
    const-string v0, "locationServicesEnabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public myMcDonaldsClicked(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V
    .locals 3
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const-string v0, "myMcDonaldsClicked"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 519
    return-void
.end method

.method public nicknameClicked(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V
    .locals 3
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const-string v0, "nicknameClicked"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    return-void
.end method

.method public placeOrderClicked(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V
    .locals 3
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const-string v0, "placeOrderClicked"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 547
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    const-string v0, "refresh"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 67
    const-string v0, "storeLocator"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mStoreLocatorModule:Lcom/mcdonalds/sdk/modules/storelocator/StoreLocatorModule;

    .line 68
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->refreshStores()V

    .line 69
    return-void
.end method

.method public removeFromFavoritesClicked(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V
    .locals 3
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const-string v0, "removeFromFavoritesClicked"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 552
    return-void
.end method

.method public removeStoreFromFavorites(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 5
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcom/mcdonalds/app/storelocator/StoreLocatorSection;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "successListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const-string v1, "removeStoreFromFavorites"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Favorites:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    if-eq p2, v1, :cond_0

    .line 360
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Attempting to remove non-favorite"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->getStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 363
    .local v0, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v0, :cond_1

    .line 364
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 365
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteId()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 366
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$3;

    invoke-direct {v4, p0, p3}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$3;-><init>(Lcom/mcdonalds/app/ordering/start/StoreSelectionController;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 364
    invoke-virtual {v1, v2, v3, v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->deleteFavoriteStores(Ljava/util/List;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 388
    :cond_1
    return-void
.end method

.method public renameStoreInFavorites(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 6
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;
    .param p3, "nickName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Lcom/mcdonalds/app/storelocator/StoreLocatorSection;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "successListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Boolean;>;"
    const-string v2, "renameStoreInFavorites"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    const/4 v4, 0x3

    aput-object p4, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 394
    sget-object v2, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Favorites:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    if-eq p2, v2, :cond_1

    sget-object v2, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Current:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    if-eq p2, v2, :cond_1

    .line 395
    const-string v2, "StoreLocatorController"

    const-string v3, "Attempting to rename non-favorite"

    invoke-static {v2, v3}, Lcom/mcdonalds/sdk/services/log/MCDLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->getStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    .line 400
    .local v1, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v1, :cond_0

    .line 402
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "previousNickName":Ljava/lang/String;
    invoke-virtual {v1, p3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreFavoriteName(Ljava/lang/String;)V

    .line 404
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v4

    new-instance v5, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$4;

    invoke-direct {v5, p0, v1, v0, p4}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController$4;-><init>(Lcom/mcdonalds/app/ordering/start/StoreSelectionController;Lcom/mcdonalds/sdk/modules/storelocator/Store;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->renameFavoriteStores(Ljava/util/List;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0
.end method

.method public requestUpdateStoresByAddress(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "showActivityIndicator"    # Z

    .prologue
    const-string v0, "requestUpdateStoresByAddress"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 473
    return-void
.end method

.method public requestUpdateStoresByCurrentLocation(Z)V
    .locals 4
    .param p1, "showActivityIndicator"    # Z

    .prologue
    const-string v0, "requestUpdateStoresByCurrentLocation"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 468
    return-void
.end method

.method public requestUpdateStoresByScrolledLocation(Lcom/mcdonalds/app/storelocator/maps/model/LatLng;)V
    .locals 3
    .param p1, "newLocation"    # Lcom/mcdonalds/app/storelocator/maps/model/LatLng;

    .prologue
    const-string v0, "requestUpdateStoresByScrolledLocation"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    return-void
.end method

.method public saveToFavoritesClicked(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V
    .locals 3
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const-string v0, "saveToFavoritesClicked"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    return-void
.end method

.method public selectStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V
    .locals 4
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const-string v1, "selectStore"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 279
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->getStore(Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 280
    .local v0, "selected":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v0, :cond_0

    .line 281
    invoke-static {v0}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackStoreSelection(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 284
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->updateCurrentStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V

    .line 286
    .end local v0    # "selected":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_1
    return-void
.end method

.method public setNearbyStores(Ljava/util/List;)V
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
    const-string v0, "setNearbyStores"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mNearbyStores:Ljava/util/List;

    .line 147
    return-void
.end method

.method public skipClicked(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V
    .locals 3
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const-string v0, "skipClicked"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 541
    invoke-static {}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackSkipFavoritesButton()V

    .line 542
    return-void
.end method

.method public stateForStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/app/storelocator/StoreItemViewState;
    .locals 3
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const-string v0, "stateForStore"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->CurrentAndFavorite:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    .line 500
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->Favorite:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    goto :goto_0
.end method

.method public updateCurrentStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V
    .locals 6
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const-string v3, "updateCurrentStore"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    .line 232
    .local v2, "previousStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->getStore(Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 235
    .local v0, "currentStore":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v3, v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setCurrentStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 237
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 252
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/start/StoreSelectionController;->mListeners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/storelocator/StoreLocationListener;

    .line 253
    .local v1, "listener":Lcom/mcdonalds/app/storelocator/StoreLocationListener;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, p0, v4}, Lcom/mcdonalds/app/storelocator/StoreLocationListener;->onCurrentStoreChange(Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    .end local v1    # "listener":Lcom/mcdonalds/app/storelocator/StoreLocationListener;
    :cond_0
    return-void
.end method
