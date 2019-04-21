.class public Lcom/mcdonalds/app/ordering/menu/RecentsFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "RecentsFragment.java"


# instance fields
.field private mCustomerOrderListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerOrder;",
            ">;>;"
        }
    .end annotation
.end field

.field mNoRecentOrders:Landroid/view/View;

.field private mOrderListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            ">;>;"
        }
    .end annotation
.end field

.field mOrderPager:Landroid/support/v4/view/ViewPager;

.field mPagerAdapter:Lcom/mcdonalds/app/nutrition/OrderPagerAdapter;

.field mPagerIndicator:Lcom/mcdonalds/app/widget/PagerIndicator;

.field mProgressBar:Landroid/widget/ProgressBar;

.field mRecentOrders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            ">;"
        }
    .end annotation
.end field

.field mSeeAll:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->mRecentOrders:Ljava/util/List;

    .line 109
    new-instance v0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/menu/RecentsFragment$2;-><init>(Lcom/mcdonalds/app/ordering/menu/RecentsFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->mCustomerOrderListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 132
    new-instance v0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment$3;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/menu/RecentsFragment$3;-><init>(Lcom/mcdonalds/app/ordering/menu/RecentsFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->mOrderListener:Lcom/mcdonalds/sdk/AsyncListener;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/menu/RecentsFragment;Z)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/RecentsFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.RecentsFragment"

    const-string v2, "access$000"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->setRefreshing(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/menu/RecentsFragment;)Lcom/mcdonalds/sdk/AsyncListener;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/menu/RecentsFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.menu.RecentsFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->mOrderListener:Lcom/mcdonalds/sdk/AsyncListener;

    return-object v0
.end method

.method private fetchOrders(I)V
    .locals 6
    .param p1, "num"    # I

    .prologue
    const/4 v5, 0x1

    const-string v1, "fetchOrders"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->isRefreshing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 89
    const-string v1, "customer"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 90
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-direct {p0, v5}, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->setRefreshing(Z)V

    .line 91
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->mRecentOrders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 92
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->mCustomerOrderListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getRecentOrders(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 95
    .end local v0    # "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    :cond_0
    return-void
.end method

.method private isRefreshing()Z
    .locals 2

    .prologue
    const-string v0, "isRefreshing"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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

    .line 102
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 103
    return-void

    .line 102
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    const v1, 0x7f0400fe

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f110373

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->mNoRecentOrders:Landroid/view/View;

    .line 61
    const v1, 0x7f1102b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 62
    const v1, 0x7f110201

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->mOrderPager:Landroid/support/v4/view/ViewPager;

    .line 63
    new-instance v1, Lcom/mcdonalds/app/nutrition/OrderPagerAdapter;

    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/mcdonalds/app/nutrition/OrderPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->mPagerAdapter:Lcom/mcdonalds/app/nutrition/OrderPagerAdapter;

    .line 64
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->mOrderPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->mPagerAdapter:Lcom/mcdonalds/app/nutrition/OrderPagerAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 65
    const v1, 0x7f110202

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/widget/PagerIndicator;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->mPagerIndicator:Lcom/mcdonalds/app/widget/PagerIndicator;

    .line 66
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->mPagerIndicator:Lcom/mcdonalds/app/widget/PagerIndicator;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->mOrderPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/widget/PagerIndicator;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 67
    const v1, 0x7f110203

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->mSeeAll:Landroid/widget/TextView;

    .line 68
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->mSeeAll:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->mSeeAll:Landroid/widget/TextView;

    new-instance v2, Lcom/mcdonalds/app/ordering/menu/RecentsFragment$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/menu/RecentsFragment$1;-><init>(Lcom/mcdonalds/app/ordering/menu/RecentsFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderUtils;->getNumberOfRecentOrder()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->fetchOrders(I)V

    .line 83
    return-object v0
.end method

.method protected showNoRecentOrders()V
    .locals 2

    .prologue
    const-string v0, "showNoRecentOrders"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->mNoRecentOrders:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    return-void
.end method
