.class public Lcom/newrelic/com/google/flatbuffers/Table;
.super Ljava/lang/Object;
.source "Table.java"


# static fields
.field private static final CHAR_BUFFER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/nio/CharBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static final UTF8_CHARSET:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/nio/charset/Charset;",
            ">;"
        }
    .end annotation
.end field

.field private static final UTF8_DECODER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/nio/charset/CharsetDecoder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected bb:Ljava/nio/ByteBuffer;

.field protected bb_pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/newrelic/com/google/flatbuffers/Table$1;

    invoke-direct {v0}, Lcom/newrelic/com/google/flatbuffers/Table$1;-><init>()V

    sput-object v0, Lcom/newrelic/com/google/flatbuffers/Table;->UTF8_DECODER:Ljava/lang/ThreadLocal;

    .line 40
    new-instance v0, Lcom/newrelic/com/google/flatbuffers/Table$2;

    invoke-direct {v0}, Lcom/newrelic/com/google/flatbuffers/Table$2;-><init>()V

    sput-object v0, Lcom/newrelic/com/google/flatbuffers/Table;->UTF8_CHARSET:Ljava/lang/ThreadLocal;

    .line 46
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/newrelic/com/google/flatbuffers/Table;->CHAR_BUFFER:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static __has_identifier(Ljava/nio/ByteBuffer;Ljava/lang/String;)Z
    .locals 4
    .param p0, "bb"    # Ljava/nio/ByteBuffer;
    .param p1, "ident"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x4

    .line 198
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 199
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "FlatBuffers: file identifier must be length 4"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 201
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 202
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-char v2, v2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    .line 204
    :goto_1
    return v1

    .line 201
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected static __indirect(ILjava/nio/ByteBuffer;)I
    .locals 1
    .param p0, "offset"    # I
    .param p1, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 86
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, p0

    return v0
.end method

.method protected static __offset(IILjava/nio/ByteBuffer;)I
    .locals 3
    .param p0, "vtable_offset"    # I
    .param p1, "offset"    # I
    .param p2, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 71
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    array-length v1, v1

    sub-int v0, v1, p1

    .line 72
    .local v0, "vtable":I
    add-int v1, v0, p0

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method protected static compareStrings(IILjava/nio/ByteBuffer;)I
    .locals 9
    .param p0, "offset_1"    # I
    .param p1, "offset_2"    # I
    .param p2, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 241
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v7

    add-int/2addr p0, v7

    .line 242
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v7

    add-int/2addr p1, v7

    .line 243
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    .line 244
    .local v3, "len_1":I
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v4

    .line 245
    .local v4, "len_2":I
    add-int/lit8 v5, p0, 0x4

    .line 246
    .local v5, "startPos_1":I
    add-int/lit8 v6, p1, 0x4

    .line 247
    .local v6, "startPos_2":I
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 248
    .local v2, "len":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 249
    .local v0, "bbArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 250
    add-int v7, v1, v5

    aget-byte v7, v0, v7

    add-int v8, v1, v6

    aget-byte v8, v0, v8

    if-eq v7, v8, :cond_0

    .line 251
    add-int v7, v1, v5

    aget-byte v7, v0, v7

    add-int v8, v1, v6

    aget-byte v8, v0, v8

    sub-int/2addr v7, v8

    .line 253
    :goto_1
    return v7

    .line 249
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    :cond_1
    sub-int v7, v3, v4

    goto :goto_1
.end method

.method protected static compareStrings(I[BLjava/nio/ByteBuffer;)I
    .locals 8
    .param p0, "offset_1"    # I
    .param p1, "key"    # [B
    .param p2, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 264
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v6

    add-int/2addr p0, v6

    .line 265
    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    .line 266
    .local v3, "len_1":I
    array-length v4, p1

    .line 267
    .local v4, "len_2":I
    add-int/lit8 v5, p0, 0x4

    .line 268
    .local v5, "startPos_1":I
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 269
    .local v2, "len":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 270
    .local v0, "bbArray":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 271
    add-int v6, v1, v5

    aget-byte v6, v0, v6

    aget-byte v7, p1, v1

    if-eq v6, v7, :cond_0

    .line 272
    add-int v6, v1, v5

    aget-byte v6, v0, v6

    aget-byte v7, p1, v1

    sub-int/2addr v6, v7

    .line 274
    :goto_1
    return v6

    .line 270
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 274
    :cond_1
    sub-int v6, v3, v4

    goto :goto_1
.end method


# virtual methods
.method protected __indirect(I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method protected __offset(I)I
    .locals 4
    .param p1, "vtable_offset"    # I

    .prologue
    .line 66
    iget v1, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb_pos:I

    iget-object v2, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb_pos:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    sub-int v0, v1, v2

    .line 67
    .local v0, "vtable":I
    iget-object v1, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    add-int v2, v0, p1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected __string(I)Ljava/lang/String;
    .locals 9
    .param p1, "offset"    # I

    .prologue
    .line 101
    sget-object v7, Lcom/newrelic/com/google/flatbuffers/Table;->UTF8_DECODER:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/CharsetDecoder;

    .line 102
    .local v1, "decoder":Ljava/nio/charset/CharsetDecoder;
    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 104
    iget-object v7, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v7

    add-int/2addr p1, v7

    .line 105
    iget-object v7, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 106
    .local v5, "src":Ljava/nio/ByteBuffer;
    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v3

    .line 107
    .local v3, "length":I
    add-int/lit8 v7, p1, 0x4

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 108
    add-int/lit8 v7, p1, 0x4

    add-int/2addr v7, v3

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 110
    int-to-float v7, v3

    invoke-virtual {v1}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v4, v7

    .line 111
    .local v4, "required":I
    sget-object v7, Lcom/newrelic/com/google/flatbuffers/Table;->CHAR_BUFFER:Ljava/lang/ThreadLocal;

    invoke-virtual {v7}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/CharBuffer;

    .line 112
    .local v2, "dst":Ljava/nio/CharBuffer;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->capacity()I

    move-result v7

    if-ge v7, v4, :cond_1

    .line 113
    :cond_0
    invoke-static {v4}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v2

    .line 114
    sget-object v7, Lcom/newrelic/com/google/flatbuffers/Table;->CHAR_BUFFER:Ljava/lang/ThreadLocal;

    invoke-virtual {v7, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 117
    :cond_1
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 120
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {v1, v5, v2, v7}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 121
    .local v0, "cr":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v7

    if-nez v7, :cond_2

    .line 122
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->throwException()V
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_2
    invoke-virtual {v2}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 124
    .end local v0    # "cr":Ljava/nio/charset/CoderResult;
    :catch_0
    move-exception v6

    .line 125
    .local v6, "x":Ljava/nio/charset/CharacterCodingException;
    new-instance v7, Ljava/lang/Error;

    invoke-direct {v7, v6}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method protected __union(Lcom/newrelic/com/google/flatbuffers/Table;I)Lcom/newrelic/com/google/flatbuffers/Table;
    .locals 1
    .param p1, "t"    # Lcom/newrelic/com/google/flatbuffers/Table;
    .param p2, "offset"    # I

    .prologue
    .line 183
    iget v0, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb_pos:I

    add-int/2addr p2, v0

    .line 184
    iget-object v0, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p1, Lcom/newrelic/com/google/flatbuffers/Table;->bb_pos:I

    .line 185
    iget-object v0, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    iput-object v0, p1, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    .line 186
    return-object p1
.end method

.method protected __vector(I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 150
    iget v0, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb_pos:I

    add-int/2addr p1, v0

    .line 151
    iget-object v0, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected __vector_as_bytebuffer(II)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "vector_offset"    # I
    .param p2, "elem_size"    # I

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/newrelic/com/google/flatbuffers/Table;->__offset(I)I

    move-result v1

    .line 167
    .local v1, "o":I
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 172
    :goto_0
    return-object v0

    .line 168
    :cond_0
    iget-object v3, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 169
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, v1}, Lcom/newrelic/com/google/flatbuffers/Table;->__vector(I)I

    move-result v2

    .line 170
    .local v2, "vectorstart":I
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 171
    invoke-virtual {p0, v1}, Lcom/newrelic/com/google/flatbuffers/Table;->__vector_len(I)I

    move-result v3

    mul-int/2addr v3, p2

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_0
.end method

.method protected __vector_len(I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 138
    iget v0, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb_pos:I

    add-int/2addr p1, v0

    .line 139
    iget-object v0, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    add-int/2addr p1, v0

    .line 140
    iget-object v0, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/newrelic/com/google/flatbuffers/Table;->bb:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method protected keysCompare(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/nio/ByteBuffer;)I
    .locals 1
    .param p1, "o1"    # Ljava/lang/Integer;
    .param p2, "o2"    # Ljava/lang/Integer;
    .param p3, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method protected sortTables([ILjava/nio/ByteBuffer;)V
    .locals 3
    .param p1, "offsets"    # [I
    .param p2, "bb"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 214
    array-length v2, p1

    new-array v1, v2, [Ljava/lang/Integer;

    .line 215
    .local v1, "off":[Ljava/lang/Integer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget v2, p1, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_0
    new-instance v2, Lcom/newrelic/com/google/flatbuffers/Table$3;

    invoke-direct {v2, p0, p2}, Lcom/newrelic/com/google/flatbuffers/Table$3;-><init>(Lcom/newrelic/com/google/flatbuffers/Table;Ljava/nio/ByteBuffer;)V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 221
    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 222
    :cond_1
    return-void
.end method
