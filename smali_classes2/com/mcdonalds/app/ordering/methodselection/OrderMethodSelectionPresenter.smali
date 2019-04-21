.class public Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;
.super Ljava/lang/Object;
.source "OrderMethodSelectionPresenter.java"


# instance fields
.field private checkfirstimeload:Z

.field private mAddressAsyncListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            ">;"
        }
    .end annotation
.end field

.field public mAsapDelivery:Z

.field private mAsapDeliveryDate:Ljava/util/Date;

.field private mAsapDeliveryDateString:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mDeliveryAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

.field private mDeliveryStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

.field private mEdtInMin:Ljava/lang/String;

.field private mIsDelivery:Z

.field private mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

.field private mPickupStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

.field private mScheduledDeliveryDate:Ljava/util/Date;

.field private mScheduledDeliveryDateString:Ljava/lang/String;

.field private mView:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mAsapDelivery:Z

    .line 241
    new-instance v0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$2;-><init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mAddressAsyncListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 58
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mView:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;

    .line 60
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;)Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.methodselection.OrderMethodSelectionPresenter"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mView:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.methodselection.OrderMethodSelectionPresenter"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->checkSaveState()V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.methodselection.OrderMethodSelectionPresenter"

    const-string v2, "access$200"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->setupDeliveryStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;)Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.methodselection.OrderMethodSelectionPresenter"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mDeliveryStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;Lcom/mcdonalds/sdk/modules/storelocator/Store;)Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.methodselection.OrderMethodSelectionPresenter"

    const-string v2, "access$302"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mDeliveryStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.methodselection.OrderMethodSelectionPresenter"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->checkfirstimeload:Z

    return v0
.end method

.method static synthetic access$402(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;Z)Z
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.methodselection.OrderMethodSelectionPresenter"

    const-string v2, "access$402"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->checkfirstimeload:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;)Landroid/content/Context;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.methodselection.OrderMethodSelectionPresenter"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkSaveState()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "checkSaveState"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    iget-boolean v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mIsDelivery:Z

    if-eqz v2, :cond_3

    .line 376
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mDeliveryAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mDeliveryStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mAsapDelivery:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mAsapDeliveryDate:Ljava/util/Date;

    if-nez v2, :cond_1

    :cond_0
    iget-boolean v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mAsapDelivery:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mScheduledDeliveryDate:Ljava/util/Date;

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mAsapDeliveryDateString:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 384
    .local v0, "canSave":Z
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mView:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;

    invoke-interface {v1, v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;->setSaveButtonState(Z)V

    .line 385
    return-void

    .end local v0    # "canSave":Z
    :cond_2
    move v0, v1

    .line 376
    goto :goto_0

    .line 382
    :cond_3
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mPickupStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-eqz v2, :cond_4

    .restart local v0    # "canSave":Z
    :goto_1
    goto :goto_0

    .end local v0    # "canSave":Z
    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method private getDifferenceInMillis(I)J
    .locals 6
    .param p1, "minutes"    # I

    .prologue
    const-string v2, "getDifferenceInMillis"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 368
    .local v0, "currentTimeMillis":J
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, p1

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method

.method private getStoreForDelivery()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "getStoreForDelivery"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->getStoreForDelivery(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 281
    return-void
.end method

.method private setAsapDeliveryDate(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 5
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v4, 0x1

    const-string v1, "setAsapDeliveryDate"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getNowInStoreLocalTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/UIUtils;->getDateFromISO8601(Ljava/lang/String;Ljava/util/TimeZone;)Ljava/util/Date;

    move-result-object v0

    .line 154
    .local v0, "nowInStoreTime":Ljava/util/Date;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getExpectedDeliveryTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils;->getDateFromISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mAsapDeliveryDate:Ljava/util/Date;

    .line 155
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mAsapDeliveryDate:Ljava/util/Date;

    .line 156
    invoke-static {v1, v0, v2}, Lcom/mcdonalds/app/util/UIUtils;->formatDeliveryTime(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mAsapDeliveryDateString:Ljava/lang/String;

    .line 157
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.showEstimatedDeliveryTimeInMinutes"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mEdtInMin:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mAsapDeliveryDate:Ljava/util/Date;

    invoke-static {v1, v0, v2, v4}, Lcom/mcdonalds/app/util/UIUtils;->formatTimeInMinutes(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mEdtInMin:Ljava/lang/String;

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mView:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mEdtInMin:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;->updateAsapDeliveryDate(Ljava/lang/String;)V

    .line 167
    :goto_0
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->checkSaveState()V

    .line 168
    return-void

    .line 165
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mView:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mAsapDeliveryDateString:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;->updateAsapDeliveryDate(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupDeliveryStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 3
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const-string v0, "setupDeliveryStore"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->setAsapDeliveryDate(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 344
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mAsapDeliveryDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mView:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;

    invoke-interface {v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;->showDeliveryTimeSelector()V

    .line 347
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->checkSaveState()V

    .line 348
    return-void
.end method

.method private setupStoreForDelivery()V
    .locals 5

    .prologue
    const-string v2, "setupStoreForDelivery"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 258
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .local v1, "storeIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mDeliveryStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    const-string v2, "ordering"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 261
    .local v0, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mView:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;

    const v3, 0x7f0906ff

    invoke-interface {v2, v3}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;->showActivityIndicator(I)V

    .line 262
    iget-boolean v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mAsapDelivery:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mAsapDeliveryDate:Ljava/util/Date;

    :goto_0
    iget-boolean v3, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mAsapDelivery:Z

    new-instance v4, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$3;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$3;-><init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getStoreFromList(Ljava/util/List;Ljava/util/Date;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 277
    return-void

    .line 262
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mScheduledDeliveryDate:Ljava/util/Date;

    goto :goto_0
.end method

.method private updateSelectedAddress()V
    .locals 2

    .prologue
    const-string v0, "updateSelectedAddress"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mView:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;

    const v1, 0x7f0906ff

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;->showActivityIndicator(I)V

    .line 238
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mAddressAsyncListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getDefaultAddress(Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 239
    return-void
.end method

.method private updateStores()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-string v2, "updateStores"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iput-boolean v5, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mIsDelivery:Z

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v1, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getFavoriteStores()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 215
    .local v0, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mPickupStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mPickupStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v3

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v4

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->hasMobileOrdering()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    .end local v0    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mPickupStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mPickupStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->hasMobileOrdering()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 221
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mPickupStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-interface {v1, v5, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 224
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mView:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;

    invoke-interface {v2, v1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;->updateStores(Ljava/util/List;)V

    .line 225
    return-void
.end method


# virtual methods
.method public getMaximumDeliveryDateInMillis()J
    .locals 4

    .prologue
    const-string v1, "getMaximumDeliveryDateInMillis"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 359
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mDeliveryStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-nez v1, :cond_0

    .line 360
    const-wide/16 v2, 0x0

    .line 363
    :goto_0
    return-wide v2

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mDeliveryStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getMaxAdvanceOrderTime()I

    move-result v0

    .line 363
    .local v0, "mMinutesUntilLatestOrder":I
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->getDifferenceInMillis(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getMinimumDeliveryDateInMillis()J
    .locals 4

    .prologue
    const-string v1, "getMinimumDeliveryDateInMillis"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mDeliveryStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-nez v1, :cond_0

    .line 352
    const-wide/16 v2, 0x0

    .line 355
    :goto_0
    return-wide v2

    .line 354
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mDeliveryStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getMinAdvanceOrderTime()I

    move-result v0

    .line 355
    .local v0, "mMinutesUntilEarliestOrder":I
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->getDifferenceInMillis(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getStoreForDelivery(Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    const/4 v4, 0x0

    const-string v1, "getStoreForDelivery"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 284
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mView:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;

    invoke-interface {v1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;->hideActivityIndicator()V

    .line 285
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mDeliveryAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    if-nez v1, :cond_1

    .line 286
    if-eqz p1, :cond_0

    .line 287
    invoke-interface {p1, v4, v4, v4}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mView:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;

    const v2, 0x7f0906ff

    invoke-interface {v1, v2}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;->showActivityIndicator(I)V

    .line 292
    const-string v1, "delivery"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    .line 293
    .local v0, "deliveryModule":Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mDeliveryAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    iget-boolean v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mAsapDelivery:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mAsapDeliveryDate:Ljava/util/Date;

    :goto_1
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 296
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mAsapDelivery:Z

    new-instance v5, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$4;

    invoke-direct {v5, p0, p1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$4;-><init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 293
    invoke-virtual/range {v0 .. v5}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->getDeliveryStore(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/util/Date;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;ZLcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mScheduledDeliveryDate:Ljava/util/Date;

    goto :goto_1
.end method

.method public hasCurrentStoreMobileOrdering()Z
    .locals 2

    .prologue
    const-string v0, "hasCurrentStoreMobileOrdering"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 475
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mPickupStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mPickupStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->hasMobileOrdering()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDelivery()Z
    .locals 2

    .prologue
    const-string v0, "hasDelivery"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    const-string v0, "delivery"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isModuleEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public init()V
    .locals 2

    .prologue
    const-string v0, "init"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 65
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mIsDelivery:Z

    .line 67
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->hasDelivery()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mIsDelivery:Z

    if-eqz v0, :cond_1

    .line 68
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->isNormalOrder()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mAsapDelivery:Z

    .line 71
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.showEstimatedDeliveryTimeInMinutes"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getEdtString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mEdtInMin:Ljava/lang/String;

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->setupDelivery()V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->setupPickup()V

    goto :goto_0
.end method

.method public initFavorite()V
    .locals 2

    .prologue
    const-string v0, "initFavorite"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 82
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mIsDelivery:Z

    .line 83
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->setupPickup()V

    .line 84
    return-void
.end method

.method public isCurrentStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Z
    .locals 4
    .param p1, "store"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "isCurrentStore"

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mPickupStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mPickupStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 471
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v2

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 470
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 471
    goto :goto_0
.end method

.method public isDelivery()Z
    .locals 2

    .prologue
    const-string v0, "isDelivery"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mIsDelivery:Z

    return v0
.end method

.method public isExternalDelivery()Z
    .locals 2

    .prologue
    const-string v0, "isExternalDelivery"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 466
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "modules.delivery.sendToDeliveryWebsite"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isLoggedIn()Z
    .locals 2

    .prologue
    const-string v0, "isLoggedIn"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 462
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v0

    return v0
.end method

.method public save()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "save"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mIsDelivery:Z

    if-eqz v0, :cond_3

    .line 389
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setFirstTimeDelivery(Z)V

    .line 390
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/models/Order;->setIsDelivery(Z)V

    .line 391
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mDeliveryAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setDeliveryAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)V

    .line 392
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mDeliveryStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setDeliveryStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 393
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mDeliveryStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setStoreId(I)V

    .line 394
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mAsapDelivery:Z

    if-eqz v0, :cond_2

    .line 395
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mAsapDeliveryDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setDeliveryDate(Ljava/util/Date;)V

    .line 396
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mAsapDeliveryDateString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setDeliveryDateString(Ljava/lang/String;)V

    .line 401
    :goto_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    iget-boolean v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mAsapDelivery:Z

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setNormalOrder(Z)V

    .line 402
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->Delivery:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setPriceType(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V

    .line 404
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mDeliveryStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setStoreId(I)V

    .line 407
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.showEstimatedDeliveryTimeInMinutes"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mEdtInMin:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 425
    :cond_0
    :goto_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.dashboard.newPromoWorkflow"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/models/Order;->setIsPODSet(Z)V

    .line 429
    :cond_1
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setFirstTimeOrdering(Z)V

    .line 430
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->updateCurrentOrder(Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 432
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mView:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;

    invoke-interface {v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;->save()V

    .line 447
    return-void

    .line 398
    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mScheduledDeliveryDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setDeliveryDate(Ljava/util/Date;)V

    .line 399
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mScheduledDeliveryDateString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setDeliveryDateString(Ljava/lang/String;)V

    goto :goto_0

    .line 415
    :cond_3
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setNormalOrder(Z)V

    .line 416
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setIsDelivery(Z)V

    .line 417
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->EatIn:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setPriceType(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)V

    .line 418
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mPickupStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setStoreId(I)V

    .line 419
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mPickupStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->setCurrentStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 421
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mPickupStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    goto :goto_1
.end method

.method public selectedStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 2

    .prologue
    const-string v0, "selectedStore"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mIsDelivery:Z

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mDeliveryStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 453
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mPickupStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    goto :goto_0
.end method

.method public setAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;)V
    .locals 3
    .param p1, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .prologue
    const-string v0, "setAddress"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->setAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 128
    return-void
.end method

.method public setAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 3
    .param p1, "address"    # Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/Void;>;"
    const-string v0, "setAddress"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mDeliveryAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    if-eq p1, v0, :cond_1

    .line 133
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "interface.showEstimatedDeliveryTimeInMinutes"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mEdtInMin:Ljava/lang/String;

    .line 136
    :cond_0
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mDeliveryAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .line 137
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mView:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mDeliveryAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;->updateSelectedAddress(Ljava/lang/String;)V

    .line 140
    :cond_1
    invoke-virtual {p0, p2}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->getStoreForDelivery(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 141
    return-void
.end method

.method public setAsapDelivery(Z)V
    .locals 4
    .param p1, "asapDelivery"    # Z

    .prologue
    const-string v0, "setAsapDelivery"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mAsapDelivery:Z

    .line 172
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mView:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;

    iget-boolean v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mAsapDelivery:Z

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;->setAsapDelivery(Z)V

    .line 173
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->checkSaveState()V

    .line 174
    return-void
.end method

.method public setAsapDeliveryAndUpdateStore(Z)V
    .locals 5
    .param p1, "asapDelivery"    # Z

    .prologue
    const-string v1, "setAsapDeliveryAndUpdateStore"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    const/4 v0, 0x0

    .line 191
    .local v0, "updateStoreData":Z
    const/4 v0, 0x1

    .line 194
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mAsapDelivery:Z

    .line 195
    if-eqz v0, :cond_1

    .line 197
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.showEstimatedDeliveryTimeInMinutes"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mEdtInMin:Ljava/lang/String;

    .line 200
    :cond_0
    new-instance v1, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$1;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter$1;-><init>(Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;)V

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->getStoreForDelivery(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 208
    :cond_1
    return-void
.end method

.method public setAsapDeliveryFirst(Z)V
    .locals 5
    .param p1, "asapDelivery"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "setAsapDeliveryFirst"

    new-array v1, v4, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mScheduledDeliveryDateString:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mScheduledDeliveryDateString:Ljava/lang/String;

    const v1, 0x7f0906c6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    :cond_0
    iput-boolean v4, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->checkfirstimeload:Z

    .line 182
    :cond_1
    iput-boolean p1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mAsapDelivery:Z

    .line 183
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mView:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;

    invoke-interface {v0, v3}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;->setAsapDeliveryFirst(Z)V

    .line 184
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->checkSaveState()V

    .line 185
    return-void
.end method

.method public setPickupStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 3
    .param p1, "pickupStore"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const-string v0, "setPickupStore"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mPickupStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 229
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mView:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mPickupStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;->updateSelectedStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

    .line 230
    return-void
.end method

.method public setScheduledDeliveryDate(Ljava/util/Date;)V
    .locals 4
    .param p1, "date"    # Ljava/util/Date;

    .prologue
    const/4 v3, 0x1

    const-string v0, "setScheduledDeliveryDate"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mScheduledDeliveryDate:Ljava/util/Date;

    .line 145
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mScheduledDeliveryDate:Ljava/util/Date;

    .line 146
    invoke-static {v0, v1, v2, v3}, Lcom/mcdonalds/app/util/UIUtils;->formatDeliveryTime(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mScheduledDeliveryDateString:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mView:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mScheduledDeliveryDateString:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;->updateScheduledDeliveryDate(Ljava/lang/String;)V

    .line 148
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->checkSaveState()V

    .line 149
    return-void
.end method

.method public setupDelivery()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "setupDelivery"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mView:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;

    const v1, 0x7f0906ff

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;->showActivityIndicator(I)V

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mIsDelivery:Z

    .line 96
    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->setAsapDeliveryFirst(Z)V

    .line 98
    iget-boolean v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mAsapDelivery:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryDate()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->setScheduledDeliveryDate(Ljava/util/Date;)V

    .line 100
    iput-boolean v2, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->checkfirstimeload:Z

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mDeliveryAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    if-nez v0, :cond_1

    .line 104
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mDeliveryAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .line 105
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mDeliveryStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mDeliveryAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    if-eqz v0, :cond_4

    .line 109
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mView:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mDeliveryAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getFullAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;->updateSelectedAddress(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mDeliveryStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mDeliveryStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getExpectedDeliveryTimeReference()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 111
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->setupStoreForDelivery()V

    .line 120
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->checkSaveState()V

    .line 121
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mView:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;

    invoke-interface {v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;->hideActivityIndicator()V

    .line 122
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mView:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;

    invoke-interface {v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;->showDelivery()V

    .line 124
    return-void

    .line 113
    :cond_3
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->getStoreForDelivery()V

    goto :goto_0

    .line 116
    :cond_4
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->isLoggedIn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->updateSelectedAddress()V

    goto :goto_0
.end method

.method public setupPickup()V
    .locals 2

    .prologue
    const-string v0, "setupPickup"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mPickupStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 88
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->updateStores()V

    .line 89
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionPresenter;->mView:Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;

    invoke-interface {v0}, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionView;->showPickup()V

    .line 90
    return-void
.end method
