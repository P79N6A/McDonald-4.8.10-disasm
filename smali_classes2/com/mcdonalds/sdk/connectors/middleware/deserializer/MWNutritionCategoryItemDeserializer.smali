.class public Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWNutritionCategoryItemDeserializer;
.super Ljava/lang/Object;
.source "MWNutritionCategoryItemDeserializer.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;
.implements Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryItems;",
        ">;",
        "Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryItems;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryItems;
    .locals 8
    .param p1, "json"    # Lcom/google/gson/JsonElement;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 40
    .local v4, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;>;"
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 42
    .local v3, "jsonObject":Lcom/google/gson/JsonObject;
    const-string v5, "item"

    invoke-virtual {v3, v5}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 44
    .local v2, "jsonItem":Lcom/google/gson/JsonElement;
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 45
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/JsonElement;

    .line 46
    .local v0, "e":Lcom/google/gson/JsonElement;
    const-class v6, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;

    invoke-interface {p3, v0, v6}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 48
    .end local v0    # "e":Lcom/google/gson/JsonElement;
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 49
    const-class v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWMenuItem;

    invoke-interface {p3, v2, v5}, Lcom/google/gson/JsonDeserializationContext;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    :cond_1
    new-instance v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryItems;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryItems;-><init>()V

    .line 55
    .local v1, "items":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryItems;
    iput-object v4, v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryItems;->categoryItemList:Ljava/util/List;

    .line 56
    return-object v1

    .line 51
    .end local v1    # "items":Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryItems;
    :cond_2
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected JSON type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
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
    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWNutritionCategoryItemDeserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryItems;

    move-result-object v0

    return-object v0
.end method

.method public getDeserializer()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 28
    return-object p0
.end method

.method public getSerializer()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
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
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryItems;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCategoryItems;

    return-object v0
.end method
