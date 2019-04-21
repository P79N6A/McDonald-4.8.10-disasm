.class Lcom/mcdonalds/app/offers/OfferFragment$3;
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
    .line 501
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferFragment$3;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 506
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$3;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    const v1, 0x7f090883

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/offers/OfferFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackScreenLoad(Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$3;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/offers/OfferFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Info Icon"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackOnClickEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$3;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/offers/OfferFragment;->access$000(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/app/offers/OfferActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->withContext(Landroid/content/Context;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$3;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    .line 510
    invoke-static {v0}, Lcom/mcdonalds/app/offers/OfferFragment;->access$100(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Offer;->getLongDescription()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$3;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/offers/OfferFragment;->access$000(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/app/offers/OfferActivity;

    move-result-object v0

    const v2, 0x7f0905be

    invoke-virtual {v0, v2}, Lcom/mcdonalds/app/offers/OfferActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setMessage(Ljava/lang/String;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    const v1, 0x7f0905d4

    const/4 v2, 0x0

    .line 512
    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;

    move-result-object v0

    .line 513
    invoke-virtual {v0}, Lcom/mcdonalds/app/util/UIUtils$MCDAlertDialogBuilder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 514
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 515
    return-void

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$3;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    .line 511
    invoke-static {v0}, Lcom/mcdonalds/app/offers/OfferFragment;->access$100(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Offer;->getLongDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
