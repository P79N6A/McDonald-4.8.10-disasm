.class Lhk/com/aisoft/easyaddrui/StreamUtils;
.super Ljava/lang/Object;
.source "StreamUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static readAllBytes(Ljava/io/InputStream;[B)I
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 41
    .local v0, "index":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 42
    array-length v2, p1

    sub-int/2addr v2, v0

    invoke-virtual {p0, p1, v0, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 43
    .local v1, "read":I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 49
    .end local v1    # "read":I
    :cond_0
    return v0

    .line 46
    .restart local v1    # "read":I
    :cond_1
    add-int/2addr v0, v1

    .line 47
    goto :goto_0
.end method

.method static readAllBytesOrFail(Ljava/io/InputStream;[B)V
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-static {p0, p1}, Lhk/com/aisoft/easyaddrui/StreamUtils;->readAllBytes(Ljava/io/InputStream;[B)I

    move-result v0

    .line 65
    .local v0, "read":I
    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 66
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "Expected %d bytes but read %d bytes."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    array-length v5, p1

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

    .line 69
    :cond_0
    return-void
.end method
