.class public Lcom/mcdonalds/sdk/modules/models/PaymentWallet;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "PaymentWallet.java"


# instance fields
.field private mAccountItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;",
            ">;"
        }
    .end annotation
.end field

.field private mCardItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentCard;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentWallet;->mAccountItems:Ljava/util/List;

    return-object v0
.end method

.method public getCardItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentCard;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentWallet;->mCardItems:Ljava/util/List;

    return-object v0
.end method

.method public setAccountItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p1, "accountItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerPaymentAccount;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/PaymentWallet;->mAccountItems:Ljava/util/List;

    .line 29
    return-void
.end method

.method public setCardItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentCard;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p1, "cardItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentCard;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/PaymentWallet;->mCardItems:Ljava/util/List;

    .line 21
    return-void
.end method
