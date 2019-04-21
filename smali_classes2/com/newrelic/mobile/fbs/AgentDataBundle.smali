.class public final Lcom/newrelic/mobile/fbs/AgentDataBundle;
.super Lcom/newrelic/com/google/flatbuffers/Table;
.source "AgentDataBundle.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/newrelic/com/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addAgentData(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "agentDataOffset"    # I

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, v0, p1, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createAgentDataBundle(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)I
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "agentDataOffset"    # I

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    .line 24
    invoke-static {p0, p1}, Lcom/newrelic/mobile/fbs/AgentDataBundle;->addAgentData(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 25
    invoke-static {p0}, Lcom/newrelic/mobile/fbs/AgentDataBundle;->endAgentDataBundle(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static createAgentDataVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;[I)I
    .locals 3
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .prologue
    const/4 v2, 0x4

    .line 30
    array-length v1, p1

    invoke-virtual {p0, v2, v1, v2}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    array-length v1, p1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->endVector()I

    move-result v1

    return v1
.end method

.method public static endAgentDataBundle(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)I
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    .line 34
    .local v0, "o":I
    return v0
.end method

.method public static finishAgentDataBundleBuffer(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 0
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "offset"    # I

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    return-void
.end method

.method public static getRootAsAgentDataBundle(Ljava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/AgentDataBundle;
    .locals 1
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 12
    new-instance v0, Lcom/newrelic/mobile/fbs/AgentDataBundle;

    invoke-direct {v0}, Lcom/newrelic/mobile/fbs/AgentDataBundle;-><init>()V

    invoke-static {p0, v0}, Lcom/newrelic/mobile/fbs/AgentDataBundle;->getRootAsAgentDataBundle(Ljava/nio/ByteBuffer;Lcom/newrelic/mobile/fbs/AgentDataBundle;)Lcom/newrelic/mobile/fbs/AgentDataBundle;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsAgentDataBundle(Ljava/nio/ByteBuffer;Lcom/newrelic/mobile/fbs/AgentDataBundle;)Lcom/newrelic/mobile/fbs/AgentDataBundle;
    .locals 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lcom/newrelic/mobile/fbs/AgentDataBundle;

    .prologue
    .line 13
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0, p0}, Lcom/newrelic/mobile/fbs/AgentDataBundle;->__assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/AgentDataBundle;

    move-result-object v0

    return-object v0
.end method

.method public static startAgentDataBundle(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;

    .prologue
    .line 28
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method

.method public static startAgentDataVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .prologue
    const/4 v0, 0x4

    .line 31
    invoke-virtual {p0, v0, p1, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/AgentDataBundle;
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/newrelic/mobile/fbs/AgentDataBundle;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 14
    iput p1, p0, Lcom/newrelic/mobile/fbs/AgentDataBundle;->bb_pos:I

    iput-object p2, p0, Lcom/newrelic/mobile/fbs/AgentDataBundle;->bb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public agentData(I)Lcom/newrelic/mobile/fbs/AgentData;
    .locals 1
    .param p1, "j"    # I

    .prologue
    .line 17
    new-instance v0, Lcom/newrelic/mobile/fbs/AgentData;

    invoke-direct {v0}, Lcom/newrelic/mobile/fbs/AgentData;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/newrelic/mobile/fbs/AgentDataBundle;->agentData(Lcom/newrelic/mobile/fbs/AgentData;I)Lcom/newrelic/mobile/fbs/AgentData;

    move-result-object v0

    return-object v0
.end method

.method public agentData(Lcom/newrelic/mobile/fbs/AgentData;I)Lcom/newrelic/mobile/fbs/AgentData;
    .locals 3
    .param p1, "obj"    # Lcom/newrelic/mobile/fbs/AgentData;
    .param p2, "j"    # I

    .prologue
    .line 18
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/AgentDataBundle;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/mobile/fbs/AgentDataBundle;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/AgentDataBundle;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lcom/newrelic/mobile/fbs/AgentDataBundle;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/newrelic/mobile/fbs/AgentData;->__assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/AgentData;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public agentDataLength()I
    .locals 2

    .prologue
    .line 19
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/AgentDataBundle;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/mobile/fbs/AgentDataBundle;->__vector_len(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
