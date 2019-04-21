.class public Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream;
.super Ljava/io/OutputStream;
.source "AES256JNCryptorOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream$MacOutputStream;
    }
.end annotation


# instance fields
.field private cipherStream:Ljavax/crypto/CipherOutputStream;

.field private encryptionSalt:[B

.field private hmacSalt:[B

.field private iv:[B

.field private macOutputStream:Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream$MacOutputStream;

.field private final passwordBased:Z

.field private writtenHeader:Z


# direct methods
.method private writeHeader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x3

    .line 160
    iget-boolean v0, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream;->passwordBased:Z

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream;->macOutputStream:Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream$MacOutputStream;

    invoke-virtual {v0, v1}, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream$MacOutputStream;->write(I)V

    .line 162
    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream;->macOutputStream:Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream$MacOutputStream;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream$MacOutputStream;->write(I)V

    .line 163
    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream;->macOutputStream:Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream$MacOutputStream;

    iget-object v1, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream;->encryptionSalt:[B

    invoke-virtual {v0, v1}, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream$MacOutputStream;->write([B)V

    .line 164
    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream;->macOutputStream:Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream$MacOutputStream;

    iget-object v1, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream;->hmacSalt:[B

    invoke-virtual {v0, v1}, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream$MacOutputStream;->write([B)V

    .line 165
    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream;->macOutputStream:Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream$MacOutputStream;

    iget-object v1, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream;->iv:[B

    invoke-virtual {v0, v1}, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream$MacOutputStream;->write([B)V

    .line 171
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream;->macOutputStream:Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream$MacOutputStream;

    invoke-virtual {v0, v1}, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream$MacOutputStream;->write(I)V

    .line 168
    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream;->macOutputStream:Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream$MacOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream$MacOutputStream;->write(I)V

    .line 169
    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream;->macOutputStream:Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream$MacOutputStream;

    iget-object v1, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream;->iv:[B

    invoke-virtual {v0, v1}, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream$MacOutputStream;->write([B)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream;->cipherStream:Ljavax/crypto/CipherOutputStream;

    invoke-virtual {v0}, Ljavax/crypto/CipherOutputStream;->close()V

    .line 221
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 183
    iget-boolean v0, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream;->writtenHeader:Z

    if-nez v0, :cond_0

    .line 184
    invoke-direct {p0}, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream;->writeHeader()V

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream;->writtenHeader:Z

    .line 187
    :cond_0
    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream;->cipherStream:Ljavax/crypto/CipherOutputStream;

    invoke-virtual {v0, p1}, Ljavax/crypto/CipherOutputStream;->write(I)V

    .line 188
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
    .line 204
    iget-boolean v0, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream;->writtenHeader:Z

    if-nez v0, :cond_0

    .line 205
    invoke-direct {p0}, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream;->writeHeader()V

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream;->writtenHeader:Z

    .line 208
    :cond_0
    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/AES256JNCryptorOutputStream;->cipherStream:Ljavax/crypto/CipherOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    .line 209
    return-void
.end method
