.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;
.super Ljava/lang/Object;
.source "MWPreparePaymentResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult$MWPaymentCustomDataEntry;
    }
.end annotation


# instance fields
.field private mAdditionalPayments:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AdditionalPayments"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrepareOrderPaymentResult;",
            ">;"
        }
    .end annotation
.end field

.field private mCVVLength:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CVVLength"
    .end annotation
.end field

.field private mNowInStoreLocalTime:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NowInStoreLocalTime"
    .end annotation
.end field

.field private mOrderViewResult:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OrderView"
    .end annotation
.end field

.field private mPaymentCustomData:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentCustomData"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult$MWPaymentCustomDataEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPaymentDataId:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentDataId"
    .end annotation
.end field

.field private mPaymentUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentUrl"
    .end annotation
.end field

.field private mRequireCVV:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RequireCVV"
    .end annotation
.end field

.field private mRequiresPassword:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "RequiresPassword"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toOrderResponse(Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;)Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    .locals 8
    .param p0, "result"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;->getOrderViewResult()Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;

    move-result-object v6

    invoke-static {v6}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->toOrderView(Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;)Lcom/mcdonalds/sdk/modules/models/OrderView;

    move-result-object v2

    .line 37
    .local v2, "orderView":Lcom/mcdonalds/sdk/modules/models/OrderView;
    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->fromTotalize(Lcom/mcdonalds/sdk/modules/models/OrderView;)Lcom/mcdonalds/sdk/modules/models/OrderResponse;

    move-result-object v4

    .line 39
    .local v4, "ret":Lcom/mcdonalds/sdk/modules/models/OrderResponse;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;->getPaymentDataId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setPaymentDataId(Ljava/lang/Integer;)V

    .line 40
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;->getOrderViewResult()Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;

    move-result-object v6

    iget-object v6, v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;->orderPaymentId:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setOrderPaymentId(Ljava/lang/String;)V

    .line 41
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;->getRequireCVV()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setRequiresCVV(Ljava/lang/Boolean;)V

    .line 42
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;->getRequiresPassword()Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setRequiresPassword(Ljava/lang/Boolean;)V

    .line 43
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;->getPaymentUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setPaymentUrl(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;->getPaymentCustomData()Ljava/util/List;

    move-result-object v3

    .line 47
    .local v3, "paymentCustomData":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult$MWPaymentCustomDataEntry;>;"
    if-eqz v3, :cond_e

    .line 48
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult$MWPaymentCustomDataEntry;

    .line 49
    .local v0, "e":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult$MWPaymentCustomDataEntry;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult$MWPaymentCustomDataEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult$MWPaymentCustomDataEntry;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 51
    .local v5, "value":Ljava/lang/String;
    const-string v7, "partner_id"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 52
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setPartnerId(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_1
    const-string v7, "merchant_private_key"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 54
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setMerchantPrivateKey(Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_2
    const-string v7, "alipay_public_key"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 56
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setAlipayPublicKey(Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_3
    const-string v7, "notify_url"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 58
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setNotifyUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_4
    const-string v7, "seller_id"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 60
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setSellerId(Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :cond_5
    const-string v7, "appid"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 63
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setAppId(Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_6
    const-string v7, "noncestr"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 65
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setNoncestr(Ljava/lang/String;)V

    goto :goto_0

    .line 66
    :cond_7
    const-string v7, "partnerid"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 67
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setPartnerId(Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_8
    const-string v7, "prepayid"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 69
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setPrepayid(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_9
    const-string v7, "package"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 71
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setPackage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 72
    :cond_a
    const-string v7, "timestamp"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 73
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setTimeStamp(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 74
    :cond_b
    const-string v7, "sign"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 75
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setSign(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 76
    :cond_c
    const-string v7, "MerchantId"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 77
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setMerchantId(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 78
    :cond_d
    const-string v7, "signature"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 79
    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/OrderResponse;->setSignature(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 84
    .end local v0    # "e":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult$MWPaymentCustomDataEntry;
    .end local v1    # "key":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_e
    return-object v4
.end method


# virtual methods
.method public getAdditionalPayments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrepareOrderPaymentResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 144
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;->mAdditionalPayments:Ljava/util/List;

    return-object v0
.end method

.method public getCVVLength()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;->mCVVLength:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNowInStoreLocalTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;->mNowInStoreLocalTime:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderViewResult()Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;->mOrderViewResult:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;

    return-object v0
.end method

.method public getPaymentCustomData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult$MWPaymentCustomDataEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;->mPaymentCustomData:Ljava/util/List;

    return-object v0
.end method

.method public getPaymentDataId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;->mPaymentDataId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPaymentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;->mPaymentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRequireCVV()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;->mRequireCVV:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRequiresPassword()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;->mRequiresPassword:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAdditionalPayments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrepareOrderPaymentResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "additionalPayments":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrepareOrderPaymentResult;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;->mAdditionalPayments:Ljava/util/List;

    .line 149
    return-void
.end method

.method public setCVVLength(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "CVVLength"    # Ljava/lang/Integer;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;->mCVVLength:Ljava/lang/Integer;

    .line 109
    return-void
.end method

.method public setNowInStoreLocalTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "nowInStoreLocalTime"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;->mNowInStoreLocalTime:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setOrderViewResult(Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;)V
    .locals 0
    .param p1, "orderViewResult"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;->mOrderViewResult:Lcom/mcdonalds/sdk/connectors/middleware/model/MWOrderViewResult;

    .line 133
    return-void
.end method

.method public setPaymentCustomData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult$MWPaymentCustomDataEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 156
    .local p1, "paymentCustomData":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult$MWPaymentCustomDataEntry;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;->mPaymentCustomData:Ljava/util/List;

    .line 157
    return-void
.end method

.method public setPaymentDataId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "paymentDataId"    # Ljava/lang/Integer;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;->mPaymentDataId:Ljava/lang/Integer;

    .line 125
    return-void
.end method

.method public setPaymentUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "paymentUrl"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;->mPaymentUrl:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setRequireCVV(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "requireCVV"    # Ljava/lang/Boolean;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;->mRequireCVV:Ljava/lang/Boolean;

    .line 101
    return-void
.end method

.method public setRequiresPassword(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "requiresPassword"    # Ljava/lang/Boolean;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPreparePaymentResult;->mRequiresPassword:Ljava/lang/Boolean;

    .line 117
    return-void
.end method
