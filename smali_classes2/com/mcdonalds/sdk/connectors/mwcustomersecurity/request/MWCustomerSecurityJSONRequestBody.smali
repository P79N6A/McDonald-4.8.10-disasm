.class public Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;
.super Ljava/util/LinkedHashMap;
.source "MWCustomerSecurityJSONRequestBody.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final mConfigBasePath:Ljava/lang/String;

.field private mGsonBuilder:Lcom/google/gson/GsonBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 23
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->mGsonBuilder:Lcom/google/gson/GsonBuilder;

    .line 24
    const-string v0, "connectors.Middleware"

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->mConfigBasePath:Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->putDefaults()V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;)V
    .locals 1
    .param p1, "connector"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 29
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->mGsonBuilder:Lcom/google/gson/GsonBuilder;

    .line 30
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->getConfigBasePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->mConfigBasePath:Ljava/lang/String;

    .line 31
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->putDefaults()V

    .line 32
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "serializeNulls"    # Z

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 35
    const-string v0, "connectors.Middleware"

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->mConfigBasePath:Ljava/lang/String;

    .line 36
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->mGsonBuilder:Lcom/google/gson/GsonBuilder;

    .line 37
    if-eqz p1, :cond_0

    .line 38
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->mGsonBuilder:Lcom/google/gson/GsonBuilder;

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->mGsonBuilder:Lcom/google/gson/GsonBuilder;

    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->putDefaults()V

    .line 42
    return-void
.end method

.method private putDefaults()V
    .locals 5

    .prologue
    .line 55
    const-string v1, "marketId"

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->mConfigBasePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".marketId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string v1, "application"

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->mConfigBasePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".application"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v1, "languageName"

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x5f

    const/16 v3, 0x2d

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "locale":Ljava/lang/String;
    const-string v1, "locale"

    invoke-virtual {p0, v1, v0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "platform"

    const-string v2, "android"

    invoke-virtual {p0, v1, v2}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method


# virtual methods
.method public generateHash()V
    .locals 6

    .prologue
    .line 45
    const-string v1, "happybaby"

    .line 46
    .local v1, "nonce":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->mConfigBasePath:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".versionId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 47
    .local v2, "versionId":Ljava/lang/String;
    const-string v3, "application"

    invoke-virtual {p0, v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "happybaby"

    invoke-static {v3, v2, v4}, Lcom/rdisoftware/security/RdiSecurity;->computeHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "hash":Ljava/lang/String;
    const-string v3, "versionId"

    invoke-virtual {p0, v3, v2}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    const-string v3, "nonce"

    const-string v4, "happybaby"

    invoke-virtual {p0, v3, v4}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string v3, "hash"

    invoke-virtual {p0, v3, v0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->toJson(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toJson(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "customTypeAdapters":Ljava/util/List;, "Ljava/util/List<+Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;>;"
    if-eqz p1, :cond_2

    .line 71
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 72
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;

    .line 73
    .local v0, "customTypeAdapter":Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;
    invoke-interface {v0}, Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;->getSerializer()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 74
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->mGsonBuilder:Lcom/google/gson/GsonBuilder;

    .line 75
    invoke-interface {v0}, Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v0}, Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;->getSerializer()Ljava/lang/Object;

    move-result-object v5

    .line 74
    invoke-virtual {v3, v4, v5}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->mGsonBuilder:Lcom/google/gson/GsonBuilder;

    .line 78
    :cond_0
    invoke-interface {v0}, Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;->getDeserializer()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 79
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->mGsonBuilder:Lcom/google/gson/GsonBuilder;

    .line 80
    invoke-interface {v0}, Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v0}, Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;->getDeserializer()Ljava/lang/Object;

    move-result-object v5

    .line 79
    invoke-virtual {v3, v4, v5}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->mGsonBuilder:Lcom/google/gson/GsonBuilder;

    .line 71
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v0    # "customTypeAdapter":Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_2
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->mGsonBuilder:Lcom/google/gson/GsonBuilder;

    invoke-virtual {v3}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v3

    instance-of v4, v3, Lcom/google/gson/Gson;

    if-nez v4, :cond_3

    invoke-virtual {v3, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_3
    check-cast v3, Lcom/google/gson/Gson;

    invoke-static {v3, p0}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->toJson(Lcom/google/gson/Gson;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->toJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
