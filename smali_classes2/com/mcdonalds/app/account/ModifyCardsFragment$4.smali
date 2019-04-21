.class Lcom/mcdonalds/app/account/ModifyCardsFragment$4;
.super Ljava/lang/Object;
.source "ModifyCardsFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/account/ModifyCardsFragment;->saveCustomerProfileChanges(ZI)V
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
        "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/account/ModifyCardsFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/account/ModifyCardsFragment;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$4;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    iput p2, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$4;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "onResponse"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v0

    aput-object p2, v3, v1

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    if-eqz p3, :cond_1

    .line 418
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 448
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 449
    return-void

    .line 421
    :cond_1
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$4;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-virtual {v2}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v2

    if-eqz v2, :cond_4

    if-eqz p1, :cond_4

    .line 424
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$4;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->access$500(Lcom/mcdonalds/app/account/ModifyCardsFragment;)Ljava/util/List;

    move-result-object v2

    iget v3, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$4;->val$index:I

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 426
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/Order;->clearPayment()V

    .line 428
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$4;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->access$400(Lcom/mcdonalds/app/account/ModifyCardsFragment;)Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/app/account/ModifyCardsFragment$ModifyCardsBaseAdapter;->notifyDataSetChanged()V

    .line 430
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$4;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->access$200(Lcom/mcdonalds/app/account/ModifyCardsFragment;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 431
    iget-object v2, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$4;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->access$200(Lcom/mcdonalds/app/account/ModifyCardsFragment;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$4;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->access$500(Lcom/mcdonalds/app/account/ModifyCardsFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setActivated(Z)V

    .line 434
    :cond_3
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$4;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-static {v0, v1}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->access$602(Lcom/mcdonalds/app/account/ModifyCardsFragment;Z)Z

    .line 435
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$4;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->access$900(Lcom/mcdonalds/app/account/ModifyCardsFragment;)V

    .line 436
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$4;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->access$1000(Lcom/mcdonalds/app/account/ModifyCardsFragment;)V

    .line 439
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    const-string v1, "supportedPaymentMethods.creditCard.checkMaxPaymentCards"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$4;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->access$1100(Lcom/mcdonalds/app/account/ModifyCardsFragment;)V

    goto :goto_0

    .line 444
    :cond_4
    new-instance v0, Lcom/mcdonalds/sdk/AsyncException;

    iget-object v1, p0, Lcom/mcdonalds/app/account/ModifyCardsFragment$4;->this$0:Lcom/mcdonalds/app/account/ModifyCardsFragment;

    const v2, 0x7f09033a

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/account/ModifyCardsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/AsyncException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

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

    .line 413
    check-cast p1, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/account/ModifyCardsFragment$4;->onResponse(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
