.class public Lcom/mcdonalds/sdk/modules/paymentRegistration/PaymentRegistrationModule;
.super Lcom/mcdonalds/sdk/modules/BaseModule;
.source "PaymentRegistrationModule.java"


# static fields
.field public static final CONNECTOR_KEY:Ljava/lang/String; = "connector"

.field public static final NAME:Ljava/lang/String; = "paymentRegistration"


# instance fields
.field private mConnector:Lcom/mcdonalds/sdk/connectors/PaymentRegistrationConnector;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/BaseModule;-><init>()V

    .line 23
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    const-string v2, "modules.paymentRegistration.connector"

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 24
    .local v0, "implementation":Ljava/lang/String;
    invoke-static {v0}, Lcom/mcdonalds/sdk/connectors/ConnectorManager;->getConnector(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/PaymentRegistrationConnector;

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/paymentRegistration/PaymentRegistrationModule;->mConnector:Lcom/mcdonalds/sdk/connectors/PaymentRegistrationConnector;

    .line 25
    return-void
.end method


# virtual methods
.method public saveCard(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/modules/models/PaymentMethod;Ljava/lang/String;ZLcom/mcdonalds/sdk/modules/models/CreditCard;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 8
    .param p1, "customerProfile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "paymentMethod"    # Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    .param p3, "providerUrl"    # Ljava/lang/String;
    .param p4, "isOneTimePayment"    # Z
    .param p5, "creditCard"    # Lcom/mcdonalds/sdk/modules/models/CreditCard;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "Lcom/mcdonalds/sdk/modules/models/PaymentMethod;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/mcdonalds/sdk/modules/models/CreditCard;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p6, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/paymentRegistration/PaymentRegistrationModule;->mConnector:Lcom/mcdonalds/sdk/connectors/PaymentRegistrationConnector;

    .line 42
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->getID()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 44
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->getRegistrationReturnURL()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 41
    invoke-interface/range {v0 .. v7}, Lcom/mcdonalds/sdk/connectors/PaymentRegistrationConnector;->saveCard(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;ILjava/lang/String;Ljava/lang/String;ZLcom/mcdonalds/sdk/modules/models/CreditCard;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 49
    return-void
.end method

.method public saveCard(Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/PaymentMethod;Ljava/lang/String;ZLcom/mcdonalds/sdk/modules/models/CreditCard;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 8
    .param p1, "customerId"    # Ljava/lang/String;
    .param p2, "paymentMethod"    # Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    .param p3, "providerUrl"    # Ljava/lang/String;
    .param p4, "isOneTimePayment"    # Z
    .param p5, "creditCard"    # Lcom/mcdonalds/sdk/modules/models/CreditCard;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/modules/models/PaymentMethod;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/mcdonalds/sdk/modules/models/CreditCard;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p6, "listener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/paymentRegistration/PaymentRegistrationModule;->mConnector:Lcom/mcdonalds/sdk/connectors/PaymentRegistrationConnector;

    .line 30
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->getID()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 32
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->getRegistrationReturnURL()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 29
    invoke-interface/range {v0 .. v7}, Lcom/mcdonalds/sdk/connectors/PaymentRegistrationConnector;->saveCard(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLcom/mcdonalds/sdk/modules/models/CreditCard;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 37
    return-void
.end method
