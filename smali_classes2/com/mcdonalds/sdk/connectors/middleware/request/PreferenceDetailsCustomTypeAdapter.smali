.class public Lcom/mcdonalds/sdk/connectors/middleware/request/PreferenceDetailsCustomTypeAdapter;
.super Ljava/lang/Object;
.source "PreferenceDetailsCustomTypeAdapter.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;
.implements Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;",
        ">;",
        "Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;
    .locals 6
    .param p1, "json"    # Lcom/google/gson/JsonElement;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonDeserializationContext;

    .prologue
    .line 33
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 36
    .local v1, "gson":Lcom/google/gson/Gson;
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    const-string v5, "legacyId"

    invoke-virtual {v4, v5}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v3

    .line 37
    .local v3, "isLegacy":Z
    if-eqz v3, :cond_3

    .line 38
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v4

    const-string v5, "legacyId"

    invoke-virtual {v4, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "id":Ljava/lang/String;
    const-string v4, "18"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 40
    const-class v4, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$PreferredOfferCategoryDCSPreferenceDetails;

    instance-of v5, v1, Lcom/google/gson/Gson;

    if-nez v5, :cond_0

    invoke-virtual {v1, p1, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .end local v1    # "gson":Lcom/google/gson/Gson;
    :goto_0
    check-cast v4, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;

    .line 48
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "isLegacy":Z
    :goto_1
    return-object v4

    .line 40
    .restart local v1    # "gson":Lcom/google/gson/Gson;
    .restart local v2    # "id":Ljava/lang/String;
    .restart local v3    # "isLegacy":Z
    :cond_0
    check-cast v1, Lcom/google/gson/Gson;

    .end local v1    # "gson":Lcom/google/gson/Gson;
    invoke-static {v1, p1, v4}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 42
    .restart local v1    # "gson":Lcom/google/gson/Gson;
    :cond_1
    const-class v4, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$EcpLegacyDCSPreferenceDetails;

    instance-of v5, v1, Lcom/google/gson/Gson;

    if-nez v5, :cond_2

    invoke-virtual {v1, p1, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .end local v1    # "gson":Lcom/google/gson/Gson;
    :goto_2
    check-cast v4, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;

    goto :goto_1

    .restart local v1    # "gson":Lcom/google/gson/Gson;
    :cond_2
    check-cast v1, Lcom/google/gson/Gson;

    .end local v1    # "gson":Lcom/google/gson/Gson;
    invoke-static {v1, p1, v4}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_2

    .line 45
    .end local v2    # "id":Ljava/lang/String;
    .restart local v1    # "gson":Lcom/google/gson/Gson;
    :cond_3
    const-class v4, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;

    instance-of v5, v1, Lcom/google/gson/Gson;

    if-nez v5, :cond_4

    invoke-virtual {v1, p1, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .end local v1    # "gson":Lcom/google/gson/Gson;
    :goto_3
    check-cast v4, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;

    goto :goto_1

    .restart local v1    # "gson":Lcom/google/gson/Gson;
    :cond_4
    check-cast v1, Lcom/google/gson/Gson;

    .end local v1    # "gson":Lcom/google/gson/Gson;
    invoke-static {v1, p1, v4}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/gson/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_3

    .line 47
    .end local v3    # "isLegacy":Z
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Lcom/google/gson/JsonParseException;
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 13
    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/request/PreferenceDetailsCustomTypeAdapter;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;

    move-result-object v0

    return-object v0
.end method

.method public getDeserializer()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 21
    return-object p0
.end method

.method public getSerializer()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 26
    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 16
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/model/DCSPreference$DCSPreferenceDetails;

    return-object v0
.end method
