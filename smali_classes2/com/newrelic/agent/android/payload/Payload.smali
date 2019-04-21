.class public Lcom/newrelic/agent/android/payload/Payload;
.super Ljava/lang/Object;
.source "Payload.java"


# instance fields
.field private isPersistable:Z

.field private payload:Ljava/nio/ByteBuffer;

.field private final timestamp:J

.field private final uuid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-boolean v2, p0, Lcom/newrelic/agent/android/payload/Payload;->isPersistable:Z

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/newrelic/agent/android/payload/Payload;->timestamp:J

    .line 18
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/payload/Payload;->uuid:Ljava/lang/String;

    .line 19
    iput-boolean v2, p0, Lcom/newrelic/agent/android/payload/Payload;->isPersistable:Z

    .line 20
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "bytes"    # [B

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/newrelic/agent/android/payload/Payload;-><init>()V

    .line 24
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/payload/Payload;->payload:Ljava/nio/ByteBuffer;

    .line 25
    return-void
.end method


# virtual methods
.method public asJsonMeta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/newrelic/agent/android/payload/Payload;->asJsonObject()Lcom/newrelic/com/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/com/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asJsonObject()Lcom/newrelic/com/google/gson/JsonObject;
    .locals 4

    .prologue
    .line 64
    new-instance v0, Lcom/newrelic/com/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/newrelic/com/google/gson/JsonObject;-><init>()V

    .line 65
    .local v0, "jsonObj":Lcom/newrelic/com/google/gson/JsonObject;
    const-string v1, "timestamp"

    iget-wide v2, p0, Lcom/newrelic/agent/android/payload/Payload;->timestamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lcom/newrelic/agent/android/util/SafeJsonPrimitive;->factory(Ljava/lang/Number;)Lcom/newrelic/com/google/gson/JsonPrimitive;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 66
    const-string v1, "uuid"

    iget-object v2, p0, Lcom/newrelic/agent/android/payload/Payload;->uuid:Ljava/lang/String;

    invoke-static {v2}, Lcom/newrelic/agent/android/util/SafeJsonPrimitive;->factory(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonPrimitive;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/newrelic/com/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;)V

    .line 67
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 57
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/newrelic/agent/android/payload/Payload;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/newrelic/agent/android/payload/Payload;->uuid:Ljava/lang/String;

    check-cast p1, Lcom/newrelic/agent/android/payload/Payload;

    .end local p1    # "object":Ljava/lang/Object;
    iget-object v1, p1, Lcom/newrelic/agent/android/payload/Payload;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 60
    :goto_0
    return v0

    .restart local p1    # "object":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBytes()[B
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/newrelic/agent/android/payload/Payload;->payload:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 32
    iget-wide v0, p0, Lcom/newrelic/agent/android/payload/Payload;->timestamp:J

    return-wide v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/newrelic/agent/android/payload/Payload;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public isPersisted()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/newrelic/agent/android/payload/Payload;->isPersistable:Z

    return v0
.end method

.method public isStale(J)Z
    .locals 5
    .param p1, "ttl"    # J

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/newrelic/agent/android/payload/Payload;->timestamp:J

    add-long/2addr v0, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putBytes([B)V
    .locals 1
    .param p1, "payloadBytes"    # [B

    .prologue
    .line 44
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/payload/Payload;->payload:Ljava/nio/ByteBuffer;

    .line 45
    return-void
.end method

.method public setPersisted(Z)V
    .locals 0
    .param p1, "isPersistable"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/newrelic/agent/android/payload/Payload;->isPersistable:Z

    .line 49
    return-void
.end method
