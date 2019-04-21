.class Lcom/mcdonalds/app/offers/OfferFragment$16;
.super Ljava/lang/Object;
.source "OfferFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/offers/OfferFragment;->refreshDataForOffer(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/offers/OfferFragment;

.field final synthetic val$finalPosition:I

.field final synthetic val$orderOfferProduct:Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/offers/OfferFragment;Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/offers/OfferFragment;

    .prologue
    .line 1380
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferFragment$16;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/offers/OfferFragment$16;->val$orderOfferProduct:Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    iput p3, p0, Lcom/mcdonalds/app/offers/OfferFragment$16;->val$finalPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1383
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$16;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/offers/OfferFragment;->access$1600(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    move-result-object v1

    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$16;->val$orderOfferProduct:Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getOfferProduct()Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getProducts()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->getProductCode()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/mcdonalds/app/offers/OfferFragment$16$1;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/offers/OfferFragment$16$1;-><init>(Lcom/mcdonalds/app/offers/OfferFragment$16;)V

    invoke-virtual {v1, v0, v2}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getProductForExternalId(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 1391
    return-void
.end method
