.class Lcom/mcdonalds/app/ordering/basket/BasketFragment$5$1;
.super Ljava/lang/Object;
.source "BasketFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/basket/BasketFragment$5;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/ordering/basket/BasketFragment$5;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/basket/BasketFragment$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/ordering/basket/BasketFragment$5;

    .prologue
    .line 526
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$5$1;->this$1:Lcom/mcdonalds/app/ordering/basket/BasketFragment$5;

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

    .line 526
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/basket/BasketFragment$5$1;->onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method

.method public onResponse(Ljava/lang/Void;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/Void;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v3

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 529
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$5$1;->this$1:Lcom/mcdonalds/app/ordering/basket/BasketFragment$5;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$5;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-static {v0, v4}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$002(Lcom/mcdonalds/app/ordering/basket/BasketFragment;Z)Z

    .line 530
    if-nez p3, :cond_2

    .line 532
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$5$1;->this$1:Lcom/mcdonalds/app/ordering/basket/BasketFragment$5;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$5;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$5$1;->this$1:Lcom/mcdonalds/app/ordering/basket/BasketFragment$5;

    iget-object v1, v1, Lcom/mcdonalds/app/ordering/basket/BasketFragment$5;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$200(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->getUnavailableProductCodes()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$802(Lcom/mcdonalds/app/ordering/basket/BasketFragment;Ljava/util/List;)Ljava/util/List;

    .line 533
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$5$1;->this$1:Lcom/mcdonalds/app/ordering/basket/BasketFragment$5;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$5;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$800(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$5$1;->this$1:Lcom/mcdonalds/app/ordering/basket/BasketFragment$5;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$5;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-static {v0, v3}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$902(Lcom/mcdonalds/app/ordering/basket/BasketFragment;Z)Z

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$5$1;->this$1:Lcom/mcdonalds/app/ordering/basket/BasketFragment$5;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$5;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$200(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Order;->getOffers()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/ListUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$5$1;->this$1:Lcom/mcdonalds/app/ordering/basket/BasketFragment$5;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$5;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$1000(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)V

    .line 547
    :goto_0
    return-void

    .line 540
    :cond_1
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$5$1;->this$1:Lcom/mcdonalds/app/ordering/basket/BasketFragment$5;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$5;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$1100(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)V

    goto :goto_0

    .line 543
    :cond_2
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$5$1;->this$1:Lcom/mcdonalds/app/ordering/basket/BasketFragment$5;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$5;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-static {v0, v3}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$902(Lcom/mcdonalds/app/ordering/basket/BasketFragment;Z)Z

    .line 544
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 545
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0
.end method
