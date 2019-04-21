.class Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$6$1;
.super Ljava/lang/Object;
.source "OrderMethodSelectorFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$6;->onClick(Landroid/view/View;)V
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
.field final synthetic this$1:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$6;

.field final synthetic val$deliveryOrder:Lcom/mcdonalds/sdk/modules/models/Order;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$6;Lcom/mcdonalds/sdk/modules/models/Order;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$6;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$6$1;->this$1:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$6;

    iput-object p2, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$6$1;->val$deliveryOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

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

    .line 400
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$6$1;->this$1:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$6;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$6;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    if-nez p3, :cond_1

    .line 402
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$6$1;->this$1:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$6;

    iget-object v0, v0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$6;->this$0:Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$6$1;->val$deliveryOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    invoke-static {v0, p1, v1}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;->access$600(Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment;Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/modules/models/Order;)V

    .line 408
    :goto_0
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 410
    :cond_0
    return-void

    .line 404
    :cond_1
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 406
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$6$1;->val$deliveryOrder:Lcom/mcdonalds/sdk/modules/models/Order;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->setDeliveryStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V

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

    .line 397
    check-cast p1, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/deliverymethod/OrderMethodSelectorFragment$6$1;->onResponse(Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
