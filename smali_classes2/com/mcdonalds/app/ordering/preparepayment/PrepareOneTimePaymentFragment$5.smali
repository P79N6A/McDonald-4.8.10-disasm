.class Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment$5;
.super Ljava/lang/Object;
.source "PrepareOneTimePaymentFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;
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
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;

    .prologue
    .line 807
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment$5;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p1, "response"    # Ljava/lang/Boolean;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v4, 0x1

    const-string v1, "onResponse"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 813
    if-nez p3, :cond_0

    .line 815
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment$5;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->access$400(Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;)V

    .line 816
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment$5;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->checkOrder()V

    .line 835
    :goto_0
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 836
    return-void

    .line 819
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment$5;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->access$500(Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;)Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/Order;->isDelivery()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 822
    instance-of v1, p3, Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    if-eqz v1, :cond_1

    invoke-virtual {p3}, Lcom/mcdonalds/sdk/AsyncException;->getErrorCode()I

    move-result v1

    const/16 v2, -0x64e

    if-ne v1, v2, :cond_1

    .line 823
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    sget-object v2, Lcom/mcdonalds/app/ordering/preparepayment/BasePreparePaymentFragment;->SHOW_LARGE_ORDER_NOTIFICATION:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 824
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 825
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "large_order"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 826
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment$5;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;

    const-class v2, Lcom/mcdonalds/app/ordering/alert/AlertActivity;

    const-string v3, "large_order_call_alert"

    invoke-virtual {v1, v2, v3, v0}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 828
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment$5;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;

    invoke-static {v1, p3}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->access$600(Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 831
    :cond_2
    iget-object v1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment$5;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;

    invoke-static {v1, p3}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;->access$600(Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment;Lcom/mcdonalds/sdk/AsyncException;)V

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

    .line 807
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/preparepayment/PrepareOneTimePaymentFragment$5;->onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
