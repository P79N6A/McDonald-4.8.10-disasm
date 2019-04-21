.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentWallet;
.super Ljava/lang/Object;
.source "MWPaymentWallet.java"


# instance fields
.field public paymentAccount:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentAccount"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentAccount;",
            ">;"
        }
    .end annotation
.end field

.field public paymentCard:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "PaymentCard"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toPaymentWallet()Lcom/mcdonalds/sdk/modules/models/PaymentWallet;
    .locals 7

    .prologue
    .line 19
    new-instance v4, Lcom/mcdonalds/sdk/modules/models/PaymentWallet;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/modules/models/PaymentWallet;-><init>()V

    .line 21
    .local v4, "wallet":Lcom/mcdonalds/sdk/modules/models/PaymentWallet;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/PaymentWallet;->setCardItems(Ljava/util/List;)V

    .line 22
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentWallet;->paymentCard:Ljava/util/List;

    if-eqz v5, :cond_1

    .line 23
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentWallet;->paymentCard:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;

    .line 24
    .local v2, "cardData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;
    invoke-static {v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;->toPaymentCard(Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;)Lcom/mcdonalds/sdk/modules/models/PaymentCard;

    move-result-object v1

    .line 25
    .local v1, "card":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    if-eqz v1, :cond_0

    .line 26
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/PaymentWallet;->getCardItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    .end local v1    # "card":Lcom/mcdonalds/sdk/modules/models/PaymentCard;
    .end local v2    # "cardData":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentCardData;
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/modules/models/PaymentWallet;->setAccountItems(Ljava/util/List;)V

    .line 32
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentWallet;->paymentAccount:Ljava/util/List;

    if-eqz v5, :cond_2

    .line 33
    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentWallet;->paymentAccount:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentAccount;

    .line 34
    .local v0, "account":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentAccount;
    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentAccount;->toCustomerPaymentAccount(Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentAccount;)Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;

    move-result-object v3

    .line 35
    .local v3, "newAccount":Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;
    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/PaymentWallet;->getAccountItems()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 39
    .end local v0    # "account":Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentAccount;
    .end local v3    # "newAccount":Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;
    :cond_2
    return-object v4
.end method
