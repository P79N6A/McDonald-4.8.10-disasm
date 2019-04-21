.class public final Lcom/newrelic/mobile/fbs/AgentData;
.super Lcom/newrelic/com/google/flatbuffers/Table;
.source "AgentData.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/newrelic/com/google/flatbuffers/Table;-><init>()V

    return-void
.end method

.method public static addApplicationInfo(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "applicationInfoOffset"    # I

    .prologue
    .line 76
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addBoolAttributes(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "boolAttributesOffset"    # I

    .prologue
    .line 70
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addDoubleAttributes(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "doubleAttributesOffset"    # I

    .prologue
    .line 67
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addHandledExceptions(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "handledExceptionsOffset"    # I

    .prologue
    .line 73
    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addLongAttributes(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "longAttributesOffset"    # I

    .prologue
    .line 64
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addRequestInfo(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 2
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "requestInfoOffset"    # I

    .prologue
    .line 77
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static addStringAttributes(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "stringAttributesOffset"    # I

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p0, v0, p1, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->addOffset(III)V

    return-void
.end method

.method public static createAgentData(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;IIIIIII)I
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "stringAttributesOffset"    # I
    .param p2, "longAttributesOffset"    # I
    .param p3, "doubleAttributesOffset"    # I
    .param p4, "boolAttributesOffset"    # I
    .param p5, "handledExceptionsOffset"    # I
    .param p6, "applicationInfoOffset"    # I
    .param p7, "requestInfoOffset"    # I

    .prologue
    .line 49
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    .line 50
    invoke-static {p0, p7}, Lcom/newrelic/mobile/fbs/AgentData;->addRequestInfo(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 51
    invoke-static {p0, p6}, Lcom/newrelic/mobile/fbs/AgentData;->addApplicationInfo(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 52
    invoke-static {p0, p5}, Lcom/newrelic/mobile/fbs/AgentData;->addHandledExceptions(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 53
    invoke-static {p0, p4}, Lcom/newrelic/mobile/fbs/AgentData;->addBoolAttributes(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 54
    invoke-static {p0, p3}, Lcom/newrelic/mobile/fbs/AgentData;->addDoubleAttributes(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 55
    invoke-static {p0, p2}, Lcom/newrelic/mobile/fbs/AgentData;->addLongAttributes(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 56
    invoke-static {p0, p1}, Lcom/newrelic/mobile/fbs/AgentData;->addStringAttributes(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 57
    invoke-static {p0}, Lcom/newrelic/mobile/fbs/AgentData;->endAgentData(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)I

    move-result v0

    return v0
.end method

.method public static createBoolAttributesVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;[I)I
    .locals 3
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .prologue
    const/4 v2, 0x4

    .line 71
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

.method public static createDoubleAttributesVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;[I)I
    .locals 3
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .prologue
    const/4 v2, 0x4

    .line 68
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

.method public static createHandledExceptionsVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;[I)I
    .locals 3
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .prologue
    const/4 v2, 0x4

    .line 74
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

.method public static createLongAttributesVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;[I)I
    .locals 3
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .prologue
    const/4 v2, 0x4

    .line 65
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

.method public static createStringAttributesVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;[I)I
    .locals 3
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "data"    # [I

    .prologue
    const/4 v2, 0x4

    .line 62
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

.method public static endAgentData(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)I
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->endObject()I

    move-result v0

    .line 80
    .local v0, "o":I
    return v0
.end method

.method public static getRootAsAgentData(Ljava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/AgentData;
    .locals 1
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 12
    new-instance v0, Lcom/newrelic/mobile/fbs/AgentData;

    invoke-direct {v0}, Lcom/newrelic/mobile/fbs/AgentData;-><init>()V

    invoke-static {p0, v0}, Lcom/newrelic/mobile/fbs/AgentData;->getRootAsAgentData(Ljava/nio/ByteBuffer;Lcom/newrelic/mobile/fbs/AgentData;)Lcom/newrelic/mobile/fbs/AgentData;

    move-result-object v0

    return-object v0
.end method

.method public static getRootAsAgentData(Ljava/nio/ByteBuffer;Lcom/newrelic/mobile/fbs/AgentData;)Lcom/newrelic/mobile/fbs/AgentData;
    .locals 2
    .param p0, "_bb"    # Ljava/nio/ByteBuffer;
    .param p1, "obj"    # Lcom/newrelic/mobile/fbs/AgentData;

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

    invoke-virtual {p1, v0, p0}, Lcom/newrelic/mobile/fbs/AgentData;->__assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/AgentData;

    move-result-object v0

    return-object v0
.end method

.method public static startAgentData(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)V
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;

    .prologue
    .line 60
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startObject(I)V

    return-void
.end method

.method public static startBoolAttributesVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .prologue
    const/4 v0, 0x4

    .line 72
    invoke-virtual {p0, v0, p1, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startDoubleAttributesVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .prologue
    const/4 v0, 0x4

    .line 69
    invoke-virtual {p0, v0, p1, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startHandledExceptionsVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .prologue
    const/4 v0, 0x4

    .line 75
    invoke-virtual {p0, v0, p1, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startLongAttributesVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .prologue
    const/4 v0, 0x4

    .line 66
    invoke-virtual {p0, v0, p1, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method

.method public static startStringAttributesVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V
    .locals 1
    .param p0, "builder"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .param p1, "numElems"    # I

    .prologue
    const/4 v0, 0x4

    .line 63
    invoke-virtual {p0, v0, p1, v0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->startVector(III)V

    return-void
.end method


# virtual methods
.method public __assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/AgentData;
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/newrelic/mobile/fbs/AgentData;->__init(ILjava/nio/ByteBuffer;)V

    return-object p0
.end method

.method public __init(ILjava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "_i"    # I
    .param p2, "_bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 14
    iput p1, p0, Lcom/newrelic/mobile/fbs/AgentData;->bb_pos:I

    iput-object p2, p0, Lcom/newrelic/mobile/fbs/AgentData;->bb:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public applicationInfo()Lcom/newrelic/mobile/fbs/ApplicationInfo;
    .locals 1

    .prologue
    .line 36
    new-instance v0, Lcom/newrelic/mobile/fbs/ApplicationInfo;

    invoke-direct {v0}, Lcom/newrelic/mobile/fbs/ApplicationInfo;-><init>()V

    invoke-virtual {p0, v0}, Lcom/newrelic/mobile/fbs/AgentData;->applicationInfo(Lcom/newrelic/mobile/fbs/ApplicationInfo;)Lcom/newrelic/mobile/fbs/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public applicationInfo(Lcom/newrelic/mobile/fbs/ApplicationInfo;)Lcom/newrelic/mobile/fbs/ApplicationInfo;
    .locals 3
    .param p1, "obj"    # Lcom/newrelic/mobile/fbs/ApplicationInfo;

    .prologue
    .line 37
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/newrelic/mobile/fbs/AgentData;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lcom/newrelic/mobile/fbs/AgentData;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/newrelic/mobile/fbs/ApplicationInfo;->__assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/ApplicationInfo;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public boolAttributes(I)Lcom/newrelic/mobile/fbs/BoolSessionAttribute;
    .locals 1
    .param p1, "j"    # I

    .prologue
    .line 29
    new-instance v0, Lcom/newrelic/mobile/fbs/BoolSessionAttribute;

    invoke-direct {v0}, Lcom/newrelic/mobile/fbs/BoolSessionAttribute;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/newrelic/mobile/fbs/AgentData;->boolAttributes(Lcom/newrelic/mobile/fbs/BoolSessionAttribute;I)Lcom/newrelic/mobile/fbs/BoolSessionAttribute;

    move-result-object v0

    return-object v0
.end method

.method public boolAttributes(Lcom/newrelic/mobile/fbs/BoolSessionAttribute;I)Lcom/newrelic/mobile/fbs/BoolSessionAttribute;
    .locals 3
    .param p1, "obj"    # Lcom/newrelic/mobile/fbs/BoolSessionAttribute;
    .param p2, "j"    # I

    .prologue
    .line 30
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/mobile/fbs/AgentData;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lcom/newrelic/mobile/fbs/AgentData;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/newrelic/mobile/fbs/BoolSessionAttribute;->__assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/BoolSessionAttribute;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public boolAttributesByKey(Ljava/lang/String;)Lcom/newrelic/mobile/fbs/BoolSessionAttribute;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 32
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/mobile/fbs/AgentData;->__vector(I)I

    move-result v1

    iget-object v2, p0, Lcom/newrelic/mobile/fbs/AgentData;->bb:Ljava/nio/ByteBuffer;

    invoke-static {v1, p1, v2}, Lcom/newrelic/mobile/fbs/BoolSessionAttribute;->__lookup_by_key(ILjava/lang/String;Ljava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/BoolSessionAttribute;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public boolAttributesLength()I
    .locals 2

    .prologue
    .line 31
    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/mobile/fbs/AgentData;->__vector_len(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public doubleAttributes(I)Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;
    .locals 1
    .param p1, "j"    # I

    .prologue
    .line 25
    new-instance v0, Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;

    invoke-direct {v0}, Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/newrelic/mobile/fbs/AgentData;->doubleAttributes(Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;I)Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;

    move-result-object v0

    return-object v0
.end method

.method public doubleAttributes(Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;I)Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;
    .locals 3
    .param p1, "obj"    # Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;
    .param p2, "j"    # I

    .prologue
    .line 26
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/mobile/fbs/AgentData;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lcom/newrelic/mobile/fbs/AgentData;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;->__assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public doubleAttributesByKey(Ljava/lang/String;)Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 28
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/mobile/fbs/AgentData;->__vector(I)I

    move-result v1

    iget-object v2, p0, Lcom/newrelic/mobile/fbs/AgentData;->bb:Ljava/nio/ByteBuffer;

    invoke-static {v1, p1, v2}, Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;->__lookup_by_key(ILjava/lang/String;Ljava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public doubleAttributesLength()I
    .locals 2

    .prologue
    .line 27
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/mobile/fbs/AgentData;->__vector_len(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handledExceptions(I)Lcom/newrelic/mobile/fbs/hex/HandledException;
    .locals 1
    .param p1, "j"    # I

    .prologue
    .line 33
    new-instance v0, Lcom/newrelic/mobile/fbs/hex/HandledException;

    invoke-direct {v0}, Lcom/newrelic/mobile/fbs/hex/HandledException;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/newrelic/mobile/fbs/AgentData;->handledExceptions(Lcom/newrelic/mobile/fbs/hex/HandledException;I)Lcom/newrelic/mobile/fbs/hex/HandledException;

    move-result-object v0

    return-object v0
.end method

.method public handledExceptions(Lcom/newrelic/mobile/fbs/hex/HandledException;I)Lcom/newrelic/mobile/fbs/hex/HandledException;
    .locals 3
    .param p1, "obj"    # Lcom/newrelic/mobile/fbs/hex/HandledException;
    .param p2, "j"    # I

    .prologue
    .line 34
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/mobile/fbs/AgentData;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lcom/newrelic/mobile/fbs/AgentData;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/newrelic/mobile/fbs/hex/HandledException;->__assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/hex/HandledException;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public handledExceptionsLength()I
    .locals 2

    .prologue
    .line 35
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/mobile/fbs/AgentData;->__vector_len(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public longAttributes(I)Lcom/newrelic/mobile/fbs/LongSessionAttribute;
    .locals 1
    .param p1, "j"    # I

    .prologue
    .line 21
    new-instance v0, Lcom/newrelic/mobile/fbs/LongSessionAttribute;

    invoke-direct {v0}, Lcom/newrelic/mobile/fbs/LongSessionAttribute;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/newrelic/mobile/fbs/AgentData;->longAttributes(Lcom/newrelic/mobile/fbs/LongSessionAttribute;I)Lcom/newrelic/mobile/fbs/LongSessionAttribute;

    move-result-object v0

    return-object v0
.end method

.method public longAttributes(Lcom/newrelic/mobile/fbs/LongSessionAttribute;I)Lcom/newrelic/mobile/fbs/LongSessionAttribute;
    .locals 3
    .param p1, "obj"    # Lcom/newrelic/mobile/fbs/LongSessionAttribute;
    .param p2, "j"    # I

    .prologue
    .line 22
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/mobile/fbs/AgentData;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lcom/newrelic/mobile/fbs/AgentData;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/newrelic/mobile/fbs/LongSessionAttribute;->__assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/LongSessionAttribute;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public longAttributesByKey(Ljava/lang/String;)Lcom/newrelic/mobile/fbs/LongSessionAttribute;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 24
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/mobile/fbs/AgentData;->__vector(I)I

    move-result v1

    iget-object v2, p0, Lcom/newrelic/mobile/fbs/AgentData;->bb:Ljava/nio/ByteBuffer;

    invoke-static {v1, p1, v2}, Lcom/newrelic/mobile/fbs/LongSessionAttribute;->__lookup_by_key(ILjava/lang/String;Ljava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/LongSessionAttribute;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public longAttributesLength()I
    .locals 2

    .prologue
    .line 23
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/mobile/fbs/AgentData;->__vector_len(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public requestInfo()Lcom/newrelic/mobile/fbs/RequestInformation;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/newrelic/mobile/fbs/RequestInformation;

    invoke-direct {v0}, Lcom/newrelic/mobile/fbs/RequestInformation;-><init>()V

    invoke-virtual {p0, v0}, Lcom/newrelic/mobile/fbs/AgentData;->requestInfo(Lcom/newrelic/mobile/fbs/RequestInformation;)Lcom/newrelic/mobile/fbs/RequestInformation;

    move-result-object v0

    return-object v0
.end method

.method public requestInfo(Lcom/newrelic/mobile/fbs/RequestInformation;)Lcom/newrelic/mobile/fbs/RequestInformation;
    .locals 3
    .param p1, "obj"    # Lcom/newrelic/mobile/fbs/RequestInformation;

    .prologue
    .line 39
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/newrelic/mobile/fbs/AgentData;->bb_pos:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lcom/newrelic/mobile/fbs/AgentData;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/newrelic/mobile/fbs/RequestInformation;->__assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/RequestInformation;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stringAttributes(I)Lcom/newrelic/mobile/fbs/StringSessionAttribute;
    .locals 1
    .param p1, "j"    # I

    .prologue
    .line 17
    new-instance v0, Lcom/newrelic/mobile/fbs/StringSessionAttribute;

    invoke-direct {v0}, Lcom/newrelic/mobile/fbs/StringSessionAttribute;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/newrelic/mobile/fbs/AgentData;->stringAttributes(Lcom/newrelic/mobile/fbs/StringSessionAttribute;I)Lcom/newrelic/mobile/fbs/StringSessionAttribute;

    move-result-object v0

    return-object v0
.end method

.method public stringAttributes(Lcom/newrelic/mobile/fbs/StringSessionAttribute;I)Lcom/newrelic/mobile/fbs/StringSessionAttribute;
    .locals 3
    .param p1, "obj"    # Lcom/newrelic/mobile/fbs/StringSessionAttribute;
    .param p2, "j"    # I

    .prologue
    .line 18
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/mobile/fbs/AgentData;->__vector(I)I

    move-result v1

    mul-int/lit8 v2, p2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->__indirect(I)I

    move-result v1

    iget-object v2, p0, Lcom/newrelic/mobile/fbs/AgentData;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1, v2}, Lcom/newrelic/mobile/fbs/StringSessionAttribute;->__assign(ILjava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/StringSessionAttribute;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stringAttributesByKey(Ljava/lang/String;)Lcom/newrelic/mobile/fbs/StringSessionAttribute;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 20
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/mobile/fbs/AgentData;->__vector(I)I

    move-result v1

    iget-object v2, p0, Lcom/newrelic/mobile/fbs/AgentData;->bb:Ljava/nio/ByteBuffer;

    invoke-static {v1, p1, v2}, Lcom/newrelic/mobile/fbs/StringSessionAttribute;->__lookup_by_key(ILjava/lang/String;Ljava/nio/ByteBuffer;)Lcom/newrelic/mobile/fbs/StringSessionAttribute;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public stringAttributesLength()I
    .locals 2

    .prologue
    .line 19
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->__offset(I)I

    move-result v0

    .local v0, "o":I
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/newrelic/mobile/fbs/AgentData;->__vector_len(I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
