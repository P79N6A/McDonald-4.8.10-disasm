.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrepareOrderPaymentResult;
.super Ljava/lang/Object;
.source "MWPrepareOrderPaymentResult.java"


# instance fields
.field private mCVVLength:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CVVLength"
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
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCVVLength()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrepareOrderPaymentResult;->mCVVLength:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPaymentDataId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrepareOrderPaymentResult;->mPaymentDataId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPaymentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrepareOrderPaymentResult;->mPaymentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getRequireCVV()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrepareOrderPaymentResult;->mRequireCVV:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRequiresPassword()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrepareOrderPaymentResult;->mRequiresPassword:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setCVVLength(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "CVVLength"    # Ljava/lang/Integer;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrepareOrderPaymentResult;->mCVVLength:Ljava/lang/Integer;

    .line 37
    return-void
.end method

.method public setPaymentDataId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "paymentDataId"    # Ljava/lang/Integer;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrepareOrderPaymentResult;->mPaymentDataId:Ljava/lang/Integer;

    .line 53
    return-void
.end method

.method public setPaymentUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "paymentUrl"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrepareOrderPaymentResult;->mPaymentUrl:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public setRequireCVV(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "requireCVV"    # Ljava/lang/Boolean;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrepareOrderPaymentResult;->mRequireCVV:Ljava/lang/Boolean;

    .line 29
    return-void
.end method

.method public setRequiresPassword(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "requiresPassword"    # Ljava/lang/Boolean;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPrepareOrderPaymentResult;->mRequiresPassword:Ljava/lang/Boolean;

    .line 45
    return-void
.end method
