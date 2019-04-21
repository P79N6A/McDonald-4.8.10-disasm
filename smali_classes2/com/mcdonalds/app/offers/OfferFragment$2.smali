.class Lcom/mcdonalds/app/offers/OfferFragment$2;
.super Ljava/lang/Object;
.source "OfferFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/offers/OfferFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/offers/OfferFragment;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/offers/OfferFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/offers/OfferFragment;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferFragment$2;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v4, 0x7f0905d4

    const-string v1, "onClick"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 441
    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment$2;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/offers/OfferFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Not Interested"

    invoke-static {v1, v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment$2;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/offers/OfferFragment;->access$000(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/app/offers/OfferActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/AppUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 444
    invoke-static {}, Lcom/mcdonalds/app/ordering/OrderingManager;->getInstance()Lcom/mcdonalds/app/ordering/OrderingManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/app/ordering/OrderingManager;->getCurrentOrder()Lcom/mcdonalds/sdk/modules/models/Order;

    move-result-object v0

    .line 445
    .local v0, "order":Lcom/mcdonalds/sdk/modules/models/Order;
    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment$2;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/offers/OfferFragment;->access$100(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Order;->hasOffer(Lcom/mcdonalds/sdk/modules/models/Offer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 446
    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment$2;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/offers/OfferFragment;->access$000(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/app/offers/OfferActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment$2;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    .line 447
    invoke-static {v2}, Lcom/mcdonalds/app/offers/OfferFragment;->access$000(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/app/offers/OfferActivity;

    move-result-object v2

    const v3, 0x7f090a4c

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/offers/OfferActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment$2;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    .line 448
    invoke-static {v2}, Lcom/mcdonalds/app/offers/OfferFragment;->access$000(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/app/offers/OfferActivity;

    move-result-object v2

    const v3, 0x7f090a4b

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/offers/OfferActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment$2;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    .line 449
    invoke-virtual {v2}, Lcom/mcdonalds/app/offers/OfferFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/app/offers/OfferFragment$2$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/offers/OfferFragment$2$1;-><init>(Lcom/mcdonalds/app/offers/OfferFragment$2;)V

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 455
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 456
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 458
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v1

    const-string v2, "Offer in use"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->recordError(Ljava/lang/String;)V

    .line 495
    .end local v0    # "order":Lcom/mcdonalds/sdk/modules/models/Order;
    :goto_0
    return-void

    .line 461
    .restart local v0    # "order":Lcom/mcdonalds/sdk/modules/models/Order;
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment$2;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/offers/OfferFragment;->access$000(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/app/offers/OfferActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment$2;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    .line 462
    invoke-static {v2}, Lcom/mcdonalds/app/offers/OfferFragment;->access$000(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/app/offers/OfferActivity;

    move-result-object v2

    const v3, 0x7f0900f9

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/offers/OfferActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setTitle(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment$2;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    .line 463
    invoke-static {v2}, Lcom/mcdonalds/app/offers/OfferFragment;->access$000(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/app/offers/OfferActivity;

    move-result-object v2

    const v3, 0x7f0905b0

    invoke-virtual {v2, v3}, Lcom/mcdonalds/app/offers/OfferActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment$2;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    .line 464
    invoke-virtual {v2}, Lcom/mcdonalds/app/offers/OfferFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/app/offers/OfferFragment$2$2;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/offers/OfferFragment$2$2;-><init>(Lcom/mcdonalds/app/offers/OfferFragment$2;)V

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setPositiveButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment$2;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    .line 487
    invoke-virtual {v2}, Lcom/mcdonalds/app/offers/OfferFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090145

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNegativeButton(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    .line 488
    invoke-virtual {v1}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 489
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_0

    .line 493
    .end local v0    # "order":Lcom/mcdonalds/sdk/modules/models/Order;
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment$2;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-virtual {v1}, Lcom/mcdonalds/app/offers/OfferFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/mcdonalds/app/util/UIUtils;->showNoNetworkAlert(Landroid/content/Context;)V

    goto :goto_0
.end method
