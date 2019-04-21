.class Lhk/com/aisoft/easyaddrui/AES256v3Ciphertext;
.super Lhk/com/aisoft/easyaddrui/AES256Ciphertext;
.source "AES256v3Ciphertext.java"


# direct methods
.method public constructor <init>([B[B[B[B)V
    .locals 0
    .param p1, "encryptionSalt"    # [B
    .param p2, "hmacSalt"    # [B
    .param p3, "iv"    # [B
    .param p4, "ciphertext"    # [B

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lhk/com/aisoft/easyaddrui/AES256Ciphertext;-><init>([B[B[B[B)V

    .line 31
    return-void
.end method


# virtual methods
.method getVersionNumber()I
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x3

    return v0
.end method
