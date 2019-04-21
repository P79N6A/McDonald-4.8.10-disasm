.class Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$6;
.super Ljava/lang/Object;
.source "MWOfferConnectorHelper.java"

# interfaces
.implements Lcom/mcdonalds/sdk/AsyncListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;->selectToRedeem(Ljava/lang/String;Ljava/util/List;Ljava/lang/Integer;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;
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
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWSelectToRedeemResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;

.field final synthetic val$listener:Lcom/mcdonalds/sdk/AsyncListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;

    .prologue
    .line 391
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$6;->this$0:Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper;

    iput-object p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$6;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWSelectToRedeemResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 5
    .param p1, "response"    # Lcom/mcdonalds/sdk/connectors/middleware/response/MWSelectToRedeemResponse;
    .param p2, "token"    # Lcom/mcdonalds/sdk/AsyncToken;
    .param p3, "exception"    # Lcom/mcdonalds/sdk/AsyncException;

    .prologue
    .line 394
    const/4 v2, 0x0

    .line 395
    .local v2, "offerBarCodeData":Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;
    move-object v1, p3

    .line 397
    .local v1, "localException":Lcom/mcdonalds/sdk/AsyncException;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSelectToRedeemResponse;->getResultCode()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 398
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSelectToRedeemResponse;->getResultCode()I

    move-result v3

    invoke-static {v3}, Lcom/mcdonalds/sdk/connectors/middleware/MWException;->fromErrorCode(I)Lcom/mcdonalds/sdk/connectors/middleware/MWException;

    move-result-object v1

    .line 401
    :cond_0
    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    .line 402
    move-object v0, p1

    .line 403
    .local v0, "ecpBarCodeData":Lcom/mcdonalds/sdk/connectors/middleware/response/MWSelectToRedeemResponse;, "Lcom/mcdonalds/sdk/connectors/middleware/response/MWSelectToRedeemResponse<Lcom/mcdonalds/sdk/connectors/middleware/model/MWBarCodeData;>;"
    new-instance v2, Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;

    .end local v2    # "offerBarCodeData":Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;
    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;-><init>()V

    .line 404
    .restart local v2    # "offerBarCodeData":Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSelectToRedeemResponse;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWBarCodeData;

    iget-object v3, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWBarCodeData;->qrCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;->setQrCode(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSelectToRedeemResponse;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWBarCodeData;

    iget-object v3, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWBarCodeData;->barCodeContent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;->setBarCodeContent(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSelectToRedeemResponse;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWBarCodeData;

    iget-object v3, v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWBarCodeData;->randomCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/modules/models/OfferBarCodeData;->setRandomCode(Ljava/lang/String;)V

    .line 408
    .end local v0    # "ecpBarCodeData":Lcom/mcdonalds/sdk/connectors/middleware/response/MWSelectToRedeemResponse;, "Lcom/mcdonalds/sdk/connectors/middleware/response/MWSelectToRedeemResponse<Lcom/mcdonalds/sdk/connectors/middleware/model/MWBarCodeData;>;"
    :cond_1
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$6;->val$listener:Lcom/mcdonalds/sdk/AsyncListener;

    invoke-interface {v3, v2, p2, v1}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 409
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    .locals 0

    .prologue
    .line 391
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSelectToRedeemResponse;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/helpers/MWOfferConnectorHelper$6;->onResponse(Lcom/mcdonalds/sdk/connectors/middleware/response/MWSelectToRedeemResponse;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    return-void
.end method
