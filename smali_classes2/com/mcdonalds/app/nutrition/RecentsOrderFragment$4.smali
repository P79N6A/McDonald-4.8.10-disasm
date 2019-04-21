.class Lcom/mcdonalds/app/nutrition/RecentsOrderFragment$4;
.super Ljava/lang/Object;
.source "RecentsOrderFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;->orderAgainTapped(Lcom/mcdonalds/sdk/modules/models/Order;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;

.field final synthetic val$currentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

.field final synthetic val$order:Lcom/mcdonalds/sdk/modules/models/Order;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;Lcom/mcdonalds/sdk/modules/models/Order;Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment$4;->this$0:Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment$4;->val$currentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    iput-object p3, p0, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment$4;->val$order:Lcom/mcdonalds/sdk/modules/models/Order;

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

    .line 163
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment$4;->val$currentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->clearOffers()V

    .line 164
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment$4;->val$currentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->clearProducts()V

    .line 166
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment$4;->val$order:Lcom/mcdonalds/sdk/modules/models/Order;

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

    .line 167
    .local v0, "productToInsert":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment$4;->val$currentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2, v0}, Lcom/mcdonalds/sdk/modules/models/Order;->addProduct(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Z

    goto :goto_0

    .line 170
    .end local v0    # "productToInsert":Lcom/mcdonalds/sdk/modules/models/OrderProduct;
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment$4;->val$currentOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    iget-object v2, p0, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment$4;->val$order:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->setIsDelivery(Z)V

    .line 172
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment$4;->this$0:Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;

    if-eqz v1, :cond_1

    .line 173
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment$4;->this$0:Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->updateBasketBadge()V

    .line 174
    iget-object v1, p0, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment$4;->this$0:Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/nutrition/RecentsOrderFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;

    const-class v2, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    .line 175
    invoke-virtual {v1, v2, v5}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->startActivityForResult(Ljava/lang/Class;I)V

    .line 178
    :cond_1
    return-void
.end method
