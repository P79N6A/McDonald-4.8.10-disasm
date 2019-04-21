.class public Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ReceiptListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field mContext:Landroid/content/Context;

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


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Landroid/content/Context;)V
    .locals 0
    .param p2, "orderingModule"    # Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    .param p3, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            ">;",
            "Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, "orders":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Order;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;->mOrders:Ljava/util/List;

    .line 45
    iput-object p2, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;->mOrderingModule:Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 46
    iput-object p3, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    .prologue
    const-string v0, "getCount"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;->mOrders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "getItem"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;->mOrders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    const-string v0, "getItemId"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;->mOrders:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 73
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/mcdonalds/app/ui/URLNavigationActivity;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 75
    .local v1, "inflater":Landroid/view/LayoutInflater;
    if-nez p2, :cond_0

    .line 76
    const v3, 0x7f040101

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 77
    new-instance v0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$ViewHolder;

    invoke-direct {v0, p0, v6}, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$ViewHolder;-><init>(Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$1;)V

    .line 78
    .local v0, "holder":Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$ViewHolder;
    const v3, 0x7f110355

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$ViewHolder;->order_again_btn:Landroid/widget/Button;

    .line 79
    const v3, 0x7f110352

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$ViewHolder;->receipt_layout:Landroid/widget/LinearLayout;

    .line 81
    iget-object v3, v0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$ViewHolder;->receipt_layout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;->mContext:Landroid/content/Context;

    const/16 v5, 0x104

    invoke-static {v4, v5}, Lcom/mcdonalds/app/util/UIUtils;->dpAsPixels(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setMinimumHeight(I)V

    .line 83
    const v3, 0x7f11037a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$ViewHolder;->zigzag_view:Landroid/view/View;

    .line 84
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    :goto_0
    iget-object v3, v0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$ViewHolder;->receipt_layout:Landroid/widget/LinearLayout;

    const-string v4, "OrderPressed"

    invoke-static {v3, v4, p1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;I)V

    .line 90
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;->mOrders:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/Order;

    .line 92
    .local v2, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    iget-object v3, v0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$ViewHolder;->receipt_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 95
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$ViewHolder;->receipt_layout:Landroid/widget/LinearLayout;

    invoke-static {v2, v3, v4, v1}, Lcom/mcdonalds/app/ordering/menu/OrderReceiptRecents;->configureOrderReceiptForDisplay(Lcom/mcdonalds/sdk/modules/models/Order;Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;)V

    .line 103
    iget-object v3, v0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$ViewHolder;->receipt_layout:Landroid/widget/LinearLayout;

    new-instance v4, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$1;

    invoke-direct {v4, p0, v2}, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$1;-><init>(Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;Lcom/mcdonalds/sdk/modules/models/Order;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v3, v0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$ViewHolder;->order_again_btn:Landroid/widget/Button;

    new-instance v4, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;

    invoke-direct {v4, p0, v2}, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;-><init>(Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;Lcom/mcdonalds/sdk/modules/models/Order;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    invoke-static {p2, p1}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    const-string v3, "getView"

    invoke-static {p0, v3}, Lcom/ensighten/Ensighten;->processView(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, -0x1

    invoke-static {v6, v3}, Lcom/ensighten/Ensighten;->getViewReturnValue(Landroid/view/View;I)V

    return-object p2

    .line 86
    .end local v0    # "holder":Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$ViewHolder;
    .end local v2    # "order":Lcom/mcdonalds/sdk/modules/models/Order;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$ViewHolder;

    .restart local v0    # "holder":Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$ViewHolder;
    goto :goto_0
.end method
