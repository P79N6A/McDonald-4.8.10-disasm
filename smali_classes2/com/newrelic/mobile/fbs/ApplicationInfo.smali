.class public final Lcom/newrelic/mobile/fbs/ApplicationInfo;
.super Lcom/newrelic/com/google/flatbuffers/Table;
.source "ApplicationInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/newrelic/com/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addAppVersion(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "appVersionOffset"    # I

    .prologue
    .line 42
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addAppVersionId(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;J)V
    .locals 7
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "appVersionId"    # J

    .prologue
    .line 43
    const/4 v1, 0x3

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-wide v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addLong(IJJ)V

    return-void
.end method

.method public static addApplicationLicense(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "applicationLicenseOffset"    # I

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0, p1, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addPlatform(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 3
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "platform"    # I

    .prologue
    .line 41
    const/4 v0, 0x1

    int-to-byte v1, p1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addByte(IBI)V

    return-void
.end method

.method public static createApplicationInfo(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;IIIJ)I
    .locals 2
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "applicationLicenseOffset"    # I
    .param p2, "platform"    # I
    .param p3, "appVersionOffset"    # I
    .param p4, "appVersionId"    # J

    .prologue
    .line 31
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    .line 32
    invoke-static {p0, p4, p5}, Lcom/newrelic/mobile/fbs/ApplicationInfo;->addAppVersionId(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;J)V

    .line 33
    invoke-static {p0, p3}, Lcom/newrelic/mobile/fbs/ApplicationInfo;->addAppVersion(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 34
    invoke-static {p0, p1}, Lcom/newrelic/mobile/fbs/ApplicationInfo;->addApplicationLicense(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 35
    invoke-static {p0, p2}, Lcom/newrelic/mobile/fbs/ApplicationInfo;->addPlatform(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 36
    invoke-static {p0}, Lcom/newrelic/mobile/fbs/ApplicationInfo;->endApplicationInfo(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static endApplicationInfo(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)I
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    .line 46
    .local v0, "o":I
    return v0
.end method

.method public static getRootAsApplicationInfo(Ljava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/ApplicationInfo;
    .locals 1
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 12
    new-instance v0, Lcom/newrelic/mobile/fbs/ApplicationInfo;

    invoke-direct {v0}, Lcom/newrelic/mobile/fbs/ApplicationInfo;-><init>()V

    invoke-static {p0, v0}, Lcom/newrelic/mobile/fbs/ApplicationInfo;->getRootAsApplicationInfo(Ljava/nio/ByteBuffer;Lcom/newrelic/mobile/fbs/ApplicationInfo;)Lcom/newrelic/mobile/fbs/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsApplicationInfo(Ljava/nio/ByteBuffer;Lcom/newrelic/mobile/fbs/ApplicationInfo;)Lcom/newrelic/mobile/fbs/ApplicationInfo;
    .locals 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lcom/newrelic/mobile/fbs/ApplicationInfo;

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

    invoke-virtual {p1, v0, p0}, Lcom/newrelic/mobile/fbs/ApplicationInfo;->__assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public static startApplicationInfo(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;

    .prologue
    .line 39
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/ApplicationInfo;
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/newrelic/mobile/fbs/ApplicationInfo;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 14
    iput p1, p0, Lcom/newrelic/mobile/fbs/ApplicationInfo;->bb_pos:I

    iput-object p2, p0, Lcom/newrelic/mobile/fbs/ApplicationInfo;->bb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public appVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 21
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/ApplicationInfo;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/newrelic/mobile/fbs/ApplicationInfo;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/ApplicationInfo;->__string(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public appVersionAsByteBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 22
    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/newrelic/mobile/fbs/ApplicationInfo;->__vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public appVersionId()J
    .locals 4

    .prologue
    .line 23
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/ApplicationInfo;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newrelic/mobile/fbs/ApplicationInfo;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/newrelic/mobile/fbs/ApplicationInfo;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public applicationLicense()Lcom/newrelic/mobile/fbs/ApplicationLicense;
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/newrelic/mobile/fbs/ApplicationLicense;

    invoke-direct {v0}, Lcom/newrelic/mobile/fbs/ApplicationLicense;-><init>()V

    invoke-virtual {p0, v0}, Lcom/newrelic/mobile/fbs/ApplicationInfo;->applicationLicense(Lcom/newrelic/mobile/fbs/ApplicationLicense;)Lcom/newrelic/mobile/fbs/ApplicationLicense;

    move-result-object v0

    return-object v0
.end method

.method public applicationLicense(Lcom/newrelic/mobile/fbs/ApplicationLicense;)Lcom/newrelic/mobile/fbs/ApplicationLicense;
    .locals 3
    .param p1, "obj"    # Lcom/newrelic/mobile/fbs/ApplicationLicense;

    .prologue
    .line 18
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/ApplicationInfo;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/newrelic/mobile/fbs/ApplicationInfo;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/ApplicationInfo;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lcom/newrelic/mobile/fbs/ApplicationInfo;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/newrelic/mobile/fbs/ApplicationLicense;->__assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/ApplicationLicense;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mutateAppVersionId(J)Z
    .locals 3
    .param p1, "appVersionId"    # J

    .prologue
    .line 24
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/ApplicationInfo;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newrelic/mobile/fbs/ApplicationInfo;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/newrelic/mobile/fbs/ApplicationInfo;->bb_pos:I

    add-int/2addr v2, v0

    invoke-virtual {v1, v2, p1, p2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mutatePlatform(I)Z
    .locals 4
    .param p1, "platform"    # I

    .prologue
    .line 20
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/ApplicationInfo;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newrelic/mobile/fbs/ApplicationInfo;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/newrelic/mobile/fbs/ApplicationInfo;->bb_pos:I

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

.method public platform()I
    .locals 3

    .prologue
    .line 19
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/ApplicationInfo;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/newrelic/mobile/fbs/ApplicationInfo;->bb:Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/newrelic/mobile/fbs/ApplicationInfo;->bb_pos:I

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
