.class public final Lcom/newrelic/mobile/fbs/RequestInformation;
.super Lcom/newrelic/com/google/flatbuffers/Table;
.source "RequestInformation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/newrelic/com/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addRequestAddress(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;J)V
    .locals 3
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "requestAddress"    # J

    .prologue
    .line 33
    const/4 v0, 0x1

    long-to-int v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addInt(III)V

    return-void
.end method

.method public static addRequestTimestampMs(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;J)V
    .locals 7
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "requestTimestampMs"    # J

    .prologue
    .line 32
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addLong(IJJ)V

    return-void
.end method

.method public static createRequestInformation(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;JJ)I
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "requestTimestampMs"    # J
    .param p3, "requestAddress"    # J

    .prologue
    .line 25
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    .line 26
    invoke-static {p0, p1, p2}, Lcom/newrelic/mobile/fbs/RequestInformation;->addRequestTimestampMs(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;J)V

    .line 27
    invoke-static {p0, p3, p4}, Lcom/newrelic/mobile/fbs/RequestInformation;->addRequestAddress(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;J)V

    .line 28
    invoke-static {p0}, Lcom/newrelic/mobile/fbs/RequestInformation;->endRequestInformation(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static endRequestInformation(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)I
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    .line 36
    .local v0, "o":I
    return v0
.end method

.method public static getRootAsRequestInformation(Ljava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/RequestInformation;
    .locals 1
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 12
    new-instance v0, Lcom/newrelic/mobile/fbs/RequestInformation;

    invoke-direct {v0}, Lcom/newrelic/mobile/fbs/RequestInformation;-><init>()V

    invoke-static {p0, v0}, Lcom/newrelic/mobile/fbs/RequestInformation;->getRootAsRequestInformation(Ljava/nio/ByteBuffer;Lcom/newrelic/mobile/fbs/RequestInformation;)Lcom/newrelic/mobile/fbs/RequestInformation;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsRequestInformation(Ljava/nio/ByteBuffer;Lcom/newrelic/mobile/fbs/RequestInformation;)Lcom/newrelic/mobile/fbs/RequestInformation;
    .locals 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lcom/newrelic/mobile/fbs/RequestInformation;

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

    invoke-virtual {p1, v0, p0}, Lcom/newrelic/mobile/fbs/RequestInformation;->__assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/RequestInformation;

    move-result-object v0

    return-object v0
.end method

.method public static startRequestInformation(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;

    .prologue
    .line 31
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/RequestInformation;
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/newrelic/mobile/fbs/RequestInformation;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 14
    iput p1, p0, Lcom/newrelic/mobile/fbs/RequestInformation;->bb_pos:I

    iput-object p2, p0, Lcom/newrelic/mobile/fbs/RequestInformation;->bb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public mutateRequestAddress(J)Z
    .locals 5
    .param p1, "requestAddress"    # J

    .prologue
    .line 20
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/RequestInformation;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newrelic/mobile/fbs/RequestInformation;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/newrelic/mobile/fbs/RequestInformation;->bb_pos:I

    add-int/2addr v2, v0

    long-to-int v3, p1

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mutateRequestTimestampMs(J)Z
    .locals 3
    .param p1, "requestTimestampMs"    # J

    .prologue
    .line 18
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/RequestInformation;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newrelic/mobile/fbs/RequestInformation;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/newrelic/mobile/fbs/RequestInformation;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestAddress()J
    .locals 6

    .prologue
    .line 19
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/RequestInformation;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newrelic/mobile/fbs/RequestInformation;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/newrelic/mobile/fbs/RequestInformation;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    int-to-long v2, v1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public requestTimestampMs()J
    .locals 4

    .prologue
    .line 17
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/RequestInformation;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newrelic/mobile/fbs/RequestInformation;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/newrelic/mobile/fbs/RequestInformation;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method
