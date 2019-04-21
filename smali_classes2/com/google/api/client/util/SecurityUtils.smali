.class public final Lcom/google/api/client/util/SecurityUtils;
.super Ljava/lang/Object;
.source "SecurityUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    return-void
.end method

.method public static getSha1WithRsaSignatureAlgorithm()Ljava/security/Signature;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 126
    const-string v0, "SHA1withRSA"

    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    return-object v0
.end method

.method public static sign(Ljava/security/Signature;Ljava/security/PrivateKey;[B)[B
    .locals 1
    .param p0, "signatureAlgorithm"    # Ljava/security/Signature;
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .param p2, "contentBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 145
    invoke-virtual {p0, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    .line 146
    invoke-virtual {p0, p2}, Ljava/security/Signature;->update([B)V

    .line 147
    invoke-virtual {p0}, Ljava/security/Signature;->sign()[B

    move-result-object v0

    return-object v0
.end method
