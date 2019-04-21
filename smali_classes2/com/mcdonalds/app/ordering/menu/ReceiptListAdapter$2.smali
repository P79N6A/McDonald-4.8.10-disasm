.class Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;
.super Ljava/lang/Object;
.source "ReceiptListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;

.field final synthetic val$order:Lcom/mcdonalds/sdk/modules/models/Order;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;->this$0:Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;->val$order:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const-string v2, "onClick"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    const-string v2, "/order-detail"

    const-string v3, "Order Again"

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 126
    .local v0, "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getBasketCounter()I

    move-result v2

    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getMaxBasketQuantity()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 127
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;->this$0:Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;

    iget-object v2, v2, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;->this$0:Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;

    iget-object v3, v3, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0907e8

    .line 128
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;->this$0:Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;

    iget-object v3, v3, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f0905d4

    .line 129
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2$1;

    invoke-direct {v4, p0}, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2$1;-><init>(Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;)V

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 136
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 179
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;->val$order:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->canAddProducts(Lcom/mcdonalds/sdk/modules/models/Order;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 139
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;->val$order:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/OrderUtils;->orderHasUnavailableProductsOrIsEmpty(Lcom/mcdonalds/sdk/modules/models/Order;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;->this$0:Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;

    iget-object v2, v2, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;->this$0:Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;

    iget-object v3, v3, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f090a51

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v5, v3, v5}, Lcom/mcdonalds/app/util/UIUtils;->showGlobalAlertDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog;

    .line 142
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v2

    const-string v3, "Must have items in basket before checking out"

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_1
    new-instance v1, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2$2;

    invoke-direct {v1, p0, v0}, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2$2;-><init>(Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 165
    .local v1, "onPositiveClick":Landroid/content/DialogInterface$OnClickListener;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;->this$0:Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;

    iget-object v2, v2, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    const v3, 0x7f09010f

    .line 166
    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    const v3, 0x7f090156

    .line 167
    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;->this$0:Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;

    iget-object v3, v3, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f090182

    .line 168
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;->this$0:Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;

    iget-object v3, v3, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f09011a

    .line 169
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v2

    .line 170
    invoke-virtual {v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 171
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    .line 174
    .end local v1    # "onPositiveClick":Landroid/content/DialogInterface$OnClickListener;
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;->this$0:Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;

    iget-object v2, v2, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mcdonalds/app/util/UIUtils;->showInvalidDayPartsError(Landroid/content/Context;)V

    goto :goto_0
.end method
