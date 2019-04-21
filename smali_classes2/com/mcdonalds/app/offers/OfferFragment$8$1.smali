.class Lcom/mcdonalds/app/offers/OfferFragment$8$1;
.super Ljava/lang/Object;
.source "OfferFragment.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/app/offers/OfferFragment$8;->onClick(Landroid/view/View;)V
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
        "Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mcdonalds/app/offers/OfferFragment$8;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/offers/OfferFragment$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mcdonalds/app/offers/OfferFragment$8;

    .prologue
    .line 826
    iput-object p1, p0, Lcom/mcdonalds/app/offers/OfferFragment$8$1;->this$1:Lcom/mcdonalds/app/offers/OfferFragment$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 6
    .param p1, "response"    # Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    const-string v2, "onResponse"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    const/4 v4, 0x2

    aput-object p3, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 830
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 831
    if-nez p3, :cond_1

    .line 833
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 834
    .local v1, "args":Landroid/os/Bundle;
    const-string v2, "ARG_OFFER_NAME"

    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment$8$1;->this$1:Lcom/mcdonalds/app/offers/OfferFragment$8;

    iget-object v3, v3, Lcom/mcdonalds/app/offers/OfferFragment$8;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/offers/OfferFragment;->access$100(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const-string v2, "ARG_IS_PUNCHCARD_OFFER"

    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment$8$1;->this$1:Lcom/mcdonalds/app/offers/OfferFragment$8;

    iget-object v3, v3, Lcom/mcdonalds/app/offers/OfferFragment$8;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/offers/OfferFragment;->access$1400(Lcom/mcdonalds/app/offers/OfferFragment;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 837
    new-instance v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v3, "On click"

    .line 838
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setAction(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment$8$1;->this$1:Lcom/mcdonalds/app/offers/OfferFragment$8;

    iget-object v3, v3, Lcom/mcdonalds/app/offers/OfferFragment$8;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    .line 839
    invoke-virtual {v3}, Lcom/mcdonalds/app/offers/OfferFragment;->getAnalyticsTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setCategory(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    const-string v3, "Use in restaurant"

    .line 840
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment$8$1;->this$1:Lcom/mcdonalds/app/offers/OfferFragment$8;

    iget-object v3, v3, Lcom/mcdonalds/app/offers/OfferFragment$8;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    .line 841
    invoke-static {v3}, Lcom/mcdonalds/app/offers/OfferFragment;->access$100(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v3

    invoke-static {v3}, Lcom/mcdonalds/sdk/services/analytics/BusinessArgs;->getOfferClick(Lcom/mcdonalds/sdk/modules/models/Offer;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setBusiness(Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    .line 842
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v0

    .line 844
    .local v0, "analyticsArgs":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    sget-object v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticType;->Event:Lcom/mcdonalds/sdk/services/analytics/AnalyticType;

    invoke-static {v2, v0}, Lcom/mcdonalds/sdk/services/analytics/Analytics;->track(Lcom/mcdonalds/sdk/services/analytics/AnalyticType;Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 846
    new-instance v2, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;-><init>()V

    const-string v3, "offer_redeem_intent"

    .line 847
    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setLabel(Ljava/lang/String;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    const-string v3, "offer_id"

    iget-object v4, p0, Lcom/mcdonalds/app/offers/OfferFragment$8$1;->this$1:Lcom/mcdonalds/app/offers/OfferFragment$8;

    iget-object v4, v4, Lcom/mcdonalds/app/offers/OfferFragment$8;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    .line 848
    invoke-static {v4}, Lcom/mcdonalds/app/offers/OfferFragment;->access$100(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Offer;->getOfferId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    const-string v3, "offer_name"

    iget-object v4, p0, Lcom/mcdonalds/app/offers/OfferFragment$8$1;->this$1:Lcom/mcdonalds/app/offers/OfferFragment$8;

    iget-object v4, v4, Lcom/mcdonalds/app/offers/OfferFragment$8;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    .line 849
    invoke-static {v4}, Lcom/mcdonalds/app/offers/OfferFragment;->access$100(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Offer;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->setMapping(Ljava/lang/String;Ljava/lang/Object;)Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;

    move-result-object v2

    .line 850
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs$ArgBuilder;->build()Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;

    move-result-object v2

    .line 846
    invoke-static {v2}, Lcom/mcdonalds/app/util/AnalyticsUtils;->trackEvent(Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;)V

    .line 852
    if-eqz p1, :cond_0

    .line 853
    invoke-static {}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->getInstance()Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/app/offers/OfferFragment$8$1;->this$1:Lcom/mcdonalds/app/offers/OfferFragment$8;

    iget-object v3, v3, Lcom/mcdonalds/app/offers/OfferFragment$8;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v3}, Lcom/mcdonalds/app/offers/OfferFragment;->access$100(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/sdk/modules/models/Offer;

    move-result-object v3

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;->getQrCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/app/analytics/datalayer/DataLayerManager;->setOffer(Lcom/mcdonalds/sdk/modules/models/Offer;Ljava/lang/String;)V

    .line 856
    :cond_0
    const-string v2, "ARG_OFFER_BARCODE_DATA"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 858
    iget-object v2, p0, Lcom/mcdonalds/app/offers/OfferFragment$8$1;->this$1:Lcom/mcdonalds/app/offers/OfferFragment$8;

    iget-object v2, v2, Lcom/mcdonalds/app/offers/OfferFragment$8;->this$0:Lcom/mcdonalds/app/offers/OfferFragment;

    invoke-static {v2}, Lcom/mcdonalds/app/offers/OfferFragment;->access$000(Lcom/mcdonalds/app/offers/OfferFragment;)Lcom/mcdonalds/app/offers/OfferActivity;

    move-result-object v2

    const-class v3, Lcom/mcdonalds/app/offers/OfferRedeemActivity;

    sget-object v4, Lcom/mcdonalds/app/offers/OfferRedeemFragment;->NAME:Ljava/lang/String;

    const v5, 0x9520

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/mcdonalds/app/offers/OfferActivity;->startActivityForResult(Ljava/lang/Class;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 867
    .end local v0    # "analyticsArgs":Lcom/mcdonalds/sdk/services/analytics/AnalyticsArgs;
    .end local v1    # "args":Landroid/os/Bundle;
    :goto_0
    return-void

    .line 865
    :cond_1
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

    .line 826
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/app/offers/OfferFragment$8$1;->onResponse(Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
