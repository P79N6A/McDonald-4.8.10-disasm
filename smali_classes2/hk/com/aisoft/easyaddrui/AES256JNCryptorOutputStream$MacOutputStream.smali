.class Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream$MacOutputStream;
.super Ljava/io/FilterOutputStream;
.source "AES256JNCryptorOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MacOutputStream"
.end annotation


# instance fields
.field private final mac:Ljavax/crypto/Mac;


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 250
    iget-object v1, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream$MacOutputStream;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v1}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object v0

    .line 251
    .local v0, "macData":[B
    iget-object v1, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream$MacOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 252
    iget-object v1, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream$MacOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 253
    iget-object v1, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream$MacOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 254
    return-void
.end method

.method public write(I)V
    .locals 2
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream$MacOutputStream;->mac:Ljavax/crypto/Mac;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljavax/crypto/Mac;->update(B)V

    .line 239
    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream$MacOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 240
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream$MacOutputStream;->mac:Ljavax/crypto/Mac;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/Mac;->update([BII)V

    .line 245
    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream$MacOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 246
    return-void
.end method
