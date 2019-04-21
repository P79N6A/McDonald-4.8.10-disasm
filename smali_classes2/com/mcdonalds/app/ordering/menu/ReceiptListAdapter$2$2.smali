.class Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2$2;
.super Ljava/lang/Object;
.source "ReceiptListAdapter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;

.field final synthetic val$currentOrder:Lcom/mcdonalds/sdk/modules/models/Order;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2$2;->this$1:Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2$2;->val$currentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const-string v1, "onClick"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2$2;->val$currentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->clearOffers()V

    .line 149
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2$2;->val$currentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->clearProducts()V

    .line 151
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2$2;->this$1:Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;->val$order:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getProducts()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .line 152
    .local v0, "productToInsert":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2$2;->val$currentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2, v0}, Lcom/mcdonalds/sdk/modules/models/Order;->addProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    goto :goto_0

    .line 155
    .end local v0    # "productToInsert":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2$2;->val$currentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2$2;->this$1:Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;

    iget-object v2, v2, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;->val$order:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setIsDelivery(Z)V

    .line 157
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2$2;->this$1:Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;->this$0:Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;->mContext:Landroid/content/Context;

    instance-of v1, v1, Lcom/mcdonalds/app/ui/URLNavigationActivity;

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2$2;->this$1:Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;->this$0:Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/mcdonalds/app/ui/URLNavigationActivity;

    const-class v2, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->startActivity(Ljava/lang/Class;)V

    .line 159
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2$2;->this$1:Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter$2;->this$0:Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/menu/ReceiptListAdapter;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/mcdonalds/app/ui/URLNavigationActivity;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

    .line 161
    :cond_1
    return-void
.end method
