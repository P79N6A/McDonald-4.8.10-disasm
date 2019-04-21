.class public Lhk/com/aisoft/easyaddrui/PasswordKey;
.super Ljava/lang/Object;
.source "PasswordKey.java"


# instance fields
.field private final key:Ljavax/crypto/SecretKey;

.field private final salt:[B


# direct methods
.method constructor <init>(Ljavax/crypto/SecretKey;[B)V
    .locals 0
    .param p1, "key"    # Ljavax/crypto/SecretKey;
    .param p2, "salt"    # [B

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lhk/com/aisoft/easyaddrui/PasswordKey;->key:Ljavax/crypto/SecretKey;

    .line 34
    iput-object p2, p0, Lhk/com/aisoft/easyaddrui/PasswordKey;->salt:[B

    .line 35
    return-void
.end method


# virtual methods
.method getKey()Ljavax/crypto/SecretKey;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/PasswordKey;->key:Ljavax/crypto/SecretKey;

    return-object v0
.end method

.method getSalt()[B
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lhk/com/aisoft/easyaddrui/PasswordKey;->salt:[B

    return-object v0
.end method
