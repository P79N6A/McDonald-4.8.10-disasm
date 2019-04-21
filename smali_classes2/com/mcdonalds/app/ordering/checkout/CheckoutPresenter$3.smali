.class Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter$3;
.super Ljava/lang/Object;
.source "CheckoutPresenter.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;
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
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    .prologue
    .line 875
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter$3;->this$0:Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
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

    .line 878
    if-eqz p1, :cond_0

    .line 882
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getExpectedDeliveryTime()Ljava/lang/String;

    move-result-object v1

    .line 881
    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils;->getDateFromISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 885
    .local v0, "deliveryDateFromStore":Ljava/util/Date;
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter$3;->this$0:Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    iget-object v2, p0, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter$3;->this$0:Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;

    .line 886
    invoke-static {v2}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->access$100(Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->getDeliveryAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v2

    .line 887
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCurrentDate()Ljava/util/Date;

    move-result-object v3

    .line 885
    invoke-static {v1, v2, v3, v0}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;->access$200(Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter;Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Ljava/util/Date;Ljava/util/Date;)V

    .line 891
    .end local v0    # "deliveryDateFromStore":Ljava/util/Date;
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

    .line 875
    check-cast p1, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/checkout/CheckoutPresenter$3;->onResponse(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
