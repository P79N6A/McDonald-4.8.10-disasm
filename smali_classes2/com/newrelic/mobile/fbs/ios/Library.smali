.class public final Lcom/newrelic/mobile/fbs/ios/Library;
.super Lcom/newrelic/com/google/flatbuffers/Table;
.source "Library.java"


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
    .line 46
    const/4 v1, 0x2

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addLong(IJJ)V

    return-void
.end method

.method public static addArch(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 3
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "arch"    # I

    .prologue
    .line 48
    const/4 v0, 0x4

    int-to-byte v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addByte(IBI)V

    return-void
.end method

.method public static addUserLibrary(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;Z)V
    .locals 2
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "userLibrary"    # Z

    .prologue
    .line 47
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addBoolean(IZZ)V

    return-void
.end method

.method public static addUuidHigh(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;J)V
    .locals 7
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "uuidHigh"    # J

    .prologue
    .line 45
    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addLong(IJJ)V

    return-void
.end method

.method public static addUuidLow(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;J)V
    .locals 7
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "uuidLow"    # J

    .prologue
    .line 44
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addLong(IJJ)V

    return-void
.end method

.method public static createLibrary(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;JJJZI)I
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "uuidLow"    # J
    .param p3, "uuidHigh"    # J
    .param p5, "address"    # J
    .param p7, "userLibrary"    # Z
    .param p8, "arch"    # I

    .prologue
    .line 34
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    .line 35
    invoke-static {p0, p5, p6}, Lcom/newrelic/mobile/fbs/ios/Library;->addAddress(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;J)V

    .line 36
    invoke-static {p0, p3, p4}, Lcom/newrelic/mobile/fbs/ios/Library;->addUuidHigh(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;J)V

    .line 37
    invoke-static {p0, p1, p2}, Lcom/newrelic/mobile/fbs/ios/Library;->addUuidLow(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;J)V

    .line 38
    invoke-static {p0, p8}, Lcom/newrelic/mobile/fbs/ios/Library;->addArch(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 39
    invoke-static {p0, p7}, Lcom/newrelic/mobile/fbs/ios/Library;->addUserLibrary(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;Z)V

    .line 40
    invoke-static {p0}, Lcom/newrelic/mobile/fbs/ios/Library;->endLibrary(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static endLibrary(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)I
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    .line 51
    .local v0, "o":I
    return v0
.end method

.method public static finishLibraryBuffer(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 0
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "offset"    # I

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    return-void
.end method

.method public static getRootAsLibrary(Ljava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/ios/Library;
    .locals 1
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 12
    new-instance v0, Lcom/newrelic/mobile/fbs/ios/Library;

    invoke-direct {v0}, Lcom/newrelic/mobile/fbs/ios/Library;-><init>()V

    invoke-static {p0, v0}, Lcom/newrelic/mobile/fbs/ios/Library;->getRootAsLibrary(Ljava/nio/ByteBuffer;Lcom/newrelic/mobile/fbs/ios/Library;)Lcom/newrelic/mobile/fbs/ios/Library;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsLibrary(Ljava/nio/ByteBuffer;Lcom/newrelic/mobile/fbs/ios/Library;)Lcom/newrelic/mobile/fbs/ios/Library;
    .locals 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lcom/newrelic/mobile/fbs/ios/Library;

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

    invoke-virtual {p1, v0, p0}, Lcom/newrelic/mobile/fbs/ios/Library;->__assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/ios/Library;

    move-result-object v0

    return-object v0
.end method

.method public static startLibrary(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;

    .prologue
    .line 43
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/ios/Library;
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/newrelic/mobile/fbs/ios/Library;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 14
    iput p1, p0, Lcom/newrelic/mobile/fbs/ios/Library;->bb_pos:I

    iput-object p2, p0, Lcom/newrelic/mobile/fbs/ios/Library;->bb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public address()J
    .locals 4

    .prologue
    .line 21
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/ios/Library;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newrelic/mobile/fbs/ios/Library;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/newrelic/mobile/fbs/ios/Library;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public arch()I
    .locals 3

    .prologue
    .line 25
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/ios/Library;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newrelic/mobile/fbs/ios/Library;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/newrelic/mobile/fbs/ios/Library;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mutateAddress(J)Z
    .locals 3
    .param p1, "address"    # J

    .prologue
    .line 22
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/ios/Library;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newrelic/mobile/fbs/ios/Library;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/newrelic/mobile/fbs/ios/Library;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mutateArch(I)Z
    .locals 4
    .param p1, "arch"    # I

    .prologue
    .line 26
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/ios/Library;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newrelic/mobile/fbs/ios/Library;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/newrelic/mobile/fbs/ios/Library;->bb_pos:I

    add-int/2addr v2, v0

    int-to-byte v3, p1

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mutateUserLibrary(Z)Z
    .locals 5
    .param p1, "userLibrary"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 24
    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lcom/newrelic/mobile/fbs/ios/Library;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/newrelic/mobile/fbs/ios/Library;->bb:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/newrelic/mobile/fbs/ios/Library;->bb_pos:I

    add-int/2addr v4, v0

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    int-to-byte v1, v1

    invoke-virtual {v3, v4, v1}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    :goto_0
    return v2

    :cond_1
    move v2, v1

    goto :goto_0
.end method

.method public mutateUuidHigh(J)Z
    .locals 3
    .param p1, "uuidHigh"    # J

    .prologue
    .line 20
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/ios/Library;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newrelic/mobile/fbs/ios/Library;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/newrelic/mobile/fbs/ios/Library;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mutateUuidLow(J)Z
    .locals 3
    .param p1, "uuidLow"    # J

    .prologue
    .line 18
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/ios/Library;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newrelic/mobile/fbs/ios/Library;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/newrelic/mobile/fbs/ios/Library;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public userLibrary()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 23
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/newrelic/mobile/fbs/ios/Library;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/newrelic/mobile/fbs/ios/Library;->bb:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/newrelic/mobile/fbs/ios/Library;->bb_pos:I

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public uuidHigh()J
    .locals 4

    .prologue
    .line 19
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/ios/Library;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newrelic/mobile/fbs/ios/Library;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/newrelic/mobile/fbs/ios/Library;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public uuidLow()J
    .locals 4

    .prologue
    .line 17
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/ios/Library;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newrelic/mobile/fbs/ios/Library;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/newrelic/mobile/fbs/ios/Library;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method
