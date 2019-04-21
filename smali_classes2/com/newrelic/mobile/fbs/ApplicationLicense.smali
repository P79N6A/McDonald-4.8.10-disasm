.class public final Lcom/newrelic/mobile/fbs/ApplicationLicense;
.super Lcom/newrelic/com/google/flatbuffers/Table;
.source "ApplicationLicense.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/newrelic/com/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static __lookup_by_key(ILjava/lang/String;Ljava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/ApplicationLicense;
    .locals 8
    .param p0, "vectorLocation"    # I
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 49
    sget-object v6, Lcom/newrelic/com/google/flatbuffers/Table;->UTF8_CHARSET:Ljava/lang/ThreadLocal;

    invoke-virtual {v6}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/nio/charset/Charset;

    invoke-virtual {p1, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 50
    .local v0, "byteKey":[B
    add-int/lit8 v6, p0, -0x4

    invoke-virtual {p2, v6}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    .line 51
    .local v3, "span":I
    const/4 v4, 0x0

    .line 52
    .local v4, "start":I
    :goto_0
    if-eqz v3, :cond_2

    .line 53
    div-int/lit8 v2, v3, 0x2

    .line 54
    .local v2, "middle":I
    add-int v6, v4, v2

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v6, p0

    invoke-static {v6, p2}, Lcom/newrelic/mobile/fbs/ApplicationLicense;->__indirect(ILjava/nio/ByteBuffer;)I

    move-result v5

    .line 55
    .local v5, "tableOffset":I
    const/4 v6, 0x4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    array-length v7, v7

    sub-int/2addr v7, v5

    invoke-static {v6, v7, p2}, Lcom/newrelic/mobile/fbs/ApplicationLicense;->__offset(IILjava/nio/ByteBuffer;)I

    move-result v6

    invoke-static {v6, v0, p2}, Lcom/newrelic/mobile/fbs/ApplicationLicense;->compareStrings(I[BLjava/nio/ByteBuffer;)I

    move-result v1

    .line 56
    .local v1, "comp":I
    if-lez v1, :cond_0

    .line 57
    move v3, v2

    goto :goto_0

    .line 58
    :cond_0
    if-gez v1, :cond_1

    .line 59
    add-int/lit8 v2, v2, 0x1

    .line 60
    add-int/2addr v4, v2

    .line 61
    sub-int/2addr v3, v2

    goto :goto_0

    .line 63
    :cond_1
    new-instance v6, Lcom/newrelic/mobile/fbs/ApplicationLicense;

    invoke-direct {v6}, Lcom/newrelic/mobile/fbs/ApplicationLicense;-><init>()V

    invoke-virtual {v6, v5, p2}, Lcom/newrelic/mobile/fbs/ApplicationLicense;->__assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/ApplicationLicense;

    move-result-object v6

    .line 66
    .end local v1    # "comp":I
    .end local v2    # "middle":I
    .end local v5    # "tableOffset":I
    :goto_1
    return-object v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public static addAccountId(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;J)V
    .locals 7
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "accountId"    # J

    .prologue
    .line 37
    const/4 v1, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addLong(IJJ)V

    return-void
.end method

.method public static addClusterAgentId(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;J)V
    .locals 7
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "clusterAgentId"    # J

    .prologue
    .line 38
    const/4 v1, 0x2

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addLong(IJJ)V

    return-void
.end method

.method public static addLicenseKey(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "licenseKeyOffset"    # I

    .prologue
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, v0, p1, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createApplicationLicense(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;IJJ)I
    .locals 2
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "licenseKeyOffset"    # I
    .param p2, "accountId"    # J
    .param p4, "clusterAgentId"    # J

    .prologue
    .line 28
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    .line 29
    invoke-static {p0, p4, p5}, Lcom/newrelic/mobile/fbs/ApplicationLicense;->addClusterAgentId(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;J)V

    .line 30
    invoke-static {p0, p2, p3}, Lcom/newrelic/mobile/fbs/ApplicationLicense;->addAccountId(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;J)V

    .line 31
    invoke-static {p0, p1}, Lcom/newrelic/mobile/fbs/ApplicationLicense;->addLicenseKey(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 32
    invoke-static {p0}, Lcom/newrelic/mobile/fbs/ApplicationLicense;->endApplicationLicense(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static endApplicationLicense(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)I
    .locals 2
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    .line 41
    .local v0, "o":I
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->required(II)V

    .line 42
    return v0
.end method

.method public static getRootAsApplicationLicense(Ljava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/ApplicationLicense;
    .locals 1
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 12
    new-instance v0, Lcom/newrelic/mobile/fbs/ApplicationLicense;

    invoke-direct {v0}, Lcom/newrelic/mobile/fbs/ApplicationLicense;-><init>()V

    invoke-static {p0, v0}, Lcom/newrelic/mobile/fbs/ApplicationLicense;->getRootAsApplicationLicense(Ljava/nio/ByteBuffer;Lcom/newrelic/mobile/fbs/ApplicationLicense;)Lcom/newrelic/mobile/fbs/ApplicationLicense;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsApplicationLicense(Ljava/nio/ByteBuffer;Lcom/newrelic/mobile/fbs/ApplicationLicense;)Lcom/newrelic/mobile/fbs/ApplicationLicense;
    .locals 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lcom/newrelic/mobile/fbs/ApplicationLicense;

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

    invoke-virtual {p1, v0, p0}, Lcom/newrelic/mobile/fbs/ApplicationLicense;->__assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/ApplicationLicense;

    move-result-object v0

    return-object v0
.end method

.method public static startApplicationLicense(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;

    .prologue
    .line 35
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/ApplicationLicense;
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/newrelic/mobile/fbs/ApplicationLicense;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 14
    iput p1, p0, Lcom/newrelic/mobile/fbs/ApplicationLicense;->bb_pos:I

    iput-object p2, p0, Lcom/newrelic/mobile/fbs/ApplicationLicense;->bb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public accountId()J
    .locals 4

    .prologue
    .line 19
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/ApplicationLicense;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newrelic/mobile/fbs/ApplicationLicense;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/newrelic/mobile/fbs/ApplicationLicense;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public clusterAgentId()J
    .locals 4

    .prologue
    .line 21
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/ApplicationLicense;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newrelic/mobile/fbs/ApplicationLicense;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/newrelic/mobile/fbs/ApplicationLicense;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method protected keysCompare(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/nio/ByteBuffer;)I
    .locals 3
    .param p1, "o1"    # Ljava/lang/Integer;
    .param p2, "o2"    # Ljava/lang/Integer;
    .param p3, "_bb"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v2, 0x4

    .line 46
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v2, v0, p3}, Lcom/newrelic/mobile/fbs/ApplicationLicense;->__offset(IILjava/nio/ByteBuffer;)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v2, v1, p3}, Lcom/newrelic/mobile/fbs/ApplicationLicense;->__offset(IILjava/nio/ByteBuffer;)I

    move-result v1

    invoke-static {v0, v1, p3}, Lcom/newrelic/mobile/fbs/ApplicationLicense;->compareStrings(IILjava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public licenseKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 17
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/ApplicationLicense;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/newrelic/mobile/fbs/ApplicationLicense;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/ApplicationLicense;->__string(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public licenseKeyAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 18
    const/4 v0, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/mobile/fbs/ApplicationLicense;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public mutateAccountId(J)Z
    .locals 3
    .param p1, "accountId"    # J

    .prologue
    .line 20
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/ApplicationLicense;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newrelic/mobile/fbs/ApplicationLicense;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/newrelic/mobile/fbs/ApplicationLicense;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mutateClusterAgentId(J)Z
    .locals 3
    .param p1, "clusterAgentId"    # J

    .prologue
    .line 22
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/ApplicationLicense;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newrelic/mobile/fbs/ApplicationLicense;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/newrelic/mobile/fbs/ApplicationLicense;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
