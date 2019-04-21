.class public Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWPriceTypeAdapter;
.super Ljava/lang/Object;
.source "MWPriceTypeAdapter.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;
.implements Lcom/google/gson/JsonSerializer;
.implements Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;",
        ">;",
        "Lcom/google/gson/JsonSerializer",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;",
        ">;",
        "Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;
    .locals 2
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
    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;->values()[Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWPriceTypeAdapter;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;

    move-result-object v0

    return-object v0
.end method

.method public getDeserializer()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 23
    return-object p0
.end method

.method public getSerializer()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 28
    return-object p0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;

    return-object v0
.end method

.method public serialize(Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 1
    .param p1, "ecpPriceType"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "jsonSerializationContext"    # Lcom/google/gson/JsonSerializationContext;

    .prologue
    .line 38
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;->integerValue()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/gson/JsonSerializationContext;->serialize(Ljava/lang/Object;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 12
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWPriceTypeAdapter;->serialize(Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
