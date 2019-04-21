.class Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter$1;
.super Ljava/lang/Object;
.source "OfferProductFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;

.field final synthetic val$item:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter$1;->this$1:Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;

    iput-object p2, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter$1;->val$item:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    iput p3, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter$1;->val$position:I

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

    .line 322
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter$1;->this$1:Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;->this$0:Lcom/mcdonalds/app/offers/OfferProductFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter$1;->val$item:Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    iget v2, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter$1;->val$position:I

    invoke-static {v0, v1, v2}, Lcom/mcdonalds/app/offers/OfferProductFragment;->access$500(Lcom/mcdonalds/app/offers/OfferProductFragment;Lcom/mcdonalds/sdk/modules/models/OrderProduct;I)V

    .line 323
    return-void
.end method
