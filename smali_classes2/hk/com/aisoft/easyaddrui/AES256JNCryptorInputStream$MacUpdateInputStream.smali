.class Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream$MacUpdateInputStream;
.super Ljava/io/FilterInputStream;
.source "AES256JNCryptorInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MacUpdateInputStream"
.end annotation


# instance fields
.field mac:Ljavax/crypto/Mac;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;Ljavax/crypto/Mac;)V
    .locals 0
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "mac"    # Ljavax/crypto/Mac;

    .prologue
    .line 347
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 348
    iput-object p2, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream$MacUpdateInputStream;->mac:Ljavax/crypto/Mac;

    .line 349
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Ljavax/crypto/Mac;Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/io/InputStream;
    .param p2, "x1"    # Ljavax/crypto/Mac;
    .param p3, "x2"    # Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream$1;

    .prologue
    .line 343
    invoke-direct {p0, p1, p2}, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream$MacUpdateInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Mac;)V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 353
    .local v0, "b":I
    if-ltz v0, :cond_0

    .line 354
    iget-object v1, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream$MacUpdateInputStream;->mac:Ljavax/crypto/Mac;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Ljavax/crypto/Mac;->update(B)V

    .line 355
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 360
    .local v0, "n":I
    if-lez v0, :cond_0

    .line 361
    iget-object v1, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorInputStream$MacUpdateInputStream;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v1, p1, p2, v0}, Ljavax/crypto/Mac;->update([BII)V

    .line 362
    :cond_0
    return v0
.end method
