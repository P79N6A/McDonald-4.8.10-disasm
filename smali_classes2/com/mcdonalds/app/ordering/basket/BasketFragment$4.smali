.class Lcom/mcdonalds/app/ordering/basket/BasketFragment$4;
.super Ljava/lang/Object;
.source "BasketFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/basket/BasketFragment;->retrieveStoreInfoAndDeliveryFee()V
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
        "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

.field final synthetic val$deliveryOrder:Lcom/mcdonalds/sdk/modules/models/Order;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/basket/BasketFragment;Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$4;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$4;->val$deliveryOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;
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

    .line 424
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$4;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 427
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getExpectedDeliveryTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils;->getDateFromISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 428
    .local v0, "deliveryDateFromStore":Ljava/util/Date;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$4;->val$deliveryOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->isNormalOrder()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 429
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$4;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$4;->val$deliveryOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$4;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCurrentDate()Ljava/util/Date;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/mcdonalds/app/util/UIUtils;->formatDeliveryTimeInMinutes(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$600(Lcom/mcdonalds/app/ordering/basket/BasketFragment;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/lang/String;)V

    .line 437
    .end local v0    # "deliveryDateFromStore":Ljava/util/Date;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 438
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$4;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$700(Lcom/mcdonalds/app/ordering/basket/BasketFragment;)V

    .line 439
    return-void

    .line 431
    .restart local v0    # "deliveryDateFromStore":Ljava/util/Date;
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$4;->this$0:Lcom/mcdonalds/app/ordering/basket/BasketFragment;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/basket/BasketFragment$4;->val$deliveryOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v2

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils;->formatScheduledDeliveryTime(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mcdonalds/app/ordering/basket/BasketFragment;->access$600(Lcom/mcdonalds/app/ordering/basket/BasketFragment;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/lang/String;)V

    goto :goto_0
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

    .line 421
    check-cast p1, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/basket/BasketFragment$4;->onResponse(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
