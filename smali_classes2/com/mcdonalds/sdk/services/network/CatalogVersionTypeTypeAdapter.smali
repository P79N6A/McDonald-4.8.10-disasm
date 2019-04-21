.class public Lcom/mcdonalds/sdk/services/network/CatalogVersionTypeTypeAdapter;
.super Ljava/lang/Object;
.source "CatalogVersionTypeTypeAdapter.java"

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
        "Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;",
        ">;",
        "Lcom/google/gson/JsonSerializer",
        "<",
        "Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;",
        ">;",
        "Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter",
        "<",
        "Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;
    .locals 1
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
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->fromValue(I)Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    move-result-object v0

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
    .line 14
    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/services/network/CatalogVersionTypeTypeAdapter;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

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
            "Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 18
    const-class v0, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    return-object v0
.end method

.method public serialize(Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 2
    .param p1, "ecpCatalogVersionType"    # Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "jsonSerializationContext"    # Lcom/google/gson/JsonSerializationContext;

    .prologue
    .line 38
    new-instance v0, Lcom/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;->getIntegerValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;

    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/services/network/CatalogVersionTypeTypeAdapter;->serialize(Lcom/mcdonalds/sdk/services/data/sync/CatalogVersionType;Ljava/lang/reflect/Type;Lcom/google/gson/JsonSerializationContext;)Lcom/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method
