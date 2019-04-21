.class public Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWComponentsDeserializer;
.super Ljava/lang/Object;
.source "MWComponentsDeserializer.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;
.implements Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponents;",
        ">;",
        "Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponents;",
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
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponents;
    .locals 9
    .param p1, "jsonElement"    # Lcom/google/gson/JsonElement;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "jsonDeserializationContext"    # Lcom/google/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 33
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponents;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponents;-><init>()V

    .line 34
    .local v1, "components":Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponents;
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 35
    .local v3, "gson":Lcom/google/gson/Gson;
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    const-string v8, "component"

    invoke-virtual {v7, v8}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 37
    .local v0, "component":Lcom/google/gson/JsonElement;
    instance-of v7, v0, Lcom/google/gson/JsonObject;

    if-eqz v7, :cond_1

    .line 38
    const-class v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponent;

    instance-of v8, v3, Lcom/google/gson/Gson;

    if-nez v8, :cond_0

    invoke-virtual {v3, v0, v7}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    .end local v3    # "gson":Lcom/google/gson/Gson;
    :goto_0
    check-cast v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponent;

    .line 39
    .local v6, "mwRecipeComponent":Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponent;
    const/4 v7, 0x1

    new-array v7, v7, [Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponent;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponents;->recipeComponentList:Ljava/util/List;

    .line 52
    .end local v1    # "components":Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponents;
    .end local v6    # "mwRecipeComponent":Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponent;
    :goto_1
    return-object v1

    .line 38
    .restart local v1    # "components":Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponents;
    .restart local v3    # "gson":Lcom/google/gson/Gson;
    :cond_0
    check-cast v3, Lcom/google/gson/Gson;

    .end local v3    # "gson":Lcom/google/gson/Gson;
    invoke-static {v3, v0, v7}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_0

    .line 42
    .restart local v3    # "gson":Lcom/google/gson/Gson;
    :cond_1
    instance-of v7, v0, Lcom/google/gson/JsonArray;

    if-eqz v7, :cond_4

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v2, "depRecipeComponents":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponent;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 45
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v5

    check-cast v5, Lcom/google/gson/JsonObject;

    .line 46
    .local v5, "item":Lcom/google/gson/JsonObject;
    const-class v8, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponent;

    instance-of v7, v3, Lcom/google/gson/Gson;

    if-nez v7, :cond_2

    invoke-virtual {v3, v5, v8}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    :goto_3
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    move-object v7, v3

    .line 46
    check-cast v7, Lcom/google/gson/Gson;

    invoke-static {v7, v5, v8}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_3

    .line 48
    .end local v5    # "item":Lcom/google/gson/JsonObject;
    :cond_3
    iput-object v2, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponents;->recipeComponentList:Ljava/util/List;

    goto :goto_1

    .line 52
    .end local v2    # "depRecipeComponents":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponent;>;"
    .end local v4    # "i":I
    :cond_4
    const/4 v1, 0x0

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWComponentsDeserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponents;

    move-result-object v0

    return-object v0
.end method

.method public getDeserializer()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 22
    return-object p0
.end method

.method public getSerializer()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponents;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWRecipeComponents;

    return-object v0
.end method
