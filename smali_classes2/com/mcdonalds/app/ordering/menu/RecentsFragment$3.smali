.class Lcom/mcdonalds/app/ordering/menu/RecentsFragment$3;
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
        "Lcom/mcdonalds/sdk/modules/models/Order;",
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
    .line 132
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment$3;->this$0:Lcom/mcdonalds/app/ordering/menu/RecentsFragment;

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

    .line 132
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/menu/RecentsFragment$3;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Order;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "response":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Order;>;"
    const/4 v3, 0x0

    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment$3;->this$0:Lcom/mcdonalds/app/ordering/menu/RecentsFragment;

    invoke-static {v0, v3}, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->access$000(Lcom/mcdonalds/app/ordering/menu/RecentsFragment;Z)V

    .line 137
    if-nez p3, :cond_2

    .line 139
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment$3;->this$0:Lcom/mcdonalds/app/ordering/menu/RecentsFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->showNoRecentOrders()V

    .line 151
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment$3;->this$0:Lcom/mcdonalds/app/ordering/menu/RecentsFragment;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->mRecentOrders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment$3;->this$0:Lcom/mcdonalds/app/ordering/menu/RecentsFragment;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->mPagerAdapter:Lcom/mcdonalds/app/nutrition/OrderPagerAdapter;

    invoke-virtual {v0, p1}, Lcom/mcdonalds/app/nutrition/OrderPagerAdapter;->setOrders(Ljava/util/List;)V

    .line 145
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment$3;->this$0:Lcom/mcdonalds/app/ordering/menu/RecentsFragment;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->mOrderPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment$3;->this$0:Lcom/mcdonalds/app/ordering/menu/RecentsFragment;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->mPagerAdapter:Lcom/mcdonalds/app/nutrition/OrderPagerAdapter;

    invoke-virtual {v1}, Lcom/mcdonalds/app/nutrition/OrderPagerAdapter;->getCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 146
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment$3;->this$0:Lcom/mcdonalds/app/ordering/menu/RecentsFragment;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/menu/RecentsFragment;->mSeeAll:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 149
    :cond_2
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method
