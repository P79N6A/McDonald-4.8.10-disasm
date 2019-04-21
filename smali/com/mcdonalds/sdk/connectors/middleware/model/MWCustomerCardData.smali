.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerCardData;
.super Ljava/lang/Object;
.source "MWCustomerCardData.java"


# instance fields
.field public customerPaymentMethodId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CustomerPaymentMethodId"
    .end annotation
.end field

.field public isPreferred:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsPreferred"
    .end annotation
.end field

.field public isValid:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsValid"
    .end annotation
.end field

.field public nickName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NickName"
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

.method public static fromPaymentCardData(Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerCardData;
    .locals 2
    .param p0, "cardData"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "customerCardData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerCardData;
    if-eqz p0, :cond_0

    .line 21
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerCardData;

    .end local v0    # "customerCardData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerCardData;
    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerCardData;-><init>()V

    .line 22
    .restart local v0    # "customerCardData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerCardData;
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->customerPaymentMethodId:I

    iput v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerCardData;->customerPaymentMethodId:I

    .line 23
    iget-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->isPreferred:Z

    iput-boolean v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerCardData;->isPreferred:Z

    .line 24
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->nickName:Ljava/lang/String;

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerCardData;->nickName:Ljava/lang/String;

    .line 25
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->isValid:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerCardData;->isValid:Z

    .line 27
    :cond_0
    return-object v0
.end method
