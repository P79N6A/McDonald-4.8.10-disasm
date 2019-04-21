.class public Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "PushNotificationRequestFragment.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private indicator:Lcom/mcdonalds/app/widget/PagerIndicatorGroup;

.field private mContentContainer:Landroid/view/View;

.field private mCurrentPagerIndex:I

.field private mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

.field private mHandler:Landroid/os/Handler;

.field private mPagerAdapter:Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mPromos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/model/Promo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPromosResponseListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/app/model/PromoResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mSampleOffersPager:Landroid/support/v4/view/ViewPager;

.field private mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

.field private final mViewPagerVisibleScroll:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const-class v0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 292
    new-instance v0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$4;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$4;-><init>(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mPromosResponseListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 324
    new-instance v0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$5;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$5;-><init>(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mViewPagerVisibleScroll:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;)Lcom/mcdonalds/app/widget/PagerIndicatorGroup;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.push.PushNotificationRequestFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->indicator:Lcom/mcdonalds/app/widget/PagerIndicatorGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;Z)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.push.PushNotificationRequestFragment"

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

    .line 63
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->trackOpt(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;)Ljava/lang/Runnable;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.push.PushNotificationRequestFragment"

    const-string v2, "access$1000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mViewPagerVisibleScroll:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;)Landroid/os/Handler;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.push.PushNotificationRequestFragment"

    const-string v2, "access$1100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.push.PushNotificationRequestFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->showProgress()V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.push.PushNotificationRequestFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.push.PushNotificationRequestFragment"

    const-string v2, "access$302"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iput-object p1, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.push.PushNotificationRequestFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->proceedToNextScreen()V

    return-void
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.push.PushNotificationRequestFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mPromos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$502(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.push.PushNotificationRequestFragment"

    const-string v2, "access$502"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iput-object p1, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mPromos:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.push.PushNotificationRequestFragment"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->setPagerAdapter()V

    return-void
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.push.PushNotificationRequestFragment"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget v0, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mCurrentPagerIndex:I

    return v0
.end method

.method static synthetic access$708(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.push.PushNotificationRequestFragment"

    const-string v2, "access$708"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget v0, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mCurrentPagerIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mCurrentPagerIndex:I

    return v0
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;)Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.push.PushNotificationRequestFragment"

    const-string v2, "access$800"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mPagerAdapter:Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;)Landroid/support/v4/view/ViewPager;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.push.PushNotificationRequestFragment"

    const-string v2, "access$900"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mSampleOffersPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private loadPromosFromConfig()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-string v5, "loadPromosFromConfig"

    invoke-static {p0, v5, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "interface.dashboard.promos"

    .line 271
    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 273
    .local v3, "promos":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mPromos:Ljava/util/List;

    .line 274
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/internal/LinkedTreeMap;

    .line 276
    .local v0, "item":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "url"

    invoke-virtual {v0, v6}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 277
    .local v4, "url":Ljava/lang/String;
    const-string v6, "itemLink"

    invoke-virtual {v0, v6}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 278
    .local v1, "link":Ljava/lang/String;
    new-instance v2, Lcom/mcdonalds/app/model/Promo;

    invoke-direct {v2, v4, v7, v1}, Lcom/mcdonalds/app/model/Promo;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 280
    .local v2, "promo":Lcom/mcdonalds/app/model/Promo;
    iget-object v6, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mPromos:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 283
    .end local v0    # "item":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "link":Ljava/lang/String;
    .end local v2    # "promo":Lcom/mcdonalds/app/model/Promo;
    .end local v4    # "url":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->setPagerAdapter()V

    .line 284
    return-void
.end method

.method private loadPromosFromUrl(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const-string v1, "loadPromosFromUrl"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    new-instance v0, Lcom/mcdonalds/app/util/SimpleJsonRequest;

    const-class v1, Lcom/mcdonalds/app/model/PromoResponse;

    invoke-direct {v0, p1, v1}, Lcom/mcdonalds/app/util/SimpleJsonRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 289
    .local v0, "request":Lcom/mcdonalds/sdk/services/network/RequestProvider;
    iget-object v1, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    iget-object v2, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mPromosResponseListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 290
    return-void
.end method

.method private proceedToNextScreen()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const-string v4, "proceedToNextScreen"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    iget-object v4, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mProgress:Landroid/widget/ProgressBar;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 225
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 228
    .local v0, "arguments":Landroid/os/Bundle;
    const-string v2, "dashboard"

    .line 229
    .local v2, "fragmentName":Ljava/lang/String;
    const-class v1, Lcom/mcdonalds/app/MainActivity;

    .line 231
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/mcdonalds/app/ui/URLNavigationActivity;>;"
    iget-object v4, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isMobileTakeOver()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 233
    const-string v2, "mobile_take_over"

    .line 234
    const-class v1, Lcom/mcdonalds/app/account/ProfileUpdateActivity;

    .line 262
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v2, v0}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 263
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    .line 265
    .end local v0    # "arguments":Landroid/os/Bundle;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/mcdonalds/app/ui/URLNavigationActivity;>;"
    .end local v2    # "fragmentName":Ljava/lang/String;
    :cond_1
    return-void

    .line 236
    .restart local v0    # "arguments":Landroid/os/Bundle;
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/mcdonalds/app/ui/URLNavigationActivity;>;"
    .restart local v2    # "fragmentName":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mCurrentProfile:Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isEmailTakeOver()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 238
    const-string v2, "email_take_over"

    .line 239
    const-class v1, Lcom/mcdonalds/app/account/ProfileUpdateActivity;

    goto :goto_0

    .line 241
    :cond_3
    if-eqz v0, :cond_0

    .line 243
    const-string v4, "EXTRA_SAVING_FAVORITE"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 245
    const-string v4, "saving_fav_detail"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 249
    .local v3, "isDetail":Z
    if-eqz v3, :cond_4

    sget-object v2, Lcom/mcdonalds/app/storelocator/StoreDetailsFragment;->NAME:Ljava/lang/String;

    .line 250
    :goto_1
    if-eqz v3, :cond_5

    const-class v1, Lcom/mcdonalds/app/storelocator/StoreDetailsActivity;

    .line 251
    :goto_2
    goto :goto_0

    .line 249
    :cond_4
    const-string v2, "store_locator"

    goto :goto_1

    .line 250
    :cond_5
    const-class v1, Lcom/mcdonalds/app/MainActivity;

    goto :goto_2

    .line 251
    .end local v3    # "isDetail":Z
    :cond_6
    const-string v4, "GO_TO_MSA"

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 252
    const-string v2, "msa_logged_in"

    .line 253
    const-class v1, Lcom/mcdonalds/app/MainActivity;

    goto :goto_0

    .line 255
    :cond_7
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "NEED_TO_RETURN_TO_BASKET"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 256
    const-string v2, "basket"

    .line 257
    const-class v1, Lcom/mcdonalds/app/ordering/basket/BasketActivity;

    goto :goto_0
.end method

.method private setPagerAdapter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v0, "setPagerAdapter"

    invoke-static {p0, v0, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 311
    new-instance v0, Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mPromos:Ljava/util/List;

    .line 312
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;-><init>(Ljava/util/List;Landroid/support/v4/app/FragmentManager;Lcom/mcdonalds/app/util/ImageViewFragment$OnClickListener;)V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mPagerAdapter:Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

    .line 315
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->indicator:Lcom/mcdonalds/app/widget/PagerIndicatorGroup;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mPromos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/widget/PagerIndicatorGroup;->setCount(I)V

    .line 316
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->indicator:Lcom/mcdonalds/app/widget/PagerIndicatorGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/widget/PagerIndicatorGroup;->select(I)V

    .line 318
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mSampleOffersPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mSampleOffersPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mPagerAdapter:Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 320
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mViewPagerVisibleScroll:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 322
    :cond_0
    return-void
.end method

.method private showProgress()V
    .locals 2

    .prologue
    const-string v0, "showProgress"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mContentContainer:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mProgress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 210
    return-void
.end method

.method private trackOpt(Z)V
    .locals 5
    .param p1, "accepted"    # Z

    .prologue
    const-string v1, "trackOpt"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 214
    .local v0, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "EVENT_NAME"

    const-string v2, "couponseting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v2, "isreceving"

    if-eqz p1, :cond_0

    const-string v1, "yes"

    :goto_0
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string v1, "Opt-In"

    :goto_1
    invoke-static {v2, v1, v0}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 219
    return-void

    .line 215
    :cond_0
    const-string v1, "no"

    goto :goto_0

    .line 216
    :cond_1
    const-string v1, "Opt-Out"

    goto :goto_1
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    const v0, 0x7f09089a

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onAttach(Landroid/app/Activity;)V

    .line 89
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/network/RequestManager;->register(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    .line 90
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 109
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mHandler:Landroid/os/Handler;

    .line 111
    iget-object v5, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mPromos:Ljava/util/List;

    if-nez v5, :cond_0

    .line 112
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "interface.signin.defaultOfferPromoPushNotification"

    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 113
    .local v4, "promos":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 114
    check-cast v4, Ljava/lang/String;

    .end local v4    # "promos":Ljava/lang/Object;
    invoke-direct {p0, v4}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->loadPromosFromUrl(Ljava/lang/String;)V

    .line 120
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v2

    .line 121
    .local v2, "mgr":Lcom/mcdonalds/sdk/services/data/LocalDataManager;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getPushNotificationOptInShownNum()I

    move-result v3

    .line 122
    .local v3, "num":I
    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->setPushNotificationOptInShownNum(I)V

    .line 123
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 124
    .local v1, "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "EVENT_NAME"

    const-string v6, "couponseting"

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v5, "ssview"

    add-int/lit8 v6, v3, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v5, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    .line 127
    invoke-virtual {v5, v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setJice(Ljava/util/Map;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v5

    .line 128
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 129
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v5, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v5, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 130
    return-void

    .line 115
    .end local v0    # "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    .end local v1    # "jiceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "mgr":Lcom/mcdonalds/sdk/services/data/LocalDataManager;
    .end local v3    # "num":I
    .restart local v4    # "promos":Ljava/lang/Object;
    :cond_1
    instance-of v5, v4, Ljava/util/List;

    if-eqz v5, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->loadPromosFromConfig()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 135
    const v4, 0x7f0400fc

    const/4 v5, 0x0

    invoke-virtual {p1, v4, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 137
    .local v3, "rootView":Landroid/view/View;
    const v4, 0x7f11034f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 138
    .local v0, "confirmButton":Landroid/widget/Button;
    const v4, 0x7f110350

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 140
    .local v2, "denyButton":Landroid/widget/Button;
    const v4, 0x7f110202

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/widget/PagerIndicatorGroup;

    iput-object v4, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->indicator:Lcom/mcdonalds/app/widget/PagerIndicatorGroup;

    .line 142
    const v4, 0x7f110371

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mContentContainer:Landroid/view/View;

    .line 143
    const v4, 0x7f1100bb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mProgress:Landroid/widget/ProgressBar;

    .line 145
    const v4, 0x7f11034e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager;

    iput-object v4, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mSampleOffersPager:Landroid/support/v4/view/ViewPager;

    .line 146
    iget-object v4, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mSampleOffersPager:Landroid/support/v4/view/ViewPager;

    new-instance v5, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$1;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$1;-><init>(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;)V

    invoke-virtual {v4, v5}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 156
    const-string v4, "customer"

    invoke-static {v4}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 157
    .local v1, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    new-instance v4, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$2;

    invoke-direct {v4, p0, v1}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$2;-><init>(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    new-instance v4, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$3;

    invoke-direct {v4, p0, v1}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment$3;-><init>(Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;Lcom/mcdonalds/sdk/modules/customer/CustomerModule;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    return-object v3
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onDetach()V

    .line 97
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/services/network/RequestManager;->unregister(Landroid/content/Context;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V

    .line 99
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/push/PushNotificationRequestFragment;->mViewPagerVisibleScroll:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 102
    :cond_0
    return-void
.end method
