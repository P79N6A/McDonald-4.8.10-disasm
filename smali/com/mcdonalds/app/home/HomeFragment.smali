.class public Lcom/mcdonalds/app/home/HomeFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "HomeFragment.java"

# interfaces
.implements Lcom/mcdonalds/app/home/HomeListAdapter$HomeListAdapterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/home/HomeFragment$CustomerOffersListener;,
        Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mAddedToOrder:Ljava/lang/Boolean;

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

.field private mFilteredOffers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstNameGreeting:Ljava/lang/String;

.field private mHomeListAdapter:Lcom/mcdonalds/app/home/HomeListAdapter;

.field private mHomeListItemCount:I

.field private mHomeListView:Landroid/widget/ListView;

.field private mLastOrder:Lcom/mcdonalds/sdk/modules/models/CustomerOrder;

.field private mLocationServiceOn:Ljava/lang/Boolean;

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

.field private mOfferSections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/offers/OfferSection;",
            ">;"
        }
    .end annotation
.end field

.field private mOfferSelectorID:I

.field private mOffersCount:I

.field private mPromoCarouselTimer:Ljava/util/Timer;

.field private mPromoFragmentStatePagerAdapter:Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

.field private mPromoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/model/Promo;",
            ">;"
        }
    .end annotation
.end field

.field private mPromoPager:Landroid/support/v4/view/ViewPager;

.field private mRecipeFound:Z

.field private mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private mResources:Landroid/content/res/Resources;

.field private mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 108
    iput-object v1, p0, Lcom/mcdonalds/app/home/HomeFragment;->mFirstNameGreeting:Ljava/lang/String;

    .line 116
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment;->mAddedToOrder:Ljava/lang/Boolean;

    .line 118
    iput-boolean v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mRecipeFound:Z

    .line 120
    const v0, 0x7f1104aa

    iput v0, p0, Lcom/mcdonalds/app/home/HomeFragment;->mOfferSelectorID:I

    .line 121
    iput-object v1, p0, Lcom/mcdonalds/app/home/HomeFragment;->mFilteredOffers:Ljava/util/List;

    .line 122
    iput-object v1, p0, Lcom/mcdonalds/app/home/HomeFragment;->mNearbyStores:Ljava/util/List;

    .line 123
    iput-object v1, p0, Lcom/mcdonalds/app/home/HomeFragment;->mFavoriteStores:Ljava/util/List;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/home/HomeFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-direct {p0}, Lcom/mcdonalds/app/home/HomeFragment;->populateCurrentLocationSubtitle()V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/home/HomeFragment;)Landroid/content/res/Resources;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mcdonalds/app/home/HomeFragment;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeFragment"

    const-string v2, "access$1000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment;->mPromoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/mcdonalds/app/home/HomeFragment;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeFragment;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeFragment"

    const-string v2, "access$1002"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iput-object p1, p0, Lcom/mcdonalds/app/home/HomeFragment;->mPromoList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeFragment"

    const-string v2, "access$1100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment;->mPromoFragmentStatePagerAdapter:Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/mcdonalds/app/home/HomeFragment;Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;)Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeFragment;
    .param p1, "x1"    # Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeFragment"

    const-string v2, "access$1102"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iput-object p1, p0, Lcom/mcdonalds/app/home/HomeFragment;->mPromoFragmentStatePagerAdapter:Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/mcdonalds/app/home/HomeFragment;)Landroid/support/v4/view/ViewPager;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeFragment"

    const-string v2, "access$1200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment;->mPromoPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/mcdonalds/app/home/HomeFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeFragment"

    const-string v2, "access$1300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-direct {p0}, Lcom/mcdonalds/app/home/HomeFragment;->startPromoCarouselTimer()V

    return-void
.end method

.method static synthetic access$1400(Lcom/mcdonalds/app/home/HomeFragment;)Ljava/util/Timer;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeFragment"

    const-string v2, "access$1400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment;->mPromoCarouselTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/mcdonalds/app/home/HomeFragment;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeFragment"

    const-string v2, "access$1700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment;->mOfferSections:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/mcdonalds/app/home/HomeFragment;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeFragment;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/List;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeFragment"

    const-string v2, "access$1900"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-direct {p0, p1, p2, p3}, Lcom/mcdonalds/app/home/HomeFragment;->updateFilteredOffersAndStores(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/app/home/HomeListAdapter;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListAdapter:Lcom/mcdonalds/app/home/HomeListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/sdk/modules/models/CustomerOrder;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment;->mLastOrder:Lcom/mcdonalds/sdk/modules/models/CustomerOrder;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mcdonalds/app/home/HomeFragment;Lcom/mcdonalds/sdk/modules/models/CustomerOrder;)Lcom/mcdonalds/sdk/modules/models/CustomerOrder;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/CustomerOrder;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeFragment"

    const-string v2, "access$302"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iput-object p1, p0, Lcom/mcdonalds/app/home/HomeFragment;->mLastOrder:Lcom/mcdonalds/sdk/modules/models/CustomerOrder;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/home/HomeFragment;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget v0, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListItemCount:I

    return v0
.end method

.method static synthetic access$408(Lcom/mcdonalds/app/home/HomeFragment;)I
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeFragment"

    const-string v2, "access$408"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget v0, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListItemCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListItemCount:I

    return v0
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/home/HomeFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/home/HomeFragment;)Ljava/lang/Boolean;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeFragment"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment;->mAddedToOrder:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/home/HomeFragment;)Landroid/widget/ListView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeFragment"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/home/HomeFragment;Ljava/lang/Boolean;Z)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeFragment;
    .param p1, "x1"    # Ljava/lang/Boolean;
    .param p2, "x2"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeFragment"

    const-string v2, "access$800"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/app/home/HomeFragment;->setRefreshing(Ljava/lang/Boolean;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/mcdonalds/app/home/HomeFragment;Z)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/home/HomeFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.home.HomeFragment"

    const-string v2, "access$900"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/home/HomeFragment;->refreshHomeAdapter(Z)V

    return-void
.end method

.method private commonOnOfferClick(Lcom/mcdonalds/sdk/modules/models/Offer;Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;)V
    .locals 5
    .param p1, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;
    .param p2, "selection"    # Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    .prologue
    const-string v2, "commonOnOfferClick"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 740
    new-instance v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v3, "On click"

    .line 741
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    .line 742
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/HomeFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    .line 743
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    .line 744
    invoke-static {p1}, Lcom/mcdonalds/sdk/services/analytics/BusinessArgs;->getOfferClick(Lcom/mcdonalds/sdk/modules/models/Offer;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setBusiness(Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    .line 745
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 747
    .local v0, "args":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v2, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 749
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 750
    .local v1, "extras":Landroid/os/Bundle;
    const-string v2, "offer_selection_type"

    invoke-virtual {p2}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 751
    const-string v2, "DATA_PASSER_KEY"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 753
    const-class v2, Lcom/mcdonalds/app/offers/OfferActivity;

    const-string v3, "offer_detail"

    const/16 v4, 0x56d

    invoke-virtual {p0, v2, v3, v1, v4}, Lcom/mcdonalds/app/home/HomeFragment;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 756
    return-void
.end method

.method private loadOfferSections()V
    .locals 6

    .prologue
    const-string v2, "loadOfferSections"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mOfferSections:Ljava/util/List;

    .line 313
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "interface.dashboard.offerSections"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/internal/LinkedTreeMap;

    .line 314
    .local v0, "map":Lcom/google/gson/internal/LinkedTreeMap;
    new-instance v1, Lcom/mcdonalds/app/offers/OfferSection;

    invoke-virtual {p0}, Lcom/mcdonalds/app/home/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v2, "sectionTitle"

    invoke-virtual {v0, v2}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/mcdonalds/app/util/UIUtils;->getStringByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v2, "sectionType"

    .line 315
    invoke-virtual {v0, v2}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "enabled"

    .line 316
    invoke-virtual {v0, v3}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {v1, v5, v2, v3}, Lcom/mcdonalds/app/offers/OfferSection;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 318
    .local v1, "offerSection":Lcom/mcdonalds/app/offers/OfferSection;
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mOfferSections:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 320
    .end local v0    # "map":Lcom/google/gson/internal/LinkedTreeMap;
    .end local v1    # "offerSection":Lcom/mcdonalds/app/offers/OfferSection;
    :cond_0
    return-void
.end method

.method private offersInStore(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, "stores":Ljava/util/List;, "Ljava/util/List<+Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    .local p2, "offers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    const-string v5, "offersInStore"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 916
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 918
    .local v1, "offersInStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 919
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 920
    .local v0, "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 921
    .local v3, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 922
    .local v4, "storesWithOffer":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Offer;->getRestaurants()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 923
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Offer;->getRestaurants()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 924
    .local v2, "restaurantId":Ljava/lang/Integer;
    iget v8, p0, Lcom/mcdonalds/app/home/HomeFragment;->mOffersCount:I

    if-lez v8, :cond_2

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 925
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 935
    .end local v2    # "restaurantId":Ljava/lang/Integer;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 936
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 937
    iget v6, p0, Lcom/mcdonalds/app/home/HomeFragment;->mOffersCount:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lcom/mcdonalds/app/home/HomeFragment;->mOffersCount:I

    goto :goto_0

    .line 931
    :cond_4
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 943
    .end local v0    # "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    .end local v3    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .end local v4    # "storesWithOffer":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    :cond_5
    return-object v1
.end method

.method private populateCurrentLocationSubtitle()V
    .locals 5

    .prologue
    const-string v3, "populateCurrentLocationSubtitle"

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 300
    iget-object v3, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListAdapter:Lcom/mcdonalds/app/home/HomeListAdapter;

    invoke-virtual {v3}, Lcom/mcdonalds/app/home/HomeListAdapter;->getHomeListItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/home/HomeListItem;

    .line 301
    .local v1, "item":Lcom/mcdonalds/app/home/HomeListItem;
    const v4, 0x7f090385

    invoke-virtual {p0, v4}, Lcom/mcdonalds/app/home/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 302
    .local v0, "currentLocationTitle":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/mcdonalds/app/home/HomeListItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/mcdonalds/app/home/HomeListItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 303
    iget-object v4, p0, Lcom/mcdonalds/app/home/HomeFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 304
    iget-object v4, p0, Lcom/mcdonalds/app/home/HomeFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/mcdonalds/app/home/HomeFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v2

    .line 305
    .local v2, "storeLabel":Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/home/HomeListItem;->setSubTitle(Ljava/lang/String;)V

    goto :goto_0

    .line 304
    .end local v2    # "storeLabel":Ljava/lang/String;
    :cond_1
    iget-object v4, p0, Lcom/mcdonalds/app/home/HomeFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getAddress1()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 309
    .end local v0    # "currentLocationTitle":Ljava/lang/String;
    .end local v1    # "item":Lcom/mcdonalds/app/home/HomeListItem;
    :cond_2
    return-void
.end method

.method private preCacheCurrentStoreCatalogIfNeeded()V
    .locals 4

    .prologue
    const-string v2, "preCacheCurrentStoreCatalogIfNeeded"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 323
    const/4 v1, 0x0

    .line 324
    .local v1, "homeStoreIdString":Ljava/lang/String;
    const-string v2, "customer"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 325
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-eqz v2, :cond_0

    .line 326
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 327
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 330
    :cond_0
    if-eqz v1, :cond_1

    .line 332
    const-string v2, "ordering"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isModuleEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "customer"

    .line 333
    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isModuleEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 334
    const-string v2, "customer"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 335
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/app/home/HomeFragment$3;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/home/HomeFragment$3;-><init>(Lcom/mcdonalds/app/home/HomeFragment;)V

    invoke-virtual {v0, v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCatalogUpdated(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 343
    .end local v0    # "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    :cond_1
    return-void
.end method

.method private preCacheNutritionInfo()V
    .locals 2

    .prologue
    const-string v0, "preCacheNutritionInfo"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 347
    const-string v0, "ordering"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isModuleEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    const-string v0, "ordering"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    new-instance v1, Lcom/mcdonalds/app/home/HomeFragment$4;

    invoke-direct {v1, p0}, Lcom/mcdonalds/app/home/HomeFragment$4;-><init>(Lcom/mcdonalds/app/home/HomeFragment;)V

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getAllProducts(Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 355
    :cond_0
    return-void
.end method

.method private refreshHomeAdapter(Z)V
    .locals 8
    .param p1, "clearCache"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v2, "refreshHomeAdapter"

    new-array v3, v7, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v3, v6

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListAdapter:Lcom/mcdonalds/app/home/HomeListAdapter;

    if-nez v2, :cond_0

    .line 204
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v3, "interface.dashboard.maxVisibleOffers"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getDoubleForKey(Ljava/lang/String;)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mOffersCount:I

    .line 136
    iget v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mOffersCount:I

    if-nez v2, :cond_1

    .line 137
    const/4 v2, 0x6

    iput v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mOffersCount:I

    .line 140
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListAdapter:Lcom/mcdonalds/app/home/HomeListAdapter;

    iget-object v3, p0, Lcom/mcdonalds/app/home/HomeFragment;->mResources:Landroid/content/res/Resources;

    const v4, 0x7f090443

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/home/HomeListAdapter;->removeHomeListItem(Ljava/lang/String;)V

    .line 142
    if-eqz p1, :cond_2

    .line 143
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListAdapter:Lcom/mcdonalds/app/home/HomeListAdapter;

    invoke-virtual {v2, v6}, Lcom/mcdonalds/app/home/HomeListAdapter;->setHasOffers(Z)V

    .line 144
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListAdapter:Lcom/mcdonalds/app/home/HomeListAdapter;

    invoke-virtual {v2}, Lcom/mcdonalds/app/home/HomeListAdapter;->clearAppliedOffers()V

    .line 145
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListAdapter:Lcom/mcdonalds/app/home/HomeListAdapter;

    invoke-virtual {v2}, Lcom/mcdonalds/app/home/HomeListAdapter;->clearOffers()V

    .line 146
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListAdapter:Lcom/mcdonalds/app/home/HomeListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-eqz v2, :cond_3

    .line 152
    const-string v2, "ordering"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->isModuleEnabled(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 153
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v3, p0, Lcom/mcdonalds/app/home/HomeFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderUtils;->getNumberOfRecentOrder()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Lcom/mcdonalds/app/home/HomeFragment$1;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/home/HomeFragment$1;-><init>(Lcom/mcdonalds/app/home/HomeFragment;)V

    invoke-virtual {v2, v3, v4, v5}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getRecentOrders(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 187
    :cond_3
    :goto_1
    const/4 v1, 0x0

    .line 188
    .local v1, "loggedIn":Z
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 189
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v1

    .line 190
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 191
    .local v0, "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    if-eqz v0, :cond_4

    .line 192
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz v2, :cond_4

    .line 193
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mAddedToOrder:Ljava/lang/Boolean;

    .line 196
    :cond_4
    invoke-direct {p0}, Lcom/mcdonalds/app/home/HomeFragment;->refreshOffers()V

    .line 201
    .end local v0    # "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    :goto_2
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListAdapter:Lcom/mcdonalds/app/home/HomeListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 202
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListAdapter:Lcom/mcdonalds/app/home/HomeListAdapter;

    invoke-virtual {v2, v1}, Lcom/mcdonalds/app/home/HomeListAdapter;->setLoggedIn(Z)V

    .line 203
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListAdapter:Lcom/mcdonalds/app/home/HomeListAdapter;

    invoke-virtual {v2}, Lcom/mcdonalds/app/home/HomeListAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 183
    .end local v1    # "loggedIn":Z
    :cond_5
    invoke-direct {p0}, Lcom/mcdonalds/app/home/HomeFragment;->populateCurrentLocationSubtitle()V

    goto :goto_1

    .line 198
    .restart local v1    # "loggedIn":Z
    :cond_6
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2, v7}, Lcom/mcdonalds/app/home/HomeFragment;->setRefreshing(Ljava/lang/Boolean;Z)V

    goto :goto_2
.end method

.method private refreshOffers()V
    .locals 3

    .prologue
    const-string v0, "refreshOffers"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v0

    if-nez v0, :cond_0

    .line 297
    :goto_0
    return-void

    .line 224
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/util/ServiceUtils;->getSharedInstance()Lcom/mcdonalds/app/util/ServiceUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/home/HomeFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/home/HomeFragment$2;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/home/HomeFragment$2;-><init>(Lcom/mcdonalds/app/home/HomeFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/ServiceUtils;->retrieveFavoriteStores(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0
.end method

.method private setRefreshing(Ljava/lang/Boolean;Z)V
    .locals 5
    .param p1, "refreshing"    # Ljava/lang/Boolean;
    .param p2, "refreshAdapter"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "setRefreshing"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p2}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v3, v0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 208
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 209
    if-eqz p2, :cond_0

    .line 210
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListAdapter:Lcom/mcdonalds/app/home/HomeListAdapter;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/home/HomeListAdapter;->setRefreshing(Ljava/lang/Boolean;)V

    .line 212
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 207
    goto :goto_0
.end method

.method private startPromoCarouselTimer()V
    .locals 6

    .prologue
    const-wide/16 v2, 0xbb8

    const-string v0, "startPromoCarouselTimer"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 601
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment;->mPromoCarouselTimer:Ljava/util/Timer;

    .line 602
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment;->mPromoCarouselTimer:Ljava/util/Timer;

    new-instance v1, Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;

    iget-object v4, p0, Lcom/mcdonalds/app/home/HomeFragment;->mPromoPager:Landroid/support/v4/view/ViewPager;

    invoke-direct {v1, p0, v4}, Lcom/mcdonalds/app/home/HomeFragment$PromoSlideRunnable;-><init>(Lcom/mcdonalds/app/home/HomeFragment;Landroid/support/v4/view/ViewPager;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 603
    return-void
.end method

.method private updateFilteredOffersAndStores(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "offerList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    .local p2, "nearbyStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    .local p3, "favoriteStores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    const-string/jumbo v0, "updateFilteredOffersAndStores"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 800
    iput-object p1, p0, Lcom/mcdonalds/app/home/HomeFragment;->mFilteredOffers:Ljava/util/List;

    .line 801
    iput-object p2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mNearbyStores:Ljava/util/List;

    .line 802
    iput-object p3, p0, Lcom/mcdonalds/app/home/HomeFragment;->mFavoriteStores:Ljava/util/List;

    .line 804
    invoke-direct {p0}, Lcom/mcdonalds/app/home/HomeFragment;->updateOffersDisplay()V

    .line 805
    return-void
.end method

.method private updateOffersDisplay()V
    .locals 15

    .prologue
    const-string/jumbo v10, "updateOffersDisplay"

    const/4 v11, 0x0

    invoke-static {p0, v10, v11}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 814
    iget-object v10, p0, Lcom/mcdonalds/app/home/HomeFragment;->mNearbyStores:Ljava/util/List;

    if-eqz v10, :cond_5

    const/4 v3, 0x1

    .line 817
    .local v3, "nearbyEnabled":Z
    :goto_0
    if-nez v3, :cond_0

    iget v10, p0, Lcom/mcdonalds/app/home/HomeFragment;->mOfferSelectorID:I

    const v11, 0x7f1104aa

    if-ne v10, v11, :cond_0

    .line 818
    const v10, 0x7f1104ac

    iput v10, p0, Lcom/mcdonalds/app/home/HomeFragment;->mOfferSelectorID:I

    .line 819
    iget-object v10, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListAdapter:Lcom/mcdonalds/app/home/HomeListAdapter;

    iget v11, p0, Lcom/mcdonalds/app/home/HomeFragment;->mOfferSelectorID:I

    invoke-virtual {v10, v11}, Lcom/mcdonalds/app/home/HomeListAdapter;->setOffersTypeSelectorSelected(I)V

    .line 823
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, p0, Lcom/mcdonalds/app/home/HomeFragment;->mLocationServiceOn:Ljava/lang/Boolean;

    .line 824
    iget-object v11, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListAdapter:Lcom/mcdonalds/app/home/HomeListAdapter;

    iget-object v10, p0, Lcom/mcdonalds/app/home/HomeFragment;->mLocationServiceOn:Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_6

    const/4 v10, 0x1

    :goto_1
    invoke-virtual {v11, v10}, Lcom/mcdonalds/app/home/HomeListAdapter;->setLocationDisabled(Z)V

    .line 827
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v10

    const-string v11, "interface.dashboard.maxVisibleOffers"

    invoke-virtual {v10, v11}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getDoubleForKey(Ljava/lang/String;)D

    move-result-wide v10

    double-to-int v10, v10

    iput v10, p0, Lcom/mcdonalds/app/home/HomeFragment;->mOffersCount:I

    .line 828
    iget v10, p0, Lcom/mcdonalds/app/home/HomeFragment;->mOffersCount:I

    if-nez v10, :cond_1

    .line 829
    const/4 v10, 0x6

    iput v10, p0, Lcom/mcdonalds/app/home/HomeFragment;->mOffersCount:I

    .line 832
    :cond_1
    iget-object v10, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListAdapter:Lcom/mcdonalds/app/home/HomeListAdapter;

    invoke-virtual {v10}, Lcom/mcdonalds/app/home/HomeListAdapter;->clearOffers()V

    .line 833
    iget-object v10, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListAdapter:Lcom/mcdonalds/app/home/HomeListAdapter;

    new-instance v11, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;

    const v12, 0x7f0907e3

    invoke-virtual {p0, v12}, Lcom/mcdonalds/app/home/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v13, 0x7f02012e

    const/4 v14, 0x1

    invoke-direct {v11, v12, v13, v14}, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v10, v11}, Lcom/mcdonalds/app/home/HomeListAdapter;->addSectionHeader(Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;)V

    .line 834
    iget-object v10, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListAdapter:Lcom/mcdonalds/app/home/HomeListAdapter;

    invoke-virtual {v10}, Lcom/mcdonalds/app/home/HomeListAdapter;->addOffersTypeSelector()V

    .line 836
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 837
    .local v6, "offerList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    iget-object v10, p0, Lcom/mcdonalds/app/home/HomeFragment;->mFilteredOffers:Ljava/util/List;

    invoke-interface {v6, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 838
    iget v10, p0, Lcom/mcdonalds/app/home/HomeFragment;->mOfferSelectorID:I

    const v11, 0x7f1104aa

    if-ne v10, v11, :cond_7

    .line 842
    if-eqz v3, :cond_4

    .line 845
    iget-object v10, p0, Lcom/mcdonalds/app/home/HomeFragment;->mNearbyStores:Ljava/util/List;

    invoke-direct {p0, v10, v6}, Lcom/mcdonalds/app/home/HomeFragment;->offersInStore(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 846
    .local v4, "nearbyOffers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    invoke-interface {v6, v4}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 849
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 850
    .local v8, "otherOffers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    iget v10, p0, Lcom/mcdonalds/app/home/HomeFragment;->mOffersCount:I

    if-lez v10, :cond_3

    .line 851
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 852
    .local v5, "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    iget v11, p0, Lcom/mcdonalds/app/home/HomeFragment;->mOffersCount:I

    add-int/lit8 v11, v11, -0x1

    iput v11, p0, Lcom/mcdonalds/app/home/HomeFragment;->mOffersCount:I

    .line 854
    iget v11, p0, Lcom/mcdonalds/app/home/HomeFragment;->mOffersCount:I

    if-nez v11, :cond_2

    .line 860
    .end local v5    # "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    :cond_3
    iget-object v10, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListAdapter:Lcom/mcdonalds/app/home/HomeListAdapter;

    invoke-virtual {v10, v4}, Lcom/mcdonalds/app/home/HomeListAdapter;->addOffersGridSection(Ljava/util/List;)V

    .line 861
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 862
    iget-object v10, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListAdapter:Lcom/mcdonalds/app/home/HomeListAdapter;

    new-instance v11, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;

    const v12, 0x7f0905d1

    invoke-virtual {p0, v12}, Lcom/mcdonalds/app/home/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v10, v11, v8}, Lcom/mcdonalds/app/home/HomeListAdapter;->addOffersListSection(Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;Ljava/util/List;)V

    .line 907
    .end local v4    # "nearbyOffers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    .end local v8    # "otherOffers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    :cond_4
    :goto_2
    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    const/4 v11, 0x1

    invoke-direct {p0, v10, v11}, Lcom/mcdonalds/app/home/HomeFragment;->setRefreshing(Ljava/lang/Boolean;Z)V

    .line 908
    iget-object v10, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListAdapter:Lcom/mcdonalds/app/home/HomeListAdapter;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/mcdonalds/app/home/HomeListAdapter;->setSubscribedToOffers(Z)V

    .line 909
    iget-object v10, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListAdapter:Lcom/mcdonalds/app/home/HomeListAdapter;

    iget-object v11, p0, Lcom/mcdonalds/app/home/HomeFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v11

    invoke-virtual {v10, v11}, Lcom/mcdonalds/app/home/HomeListAdapter;->setLoggedIn(Z)V

    .line 910
    iget-object v10, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListAdapter:Lcom/mcdonalds/app/home/HomeListAdapter;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/mcdonalds/app/home/HomeListAdapter;->setHasOffers(Z)V

    .line 911
    iget-object v10, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListView:Landroid/widget/ListView;

    iget-object v11, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListAdapter:Lcom/mcdonalds/app/home/HomeListAdapter;

    invoke-virtual {v10, v11}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 912
    iget-object v10, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListAdapter:Lcom/mcdonalds/app/home/HomeListAdapter;

    invoke-virtual {v10}, Lcom/mcdonalds/app/home/HomeListAdapter;->notifyDataSetChanged()V

    .line 913
    return-void

    .line 814
    .end local v3    # "nearbyEnabled":Z
    .end local v6    # "offerList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 824
    .restart local v3    # "nearbyEnabled":Z
    :cond_6
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 873
    .restart local v6    # "offerList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 874
    .local v1, "currentOffers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 876
    .local v2, "favoriteOffers":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    const/4 v0, 0x0

    .line 879
    .local v0, "count":I
    const/4 v10, 0x1

    new-array v10, v10, [Lcom/mcdonalds/sdk/modules/storelocator/Store;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/mcdonalds/app/home/HomeFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v12}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {p0, v10, v6}, Lcom/mcdonalds/app/home/HomeFragment;->offersInStore(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 880
    invoke-interface {v6, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 881
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    add-int/2addr v0, v10

    .line 884
    const/16 v10, 0x14

    if-ge v0, v10, :cond_9

    iget-object v10, p0, Lcom/mcdonalds/app/home/HomeFragment;->mFavoriteStores:Ljava/util/List;

    if-eqz v10, :cond_9

    .line 886
    iget-object v10, p0, Lcom/mcdonalds/app/home/HomeFragment;->mFavoriteStores:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 887
    .local v9, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    const/4 v11, 0x1

    new-array v11, v11, [Lcom/mcdonalds/sdk/modules/storelocator/Store;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-direct {p0, v11, v6}, Lcom/mcdonalds/app/home/HomeFragment;->offersInStore(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 888
    .local v7, "offersForStore":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    invoke-interface {v6, v7}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 889
    invoke-interface {v2, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 890
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    add-int/2addr v0, v11

    .line 893
    const/16 v11, 0x14

    if-lt v0, v11, :cond_8

    .line 899
    .end local v7    # "offersForStore":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    .end local v9    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :cond_9
    iget-object v10, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListAdapter:Lcom/mcdonalds/app/home/HomeListAdapter;

    invoke-virtual {v10, v1}, Lcom/mcdonalds/app/home/HomeListAdapter;->addOffersGridSection(Ljava/util/List;)V

    .line 900
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 901
    iget-object v10, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListAdapter:Lcom/mcdonalds/app/home/HomeListAdapter;

    new-instance v11, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;

    const v12, 0x7f0905d0

    invoke-virtual {p0, v12}, Lcom/mcdonalds/app/home/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {v11, v12, v13, v14}, Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v10, v11, v2}, Lcom/mcdonalds/app/home/HomeListAdapter;->addOffersListSection(Lcom/mcdonalds/app/widget/offers/MCDListSectionHeaderModel;Ljava/util/List;)V

    goto/16 :goto_2
.end method


# virtual methods
.method protected getAnalyticsTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getAnalyticsTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 624
    const v0, 0x7f09087a

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/home/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTitle()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v4, 0xc

    const-string v2, "getTitle"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 607
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mFirstNameGreeting:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 608
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mResources:Landroid/content/res/Resources;

    const v3, 0x7f090767

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/mcdonalds/app/home/HomeFragment;->mFirstNameGreeting:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 619
    :goto_0
    return-object v2

    .line 611
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 612
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 613
    .local v1, "hour":I
    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    if-ge v1, v4, :cond_1

    .line 614
    const v2, 0x7f0907d6

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/home/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 615
    :cond_1
    if-lt v1, v4, :cond_2

    const/16 v2, 0x12

    if-ge v1, v2, :cond_2

    .line 616
    const v2, 0x7f0907cc

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/home/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 619
    :cond_2
    const v2, 0x7f0907d3

    invoke-virtual {p0, v2}, Lcom/mcdonalds/app/home/HomeFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 652
    invoke-super {p0, p1, p2, p3}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 653
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 654
    const/16 v1, 0x56d

    if-ne p1, v1, :cond_0

    .line 655
    if-eqz p3, :cond_1

    .line 656
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 657
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 658
    const-string v1, "ADDED_TO_ORDER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/home/HomeFragment;->mAddedToOrder:Ljava/lang/Boolean;

    .line 666
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mcdonalds/app/home/HomeFragment;->refreshHomeAdapter(Z)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 670
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onAttach(Landroid/app/Activity;)V

    .line 671
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/network/RequestManager;->register(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    .line 672
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 21
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 362
    const v2, 0x7f0400bd

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .line 363
    .local v17, "rootView":Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/home/HomeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mcdonalds/app/home/HomeFragment;->mResources:Landroid/content/res/Resources;

    .line 365
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/home/HomeFragment;->loadOfferSections()V

    .line 366
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/home/HomeFragment;->preCacheCurrentStoreCatalogIfNeeded()V

    .line 367
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/home/HomeFragment;->preCacheNutritionInfo()V

    .line 369
    const v2, 0x7f110296

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/SwipeRefreshLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mcdonalds/app/home/HomeFragment;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/home/HomeFragment;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v2}, Lcom/mcdonalds/app/util/UIUtils;->setDefaultRefreshColors(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    .line 371
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v4, "interface.dashboard.maxVisibleOffers"

    invoke-virtual {v2, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getDoubleForKey(Ljava/lang/String;)D

    move-result-wide v4

    double-to-int v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mcdonalds/app/home/HomeFragment;->mOffersCount:I

    .line 372
    move-object/from16 v0, p0

    iget v2, v0, Lcom/mcdonalds/app/home/HomeFragment;->mOffersCount:I

    if-nez v2, :cond_0

    .line 373
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mcdonalds/app/home/HomeFragment;->mOffersCount:I

    .line 376
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/home/HomeFragment;->mRefreshLayout:Landroid/support/v4/widget/SwipeRefreshLayout;

    new-instance v4, Lcom/mcdonalds/app/home/HomeFragment$5;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/mcdonalds/app/home/HomeFragment$5;-><init>(Lcom/mcdonalds/app/home/HomeFragment;)V

    invoke-virtual {v2, v4}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 384
    const v2, 0x7f110297

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListView:Landroid/widget/ListView;

    .line 385
    const v2, 0x7f0401a1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 386
    .local v9, "headerView":Landroid/view/View;
    const v2, 0x7f110538

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mcdonalds/app/home/HomeFragment;->mPromoPager:Landroid/support/v4/view/ViewPager;

    .line 387
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mcdonalds/app/home/HomeFragment;->mPromoList:Ljava/util/List;

    .line 388
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v4, "interface.dashboard.promos"

    invoke-virtual {v2, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    .line 389
    .local v16, "promos":Ljava/lang/Object;
    move-object/from16 v0, v16

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 391
    new-instance v15, Lcom/mcdonalds/app/home/HomeFragment$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v15, v0, v1}, Lcom/mcdonalds/app/home/HomeFragment$6;-><init>(Lcom/mcdonalds/app/home/HomeFragment;Ljava/lang/Object;)V

    .line 437
    .local v15, "promoRequest":Lcom/mcdonalds/sdk/services/network/RequestProvider;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/home/HomeFragment;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    new-instance v4, Lcom/mcdonalds/app/home/HomeFragment$7;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/mcdonalds/app/home/HomeFragment$7;-><init>(Lcom/mcdonalds/app/home/HomeFragment;)V

    invoke-virtual {v2, v15, v4}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 483
    .end local v15    # "promoRequest":Lcom/mcdonalds/sdk/services/network/RequestProvider;
    :cond_1
    :goto_0
    const v2, 0x7f110202

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/RadioGroup;

    .line 484
    .local v12, "pagerIndicatorGroup":Landroid/widget/RadioGroup;
    const v2, 0x7f1104e3

    invoke-virtual {v12, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/home/HomeFragment;->mPromoPager:Landroid/support/v4/view/ViewPager;

    new-instance v4, Lcom/mcdonalds/app/home/HomeFragment$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v12}, Lcom/mcdonalds/app/home/HomeFragment$8;-><init>(Lcom/mcdonalds/app/home/HomeFragment;Landroid/widget/RadioGroup;)V

    invoke-virtual {v2, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListView:Landroid/widget/ListView;

    invoke-virtual {v2, v9}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 521
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v4, "interface.dashboard.items"

    invoke-virtual {v2, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 522
    .local v11, "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListItemCount:I

    .line 524
    const-string v2, "customer"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mcdonalds/app/home/HomeFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 525
    new-instance v2, Lcom/mcdonalds/app/home/HomeListAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/home/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v2, v4, v0}, Lcom/mcdonalds/app/home/HomeListAdapter;-><init>(Landroid/content/Context;Lcom/mcdonalds/app/ui/URLNavigationFragment;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListAdapter:Lcom/mcdonalds/app/home/HomeListAdapter;

    .line 526
    if-eqz v11, :cond_4

    .line 527
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 528
    .local v10, "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/home/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v2, "itemImage"

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/mcdonalds/app/util/UIUtils;->getDrawableIdByName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 529
    .local v3, "iconResourceId":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListAdapter:Lcom/mcdonalds/app/home/HomeListAdapter;

    move-object/from16 v20, v0

    new-instance v2, Lcom/mcdonalds/app/home/HomeListItem;

    .line 531
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/home/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v4, "itemName"

    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/mcdonalds/app/util/UIUtils;->getStringByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 532
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/home/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-string v5, "itemDescription"

    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/mcdonalds/app/util/UIUtils;->getStringByName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "itemLink"

    .line 533
    invoke-interface {v10, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "itemAttr"

    .line 534
    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-direct/range {v2 .. v7}, Lcom/mcdonalds/app/home/HomeListItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 529
    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/mcdonalds/app/home/HomeListAdapter;->addHomeListItem(Lcom/mcdonalds/app/home/HomeListItem;)V

    .line 536
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListAdapter:Lcom/mcdonalds/app/home/HomeListAdapter;

    invoke-virtual {v2}, Lcom/mcdonalds/app/home/HomeListAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 464
    .end local v3    # "iconResourceId":I
    .end local v10    # "item":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v12    # "pagerIndicatorGroup":Landroid/widget/RadioGroup;
    :cond_2
    move-object/from16 v0, v16

    instance-of v2, v0, Ljava/util/List;

    if-eqz v2, :cond_1

    .line 466
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    const-string v4, "interface.dashboard.promos"

    invoke-virtual {v2, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    .line 468
    .local v14, "promoList":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/gson/internal/LinkedTreeMap;

    .line 469
    .local v18, "stringStringLinkedTreeMap":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v13, Lcom/mcdonalds/app/model/Promo;

    const-string/jumbo v2, "url"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v6, 0x0

    const-string v4, "itemLink"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v13, v2, v6, v4}, Lcom/mcdonalds/app/model/Promo;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 470
    .local v13, "promo":Lcom/mcdonalds/app/model/Promo;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/home/HomeFragment;->mPromoList:Ljava/util/List;

    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 473
    .end local v13    # "promo":Lcom/mcdonalds/app/model/Promo;
    .end local v18    # "stringStringLinkedTreeMap":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    new-instance v8, Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/home/HomeFragment;->mPromoList:Ljava/util/List;

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/home/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v8, v2, v4, v5}, Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;-><init>(Ljava/util/List;Landroid/support/v4/app/FragmentManager;Lcom/mcdonalds/app/util/ImageViewFragment$OnClickListener;)V

    .line 478
    .local v8, "adapter":Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/home/HomeFragment;->mPromoPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v8}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 479
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/home/HomeFragment;->startPromoCarouselTimer()V

    goto/16 :goto_0

    .line 539
    .end local v8    # "adapter":Lcom/mcdonalds/app/home/PromoFragmentStatePagerAdapter;
    .end local v14    # "promoList":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v11    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v12    # "pagerIndicatorGroup":Landroid/widget/RadioGroup;
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/mcdonalds/app/home/HomeFragment;->refreshHomeAdapter(Z)V

    .line 541
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListView:Landroid/widget/ListView;

    new-instance v4, Lcom/mcdonalds/app/home/HomeFragment$9;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/mcdonalds/app/home/HomeFragment$9;-><init>(Lcom/mcdonalds/app/home/HomeFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 597
    return-object v17
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 714
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onDetach()V

    .line 715
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/HomeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/home/HomeFragment;->mServiceConnection:Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/services/network/RequestManager;->unregister(Landroid/content/Context;Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V

    .line 716
    return-void
.end method

.method public onGridItemClick(Lcom/mcdonalds/sdk/modules/models/Offer;)V
    .locals 4
    .param p1, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;

    .prologue
    const-string v1, "onGridItemClick"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 731
    iget v1, p0, Lcom/mcdonalds/app/home/HomeFragment;->mOfferSelectorID:I

    const v2, 0x7f1104ac

    if-ne v1, v2, :cond_0

    sget-object v0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;->Current:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    .line 735
    .local v0, "selection":Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/mcdonalds/app/home/HomeFragment;->commonOnOfferClick(Lcom/mcdonalds/sdk/modules/models/Offer;Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;)V

    .line 736
    return-void

    .line 731
    .end local v0    # "selection":Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;
    :cond_0
    sget-object v0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;->Nearby:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    goto :goto_0
.end method

.method public onOffersTypeSelectorChanged(Landroid/widget/RadioGroup;)V
    .locals 3
    .param p1, "offersSelector"    # Landroid/widget/RadioGroup;

    .prologue
    const-string v0, "onOffersTypeSelectorChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 784
    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/app/home/HomeFragment;->mOfferSelectorID:I

    .line 785
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment;->mHomeListAdapter:Lcom/mcdonalds/app/home/HomeListAdapter;

    invoke-virtual {v0}, Lcom/mcdonalds/app/home/HomeListAdapter;->clearOffers()V

    .line 786
    invoke-direct {p0}, Lcom/mcdonalds/app/home/HomeFragment;->updateOffersDisplay()V

    .line 787
    return-void
.end method

.method public onRegisterClick()V
    .locals 3

    .prologue
    const-string v0, "onRegisterClick"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 760
    sget-object v0, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    new-instance v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v2, "On click"

    .line 762
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    const-string v2, "/home"

    .line 763
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    const-string v2, "Start Registration"

    .line 764
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 765
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v1

    .line 760
    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 767
    const-class v0, Lcom/mcdonalds/app/customer/TermsOfServiceActivity;

    const-string v1, "register"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/home/HomeFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    .line 768
    return-void
.end method

.method public onRemoveFromBasketClicked(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)V
    .locals 4
    .param p1, "orderOffer"    # Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "onRemoveFromBasketClicked"

    new-array v1, v3, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/Order;->removeOffer(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)V

    .line 793
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment;->mAddedToOrder:Ljava/lang/Boolean;

    .line 794
    invoke-direct {p0, v3}, Lcom/mcdonalds/app/home/HomeFragment;->refreshHomeAdapter(Z)V

    .line 795
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 629
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onResume()V

    .line 631
    iput-boolean v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mRecipeFound:Z

    .line 633
    invoke-static {}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->getSharedInstance()Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;

    move-result-object v0

    const-string v1, "NOTIFICATION_FINISH_TUTORIAL"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/notifications/NotificationCenter;->postNotification(Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment;->mAddedToOrder:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 636
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 637
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 638
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 639
    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment;->mAddedToOrder:Ljava/lang/Boolean;

    .line 641
    :cond_1
    invoke-direct {p0, v3}, Lcom/mcdonalds/app/home/HomeFragment;->refreshHomeAdapter(Z)V

    .line 648
    :cond_2
    :goto_0
    return-void

    .line 643
    :cond_3
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment;->mLocationServiceOn:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment;->mLocationServiceOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0}, Lcom/mcdonalds/app/home/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eq v0, v1, :cond_2

    .line 645
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/HomeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/location/LocationServicesManager;->isLocationEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment;->mLocationServiceOn:Ljava/lang/Boolean;

    .line 646
    invoke-direct {p0, v3}, Lcom/mcdonalds/app/home/HomeFragment;->refreshHomeAdapter(Z)V

    goto :goto_0
.end method

.method public onSignInClick()V
    .locals 3

    .prologue
    const-string v0, "onSignInClick"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 772
    sget-object v0, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    new-instance v1, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v2, "On click"

    .line 774
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    const-string v2, "/home"

    .line 775
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    const-string v2, "Sign In"

    .line 776
    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v1

    .line 777
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v1

    .line 772
    invoke-static {v0, v1}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 779
    const-class v0, Lcom/mcdonalds/app/customer/SignInActivity;

    const-string v1, "signin"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/home/HomeFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    .line 780
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 676
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onStart()V

    .line 678
    const-string v2, "customer"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 679
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    if-eqz v0, :cond_1

    .line 680
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->isLoggedIn()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 681
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFirstName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mFirstNameGreeting:Ljava/lang/String;

    .line 682
    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mFirstNameGreeting:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mFirstNameGreeting:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 683
    :cond_0
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mFirstNameGreeting:Ljava/lang/String;

    .line 690
    :cond_1
    :goto_0
    const/4 v1, 0x0

    .line 691
    .local v1, "homeStoreIdString":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 692
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 693
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 696
    :cond_2
    if-nez v1, :cond_3

    .line 698
    const-class v2, Lcom/mcdonalds/app/firstload/SelectStoreActivity;

    sget-object v3, Lcom/mcdonalds/app/firstload/ChooseSearchMethodFragment;->NAME:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/mcdonalds/app/home/HomeFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    .line 699
    invoke-virtual {p0}, Lcom/mcdonalds/app/home/HomeFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    .line 701
    :cond_3
    return-void

    .line 686
    .end local v1    # "homeStoreIdString":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/mcdonalds/app/home/HomeFragment;->mFirstNameGreeting:Ljava/lang/String;

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 705
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onStop()V

    .line 707
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment;->mPromoCarouselTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/mcdonalds/app/home/HomeFragment;->mPromoCarouselTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 710
    :cond_0
    return-void
.end method
