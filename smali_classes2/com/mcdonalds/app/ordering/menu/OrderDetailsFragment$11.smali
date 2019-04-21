.class Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$11;
.super Ljava/lang/Object;
.source "OrderDetailsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->orderAgain()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

.field final synthetic val$current:Lcom/mcdonalds/sdk/modules/models/Order;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    .prologue
    .line 459
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$11;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$11;->val$current:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v5, 0x2

    const-string v1, "onClick"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 463
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$11;->val$current:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->clearOffers()V

    .line 464
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$11;->val$current:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->clearProducts()V

    .line 466
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$11;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->access$100(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

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

    .line 467
    .local v0, "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$11;->val$current:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2, v0}, Lcom/mcdonalds/sdk/modules/models/Order;->addProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    goto :goto_0

    .line 469
    .end local v0    # "orderProduct":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$11;->val$current:Lcom/mcdonalds/sdk/modules/models/Order;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$11;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->access$100(Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setIsDelivery(Z)V

    .line 470
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$11;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/mcdonalds/app/ui/URLActionBarActivity;

    if-eqz v1, :cond_1

    .line 471
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment$11;->this$0:Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/menu/OrderDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/ui/URLActionBarActivity;

    const-class v2, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    invoke-virtual {v1, v2, v5}, Lcom/mcdonalds/app/ui/URLActionBarActivity;->startActivityForResult(Ljava/lang/Class;I)V

    .line 475
    :cond_1
    return-void
.end method
