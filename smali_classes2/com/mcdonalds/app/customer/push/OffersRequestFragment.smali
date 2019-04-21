.class public Lcom/mcdonalds/app/customer/push/OffersRequestFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "OffersRequestFragment.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field private indicator:Lcom/mcdonalds/app/widget/PagerIndicatorGroup;

.field private mCurrentPagerIndex:I

.field private mHandler:Landroid/os/Handler;

.field private mOffersModule:Lcom/mcdonalds/sdk/modules/offers/OffersModule;

.field private mPagerAdapter:Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

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
    .line 45
    const-class v0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 201
    new-instance v0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment$5;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/push/OffersRequestFragment$5;-><init>(Lcom/mcdonalds/app/customer/push/OffersRequestFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mPromosResponseListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 231
    new-instance v0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment$6;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/push/OffersRequestFragment$6;-><init>(Lcom/mcdonalds/app/customer/push/OffersRequestFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mViewPagerVisibleScroll:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/customer/push/OffersRequestFragment;)Lcom/mcdonalds/app/widget/PagerIndicatorGroup;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/push/OffersRequestFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.push.OffersRequestFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->indicator:Lcom/mcdonalds/app/widget/PagerIndicatorGroup;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/customer/push/OffersRequestFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/push/OffersRequestFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.push.OffersRequestFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->registerForNotificationsAndFinish()V

    return-void
.end method

.method static synthetic access$202(Lcom/mcdonalds/app/customer/push/OffersRequestFragment;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/push/OffersRequestFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.push.OffersRequestFragment"

    const-string v2, "access$202"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iput-object p1, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mPromos:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/customer/push/OffersRequestFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/push/OffersRequestFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.push.OffersRequestFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->setPagerAdapter()V

    return-void
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/customer/push/OffersRequestFragment;)Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/push/OffersRequestFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.push.OffersRequestFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mPagerAdapter:Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/customer/push/OffersRequestFragment;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/push/OffersRequestFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.push.OffersRequestFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget v0, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mCurrentPagerIndex:I

    return v0
.end method

.method static synthetic access$508(Lcom/mcdonalds/app/customer/push/OffersRequestFragment;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/push/OffersRequestFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.push.OffersRequestFragment"

    const-string v2, "access$508"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget v0, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mCurrentPagerIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mCurrentPagerIndex:I

    return v0
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/customer/push/OffersRequestFragment;)Landroid/support/v4/view/ViewPager;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/push/OffersRequestFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.push.OffersRequestFragment"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mSampleOffersPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/customer/push/OffersRequestFragment;)Ljava/lang/Runnable;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/push/OffersRequestFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.push.OffersRequestFragment"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mViewPagerVisibleScroll:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/customer/push/OffersRequestFragment;)Landroid/os/Handler;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/customer/push/OffersRequestFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.customer.push.OffersRequestFragment"

    const-string v2, "access$800"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private loadPromosFromConfig()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-string v5, "loadPromosFromConfig"

    invoke-static {p0, v5, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v5

    const-string v6, "interface.dashboard.promos"

    .line 167
    invoke-virtual {v5, v6}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 169
    .local v3, "promos":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/internal/LinkedTreeMap;

    .line 171
    .local v0, "item":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "url"

    invoke-virtual {v0, v6}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 172
    .local v4, "url":Ljava/lang/String;
    const-string v6, "itemLink"

    invoke-virtual {v0, v6}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 173
    .local v1, "link":Ljava/lang/String;
    new-instance v2, Lcom/mcdonalds/app/model/Promo;

    invoke-direct {v2, v4, v7, v1}, Lcom/mcdonalds/app/model/Promo;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 175
    .local v2, "promo":Lcom/mcdonalds/app/model/Promo;
    iget-object v6, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mPromos:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 178
    .end local v0    # "item":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "link":Ljava/lang/String;
    .end local v2    # "promo":Lcom/mcdonalds/app/model/Promo;
    .end local v4    # "url":Ljava/lang/String;
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->setPagerAdapter()V

    .line 179
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

    .line 183
    new-instance v0, Lcom/mcdonalds/app/net/JsonGetRequest;

    const-class v1, Lcom/mcdonalds/app/model/PromoResponse;

    invoke-direct {v0, p1, v1}, Lcom/mcdonalds/app/net/JsonGetRequest;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    .line 184
    .local v0, "request":Lcom/mcdonalds/sdk/services/network/RequestProvider;
    iget-object v1, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    iget-object v2, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mPromosResponseListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 185
    return-void
.end method

.method private registerForNotificationsAndFinish()V
    .locals 2

    .prologue
    const-string v0, "registerForNotificationsAndFinish"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    new-instance v0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment$4;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/customer/push/OffersRequestFragment$4;-><init>(Lcom/mcdonalds/app/customer/push/OffersRequestFragment;)V

    invoke-static {v0}, Lcom/mcdonalds/app/customer/push/NotificationManager;->register(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 151
    return-void
.end method

.method private setPagerAdapter()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v0, "setPagerAdapter"

    invoke-static {p0, v0, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 189
    new-instance v0, Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mPromos:Ljava/util/List;

    .line 190
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;-><init>(Ljava/util/List;Landroid/support/v4/app/FragmentManager;Lcom/mcdonalds/app/util/ImageViewFragment$OnClickListener;)V

    iput-object v0, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mPagerAdapter:Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

    .line 192
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->indicator:Lcom/mcdonalds/app/widget/PagerIndicatorGroup;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mPromos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/widget/PagerIndicatorGroup;->setCount(I)V

    .line 193
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->indicator:Lcom/mcdonalds/app/widget/PagerIndicatorGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/widget/PagerIndicatorGroup;->select(I)V

    .line 195
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mSampleOffersPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mSampleOffersPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mPagerAdapter:Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 197
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mViewPagerVisibleScroll:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 199
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

    .line 62
    const v0, 0x7f090885

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 158
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mPagerAdapter:Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mSampleOffersPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mPagerAdapter:Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 161
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 220
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 222
    const/16 v0, 0x1c97

    if-ne p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 227
    invoke-static {}, Lcom/mcdonalds/app/util/LoginManager;->getInstance()Lcom/mcdonalds/app/util/LoginManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/LoginManager;->register(Lcom/mcdonalds/app/ui/URLNavigationActivity;)V

    .line 229
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onAttach(Landroid/app/Activity;)V

    .line 69
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/network/RequestManager;->register(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    .line 70
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const-string v1, "offers"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    iput-object v1, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mOffersModule:Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mPromos:Ljava/util/List;

    .line 91
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mHandler:Landroid/os/Handler;

    .line 93
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "interface.signin.defaultOfferPromoRegistration"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 94
    .local v0, "promos":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 95
    check-cast v0, Ljava/lang/String;

    .end local v0    # "promos":Ljava/lang/Object;
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->loadPromosFromUrl(Ljava/lang/String;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 96
    .restart local v0    # "promos":Ljava/lang/Object;
    :cond_1
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->loadPromosFromConfig()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    const v3, 0x7f0400ee

    const/4 v4, 0x0

    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 106
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f110202

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/app/widget/PagerIndicatorGroup;

    iput-object v3, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->indicator:Lcom/mcdonalds/app/widget/PagerIndicatorGroup;

    .line 108
    const v3, 0x7f11034e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager;

    iput-object v3, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mSampleOffersPager:Landroid/support/v4/view/ViewPager;

    .line 109
    iget-object v3, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mSampleOffersPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/mcdonalds/app/customer/push/OffersRequestFragment$1;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/customer/push/OffersRequestFragment$1;-><init>(Lcom/mcdonalds/app/customer/push/OffersRequestFragment;)V

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 119
    iget-object v3, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mPromos:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->setPagerAdapter()V

    .line 123
    :cond_0
    const v3, 0x7f11034f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 124
    .local v0, "confirmButton":Landroid/widget/Button;
    new-instance v3, Lcom/mcdonalds/app/customer/push/OffersRequestFragment$2;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/customer/push/OffersRequestFragment$2;-><init>(Lcom/mcdonalds/app/customer/push/OffersRequestFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v3, 0x7f110350

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 132
    .local v1, "denyButton":Landroid/widget/Button;
    new-instance v3, Lcom/mcdonalds/app/customer/push/OffersRequestFragment$3;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/customer/push/OffersRequestFragment$3;-><init>(Lcom/mcdonalds/app/customer/push/OffersRequestFragment;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-object v2
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 75
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onDetach()V

    .line 77
    invoke-virtual {p0}, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/services/network/RequestManager;->unregister(Landroid/content/Context;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V

    .line 79
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/mcdonalds/app/customer/push/OffersRequestFragment;->mViewPagerVisibleScroll:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 82
    :cond_0
    return-void
.end method
