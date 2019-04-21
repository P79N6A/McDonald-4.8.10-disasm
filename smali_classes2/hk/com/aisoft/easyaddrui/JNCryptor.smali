.class public interface abstract Lhk/com/aisoft/easyaddrui/JNCryptor;
.super Ljava/lang/Object;
.source "JNCryptor.java"


# virtual methods
.method public abstract encryptData([B[C)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhk/com/aisoft/easyaddrui/CryptorException;
        }
    .end annotation
.end method

.method public abstract keyForPassword([C[B)Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lhk/com/aisoft/easyaddrui/CryptorException;
        }
    .end annotation
.end method
