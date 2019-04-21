.class public Lcom/mcdonalds/sdk/services/data/SerializableSparseArraySerializer;
.super Ljava/lang/Object;
.source "SerializableSparseArraySerializer.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;
.implements Lcom/google/gson/JsonSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer",
        "<",
        "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray",
        "<TT;>;>;",
        "Lcom/google/gson/JsonSerializer",
        "<",
        "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray",
        "<TT;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    .local p0, "this":Lcom/mcdonalds/sdk/services/data/SerializableSparseArraySerializer;, "Lcom/mcdonalds/sdk/services/data/SerializableSparseArraySerializer<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;
    .locals 10
    .param p1, "json"    # Lcom/google/gson/JsonElement;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/JsonDeserializationContext;",
            ")",
            "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray",
            "<TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/mcdonalds/sdk/services/data/SerializableSparseArraySerializer;, "Lcom/mcdonalds/sdk/services/data/SerializableSparseArraySerializer<TT;>;"
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v7

    if-eqz v7, :cond_0

    instance-of v7, p2, Ljava/lang/reflect/ParameterizedType;

    if-nez v7, :cond_1

    .line 26
    :cond_0
    new-instance v7, Lcom/google/gson/JsonParseException;

    const-string v8, "Expected Object type for SerializeSparseArray"

    invoke-direct {v7, v8}, Lcom/google/gson/JsonParseException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_1
    move-object v5, p2

    .line 29
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 30
    .local v5, "type":Ljava/lang/reflect/ParameterizedType;
    new-instance v4, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    invoke-direct {v4}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;-><init>()V

    .line 31
    .local v4, "sparseArray":Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;, "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray<TT;>;"
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 32
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 33
    .local v1, "key":Ljava/lang/Integer;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gson/JsonElement;

    .line 36
    .local v6, "value":Lcom/google/gson/JsonElement;
    invoke-interface {v5}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    const/4 v9, 0x0

    aget-object v2, v7, v9

    .line 37
    .local v2, "parameterType":Ljava/lang/reflect/Type;
    invoke-interface {p3, v6, v2}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    .line 39
    .local v3, "parsedValue":Ljava/lang/Object;, "TT;"
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v4, v7, v3}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 42
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;"
    .end local v1    # "key":Ljava/lang/Integer;
    .end local v2    # "parameterType":Ljava/lang/reflect/Type;
    .end local v3    # "parsedValue":Ljava/lang/Object;, "TT;"
    .end local v6    # "value":Lcom/google/gson/JsonElement;
    :cond_2
    return-object v4
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/mcdonalds/sdk/services/data/SerializableSparseArraySerializer;, "Lcom/mcdonalds/sdk/services/data/SerializableSparseArraySerializer<TT;>;"
    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/services/data/SerializableSparseArraySerializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 6
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonSerializationContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/JsonSerializationContext;",
            ")",
            "Lcom/google/gson/JsonElement;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/mcdonalds/sdk/services/data/SerializableSparseArraySerializer;, "Lcom/mcdonalds/sdk/services/data/SerializableSparseArraySerializer<TT;>;"
    .local p1, "src":Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;, "Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray<TT;>;"
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 48
    .local v1, "jsonObject":Lcom/google/gson/JsonObject;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 49
    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 50
    .local v3, "key":Ljava/lang/Integer;
    invoke-virtual {p1, v0}, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    .line 52
    .local v4, "value":Ljava/lang/Object;, "TT;"
    invoke-interface {p3, v4}, Lcom/google/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 54
    .local v2, "jsonValue":Lcom/google/gson/JsonElement;
    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 57
    .end local v2    # "jsonValue":Lcom/google/gson/JsonElement;
    .end local v3    # "key":Ljava/lang/Integer;
    .end local v4    # "value":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object v1
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 19
    .local p0, "this":Lcom/mcdonalds/sdk/services/data/SerializableSparseArraySerializer;, "Lcom/mcdonalds/sdk/services/data/SerializableSparseArraySerializer<TT;>;"
    check-cast p1, Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/services/data/SerializableSparseArraySerializer;->serialize(Lcom/mcdonalds/sdk/connectors/utils/SerializableSparseArray;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
