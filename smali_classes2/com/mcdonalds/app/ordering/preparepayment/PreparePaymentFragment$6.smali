.class Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$6;
.super Ljava/lang/Object;
.source "PreparePaymentFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->refreshStoreInfo()V
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
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;

.field final synthetic val$order:Lcom/mcdonalds/sdk/modules/models/Order;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;

    .prologue
    .line 655
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$6;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$6;->val$order:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 6
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v5, 0x1

    const-string v1, "onResponse"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v5

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 660
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$6;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 664
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getExpectedDeliveryTime()Ljava/lang/String;

    move-result-object v1

    .line 663
    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils;->getDateFromISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 667
    .local v0, "deliveryDateFromStore":Ljava/util/Date;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$6;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$6;->val$order:Lcom/mcdonalds/sdk/modules/models/Order;

    .line 668
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$6;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;

    .line 670
    invoke-virtual {v3}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v3

    .line 671
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCurrentDate()Ljava/util/Date;

    move-result-object v4

    .line 669
    invoke-static {v3, v4, v0, v5}, Lcom/mcdonalds/app/util/UIUtils;->formatDeliveryTime(Landroid/content/Context;Ljava/util/Date;Ljava/util/Date;Z)Ljava/lang/String;

    move-result-object v3

    .line 667
    invoke-static {v1, v2, v3}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->access$500(Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/lang/String;)V

    .line 677
    .end local v0    # "deliveryDateFromStore":Ljava/util/Date;
    :cond_0
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 678
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

    .line 655
    check-cast p1, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$6;->onResponse(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
