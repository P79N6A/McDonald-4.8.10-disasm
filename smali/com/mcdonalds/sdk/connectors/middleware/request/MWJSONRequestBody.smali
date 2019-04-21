.class public Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;
.super Ljava/util/LinkedHashMap;
.source "MWJSONRequestBody.java"


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
    .line 31
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 32
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->mGsonBuilder:Lcom/google/gson/GsonBuilder;

    .line 33
    const-string v0, "connectors.Middleware"

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->mConfigBasePath:Ljava/lang/String;

    .line 34
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->putDefaults()V

    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;)V
    .locals 0
    .param p1, "ignored"    # Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;-><init>()V

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;Z)V
    .locals 0
    .param p1, "ignored"    # Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;
    .param p2, "serializeNulls"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;-><init>(Z)V

    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;)V
    .locals 1
    .param p1, "connector"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 38
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->mGsonBuilder:Lcom/google/gson/GsonBuilder;

    .line 39
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->getConfigBasePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->mConfigBasePath:Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->putDefaults()V

    .line 41
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "serializeNulls"    # Z

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 44
    const-string v0, "connectors.Middleware"

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->mConfigBasePath:Ljava/lang/String;

    .line 45
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->mGsonBuilder:Lcom/google/gson/GsonBuilder;

    .line 46
    if-eqz p1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->mGsonBuilder:Lcom/google/gson/GsonBuilder;

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->serializeNulls()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->mGsonBuilder:Lcom/google/gson/GsonBuilder;

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->putDefaults()V

    .line 51
    return-void
.end method

.method private putDefaults()V
    .locals 4

    .prologue
    .line 64
    const-string v0, "marketId"

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->mConfigBasePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".marketId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v0, "application"

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->mConfigBasePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".application"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getStringForKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v0, "languageName"

    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguageTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v0, "platform"

    const-string v1, "android"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    return-void
.end method


# virtual methods
.method public generateHash()V
    .locals 6

    .prologue
    .line 54
    const-string v1, "happybaby"

    .line 55
    .local v1, "nonce":Ljava/lang/String;
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->mConfigBasePath:Ljava/lang/String;

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

    .line 56
    .local v2, "versionId":Ljava/lang/String;
    const-string v3, "application"

    invoke-virtual {p0, v3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "happybaby"

    invoke-static {v3, v2, v4}, Lcom/rdisoftware/security/RdiSecurity;->computeHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "hash":Ljava/lang/String;
    const-string/jumbo v3, "versionId"

    invoke-virtual {p0, v3, v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v3, "nonce"

    const-string v4, "happybaby"

    invoke-virtual {p0, v3, v4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v3, "hash"

    invoke-virtual {p0, v3, v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    return-void
.end method

.method public toJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->toJson(Ljava/util/List;)Ljava/lang/String;

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
    .line 77
    .local p1, "customTypeAdapters":Ljava/util/List;, "Ljava/util/List<+Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;>;"
    if-eqz p1, :cond_2

    .line 78
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 79
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;

    .line 80
    .local v0, "customTypeAdapter":Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;
    invoke-interface {v0}, Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;->getSerializer()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 81
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->mGsonBuilder:Lcom/google/gson/GsonBuilder;

    .line 82
    invoke-interface {v0}, Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v0}, Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;->getSerializer()Ljava/lang/Object;

    move-result-object v5

    .line 81
    invoke-virtual {v3, v4, v5}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->mGsonBuilder:Lcom/google/gson/GsonBuilder;

    .line 85
    :cond_0
    invoke-interface {v0}, Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;->getDeserializer()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 86
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->mGsonBuilder:Lcom/google/gson/GsonBuilder;

    .line 87
    invoke-interface {v0}, Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-interface {v0}, Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;->getDeserializer()Ljava/lang/Object;

    move-result-object v5

    .line 86
    invoke-virtual {v3, v4, v5}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->mGsonBuilder:Lcom/google/gson/GsonBuilder;

    .line 78
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "customTypeAdapter":Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_2
    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->mGsonBuilder:Lcom/google/gson/GsonBuilder;

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
    .line 98
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->toJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
