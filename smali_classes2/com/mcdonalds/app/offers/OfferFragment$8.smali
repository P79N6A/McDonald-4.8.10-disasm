.class Lcom/mcdonalds/app/offers/OfferFragment$8;
.super Ljava/lang/Object;
.source "OfferFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/offers/OfferFragment;->configureRedeemButton(Landroid/view/View;)V
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
    .line 795
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferFragment$8;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const-string v3, "onClick"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 800
    const/4 v2, 0x0

    .line 802
    .local v2, "integerStoreId":Ljava/lang/Integer;
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v3

    if-nez v3, :cond_0

    .line 803
    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment$8;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    const-class v4, Lcom/mcdonalds/app/ordering/methodselection/OrderMethodSelectionActivity;

    invoke-virtual {v3, v4}, Lcom/mcdonalds/app/offers/OfferFragment;->startActivity(Ljava/lang/Class;)V

    .line 878
    :goto_0
    return-void

    .line 807
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getInstance()Lcom/mcdonalds/sdk/modules/ordering/OrderManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/ordering/OrderManager;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v1

    .line 808
    .local v1, "current":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 812
    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment$8;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/offers/OfferFragment;->access$100(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Offer;->getRestaurants()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment$8;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    .line 813
    invoke-static {v3}, Lcom/mcdonalds/app/offers/OfferFragment;->access$100(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Offer;->getRestaurants()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment$8;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    .line 814
    invoke-static {v3}, Lcom/mcdonalds/app/offers/OfferFragment;->access$100(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Offer;->getRestaurants()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 817
    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment$8;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/offers/OfferFragment;->access$100(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Offer;->getRestaurants()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "integerStoreId":Ljava/lang/Integer;
    check-cast v2, Ljava/lang/Integer;

    .line 821
    .restart local v2    # "integerStoreId":Ljava/lang/Integer;
    :cond_1
    if-nez v2, :cond_2

    .line 822
    const-string v3, "Illegal Arguments"

    invoke-static {v3}, Lcom/mcdonalds/sdk/AsyncException;->report(Ljava/lang/String;)V

    goto :goto_0

    .line 826
    :cond_2
    new-instance v0, Lcom/mcdonalds/app/offers/OfferFragment$8$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/offers/OfferFragment$8$1;-><init>(Lcom/mcdonalds/app/offers/OfferFragment$8;)V

    .line 870
    .local v0, "barCodeListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;>;"
    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment$8;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-virtual {v3}, Lcom/mcdonalds/app/offers/OfferFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const v4, 0x7f0903e8

    invoke-static {v3, v4}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 874
    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment$8;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/offers/OfferFragment;->access$1400(Lcom/mcdonalds/app/offers/OfferFragment;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 875
    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment$8;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/offers/OfferFragment;->access$300(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/offers/OfferFragment$8;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/offers/OfferFragment;->access$200(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v0}, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->getCustomerIdentificationCode(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto/16 :goto_0

    .line 877
    :cond_3
    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment$8;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/offers/OfferFragment;->access$300(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/offers/OffersModule;

    move-result-object v3

    iget-object v4, p0, Lcom/mcdonalds/app/offers/OfferFragment$8;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v4}, Lcom/mcdonalds/app/offers/OfferFragment;->access$200(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v4

    iget-object v5, p0, Lcom/mcdonalds/app/offers/OfferFragment$8;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v5}, Lcom/mcdonalds/app/offers/OfferFragment;->access$100(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2, v0}, Lcom/mcdonalds/sdk/modules/offers/OffersModule;->selectToRedeem(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/util/List;Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto/16 :goto_0
.end method
