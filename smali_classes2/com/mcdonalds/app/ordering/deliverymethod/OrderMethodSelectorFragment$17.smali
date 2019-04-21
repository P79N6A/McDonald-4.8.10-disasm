.class Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$17;
.super Ljava/lang/Object;
.source "OrderMethodSelectorFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->initMethodSelectorGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

.field final synthetic val$mClearBasketOnOrderTypeChange:Z


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    .prologue
    .line 839
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$17;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    iput-boolean p2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$17;->val$mClearBasketOnOrderTypeChange:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v2, "onClick"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 843
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$17;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$17;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$200(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$2802(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;I)I

    .line 844
    const-string v2, "/checkout/delivery"

    const-string v3, "Delivery"

    invoke-static {v2, v3}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$17;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$3000(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 847
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$17;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$202(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;I)I

    .line 853
    :goto_0
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$17;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$200(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)I

    move-result v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$17;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$2800(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 854
    iget-boolean v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$17;->val$mClearBasketOnOrderTypeChange:Z

    if-eqz v2, :cond_4

    .line 855
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 856
    .local v0, "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getBasketCounter()I

    move-result v2

    if-lez v2, :cond_3

    .line 857
    new-instance v1, Lcom/mcdonalds/app/ordering/deliverymethod/OnDeliveryMethodChangeDialog;

    invoke-direct {v1}, Lcom/mcdonalds/app/ordering/deliverymethod/OnDeliveryMethodChangeDialog;-><init>()V

    .line 858
    .local v1, "deliveryMethodChangedDialog":Landroid/support/v4/app/DialogFragment;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$17;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "OnDeliveryMethodChangeDialog"

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/DialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 867
    .end local v0    # "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    .end local v1    # "deliveryMethodChangedDialog":Landroid/support/v4/app/DialogFragment;
    :cond_0
    :goto_1
    return-void

    .line 849
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$17;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$17;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$3100(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    :goto_2
    invoke-static {v3, v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$202(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;I)I

    .line 850
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$17;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$3200(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)V

    goto :goto_0

    .line 849
    :cond_2
    const/4 v2, 0x3

    goto :goto_2

    .line 860
    .restart local v0    # "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    :cond_3
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$17;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1600(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)V

    goto :goto_1

    .line 864
    .end local v0    # "currentOrder":Lcom/mcdonalds/sdk/modules/models/Order;
    :cond_4
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$17;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$1600(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;)V

    goto :goto_1
.end method
