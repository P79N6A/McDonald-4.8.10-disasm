.class public Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;
.super Lcom/mcdonalds/sdk/connectors/BaseConnector;
.source "CybersourceConnector.java"

# interfaces
.implements Lcom/mcdonalds/sdk/connectors/PaymentRegistrationConnector;


# static fields
.field private static final HMAC_SHA256:Ljava/lang/String; = "HmacSHA256"

.field private static final KEY_ACCESS_KEY:Ljava/lang/String; = "connectors.Cybersource.accessKey"

.field private static final KEY_BILLING_CITY:Ljava/lang/String; = "connectors.Cybersource.data.city"

.field private static final KEY_BILLING_COUNTRY:Ljava/lang/String; = "connectors.Cybersource.data.country"

.field private static final KEY_BILLING_EMAIL:Ljava/lang/String; = "connectors.Cybersource.data.email"

.field private static final KEY_BILLING_FIRST_NAME:Ljava/lang/String; = "connectors.Cybersource.data.firstName"

.field private static final KEY_BILLING_LAST_NAME:Ljava/lang/String; = "connectors.Cybersource.data.lastName"

.field private static final KEY_BILLING_POSTAL_CODE:Ljava/lang/String; = "connectors.Cybersource.data.postalCode"

.field private static final KEY_BILLING_STATE:Ljava/lang/String; = "connectors.Cybersource.data.state"

.field private static final KEY_BILLING_STREET:Ljava/lang/String; = "connectors.Cybersource.data.street"

.field private static final KEY_DECISION_MANAGER_ENABLED:Ljava/lang/String; = "connectors.Cybersource.data.decisionManager_enabled"

.field private static final KEY_PROFILE_ID:Ljava/lang/String; = "connectors.Cybersource.profileId"

.field private static final KEY_SECRET_KEY:Ljava/lang/String; = "connectors.Cybersource.secretKey"

.field private static final KEY_SEND_MERCHANT_DEFINED_DATA2AS_ZIP_CODE:Ljava/lang/String; = "connectors.Cybersource.sendMerchantDefinedData2AsZipCode"

.field private static final KEY_USE_PROFILE_NAME:Ljava/lang/String; = "connectors.Cybersource.useProfileName"

.field public static final NAME:Ljava/lang/String; = "cybersource"

.field private static final PAYMENT_METHOD:Ljava/lang/String; = "card"

.field private static final REASON_CODE_SUCCESS:I = 0x64

.field private static final TRANSACTION_TYPE:Ljava/lang/String; = "create_payment_token"

.field private static final UNSIGNED_FIELD_NAMES:Ljava/lang/String; = "card_type,card_number,card_expiry_date,card_cvn"


# instance fields
.field private mConfiguration:Lcom/mcdonalds/sdk/services/configuration/Configuration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/BaseConnector;-><init>()V

    .line 84
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->setContext(Landroid/content/Context;)V

    .line 85
    invoke-static {p1}, Lcom/mcdonalds/sdk/services/network/RequestManager;->register(Landroid/content/Context;)Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->setConnection(Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;)V

    .line 86
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->mConfiguration:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Lcom/mcdonalds/sdk/AsyncListener;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->handleCreateTokenResponse(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/mcdonalds/sdk/AsyncListener;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->handleRegisterReturnResponse(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    return-void
.end method

.method private cardToHashMap(Lcom/mcdonalds/sdk/modules/models/CreditCard;)Ljava/util/LinkedHashMap;
    .locals 12
    .param p1, "creditCard"    # Lcom/mcdonalds/sdk/modules/models/CreditCard;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/models/CreditCard;",
            ")",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 261
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 263
    .local v4, "hashMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->mConfiguration:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    const-string v10, "connectors.Cybersource.useProfileName"

    invoke-virtual {v9, v10}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 265
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->mConfiguration:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    const-string v10, "connectors.Cybersource.data.firstName"

    .line 266
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CreditCard;->getForename()Ljava/lang/String;

    move-result-object v11

    .line 265
    invoke-virtual {v9, v10, v11}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 267
    .local v3, "forename":Ljava/lang/String;
    const-string v9, "bill_to_forename"

    invoke-virtual {v4, v9, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->mConfiguration:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    const-string v10, "connectors.Cybersource.data.lastName"

    .line 270
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CreditCard;->getSurname()Ljava/lang/String;

    move-result-object v11

    .line 269
    invoke-virtual {v9, v10, v11}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 271
    .local v8, "surname":Ljava/lang/String;
    const-string v9, "bill_to_surname"

    invoke-virtual {v4, v9, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->mConfiguration:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    const-string v10, "connectors.Cybersource.data.email"

    .line 274
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CreditCard;->getEmail()Ljava/lang/String;

    move-result-object v11

    .line 273
    invoke-virtual {v9, v10, v11}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, "email":Ljava/lang/String;
    const-string v9, "bill_to_email"

    invoke-virtual {v4, v9, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    const-string v9, "bill_to_address_phone"

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CreditCard;->getAddressPhone()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .end local v2    # "email":Ljava/lang/String;
    .end local v3    # "forename":Ljava/lang/String;
    .end local v8    # "surname":Ljava/lang/String;
    :cond_0
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->mConfiguration:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    const-string v10, "connectors.Cybersource.data.street"

    .line 280
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CreditCard;->getAddressStreet()Ljava/lang/String;

    move-result-object v11

    .line 279
    invoke-virtual {v9, v10, v11}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 281
    .local v7, "street":Ljava/lang/String;
    const-string v9, "bill_to_address_line1"

    invoke-virtual {v4, v9, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->mConfiguration:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    const-string v10, "connectors.Cybersource.data.city"

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CreditCard;->getAddressCity()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "city":Ljava/lang/String;
    const-string v9, "bill_to_address_city"

    invoke-virtual {v4, v9, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->mConfiguration:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    const-string v10, "connectors.Cybersource.data.state"

    .line 287
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CreditCard;->getAddressState()Ljava/lang/String;

    move-result-object v11

    .line 286
    invoke-virtual {v9, v10, v11}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 288
    .local v6, "state":Ljava/lang/String;
    const-string v9, "bill_to_address_state"

    invoke-virtual {v4, v9, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->mConfiguration:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    const-string v10, "connectors.Cybersource.data.country"

    .line 291
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CreditCard;->getAddressCountry()Ljava/lang/String;

    move-result-object v11

    .line 290
    invoke-virtual {v9, v10, v11}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 292
    .local v1, "country":Ljava/lang/String;
    const-string v9, "bill_to_address_country"

    invoke-virtual {v4, v9, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->mConfiguration:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    const-string v10, "connectors.Cybersource.data.postalCode"

    .line 295
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CreditCard;->getAddressPostalCode()Ljava/lang/String;

    move-result-object v11

    .line 294
    invoke-virtual {v9, v10, v11}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 296
    .local v5, "postalCode":Ljava/lang/String;
    const-string v9, "bill_to_address_postal_code"

    invoke-virtual {v4, v9, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v9, "payment_token_title"

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CreditCard;->getNickname()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v9, "card_type"

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CreditCard;->getCardType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v9, "card_number"

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CreditCard;->getCardNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v9, "card_expiry_date"

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CreditCard;->getCardExpiryDate()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v9, "card_cvn"

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/CreditCard;->getCardSecurityCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    return-object v4
.end method

.method private cleanNullValues(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 341
    .local p1, "origin":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 342
    .local v1, "result":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 343
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 344
    .local v2, "value":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 345
    invoke-virtual {v1, v0, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 348
    .end local v0    # "key":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method private commaSeparate(Ljava/util/Collection;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 330
    .local p1, "stringList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    .local v0, "csv":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 332
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 334
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 337
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getDataString(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 322
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v0, "dataToSign":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 324
    .local v1, "signedFieldName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 326
    .end local v1    # "signedFieldName":Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->commaSeparate(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 5
    .param p1, "html"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    if-nez p1, :cond_0

    .line 250
    new-instance v3, Ljava/io/IOException;

    const-string v4, "This String is not a valid XML Document"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 252
    :cond_0
    const-string v3, "(?<=<!--)(-)*|(-)*(?=-->)"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 253
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 254
    .local v1, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 255
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 256
    .local v2, "in":Ljava/io/InputStream;
    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    return-object v3
.end method

.method private handleCreateTokenResponse(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 26
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "registerReturnUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 174
    .local p3, "registerReturnListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 175
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 178
    :cond_0
    :try_start_0
    invoke-direct/range {p0 .. p1}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->getDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v6

    .line 179
    .local v6, "document":Lorg/w3c/dom/Document;
    const-string v23, "custom_redirect"

    move-object/from16 v0, v23

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v11

    .line 180
    .local v11, "form":Lorg/w3c/dom/Node;
    if-eqz v11, :cond_5

    .line 181
    const-string v23, "custom_redirect"

    move-object/from16 v0, v23

    invoke-interface {v6, v0}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v23

    const-string v24, "input"

    invoke-interface/range {v23 .. v24}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v13

    .line 182
    .local v13, "list":Lorg/w3c/dom/NodeList;
    invoke-interface {v13}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v14

    .line 183
    .local v14, "listSize":I
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 184
    .local v10, "fields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v14, :cond_2

    .line 185
    invoke-interface {v13, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 186
    .local v9, "field":Lorg/w3c/dom/Node;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 187
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v23

    const-string v24, "type"

    invoke-interface/range {v23 .. v24}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v20

    .line 188
    .local v20, "typeAttribute":Lorg/w3c/dom/Node;
    if-eqz v20, :cond_1

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v23

    const-string v24, "hidden"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 189
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v23

    const-string v24, "name"

    invoke-interface/range {v23 .. v24}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v16

    .line 190
    .local v16, "nameAttribute":Lorg/w3c/dom/Node;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    .line 192
    .local v15, "name":Ljava/lang/String;
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v23

    const-string v24, "value"

    invoke-interface/range {v23 .. v24}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v22

    .line 193
    .local v22, "valueAttribute":Lorg/w3c/dom/Node;
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v21

    .line 194
    .local v21, "value":Ljava/lang/String;
    move-object/from16 v0, v21

    invoke-virtual {v10, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .end local v15    # "name":Ljava/lang/String;
    .end local v16    # "nameAttribute":Lorg/w3c/dom/Node;
    .end local v20    # "typeAttribute":Lorg/w3c/dom/Node;
    .end local v21    # "value":Ljava/lang/String;
    .end local v22    # "valueAttribute":Lorg/w3c/dom/Node;
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 199
    .end local v9    # "field":Lorg/w3c/dom/Node;
    :cond_2
    const-string v23, "reason_code"

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 200
    .local v18, "reasonCodeValue":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 201
    .local v17, "reasonCode":I
    const/16 v23, 0x64

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 202
    move-object/from16 v5, p2

    .line 203
    .local v5, "actionUrl":Ljava/lang/String;
    invoke-interface {v11}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v23

    const-string v24, "action"

    invoke-interface/range {v23 .. v24}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 204
    .local v4, "action":Lorg/w3c/dom/Node;
    if-eqz v4, :cond_3

    .line 205
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 207
    :cond_3
    new-instance v19, Lcom/mcdonalds/sdk/connectors/cybersource/request/CSRegisterReturnRequest;

    move-object/from16 v0, v19

    invoke-direct {v0, v5, v10}, Lcom/mcdonalds/sdk/connectors/cybersource/request/CSRegisterReturnRequest;-><init>(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 209
    .local v19, "registerReturnRequest":Lcom/mcdonalds/sdk/connectors/cybersource/request/CSRegisterReturnRequest;
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v23

    new-instance v24, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector$3;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector$3;-><init>(Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;Lcom/mcdonalds/sdk/AsyncListener;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 226
    .end local v4    # "action":Lorg/w3c/dom/Node;
    .end local v5    # "actionUrl":Ljava/lang/String;
    .end local v6    # "document":Lorg/w3c/dom/Document;
    .end local v10    # "fields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "form":Lorg/w3c/dom/Node;
    .end local v12    # "i":I
    .end local v13    # "list":Lorg/w3c/dom/NodeList;
    .end local v14    # "listSize":I
    .end local v17    # "reasonCode":I
    .end local v18    # "reasonCodeValue":Ljava/lang/String;
    .end local v19    # "registerReturnRequest":Lcom/mcdonalds/sdk/connectors/cybersource/request/CSRegisterReturnRequest;
    :goto_1
    return-void

    .line 216
    .restart local v6    # "document":Lorg/w3c/dom/Document;
    .restart local v10    # "fields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v11    # "form":Lorg/w3c/dom/Node;
    .restart local v12    # "i":I
    .restart local v13    # "list":Lorg/w3c/dom/NodeList;
    .restart local v14    # "listSize":I
    .restart local v17    # "reasonCode":I
    .restart local v18    # "reasonCodeValue":Ljava/lang/String;
    :cond_4
    new-instance v8, Lcom/mcdonalds/sdk/connectors/cybersource/CSException;

    move/from16 v0, v17

    invoke-direct {v8, v0}, Lcom/mcdonalds/sdk/connectors/cybersource/CSException;-><init>(I)V

    .line 217
    .local v8, "exception":Lcom/mcdonalds/sdk/connectors/cybersource/CSException;
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-interface {v0, v1, v2, v8}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 223
    .end local v6    # "document":Lorg/w3c/dom/Document;
    .end local v8    # "exception":Lcom/mcdonalds/sdk/connectors/cybersource/CSException;
    .end local v10    # "fields":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "form":Lorg/w3c/dom/Node;
    .end local v12    # "i":I
    .end local v13    # "list":Lorg/w3c/dom/NodeList;
    .end local v14    # "listSize":I
    .end local v17    # "reasonCode":I
    .end local v18    # "reasonCodeValue":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 224
    .local v7, "e":Ljava/lang/Exception;
    :goto_2
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_1

    .line 221
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v6    # "document":Lorg/w3c/dom/Document;
    .restart local v11    # "form":Lorg/w3c/dom/Node;
    :cond_5
    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    :try_start_1
    move-object/from16 v0, p3

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-interface {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    .line 223
    .end local v6    # "document":Lorg/w3c/dom/Document;
    .end local v11    # "form":Lorg/w3c/dom/Node;
    :catch_1
    move-exception v7

    goto :goto_2

    :catch_2
    move-exception v7

    goto :goto_2

    :catch_3
    move-exception v7

    goto :goto_2
.end method

.method private handleRegisterReturnResponse(Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 9
    .param p1, "html"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/AsyncListener",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "registerReturnListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/String;>;"
    const/4 v8, 0x0

    .line 229
    if-nez p1, :cond_0

    .line 230
    invoke-interface {p2, v8, v8, v8}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    .line 246
    :goto_0
    return-void

    .line 234
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->getDocument(Ljava/lang/String;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 235
    .local v0, "document":Lorg/w3c/dom/Document;
    const-string v5, "hiddenResult"

    invoke-interface {v0, v5}, Lorg/w3c/dom/Document;->getElementById(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 236
    .local v3, "result":Lorg/w3c/dom/Node;
    if-eqz v3, :cond_1

    .line 237
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    const-string v6, "value"

    invoke-interface {v5, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 238
    .local v4, "valueAttribute":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "jsonCardInfo":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface {p2, v2, v5, v6}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 243
    .end local v0    # "document":Lorg/w3c/dom/Document;
    .end local v2    # "jsonCardInfo":Ljava/lang/String;
    .end local v3    # "result":Lorg/w3c/dom/Node;
    .end local v4    # "valueAttribute":Lorg/w3c/dom/Node;
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    invoke-interface {p2, v8, v8, v8}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V

    goto :goto_0

    .line 241
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "document":Lorg/w3c/dom/Document;
    .restart local v3    # "result":Lorg/w3c/dom/Node;
    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :try_start_1
    invoke-interface {p2, v5, v6, v7}, Lcom/mcdonalds/sdk/AsyncListener;->onResponse(Ljava/lang/Object;Lcom/mcdonalds/sdk/AsyncToken;Lcom/mcdonalds/sdk/AsyncException;)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 243
    .end local v0    # "document":Lorg/w3c/dom/Document;
    .end local v3    # "result":Lorg/w3c/dom/Node;
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method private populateParametersForRequest(Ljava/lang/String;ILjava/lang/String;Lcom/mcdonalds/sdk/modules/models/CreditCard;Ljava/lang/String;Z)Ljava/util/LinkedHashMap;
    .locals 11
    .param p1, "customerId"    # Ljava/lang/String;
    .param p2, "paymentMethodId"    # I
    .param p3, "providerUrl"    # Ljava/lang/String;
    .param p4, "creditCard"    # Lcom/mcdonalds/sdk/modules/models/CreditCard;
    .param p5, "registerReturnUrl"    # Ljava/lang/String;
    .param p6, "oneTimePayment"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/mcdonalds/sdk/modules/models/CreditCard;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    invoke-direct {p0, p4}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->cardToHashMap(Lcom/mcdonalds/sdk/modules/models/CreditCard;)Ljava/util/LinkedHashMap;

    move-result-object v5

    .line 354
    .local v5, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->mConfiguration:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    const-string v9, "connectors.Cybersource.accessKey"

    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    .local v0, "accessKey":Ljava/lang/String;
    const-string v8, "access_key"

    invoke-virtual {v5, v8, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->mConfiguration:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    const-string v9, "connectors.Cybersource.profileId"

    invoke-virtual {v8, v9}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 357
    .local v6, "profileId":Ljava/lang/String;
    const-string v8, "profile_id"

    invoke-virtual {v5, v8, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    .line 359
    .local v7, "transactionUUID":Ljava/lang/String;
    const-string v8, "transaction_uuid"

    invoke-virtual {v5, v8, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v8, "unsigned_field_names"

    const-string v9, "card_type,card_number,card_expiry_date,card_cvn"

    invoke-virtual {v5, v8, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v8, "locale"

    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->mConfiguration:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguageTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v9

    invoke-direct {v1, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 365
    .local v1, "dateFormat":Ljava/text/DateFormat;
    const-string v8, "UTC"

    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 366
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 367
    .local v2, "dateString":Ljava/lang/String;
    const-string v8, "signed_date_time"

    invoke-virtual {v5, v8, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    const-string v8, "transaction_type"

    const-string v9, "create_payment_token"

    invoke-virtual {v5, v8, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    const-string v8, "reference_number"

    invoke-virtual {v5, v8, p1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v8, "currency"

    iget-object v9, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->mConfiguration:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrencyFormatter()Ljava/text/NumberFormat;

    move-result-object v9

    invoke-virtual {v9}, Ljava/text/NumberFormat;->getCurrency()Ljava/util/Currency;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v8, "payment_method"

    const-string v9, "card"

    invoke-virtual {v5, v8, v9}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    if-eqz p6, :cond_0

    const-string v3, "True"

    .line 374
    .local v3, "oneTimePaymentString":Ljava/lang/String;
    :goto_0
    invoke-static/range {p5 .. p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 375
    invoke-virtual {v8}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "Parameters"

    .line 376
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "PaymentMethodId"

    .line 377
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "CustomerId"

    .line 378
    invoke-virtual {v8, v9, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    const-string v9, "OneTimePayment"

    .line 379
    invoke-virtual {v8, v9, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v8

    .line 380
    invoke-virtual {v8}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v8

    .line 381
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 382
    .local v4, "overrideCustomReceiptPage":Ljava/lang/String;
    const-string v8, "override_custom_receipt_page"

    invoke-virtual {v5, v8, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    return-object v5

    .line 373
    .end local v3    # "oneTimePaymentString":Ljava/lang/String;
    .end local v4    # "overrideCustomReceiptPage":Ljava/lang/String;
    :cond_0
    const-string v3, "False"

    goto :goto_0
.end method

.method private sign(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 308
    .local p1, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->mConfiguration:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    const-string v7, "connectors.Cybersource.secretKey"

    invoke-virtual {v6, v7}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 310
    .local v4, "secretKey":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->getDataString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "data":Ljava/lang/String;
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    const-string v7, "HmacSHA256"

    invoke-direct {v5, v6, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 312
    .local v5, "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v6, "HmacSHA256"

    invoke-static {v6}, Ljavax/crypto/Mac;->getInstance(Ljava/lang/String;)Ljavax/crypto/Mac;

    move-result-object v2

    .line 313
    .local v2, "mac":Ljavax/crypto/Mac;
    invoke-virtual {v2, v5}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    .line 314
    const-string v6, "UTF-8"

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object v3

    .line 315
    .local v3, "rawHmac":[B
    const/16 v6, 0x10

    invoke-static {v3, v6}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v6

    .line 317
    .end local v0    # "data":Ljava/lang/String;
    .end local v2    # "mac":Ljavax/crypto/Mac;
    .end local v3    # "rawHmac":[B
    .end local v5    # "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    :goto_0
    return-object v6

    .line 316
    :catch_0
    move-exception v1

    .line 317
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 316
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public saveCard(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;ILjava/lang/String;Ljava/lang/String;ZLcom/mcdonalds/sdk/modules/models/CreditCard;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 20
    .param p1, "customerProfile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p2, "paymentMethodId"    # I
    .param p3, "providerUrl"    # Ljava/lang/String;
    .param p4, "registerReturnUrl"    # Ljava/lang/String;
    .param p5, "oneTimePayment"    # Z
    .param p6, "creditCard"    # Lcom/mcdonalds/sdk/modules/models/CreditCard;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;",
            "I",
            "Ljava/lang/String;",
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
    .line 126
    .local p7, "registerReturnListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v4, p0

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p4

    move/from16 v10, p5

    invoke-direct/range {v4 .. v10}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->populateParametersForRequest(Ljava/lang/String;ILjava/lang/String;Lcom/mcdonalds/sdk/modules/models/CreditCard;Ljava/lang/String;Z)Ljava/util/LinkedHashMap;

    move-result-object v16

    .line 127
    .local v16, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    .line 128
    .local v19, "uri":Landroid/net/Uri;
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 129
    .local v15, "key":Ljava/lang/String;
    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v15, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 132
    .end local v15    # "key":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->mConfiguration:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    const-string v5, "connectors.Cybersource.data.decisionManager_enabled"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 133
    .local v14, "decisionManagerEnabled":Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 134
    const-string v4, "decisionManager_enabled"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v14}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->mConfiguration:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    const-string v5, "connectors.Cybersource.sendMerchantDefinedData2AsZipCode"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 137
    const-string v4, "merchant_defined_data2"

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getZipCode()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->mConfiguration:Lcom/mcdonalds/sdk/services/configuration/Configuration;

    const-string v5, "connectors.Cybersource.useProfileName"

    invoke-virtual {v4, v5}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getBooleanForKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 140
    const-string v4, "consumer_id"

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v4, "bill_to_forename"

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFirstName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v4, "bill_to_surname"

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLastName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v4, "bill_to_email"

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v4, "bill_to_phone"

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMobileNumber()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->cleanNullValues(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    move-result-object v11

    .line 151
    .local v11, "cleanedParams":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->commaSeparate(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v18

    .line 152
    .local v18, "signedFieldNames":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",signed_field_names"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 153
    const-string v4, "signed_field_names"

    move-object/from16 v0, v18

    invoke-virtual {v11, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->sign(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v17

    .line 156
    .local v17, "signature":Ljava/lang/String;
    const-string v4, "signature"

    move-object/from16 v0, v17

    invoke-virtual {v11, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-virtual/range {v19 .. v19}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 159
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 160
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 161
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v12

    .line 163
    .local v12, "cleanedUrl":Ljava/lang/String;
    new-instance v13, Lcom/mcdonalds/sdk/connectors/cybersource/request/CSCreateTokenRequest;

    invoke-direct {v13, v11, v12}, Lcom/mcdonalds/sdk/connectors/cybersource/request/CSCreateTokenRequest;-><init>(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 164
    .local v13, "createTokenRequest":Lcom/mcdonalds/sdk/connectors/cybersource/request/CSCreateTokenRequest;
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v4

    new-instance v5, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p7

    invoke-direct {v5, v0, v1, v2}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector$2;-><init>(Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v4, v13, v5}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 171
    return-void
.end method

.method public saveCard(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLcom/mcdonalds/sdk/modules/models/CreditCard;Lcom/mcdonalds/sdk/AsyncListener;)V
    .locals 18
    .param p1, "customerId"    # Ljava/lang/String;
    .param p2, "paymentMethodId"    # I
    .param p3, "providerUrl"    # Ljava/lang/String;
    .param p4, "registerReturnUrl"    # Ljava/lang/String;
    .param p5, "oneTimePayment"    # Z
    .param p6, "creditCard"    # Lcom/mcdonalds/sdk/modules/models/CreditCard;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
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
    .line 92
    .local p7, "registerReturnListener":Lcom/mcdonalds/sdk/AsyncListener;, "Lcom/mcdonalds/sdk/AsyncListener<Ljava/lang/String;>;"
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p4

    move/from16 v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->populateParametersForRequest(Ljava/lang/String;ILjava/lang/String;Lcom/mcdonalds/sdk/modules/models/CreditCard;Ljava/lang/String;Z)Ljava/util/LinkedHashMap;

    move-result-object v14

    .line 94
    .local v14, "params":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 95
    .local v17, "uri":Landroid/net/Uri;
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 96
    .local v13, "key":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v13, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 99
    .end local v13    # "key":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->cleanNullValues(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap;

    move-result-object v10

    .line 101
    .local v10, "cleanedParams":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->commaSeparate(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v16

    .line 102
    .local v16, "signedFieldNames":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",signed_field_names"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 103
    const-string v3, "signed_field_names"

    move-object/from16 v0, v16

    invoke-virtual {v10, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->sign(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v15

    .line 106
    .local v15, "signature":Ljava/lang/String;
    const-string v3, "signature"

    invoke-virtual {v10, v3, v15}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual/range {v17 .. v17}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 109
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 110
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 111
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    .line 113
    .local v11, "cleanedUrl":Ljava/lang/String;
    new-instance v12, Lcom/mcdonalds/sdk/connectors/cybersource/request/CSCreateTokenRequest;

    invoke-direct {v12, v10, v11}, Lcom/mcdonalds/sdk/connectors/cybersource/request/CSCreateTokenRequest;-><init>(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 114
    .local v12, "createTokenRequest":Lcom/mcdonalds/sdk/connectors/cybersource/request/CSCreateTokenRequest;
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;->getNetworkConnection()Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;

    move-result-object v3

    new-instance v4, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector$1;

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p7

    invoke-direct {v4, v0, v1, v2}, Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector$1;-><init>(Lcom/mcdonalds/sdk/connectors/cybersource/CybersourceConnector;Ljava/lang/String;Lcom/mcdonalds/sdk/AsyncListener;)V

    invoke-virtual {v3, v12, v4}, Lcom/mcdonalds/sdk/services/network/RequestManagerServiceConnection;->processRequest(Lcom/mcdonalds/sdk/services/network/RequestProvider;Lcom/mcdonalds/sdk/AsyncListener;)V

    .line 121
    return-void
.end method
