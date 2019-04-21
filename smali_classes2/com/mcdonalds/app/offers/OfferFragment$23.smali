.class Lcom/mcdonalds/app/offers/OfferFragment$23;
.super Ljava/lang/Object;
.source "OfferFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/offers/OfferFragment;->addProductToMeaLList(Lcom/mcdonalds/sdk/modules/models/OrderOfferProduct;Lcom/mcdonalds/sdk/modules/models/OrderProduct;Landroid/widget/LinearLayout;Landroid/view/LayoutInflater;Lcom/mcdonalds/app/offers/OfferFragment$ItemCounter;)Z
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
        "Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/offers/OfferFragment;

.field final synthetic val$item:Lcom/mcdonalds/app/ordering/ProductDetailsItem;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/offers/OfferFragment;Lcom/mcdonalds/app/ordering/ProductDetailsItem;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/offers/OfferFragment;

    .prologue
    .line 1949
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferFragment$23;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    iput-object p2, p0, Lcom/mcdonalds/app/offers/OfferFragment$23;->val$item:Lcom/mcdonalds/app/ordering/ProductDetailsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 4
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const/4 v3, 0x0

    const-string v0, "onResponse"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object p3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1952
    if-nez p3, :cond_1

    .line 1953
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$23;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-virtual {v0}, Lcom/mcdonalds/app/offers/OfferFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1954
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$23;->val$item:Lcom/mcdonalds/app/ordering/ProductDetailsItem;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getInfoButton()Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1955
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$23;->val$item:Lcom/mcdonalds/app/ordering/ProductDetailsItem;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getInfoButton()Landroid/widget/ImageButton;

    move-result-object v0

    new-instance v1, Lcom/mcdonalds/app/offers/OfferFragment$23$1;

    invoke-direct {v1, p0, p1}, Lcom/mcdonalds/app/offers/OfferFragment$23$1;-><init>(Lcom/mcdonalds/app/offers/OfferFragment$23;Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1962
    iget-object v0, p0, Lcom/mcdonalds/app/offers/OfferFragment$23;->val$item:Lcom/mcdonalds/app/ordering/ProductDetailsItem;

    invoke-virtual {v0}, Lcom/mcdonalds/app/ordering/ProductDetailsItem;->getInfoButton()Landroid/widget/ImageButton;

    move-result-object v0

    const-string v1, "ProductInfoPressed"

    invoke-static {v0, v1}, Lcom/mcdonalds/app/analytics/datalayer/view/DataLayerClickListener;->setDataLayerTag(Landroid/view/View;Ljava/lang/String;)V

    .line 1967
    :cond_0
    :goto_0
    return-void

    .line 1964
    :cond_1
    invoke-virtual {p3}, Lcom/mcdonalds/sdk/AsyncException;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1965
    invoke-static {p3}, Lcom/mcdonalds/sdk/AsyncException;->report(Lcom/mcdonalds/sdk/AsyncException;)V

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

    .line 1949
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/offers/OfferFragment$23;->onResponse(Lcom/mcdonalds/sdk/modules/models/NutritionRecipe;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
