.class Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter$2$1;
.super Ljava/lang/Object;
.source "OfferProductFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter$2;->onResponse(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter$2;

.field final synthetic val$response:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter$2;Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)V
    .locals 0
    .param p1, "this$2"    # Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter$2;

    .prologue
    .line 354
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter$2$1;->this$2:Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter$2;

    iput-object p2, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter$2$1;->val$response:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

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

    .line 357
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter$2$1;->this$2:Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter$2;

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter$2;->this$1:Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;

    iget-object v0, v0, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter;->this$0:Lcom/mcdonalds/app/offers/OfferProductFragment;

    iget-object v1, p0, Lcom/mcdonalds/app/offers/OfferProductFragment$OfferProductListAdapter$2$1;->val$response:Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mcdonalds/app/offers/OfferProductFragment;->access$700(Lcom/mcdonalds/app/offers/OfferProductFragment;Ljava/lang/String;)V

    .line 358
    return-void
.end method