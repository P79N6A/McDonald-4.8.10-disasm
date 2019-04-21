.class public Lcom/mcdonalds/app/nutrition/RecentsListFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "RecentsListFragment.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# instance fields
.field mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

.field mOrders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            ">;"
        }
    .end annotation
.end field

.field mReceiptListView:Landroid/widget/ListView;

.field receiptListAdapter:Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-class v0, Lcom/mcdonalds/app/nutrition/RecentsListFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/nutrition/RecentsListFragment;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/RecentsListFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 58
    const-string v1, "ordering"

    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    iput-object v1, p0, Lcom/mcdonalds/app/nutrition/RecentsListFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 61
    new-instance v1, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;

    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/RecentsListFragment;->mOrders:Ljava/util/List;

    iget-object v3, p0, Lcom/mcdonalds/app/nutrition/RecentsListFragment;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/RecentsListFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;-><init>(Ljava/util/List;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mcdonalds/app/nutrition/RecentsListFragment;->receiptListAdapter:Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;

    .line 62
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/RecentsListFragment;->mReceiptListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/RecentsListFragment;->receiptListAdapter:Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/RecentsListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/nutrition/RecentsListActivity;

    .line 67
    .local v0, "recentsListActivity":Lcom/mcdonalds/app/nutrition/RecentsListActivity;
    invoke-virtual {v0}, Lcom/mcdonalds/app/nutrition/RecentsListActivity;->bringBasketToFront()V

    .line 68
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 36
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/mcdonalds/app/nutrition/RecentsListFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "ARG_RECENT_ORDERS_LIST_KEY"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 39
    .local v0, "recentOrderListKey":I
    if-eq v0, v3, :cond_0

    .line 40
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getInstance()Lcom/mcdonalds/sdk/services/data/DataPasser;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/services/data/DataPasser;->getData(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lcom/mcdonalds/app/nutrition/RecentsListFragment;->mOrders:Ljava/util/List;

    .line 42
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    const v1, 0x7f040100

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "rootView":Landroid/view/View;
    const v1, 0x7f110379

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/mcdonalds/app/nutrition/RecentsListFragment;->mReceiptListView:Landroid/widget/ListView;

    .line 50
    return-object v0
.end method
