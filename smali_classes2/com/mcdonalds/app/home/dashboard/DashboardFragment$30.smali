.class Lcom/mcdonalds/app/home/dashboard/DashboardFragment$30;
.super Ljava/lang/Object;
.source "DashboardFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->onRemoveFromBasketClicked(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)V
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
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

.field final synthetic val$orderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;Lcom/mcdonalds/sdk/modules/models/OrderOffer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    .prologue
    .line 1645
    iput-object p1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$30;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$30;->val$orderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "removed"    # Ljava/lang/Boolean;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const-string v1, "onResponse"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1648
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1649
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$30;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$300(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->removeRemoveFromBasketView()V

    .line 1650
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$30;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->access$300(Lcom/mcdonalds/app/home/dashboard/DashboardFragment;)Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$30;->val$orderOffer:Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/home/dashboard/DashboardAdapter;->removeAppliedOfferBadge(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)V

    .line 1651
    iget-object v1, p0, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$30;->this$0:Lcom/mcdonalds/app/home/dashboard/DashboardFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    .line 1652
    .local v0, "a":Lcom/mcdonalds/app/ui/URLNavigationActivity;
    instance-of v1, v0, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;

    if-eqz v1, :cond_0

    .line 1653
    check-cast v0, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;

    .end local v0    # "a":Lcom/mcdonalds/app/ui/URLNavigationActivity;
    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/URLBasketNavigationActivity;->updateBasketBadge()V

    .line 1656
    :cond_0
    return-void
.end method

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

    .line 1645
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/home/dashboard/DashboardFragment$30;->onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
