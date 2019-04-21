.class public final Lcom/newrelic/mobile/fbs/hex/Frame;
.super Lcom/newrelic/com/google/flatbuffers/Table;
.source "Frame.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/newrelic/com/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addAddress(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;J)V
    .locals 7
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "address"    # J

    .prologue
    .line 53
    const/4 v1, 0x5

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addLong(IJJ)V

    return-void
.end method

.method public static addClassName(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "classNameOffset"    # I

    .prologue
    .line 49
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addFileName(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "fileNameOffset"    # I

    .prologue
    .line 51
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addLineNumber(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;J)V
    .locals 7
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "lineNumber"    # J

    .prologue
    .line 52
    const/4 v1, 0x4

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addLong(IJJ)V

    return-void
.end method

.method public static addMethodName(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "methodNameOffset"    # I

    .prologue
    .line 50
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addValue(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "valueOffset"    # I

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0, p1, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createFrame(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;IIIIJJ)I
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "valueOffset"    # I
    .param p2, "classNameOffset"    # I
    .param p3, "methodNameOffset"    # I
    .param p4, "fileNameOffset"    # I
    .param p5, "lineNumber"    # J
    .param p7, "address"    # J

    .prologue
    .line 37
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    .line 38
    invoke-static {p0, p7, p8}, Lcom/newrelic/mobile/fbs/hex/Frame;->addAddress(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;J)V

    .line 39
    invoke-static {p0, p5, p6}, Lcom/newrelic/mobile/fbs/hex/Frame;->addLineNumber(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;J)V

    .line 40
    invoke-static {p0, p4}, Lcom/newrelic/mobile/fbs/hex/Frame;->addFileName(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 41
    invoke-static {p0, p3}, Lcom/newrelic/mobile/fbs/hex/Frame;->addMethodName(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 42
    invoke-static {p0, p2}, Lcom/newrelic/mobile/fbs/hex/Frame;->addClassName(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 43
    invoke-static {p0, p1}, Lcom/newrelic/mobile/fbs/hex/Frame;->addValue(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 44
    invoke-static {p0}, Lcom/newrelic/mobile/fbs/hex/Frame;->endFrame(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static endFrame(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)I
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    .line 56
    .local v0, "o":I
    return v0
.end method

.method public static getRootAsFrame(Ljava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/hex/Frame;
    .locals 1
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 12
    new-instance v0, Lcom/newrelic/mobile/fbs/hex/Frame;

    invoke-direct {v0}, Lcom/newrelic/mobile/fbs/hex/Frame;-><init>()V

    invoke-static {p0, v0}, Lcom/newrelic/mobile/fbs/hex/Frame;->getRootAsFrame(Ljava/nio/ByteBuffer;Lcom/newrelic/mobile/fbs/hex/Frame;)Lcom/newrelic/mobile/fbs/hex/Frame;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsFrame(Ljava/nio/ByteBuffer;Lcom/newrelic/mobile/fbs/hex/Frame;)Lcom/newrelic/mobile/fbs/hex/Frame;
    .locals 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lcom/newrelic/mobile/fbs/hex/Frame;

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

    invoke-virtual {p1, v0, p0}, Lcom/newrelic/mobile/fbs/hex/Frame;->__assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/hex/Frame;

    move-result-object v0

    return-object v0
.end method

.method public static startFrame(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;

    .prologue
    .line 47
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/hex/Frame;
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/newrelic/mobile/fbs/hex/Frame;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 14
    iput p1, p0, Lcom/newrelic/mobile/fbs/hex/Frame;->bb_pos:I

    iput-object p2, p0, Lcom/newrelic/mobile/fbs/hex/Frame;->bb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public address()J
    .locals 4

    .prologue
    .line 27
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/Frame;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newrelic/mobile/fbs/hex/Frame;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/newrelic/mobile/fbs/hex/Frame;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public className()Ljava/lang/String;
    .locals 2

    .prologue
    .line 19
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/Frame;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/newrelic/mobile/fbs/hex/Frame;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/Frame;->__string(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public classNameAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 20
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/mobile/fbs/hex/Frame;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public fileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/Frame;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/newrelic/mobile/fbs/hex/Frame;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/Frame;->__string(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public fileNameAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 24
    const/16 v0, 0xa

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/mobile/fbs/hex/Frame;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public lineNumber()J
    .locals 4

    .prologue
    .line 25
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/Frame;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newrelic/mobile/fbs/hex/Frame;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/newrelic/mobile/fbs/hex/Frame;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public methodName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/Frame;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/newrelic/mobile/fbs/hex/Frame;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/Frame;->__string(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public methodNameAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 22
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/mobile/fbs/hex/Frame;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public mutateAddress(J)Z
    .locals 3
    .param p1, "address"    # J

    .prologue
    .line 28
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/Frame;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newrelic/mobile/fbs/hex/Frame;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/newrelic/mobile/fbs/hex/Frame;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mutateLineNumber(J)Z
    .locals 3
    .param p1, "lineNumber"    # J

    .prologue
    .line 26
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/Frame;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newrelic/mobile/fbs/hex/Frame;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/newrelic/mobile/fbs/hex/Frame;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public value()Ljava/lang/String;
    .locals 2

    .prologue
    .line 17
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/Frame;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/newrelic/mobile/fbs/hex/Frame;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/Frame;->__string(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public valueAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 18
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/mobile/fbs/hex/Frame;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
