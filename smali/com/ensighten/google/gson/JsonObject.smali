.class public final Lcom/ensighten/google/gson/JsonObject;
.super Lcom/ensighten/google/gson/JsonElement;
.source "SourceFile"


# instance fields
.field private final members:Lcom/ensighten/google/gson/internal/LinkedTreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ensighten/google/gson/internal/LinkedTreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/ensighten/google/gson/JsonElement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/ensighten/google/gson/JsonElement;-><init>()V

    .line 33
    new-instance v0, Lcom/ensighten/google/gson/internal/LinkedTreeMap;

    invoke-direct {v0}, Lcom/ensighten/google/gson/internal/LinkedTreeMap;-><init>()V

    iput-object v0, p0, Lcom/ensighten/google/gson/JsonObject;->members:Lcom/ensighten/google/gson/internal/LinkedTreeMap;

    return-void
.end method

.method private createJsonElement(Ljava/lang/Object;)Lcom/ensighten/google/gson/JsonElement;
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 122
    if-nez p1, :cond_0

    sget-object v0, Lcom/ensighten/google/gson/JsonNull;->INSTANCE:Lcom/ensighten/google/gson/JsonNull;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/ensighten/google/gson/JsonPrimitive;

    invoke-direct {v0, p1}, Lcom/ensighten/google/gson/JsonPrimitive;-><init>(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public final add(Ljava/lang/String;Lcom/ensighten/google/gson/JsonElement;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/ensighten/google/gson/JsonElement;

    .prologue
    .line 54
    if-nez p2, :cond_0

    .line 55
    sget-object p2, Lcom/ensighten/google/gson/JsonNull;->INSTANCE:Lcom/ensighten/google/gson/JsonNull;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonObject;->members:Lcom/ensighten/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1, p2}, Lcom/ensighten/google/gson/internal/LinkedTreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    return-void
.end method

.method public final addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 101
    invoke-direct {p0, p2}, Lcom/ensighten/google/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/ensighten/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ensighten/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/ensighten/google/gson/JsonElement;)V

    .line 102
    return-void
.end method

.method public final addProperty(Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Character;

    .prologue
    .line 112
    invoke-direct {p0, p2}, Lcom/ensighten/google/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/ensighten/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ensighten/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/ensighten/google/gson/JsonElement;)V

    .line 113
    return-void
.end method

.method public final addProperty(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;

    .prologue
    .line 90
    invoke-direct {p0, p2}, Lcom/ensighten/google/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/ensighten/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ensighten/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/ensighten/google/gson/JsonElement;)V

    .line 91
    return-void
.end method

.method public final addProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p2}, Lcom/ensighten/google/gson/JsonObject;->createJsonElement(Ljava/lang/Object;)Lcom/ensighten/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ensighten/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/ensighten/google/gson/JsonElement;)V

    .line 80
    return-void
.end method

.method final bridge synthetic deepCopy()Lcom/ensighten/google/gson/JsonElement;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/ensighten/google/gson/JsonObject;->deepCopy()Lcom/ensighten/google/gson/JsonObject;

    move-result-object v0

    return-object v0
.end method

.method final deepCopy()Lcom/ensighten/google/gson/JsonObject;
    .locals 4

    .prologue
    .line 38
    new-instance v2, Lcom/ensighten/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/ensighten/google/gson/JsonObject;-><init>()V

    .line 39
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonObject;->members:Lcom/ensighten/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/ensighten/google/gson/internal/LinkedTreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 40
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/JsonElement;

    invoke-virtual {v0}, Lcom/ensighten/google/gson/JsonElement;->deepCopy()Lcom/ensighten/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/ensighten/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/ensighten/google/gson/JsonElement;)V

    goto :goto_0

    .line 42
    :cond_0
    return-object v2
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/ensighten/google/gson/JsonElement;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonObject;->members:Lcom/ensighten/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/ensighten/google/gson/internal/LinkedTreeMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 187
    if-eq p1, p0, :cond_0

    instance-of v0, p1, Lcom/ensighten/google/gson/JsonObject;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/ensighten/google/gson/JsonObject;

    .end local p1    # "o":Ljava/lang/Object;
    iget-object v0, p1, Lcom/ensighten/google/gson/JsonObject;->members:Lcom/ensighten/google/gson/internal/LinkedTreeMap;

    iget-object v1, p0, Lcom/ensighten/google/gson/JsonObject;->members:Lcom/ensighten/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, v1}, Lcom/ensighten/google/gson/internal/LinkedTreeMap;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final get(Ljava/lang/String;)Lcom/ensighten/google/gson/JsonElement;
    .locals 1
    .param p1, "memberName"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonObject;->members:Lcom/ensighten/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/ensighten/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/JsonElement;

    return-object v0
.end method

.method public final getAsJsonArray(Ljava/lang/String;)Lcom/ensighten/google/gson/JsonArray;
    .locals 1
    .param p1, "memberName"    # Ljava/lang/String;

    .prologue
    .line 172
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonObject;->members:Lcom/ensighten/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/ensighten/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/JsonArray;

    return-object v0
.end method

.method public final getAsJsonObject(Ljava/lang/String;)Lcom/ensighten/google/gson/JsonObject;
    .locals 1
    .param p1, "memberName"    # Ljava/lang/String;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonObject;->members:Lcom/ensighten/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/ensighten/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/JsonObject;

    return-object v0
.end method

.method public final getAsJsonPrimitive(Ljava/lang/String;)Lcom/ensighten/google/gson/JsonPrimitive;
    .locals 1
    .param p1, "memberName"    # Ljava/lang/String;

    .prologue
    .line 162
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonObject;->members:Lcom/ensighten/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/ensighten/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/JsonPrimitive;

    return-object v0
.end method

.method public final has(Ljava/lang/String;)Z
    .locals 1
    .param p1, "memberName"    # Ljava/lang/String;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonObject;->members:Lcom/ensighten/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/ensighten/google/gson/internal/LinkedTreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonObject;->members:Lcom/ensighten/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0}, Lcom/ensighten/google/gson/internal/LinkedTreeMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public final remove(Ljava/lang/String;)Lcom/ensighten/google/gson/JsonElement;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ensighten/google/gson/JsonObject;->members:Lcom/ensighten/google/gson/internal/LinkedTreeMap;

    invoke-virtual {v0, p1}, Lcom/ensighten/google/gson/internal/LinkedTreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/JsonElement;

    return-object v0
.end method
