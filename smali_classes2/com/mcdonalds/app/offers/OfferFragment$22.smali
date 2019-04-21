.class Lcom/mcdonalds/app/offers/OfferFragment$22;
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

.field final synthetic val$product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/offers/OfferFragment;Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/offers/OfferFragment;

    .prologue
    .line 1931
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferFragment$22;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/offers/OfferFragment$22;->val$product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    iput p3, p0, Lcom/mcdonalds/app/offers/OfferFragment$22;->val$finalPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const-string v0, "onClick"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1934
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$22;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferFragment$22;->val$product:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    iget v2, p0, Lcom/mcdonalds/app/offers/OfferFragment$22;->val$finalPosition:I

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/app/offers/OfferFragment;->access$2000(Lcom/mcdonalds/app/offers/OfferFragment;Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V

    .line 1935
    return-void
.end method
