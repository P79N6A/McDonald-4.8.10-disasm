.class Lcom/mcdonalds/app/ordering/menu/RecentsFragment$2;
.super Ljava/lang/Object;
.source "RecentsFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/menu/RecentsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/AsyncListener",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/CustomerOrder;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/RecentsFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/RecentsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/RecentsFragment;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment$2;->this$0:Lcom/mcdonalds/app/ordering/menu/RecentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3

    .prologue
    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/menu/RecentsFragment$2;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 6
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerOrder;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrder;>;"
    const/4 v5, 0x0

    const-string v2, "onResponse"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v5

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment$2;->this$0:Lcom/mcdonalds/app/ordering/menu/RecentsFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment$2;->this$0:Lcom/mcdonalds/app/ordering/menu/RecentsFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment$2;->this$0:Lcom/mcdonalds/app/ordering/menu/RecentsFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    if-eqz p3, :cond_2

    .line 117
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment$2;->this$0:Lcom/mcdonalds/app/ordering/menu/RecentsFragment;

    invoke-static {v2, v5}, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->access$000(Lcom/mcdonalds/app/ordering/menu/RecentsFragment;Z)V

    .line 118
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 120
    :cond_2
    if-eqz p1, :cond_3

    .line 121
    invoke-static {p1}, Lcom/mcdonalds/app/util/OfferUtils;->filterIfFinalized(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 122
    .local v0, "filteredOrders":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrder;>;"
    const-string v2, "ordering"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 123
    .local v1, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment$2;->this$0:Lcom/mcdonalds/app/ordering/menu/RecentsFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->access$100(Lcom/mcdonalds/app/ordering/menu/RecentsFragment;)Lcom/mcdonalds/sdk/AsyncListener;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/app/ordering/OrderUtils;->ordersFromCustomerOrders(Ljava/util/List;Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_0

    .line 125
    .end local v0    # "filteredOrders":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrder;>;"
    .end local v1    # "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    :cond_3
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment$2;->this$0:Lcom/mcdonalds/app/ordering/menu/RecentsFragment;

    invoke-static {v2, v5}, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->access$000(Lcom/mcdonalds/app/ordering/menu/RecentsFragment;Z)V

    .line 126
    new-instance v2, Lcom/mcdonalds/sdk/AsyncException;

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment$2;->this$0:Lcom/mcdonalds/app/ordering/menu/RecentsFragment;

    const v4, 0x7f09033a

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method
