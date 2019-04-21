.class public Lcom/newrelic/agent/android/stores/SharedPrefsPayloadStore;
.super Lcom/newrelic/agent/android/stores/SharedPrefsStore;
.source "SharedPrefsPayloadStore.java"

# interfaces
.implements Lcom/newrelic/agent/android/payload/PayloadStore;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/newrelic/agent/android/stores/SharedPrefsStore;",
        "Lcom/newrelic/agent/android/payload/PayloadStore",
        "<",
        "Lcom/newrelic/agent/android/payload/Payload;",
        ">;"
    }
.end annotation


# static fields
.field public static final STORE_FILE:Ljava/lang/String; = "NRPayloadStore"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    const-string v0, "NRPayloadStore"

    invoke-direct {p0, p1, v0}, Lcom/newrelic/agent/android/stores/SharedPrefsPayloadStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "storeFilename"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lcom/newrelic/agent/android/stores/SharedPrefsStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method private toStringSet(Lcom/newrelic/agent/android/payload/Payload;)Ljava/util/LinkedHashSet;
    .locals 2
    .param p1, "payload"    # Lcom/newrelic/agent/android/payload/Payload;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newrelic/agent/android/payload/Payload;",
            ")",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    new-instance v0, Ljava/util/LinkedHashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 79
    .local v0, "stringSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/newrelic/agent/android/payload/Payload;->asJsonMeta()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/stores/SharedPrefsPayloadStore;->encodePayload(Lcom/newrelic/agent/android/payload/Payload;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 82
    return-object v0
.end method


# virtual methods
.method protected decodePayload(Ljava/lang/String;)[B
    .locals 1
    .param p1, "encodedString"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/stores/SharedPrefsPayloadStore;->decodeStringToBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected decodePayloadToString([B)Ljava/lang/String;
    .locals 1
    .param p1, "decodedString"    # [B

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/stores/SharedPrefsPayloadStore;->decodeBytesToString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lcom/newrelic/agent/android/payload/Payload;)V
    .locals 1
    .param p1, "payload"    # Lcom/newrelic/agent/android/payload/Payload;

    .prologue
    .line 54
    invoke-virtual {p1}, Lcom/newrelic/agent/android/payload/Payload;->getUuid()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->delete(Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public bridge synthetic delete(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 16
    check-cast p1, Lcom/newrelic/agent/android/payload/Payload;

    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/stores/SharedPrefsPayloadStore;->delete(Lcom/newrelic/agent/android/payload/Payload;)V

    return-void
.end method

.method protected encodePayload(Lcom/newrelic/agent/android/payload/Payload;)Ljava/lang/String;
    .locals 1
    .param p1, "payload"    # Lcom/newrelic/agent/android/payload/Payload;

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/newrelic/agent/android/payload/Payload;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/newrelic/agent/android/stores/SharedPrefsPayloadStore;->encodeBytes([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fetchAll()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newrelic/agent/android/payload/Payload;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v4, "payloads":Ljava/util/List;, "Ljava/util/List<Lcom/newrelic/agent/android/payload/Payload;>;"
    invoke-super {p0}, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->fetchAll()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 37
    .local v2, "object":Ljava/lang/Object;
    instance-of v6, v2, Ljava/util/HashSet;

    if-eqz v6, :cond_0

    .line 39
    :try_start_0
    move-object v0, v2

    check-cast v0, Ljava/util/HashSet;

    move-object v5, v0

    .line 40
    .local v5, "stringSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 41
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v8, Lcom/newrelic/com/google/gson/Gson;

    invoke-direct {v8}, Lcom/newrelic/com/google/gson/Gson;-><init>()V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-class v9, Lcom/newrelic/agent/android/payload/Payload;

    invoke-virtual {v8, v6, v9}, Lcom/newrelic/com/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/newrelic/agent/android/payload/Payload;

    .line 42
    .local v3, "payload":Lcom/newrelic/agent/android/payload/Payload;
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/newrelic/agent/android/stores/SharedPrefsPayloadStore;->decodePayload(Ljava/lang/String;)[B

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/newrelic/agent/android/payload/Payload;->putBytes([B)V

    .line 43
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/newrelic/com/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 44
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "payload":Lcom/newrelic/agent/android/payload/Payload;
    .end local v5    # "stringSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v6

    goto :goto_0

    .line 49
    .end local v2    # "object":Ljava/lang/Object;
    :cond_1
    return-object v4
.end method

.method public store(Lcom/newrelic/agent/android/payload/Payload;)Z
    .locals 2
    .param p1, "payload"    # Lcom/newrelic/agent/android/payload/Payload;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/stores/SharedPrefsPayloadStore;->toStringSet(Lcom/newrelic/agent/android/payload/Payload;)Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 29
    .local v0, "stringSet":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/newrelic/agent/android/payload/Payload;->getUuid()Ljava/lang/String;

    move-result-object v1

    invoke-super {p0, v1, v0}, Lcom/newrelic/agent/android/stores/SharedPrefsStore;->store(Ljava/lang/String;Ljava/util/Set;)Z

    move-result v1

    return v1
.end method

.method public bridge synthetic store(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 16
    check-cast p1, Lcom/newrelic/agent/android/payload/Payload;

    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/stores/SharedPrefsPayloadStore;->store(Lcom/newrelic/agent/android/payload/Payload;)Z

    move-result v0

    return v0
.end method
