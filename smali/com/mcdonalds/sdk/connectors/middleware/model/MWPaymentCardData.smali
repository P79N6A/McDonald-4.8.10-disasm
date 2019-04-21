.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;
.super Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerAccountData;
.source "MWPaymentCardData.java"


# instance fields
.field public cardAlias:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CardAlias"
    .end annotation
.end field

.field public cardExpiration:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CardExpiration"
    .end annotation
.end field

.field public cardHolderName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CardHolderName"
    .end annotation
.end field

.field public oneTimePayment:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "OneTimePayment"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerAccountData;-><init>()V

    return-void
.end method

.method public static fromPaymentCard(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;
    .locals 2
    .param p0, "paymentCard"    # Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    .prologue
    .line 36
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;-><init>()V

    .line 38
    .local v0, "paymentCardData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;
    if-eqz p0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getIdentifier()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->customerPaymentMethodId:I

    .line 40
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getPaymentMethodId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->paymentMethodId:I

    .line 41
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getAlias()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->cardAlias:Ljava/lang/String;

    .line 42
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getExpiration()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->cardExpiration:Ljava/lang/String;

    .line 43
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getHolderName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->cardHolderName:Ljava/lang/String;

    .line 44
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getNickName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->nickName:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->isPreferred()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->isPreferred:Z

    .line 46
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getIsValid()Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->isValid:Ljava/lang/Boolean;

    .line 47
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->getIsOneTimePayment()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->oneTimePayment:Z

    .line 50
    :cond_0
    return-object v0
.end method

.method public static toMWPaymentCardData(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;
    .locals 1
    .param p0, "paymentCard"    # Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    invoke-static {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->fromPaymentCard(Lcom/mcdonalds/sdk/modules/models/PaymentCard;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;

    move-result-object v0

    return-object v0
.end method

.method public static toPaymentCard(Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;)Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    .locals 1
    .param p0, "cardData"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    if-eqz p0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->toPaymentCard()Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public toPaymentCard()Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    .locals 6

    .prologue
    .line 17
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;-><init>()V

    .line 19
    .local v0, "card":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    iget v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->customerPaymentMethodId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setIdentifier(Ljava/lang/Integer;)V

    .line 20
    iget v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->paymentMethodId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setPaymentMethodId(Ljava/lang/Integer;)V

    .line 22
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->cardAlias:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->cardAlias:Ljava/lang/String;

    .line 23
    .local v1, "cardAlias":Ljava/lang/String;
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Card ending in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "*"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 24
    .local v2, "lastFourDigits":Ljava/lang/String;
    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setAlias(Ljava/lang/String;)V

    .line 25
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->cardExpiration:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setExpiration(Ljava/lang/String;)V

    .line 26
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->cardHolderName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setHolderName(Ljava/lang/String;)V

    .line 27
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->nickName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setNickName(Ljava/lang/String;)V

    .line 28
    iget-boolean v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->isPreferred:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setIsPreferred(Ljava/lang/Boolean;)V

    .line 29
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->isValid:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setIsValid(Ljava/lang/Boolean;)V

    .line 30
    iget-boolean v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->oneTimePayment:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/mcdonalds/sdk/modules/models/PaymentCard;->setIsOneTimePayment(Ljava/lang/Boolean;)V

    .line 32
    return-object v0

    .line 22
    .end local v1    # "cardAlias":Ljava/lang/String;
    .end local v2    # "lastFourDigits":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto :goto_0
.end method
