.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentAccount;
.super Ljava/lang/Object;
.source "MWPaymentAccount.java"


# instance fields
.field public accountID:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "AccountID"
    .end annotation
.end field

.field public customerPaymentMethodId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CustomerPaymentMethodId"
    .end annotation
.end field

.field public isExpired:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsExpired"
    .end annotation
.end field

.field public isPreferred:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsPreferred"
    .end annotation
.end field

.field public nickName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "NickName"
    .end annotation
.end field

.field public oneTimePayment:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OneTimePayment"
    .end annotation
.end field

.field public paymentMethodId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentMethodId"
    .end annotation
.end field

.field public paymentMode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentMode"
    .end annotation
.end field

.field public paymentModeId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentModeId"
    .end annotation
.end field

.field public schemaId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SchemaId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toCustomerPaymentAccount(Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentAccount;)Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;
    .locals 2
    .param p0, "account"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentAccount;

    .prologue
    .line 32
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;-><init>()V

    .line 34
    .local v0, "ret":Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;
    if-eqz p0, :cond_0

    .line 35
    iget-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentAccount;->isExpired:Z

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->setExpired(Z)V

    .line 36
    iget-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentAccount;->isPreferred:Z

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->setPreferred(Z)V

    .line 37
    iget-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentAccount;->oneTimePayment:Z

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->setOneTimePayment(Z)V

    .line 38
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentAccount;->accountID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->setAccountId(Ljava/lang/String;)V

    .line 39
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentAccount;->customerPaymentMethodId:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->setCustomerPaymentMethodId(I)V

    .line 40
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentAccount;->paymentMethodId:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->setPaymentMethodId(I)V

    .line 41
    iget v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentAccount;->schemaId:I

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->setSchemaId(I)V

    .line 42
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentAccount;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->setNickName(Ljava/lang/String;)V

    .line 43
    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentAccount;->paymentMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;->setPaymentMode(Ljava/lang/String;)V

    .line 46
    :cond_0
    return-object v0
.end method
