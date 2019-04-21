.class public Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "TrackOrderFragment.java"


# instance fields
.field private mDeliveryModule:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

.field private mDeliveryStatusListener:Lcom/mcdonalds/sdk/AsyncListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/DeliveryStatusResponse;",
            ">;"
        }
    .end annotation
.end field

.field private mEDT:Ljava/lang/String;

.field private mOrderNumber:Ljava/lang/String;

.field private mRefreshListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

.field private mRefresher:Landroid/support/v4/widget/SwipeRefreshLayout;

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/app/ui/DeliveryStatusView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 94
    new-instance v0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment$1;-><init>(Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->mRefreshListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    .line 107
    new-instance v0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment$2;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment$2;-><init>(Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->mDeliveryStatusListener:Lcom/mcdonalds/sdk/AsyncListener;

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.summary.TrackOrderFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->fetchDeliveryStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;)Landroid/support/v4/widget/SwipeRefreshLayout;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.summary.TrackOrderFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->mRefresher:Landroid/support/v4/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;)Ljava/util/List;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.summary.TrackOrderFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->mSteps:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;Landroid/view/View;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.summary.TrackOrderFragment"

    const-string v2, "access$300"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->scrollToView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;)Landroid/widget/ScrollView;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ordering.summary.TrackOrderFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 27
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->mScrollView:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private fetchDeliveryStatus()V
    .locals 3

    .prologue
    const-string v0, "fetchDeliveryStatus"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->mDeliveryModule:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->setNeedsToUpdateDeliveryTracking(Z)V

    .line 104
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->mDeliveryModule:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->mOrderNumber:Ljava/lang/String;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->mDeliveryStatusListener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;->getDeliveryStatus(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 105
    return-void
.end method

.method private scrollToView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v0, "scrollToView"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->mScrollView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment$3;-><init>(Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    .line 149
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const-string v0, "delivery"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->mDeliveryModule:Lcom/mcdonalds/sdk/modules/delivery/DeliveryModule;

    .line 45
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_order_number"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->mOrderNumber:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_edt"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->mEDT:Ljava/lang/String;

    .line 51
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 57
    const v4, 0x7f040128

    invoke-virtual {p1, v4, p2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 59
    .local v3, "v":Landroid/view/View;
    const v4, 0x7f1102ae

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 60
    .local v2, "orderNumberText":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->mOrderNumber:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    const/high16 v4, 0x41c00000    # 24.0f

    invoke-virtual {v2, v7, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 63
    const v4, 0x7f1104c8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    .local v0, "OrderDetailWarning":Landroid/widget/TextView;
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    const v4, 0x7f1102b1

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v4, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->mRefresher:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 67
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->mRefresher:Landroid/support/v4/widget/SwipeRefreshLayout;

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->mRefreshListener:Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 68
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->mRefresher:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-static {v4}, Lcom/mcdonalds/app/util/UIUtils;->setDefaultRefreshColors(Landroid/support/v4/widget/SwipeRefreshLayout;)V

    .line 70
    const v4, 0x7f110414

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    iput-object v4, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->mScrollView:Landroid/widget/ScrollView;

    .line 72
    const v4, 0x7f110419

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/ui/DeliveryStatusView;

    .line 73
    .local v1, "orderDelivered":Lcom/mcdonalds/app/ui/DeliveryStatusView;
    iget-object v4, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->mEDT:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/mcdonalds/app/ui/DeliveryStatusView;->setCompletionTime(Ljava/lang/String;)V

    .line 75
    const/4 v4, 0x5

    new-array v5, v4, [Lcom/mcdonalds/app/ui/DeliveryStatusView;

    const v4, 0x7f110416

    .line 76
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/ui/DeliveryStatusView;

    aput-object v4, v5, v6

    const/4 v6, 0x1

    const v4, 0x7f110417

    .line 77
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/ui/DeliveryStatusView;

    aput-object v4, v5, v6

    const v4, 0x7f110418

    .line 78
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/ui/DeliveryStatusView;

    aput-object v4, v5, v7

    const/4 v4, 0x3

    aput-object v1, v5, v4

    const/4 v6, 0x4

    const v4, 0x7f110415

    .line 80
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/app/ui/DeliveryStatusView;

    aput-object v4, v5, v6

    .line 75
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->mSteps:Ljava/util/List;

    .line 83
    return-object v3
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const-string v0, "onViewCreated"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 90
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->mRefresher:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v3}, Landroid/support/v4/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 91
    invoke-direct {p0}, Lcom/mcdonalds/app/ordering/summary/TrackOrderFragment;->fetchDeliveryStatus()V

    .line 92
    return-void
.end method
