.class Lcom/mcdonalds/app/ordering/basket/BasketFragment$7;
.super Ljava/lang/Object;
.source "BasketFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/basket/BasketFragment;->updateOffers()V
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
        "Lcom/mcdonalds/sdk/modules/models/Offer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    .prologue
    .line 586
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$7;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

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

    .line 586
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/basket/BasketFragment$7;->onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/util/List;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 9
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ">;",
            "Lcom/mcdonalds/sdk/AsyncToken;",
            "Lcom/mcdonalds/sdk/AsyncException;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "offerList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Offer;>;"
    const-string v5, "onResponse"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    invoke-static {p0, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 589
    if-nez p3, :cond_5

    .line 592
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 593
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/OrderOffer;>;"
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$7;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$200(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 594
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$7;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$200(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->clearOffers()V

    .line 595
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 596
    .local v2, "offerLocal":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 597
    .local v1, "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->getOffer()Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 598
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$7;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-static {v6}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$200(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/mcdonalds/sdk/modules/models/Order;->addOffer(Lcom/mcdonalds/sdk/modules/models/OrderOffer;)Z

    goto :goto_0

    .line 604
    .end local v1    # "offer":Lcom/mcdonalds/sdk/modules/models/Offer;
    .end local v2    # "offerLocal":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_2
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$7;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$200(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 605
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$7;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    iget-object v6, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$7;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-static {v6}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$200(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$1300(Lcom/mcdonalds/app/ordering/basket/BasketFragment;Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 606
    new-instance v3, Lcom/mcdonalds/sdk/AsyncCounter;

    iget-object v5, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$7;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$200(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    new-instance v6, Lcom/mcdonalds/app/ordering/basket/BasketFragment$7$1;

    invoke-direct {v6, p0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment$7$1;-><init>(Lcom/mcdonalds/app/ordering/basket/BasketFragment$7;)V

    invoke-direct {v3, v5, v6}, Lcom/mcdonalds/sdk/AsyncCounter;-><init>(ILcom/mcdonalds/sdk/AsyncListener;)V

    .line 618
    .local v3, "orderOfferCounter":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<Ljava/lang/Void;>;"
    iget-object v5, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$7;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$200(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/OrderOffer;

    .line 619
    .local v4, "orderOfferLocal":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    iget-object v6, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$7;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-static {v6}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$1400(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    move-result-object v6

    new-instance v7, Lcom/mcdonalds/app/ordering/basket/BasketFragment$7$2;

    invoke-direct {v7, p0, v3}, Lcom/mcdonalds/app/ordering/basket/BasketFragment$7$2;-><init>(Lcom/mcdonalds/app/ordering/basket/BasketFragment$7;Lcom/mcdonalds/sdk/AsyncCounter;)V

    invoke-virtual {v4, v6, v7}, Lcom/mcdonalds/sdk/modules/models/OrderOffer;->revalidate(Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;Lcom/mcdonalds/sdk/AsyncListener;)V

    goto :goto_1

    .line 627
    .end local v3    # "orderOfferCounter":Lcom/mcdonalds/sdk/AsyncCounter;, "Lcom/mcdonalds/sdk/AsyncCounter<Ljava/lang/Void;>;"
    .end local v4    # "orderOfferLocal":Lcom/mcdonalds/sdk/modules/models/OrderOffer;
    :cond_3
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 633
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/OrderOffer;>;"
    :cond_4
    :goto_2
    return-void

    .line 630
    :cond_5
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 631
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    goto :goto_2
.end method
