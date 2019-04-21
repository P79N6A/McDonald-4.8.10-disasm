.class public final Lcom/newrelic/mobile/fbs/hex/HandledException;
.super Lcom/newrelic/com/google/flatbuffers/Table;
.source "HandledException.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/newrelic/com/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addAppUuidHigh(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;J)V
    .locals 7
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "appUuidHigh"    # J

    .prologue
    .line 63
    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addLong(IJJ)V

    return-void
.end method

.method public static addAppUuidLow(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;J)V
    .locals 7
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "appUuidLow"    # J

    .prologue
    .line 62
    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addLong(IJJ)V

    return-void
.end method

.method public static addCause(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "causeOffset"    # I

    .prologue
    .line 68
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addLibraries(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "librariesOffset"    # I

    .prologue
    .line 72
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addMessage(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "messageOffset"    # I

    .prologue
    .line 67
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addName(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "nameOffset"    # I

    .prologue
    .line 66
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addSessionId(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "sessionIdOffset"    # I

    .prologue
    .line 64
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addThreads(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "threadsOffset"    # I

    .prologue
    .line 69
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addTimestampMs(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;J)V
    .locals 7
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "timestampMs"    # J

    .prologue
    .line 65
    const/4 v1, 0x3

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addLong(IJJ)V

    return-void
.end method

.method public static createHandledException(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;JJIJIIIII)I
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "appUuidLow"    # J
    .param p3, "appUuidHigh"    # J
    .param p5, "sessionIdOffset"    # I
    .param p6, "timestampMs"    # J
    .param p8, "nameOffset"    # I
    .param p9, "messageOffset"    # I
    .param p10, "causeOffset"    # I
    .param p11, "threadsOffset"    # I
    .param p12, "librariesOffset"    # I

    .prologue
    .line 48
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    .line 49
    invoke-static {p0, p6, p7}, Lcom/newrelic/mobile/fbs/hex/HandledException;->addTimestampMs(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;J)V

    .line 50
    invoke-static {p0, p3, p4}, Lcom/newrelic/mobile/fbs/hex/HandledException;->addAppUuidHigh(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;J)V

    .line 51
    invoke-static {p0, p1, p2}, Lcom/newrelic/mobile/fbs/hex/HandledException;->addAppUuidLow(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;J)V

    .line 52
    invoke-static {p0, p12}, Lcom/newrelic/mobile/fbs/hex/HandledException;->addLibraries(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 53
    invoke-static {p0, p11}, Lcom/newrelic/mobile/fbs/hex/HandledException;->addThreads(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 54
    invoke-static {p0, p10}, Lcom/newrelic/mobile/fbs/hex/HandledException;->addCause(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 55
    invoke-static {p0, p9}, Lcom/newrelic/mobile/fbs/hex/HandledException;->addMessage(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 56
    invoke-static {p0, p8}, Lcom/newrelic/mobile/fbs/hex/HandledException;->addName(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 57
    invoke-static {p0, p5}, Lcom/newrelic/mobile/fbs/hex/HandledException;->addSessionId(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 58
    invoke-static {p0}, Lcom/newrelic/mobile/fbs/hex/HandledException;->endHandledException(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static createLibrariesVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;[I)I
    .locals 3
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .prologue
    const/4 v2, 0x4

    .line 73
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

.method public static createThreadsVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;[I)I
    .locals 3
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .prologue
    const/4 v2, 0x4

    .line 70
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

.method public static endHandledException(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)I
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    .line 77
    .local v0, "o":I
    return v0
.end method

.method public static finishHandledExceptionBuffer(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 0
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "offset"    # I

    .prologue
    .line 79
    invoke-virtual {p0, p1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    return-void
.end method

.method public static getRootAsHandledException(Ljava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/hex/HandledException;
    .locals 1
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 12
    new-instance v0, Lcom/newrelic/mobile/fbs/hex/HandledException;

    invoke-direct {v0}, Lcom/newrelic/mobile/fbs/hex/HandledException;-><init>()V

    invoke-static {p0, v0}, Lcom/newrelic/mobile/fbs/hex/HandledException;->getRootAsHandledException(Ljava/nio/ByteBuffer;Lcom/newrelic/mobile/fbs/hex/HandledException;)Lcom/newrelic/mobile/fbs/hex/HandledException;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsHandledException(Ljava/nio/ByteBuffer;Lcom/newrelic/mobile/fbs/hex/HandledException;)Lcom/newrelic/mobile/fbs/hex/HandledException;
    .locals 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lcom/newrelic/mobile/fbs/hex/HandledException;

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

    invoke-virtual {p1, v0, p0}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/hex/HandledException;

    move-result-object v0

    return-object v0
.end method

.method public static startHandledException(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;

    .prologue
    .line 61
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method

.method public static startLibrariesVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .prologue
    const/4 v0, 0x4

    .line 74
    invoke-virtual {p0, v0, p1, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startThreadsVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .prologue
    const/4 v0, 0x4

    .line 71
    invoke-virtual {p0, v0, p1, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/hex/HandledException;
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 14
    iput p1, p0, Lcom/newrelic/mobile/fbs/hex/HandledException;->bb_pos:I

    iput-object p2, p0, Lcom/newrelic/mobile/fbs/hex/HandledException;->bb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public appUuidHigh()J
    .locals 4

    .prologue
    .line 19
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newrelic/mobile/fbs/hex/HandledException;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/newrelic/mobile/fbs/hex/HandledException;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public appUuidLow()J
    .locals 4

    .prologue
    .line 17
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newrelic/mobile/fbs/hex/HandledException;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/newrelic/mobile/fbs/hex/HandledException;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public cause()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/newrelic/mobile/fbs/hex/HandledException;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__string(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public causeAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 30
    const/16 v0, 0x10

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public libraries(I)Lcom/newrelic/mobile/fbs/ios/Library;
    .locals 1
    .param p1, "j"    # I

    .prologue
    .line 34
    new-instance v0, Lcom/newrelic/mobile/fbs/ios/Library;

    invoke-direct {v0}, Lcom/newrelic/mobile/fbs/ios/Library;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/newrelic/mobile/fbs/hex/HandledException;->libraries(Lcom/newrelic/mobile/fbs/ios/Library;I)Lcom/newrelic/mobile/fbs/ios/Library;

    move-result-object v0

    return-object v0
.end method

.method public libraries(Lcom/newrelic/mobile/fbs/ios/Library;I)Lcom/newrelic/mobile/fbs/ios/Library;
    .locals 3
    .param p1, "obj"    # Lcom/newrelic/mobile/fbs/ios/Library;
    .param p2, "j"    # I

    .prologue
    .line 35
    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lcom/newrelic/mobile/fbs/hex/HandledException;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/newrelic/mobile/fbs/ios/Library;->__assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/ios/Library;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public librariesLength()I
    .locals 2

    .prologue
    .line 36
    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__vector_len(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public message()Ljava/lang/String;
    .locals 2

    .prologue
    .line 27
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/newrelic/mobile/fbs/hex/HandledException;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__string(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public messageAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 28
    const/16 v0, 0xe

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public mutateAppUuidHigh(J)Z
    .locals 3
    .param p1, "appUuidHigh"    # J

    .prologue
    .line 20
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newrelic/mobile/fbs/hex/HandledException;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/newrelic/mobile/fbs/hex/HandledException;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mutateAppUuidLow(J)Z
    .locals 3
    .param p1, "appUuidLow"    # J

    .prologue
    .line 18
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newrelic/mobile/fbs/hex/HandledException;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/newrelic/mobile/fbs/hex/HandledException;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mutateTimestampMs(J)Z
    .locals 3
    .param p1, "timestampMs"    # J

    .prologue
    .line 24
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newrelic/mobile/fbs/hex/HandledException;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/newrelic/mobile/fbs/hex/HandledException;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public name()Ljava/lang/String;
    .locals 2

    .prologue
    .line 25
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/newrelic/mobile/fbs/hex/HandledException;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__string(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public nameAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 26
    const/16 v0, 0xc

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public sessionId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/newrelic/mobile/fbs/hex/HandledException;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__string(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sessionIdAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 22
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public threads(I)Lcom/newrelic/mobile/fbs/hex/Thread;
    .locals 1
    .param p1, "j"    # I

    .prologue
    .line 31
    new-instance v0, Lcom/newrelic/mobile/fbs/hex/Thread;

    invoke-direct {v0}, Lcom/newrelic/mobile/fbs/hex/Thread;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/newrelic/mobile/fbs/hex/HandledException;->threads(Lcom/newrelic/mobile/fbs/hex/Thread;I)Lcom/newrelic/mobile/fbs/hex/Thread;

    move-result-object v0

    return-object v0
.end method

.method public threads(Lcom/newrelic/mobile/fbs/hex/Thread;I)Lcom/newrelic/mobile/fbs/hex/Thread;
    .locals 3
    .param p1, "obj"    # Lcom/newrelic/mobile/fbs/hex/Thread;
    .param p2, "j"    # I

    .prologue
    .line 32
    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lcom/newrelic/mobile/fbs/hex/HandledException;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/newrelic/mobile/fbs/hex/Thread;->__assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/hex/Thread;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public threadsLength()I
    .locals 2

    .prologue
    .line 33
    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__vector_len(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public timestampMs()J
    .locals 4

    .prologue
    .line 23
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newrelic/mobile/fbs/hex/HandledException;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/newrelic/mobile/fbs/hex/HandledException;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method
