.class public Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWDoubleDeserializer;
.super Ljava/lang/Object;
.source "MWDoubleDeserializer.java"

# interfaces
.implements Lcom/google/gson/JsonDeserializer;
.implements Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/gson/JsonDeserializer",
        "<",
        "Ljava/lang/Double;",
        ">;",
        "Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Double;
    .locals 4
    .param p1, "json"    # Lcom/google/gson/JsonElement;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .param p3, "context"    # Lcom/google/gson/JsonDeserializationContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 20
    :try_start_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 21
    const/4 v1, 0x0

    .line 30
    .local v1, "ret":Ljava/lang/Double;
    :goto_0
    return-object v1

    .line 24
    .end local v1    # "ret":Ljava/lang/Double;
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .restart local v1    # "ret":Ljava/lang/Double;
    goto :goto_0

    .line 26
    .end local v1    # "ret":Ljava/lang/Double;
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .restart local v1    # "ret":Ljava/lang/Double;
    goto :goto_0
.end method

.method public bridge synthetic deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2, p3}, Lcom/mcdonalds/sdk/connectors/middleware/deserializer/MWDoubleDeserializer;->deserialize(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/google/gson/JsonDeserializationContext;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getDeserializer()Ljava/lang/Object;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public getSerializer()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
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
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    const-class v0, Ljava/lang/Double;

    return-object v0
.end method
