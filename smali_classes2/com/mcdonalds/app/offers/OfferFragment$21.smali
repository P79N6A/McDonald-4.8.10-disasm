.class Lcom/mcdonalds/app/offers/OfferFragment$21;
.super Ljava/lang/Object;
.source "OfferFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/offers/OfferFragment;->addProductToMeaLList(Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;)Z
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
.method constructor <init>(Lcom/mcdonalds/app/offers/OfferFragment;ILcom/mcdonalds/sdk/modules/models/OrderOfferProduct;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/offers/OfferFragment;

    .prologue
    .line 1907
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferFragment$21;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    iput p2, p0, Lcom/mcdonalds/app/offers/OfferFragment$21;->val$finalPosition:I

    iput-object p3, p0, Lcom/mcdonalds/app/offers/OfferFragment$21;->val$orderOfferProduct:Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

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

    .line 1910
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$21;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v0}, Lcom/mcdonalds/app/offers/OfferFragment;->access$000(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/app/offers/OfferActivity;

    move-result-object v0

    iget v1, p0, Lcom/mcdonalds/app/offers/OfferFragment$21;->val$finalPosition:I

    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment$21;->val$orderOfferProduct:Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;->getOfferProduct()Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/app/offers/OfferActivity;->showOfferProductSelection(ILcom/mcdonalds/sdk/modules/models/OfferProduct;)V

    .line 1911
    return-void
.end method
