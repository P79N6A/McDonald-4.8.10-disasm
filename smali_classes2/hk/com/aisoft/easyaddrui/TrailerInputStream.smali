.class Lhk/com/aisoft/easyaddrui/TrailerInputStream;
.super Ljava/io/InputStream;
.source "TrailerInputStream.java"


# instance fields
.field private final in:Ljava/io/InputStream;

.field private trailerBuffer:[B

.field private final trailerSize:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "trailerSize"    # I

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 46
    const-string v0, "InputStream cannot be null."

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v2}, Lhk/com/aisoft/easyaddrui/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    const/4 v0, -0x1

    if-le p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "Trailer size cannot be negative."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lhk/com/aisoft/easyaddrui/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iput-object p1, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->in:Ljava/io/InputStream;

    .line 50
    iput p2, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerSize:I

    .line 51
    return-void

    :cond_0
    move v0, v1

    .line 47
    goto :goto_0
.end method

.method private fillTrailerBuffer()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget v1, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerSize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerBuffer:[B

    .line 64
    iget v1, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerSize:I

    if-nez v1, :cond_1

    .line 74
    :cond_0
    return-void

    .line 68
    :cond_1
    iget-object v1, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->in:Ljava/io/InputStream;

    iget-object v2, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerBuffer:[B

    invoke-static {v1, v2}, Lhk/com/aisoft/easyaddrui/StreamUtils;->readAllBytes(Ljava/io/InputStream;[B)I

    move-result v0

    .line 69
    .local v0, "bytesRead":I
    iget-object v1, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerBuffer:[B

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 70
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "Trailer size was %d bytes but stream only contained %d bytes."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerBuffer:[B

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x0

    iget-object v1, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    iget v2, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerSize:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 202
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 208
    return-void
.end method

.method public getTrailer()[B
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerBuffer:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 89
    iget-object v2, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerBuffer:[B

    if-nez v2, :cond_0

    .line 90
    invoke-direct {p0}, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->fillTrailerBuffer()V

    .line 93
    :cond_0
    iget-object v2, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 95
    .local v0, "nextByte":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 109
    .end local v0    # "nextByte":I
    :cond_1
    :goto_0
    return v0

    .line 99
    .restart local v0    # "nextByte":I
    :cond_2
    iget-object v2, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerBuffer:[B

    array-length v2, v2

    if-eqz v2, :cond_1

    .line 103
    iget-object v2, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerBuffer:[B

    aget-byte v2, v2, v6

    and-int/lit16 v1, v2, 0xff

    .line 105
    .local v1, "result":I
    iget-object v2, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerBuffer:[B

    const/4 v3, 0x1

    iget-object v4, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerBuffer:[B

    iget-object v5, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerBuffer:[B

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v2, v3, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iget-object v2, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerBuffer:[B

    iget-object v3, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerBuffer:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    int-to-byte v4, v0

    aput-byte v4, v2, v3

    move v0, v1

    .line 109
    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 117
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 144
    if-nez p1, :cond_0

    .line 145
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2}, Ljava/lang/NullPointerException;-><init>()V

    throw v2

    .line 146
    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    array-length v3, p1

    sub-int/2addr v3, p2

    if-le p3, v3, :cond_2

    .line 147
    :cond_1
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 148
    :cond_2
    if-nez p3, :cond_4

    move v1, v2

    .line 193
    :cond_3
    :goto_0
    return v1

    .line 152
    :cond_4
    iget-object v3, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerBuffer:[B

    if-nez v3, :cond_5

    .line 153
    invoke-direct {p0}, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->fillTrailerBuffer()V

    .line 156
    :cond_5
    new-array v0, p3, [B

    .line 157
    .local v0, "inputBuffer":[B
    iget-object v3, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .line 159
    .local v1, "numBytesRead":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    .line 163
    iget v3, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerSize:I

    if-nez v3, :cond_6

    .line 164
    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 168
    :cond_6
    iget v3, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerSize:I

    if-gt v1, v3, :cond_7

    .line 170
    iget-object v3, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerBuffer:[B

    invoke-static {v3, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    iget-object v3, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerBuffer:[B

    iget-object v4, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerBuffer:[B

    iget v5, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerSize:I

    sub-int/2addr v5, v1

    invoke-static {v3, v1, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 177
    iget-object v3, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerBuffer:[B

    iget v4, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerSize:I

    sub-int/2addr v4, v1

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 182
    :cond_7
    iget-object v3, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerBuffer:[B

    iget v4, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerSize:I

    invoke-static {v3, v2, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    iget v3, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerSize:I

    add-int/2addr p2, v3

    .line 186
    iget v3, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerSize:I

    sub-int v3, v1, v3

    invoke-static {v0, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    iget v3, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerSize:I

    sub-int v3, v1, v3

    iget-object v4, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerBuffer:[B

    iget v5, p0, Lhk/com/aisoft/easyaddrui/TrailerInputStream;->trailerSize:I

    invoke-static {v0, v3, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
