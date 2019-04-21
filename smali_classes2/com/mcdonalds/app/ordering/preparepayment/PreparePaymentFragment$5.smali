.class Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$5;
.super Ljava/lang/Object;
.source "PreparePaymentFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->totalizeCurrentOrder(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
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
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;

    .prologue
    .line 571
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$5;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 3
    .param p1, "response"    # Ljava/lang/Boolean;
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

    .line 574
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$5;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 575
    if-nez p3, :cond_1

    .line 576
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$5;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->updateTotals()V

    .line 577
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$5;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->checkOrder()V

    .line 603
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 604
    return-void

    .line 578
    :cond_1
    invoke-virtual {p3}, Lcom/mcdonalds/sdk/AsyncException;->getErrorCode()I

    move-result v0

    const/16 v1, -0x40b

    if-ne v0, v1, :cond_2

    .line 579
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$5;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;

    invoke-virtual {p3}, Lcom/mcdonalds/sdk/AsyncException;->getErrorCode()I

    move-result v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->access$400(Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;I)V

    goto :goto_0

    .line 580
    :cond_2
    invoke-virtual {p3}, Lcom/mcdonalds/sdk/AsyncException;->getErrorCode()I

    move-result v0

    const/16 v1, -0x646

    if-ne v0, v1, :cond_3

    .line 581
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$5;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090338

    .line 582
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f090293

    .line 583
    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(I)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    new-instance v2, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$5$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$5$1;-><init>(Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$5;)V

    .line 584
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 591
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 592
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 594
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v0

    const-string v1, "Zero or negative price"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    goto :goto_0

    .line 596
    :cond_3
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

    .line 598
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$5;->this$0:Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->finish()V

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

    .line 571
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/ordering/preparepayment/PreparePaymentFragment$5;->onResponse(Ljava/lang/Boolean;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
