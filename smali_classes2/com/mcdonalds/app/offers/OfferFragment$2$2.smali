.class Lcom/mcdonalds/app/offers/OfferFragment$2$2;
.super Ljava/lang/Object;
.source "OfferFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/offers/OfferFragment$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/offers/OfferFragment$2;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/offers/OfferFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/offers/OfferFragment$2;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferFragment$2$2;->this$1:Lcom/mcdonalds/app/offers/OfferFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 467
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$2$2;->this$1:Lcom/mcdonalds/app/offers/OfferFragment$2;

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment$2;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/offers/OfferFragment;->access$000(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/app/offers/OfferActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment$2$2;->this$1:Lcom/mcdonalds/app/offers/OfferFragment$2;

    iget-object v1, v1, Lcom/mcdonalds/app/offers/OfferFragment$2;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/offers/OfferFragment;->access$000(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/app/offers/OfferActivity;

    move-result-object v1

    const v2, 0x7f09080f

    invoke-virtual {v1, v2}, Lcom/mcdonalds/app/offers/OfferActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$2$2;->this$1:Lcom/mcdonalds/app/offers/OfferFragment$2;

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferFragment$2;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/offers/OfferFragment;->access$300(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment$2$2;->this$1:Lcom/mcdonalds/app/offers/OfferFragment$2;

    iget-object v1, v1, Lcom/mcdonalds/app/offers/OfferFragment$2;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v1}, Lcom/mcdonalds/app/offers/OfferFragment;->access$100(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v1

    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment$2$2;->this$1:Lcom/mcdonalds/app/offers/OfferFragment$2;

    iget-object v2, v2, Lcom/mcdonalds/app/offers/OfferFragment$2;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/offers/OfferFragment;->access$200(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/app/offers/OfferFragment$2$2$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/offers/OfferFragment$2$2$1;-><init>(Lcom/mcdonalds/app/offers/OfferFragment$2$2;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->archiveOffer(Lcom/mcdonalds/sdk/modules/models/Offer;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 485
    return-void
.end method
