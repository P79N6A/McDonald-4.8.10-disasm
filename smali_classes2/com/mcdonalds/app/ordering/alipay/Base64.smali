.class public final Lcom/mcdonalds/app/ordering/alipay/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static PAD:C

.field private static base64Alphabet:[B

.field private static lookUpBase64Alphabet:[C


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x3f

    const/16 v7, 0x3e

    const/16 v6, 0x3d

    const/16 v5, 0x2f

    const/16 v4, 0x2b

    .line 15
    sput-char v6, Lcom/mcdonalds/app/ordering/alipay/Base64;->PAD:C

    .line 16
    const/16 v2, 0x80

    new-array v2, v2, [B

    sput-object v2, Lcom/mcdonalds/app/ordering/alipay/Base64;->base64Alphabet:[B

    .line 17
    const/16 v2, 0x40

    new-array v2, v2, [C

    sput-object v2, Lcom/mcdonalds/app/ordering/alipay/Base64;->lookUpBase64Alphabet:[C

    .line 20
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x80

    if-ge v0, v2, :cond_0

    .line 21
    sget-object v2, Lcom/mcdonalds/app/ordering/alipay/Base64;->base64Alphabet:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    .line 20
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_0
    const/16 v0, 0x5a

    :goto_1
    const/16 v2, 0x41

    if-lt v0, v2, :cond_1

    .line 24
    sget-object v2, Lcom/mcdonalds/app/ordering/alipay/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x41

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 23
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 26
    :cond_1
    const/16 v0, 0x7a

    :goto_2
    const/16 v2, 0x61

    if-lt v0, v2, :cond_2

    .line 27
    sget-object v2, Lcom/mcdonalds/app/ordering/alipay/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x61

    add-int/lit8 v3, v3, 0x1a

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 26
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 30
    :cond_2
    const/16 v0, 0x39

    :goto_3
    const/16 v2, 0x30

    if-lt v0, v2, :cond_3

    .line 31
    sget-object v2, Lcom/mcdonalds/app/ordering/alipay/Base64;->base64Alphabet:[B

    add-int/lit8 v3, v0, -0x30

    add-int/lit8 v3, v3, 0x34

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    .line 30
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 34
    :cond_3
    sget-object v2, Lcom/mcdonalds/app/ordering/alipay/Base64;->base64Alphabet:[B

    aput-byte v7, v2, v4

    .line 35
    sget-object v2, Lcom/mcdonalds/app/ordering/alipay/Base64;->base64Alphabet:[B

    aput-byte v8, v2, v5

    .line 37
    const/4 v0, 0x0

    :goto_4
    const/16 v2, 0x19

    if-gt v0, v2, :cond_4

    .line 38
    sget-object v2, Lcom/mcdonalds/app/ordering/alipay/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v0, 0x41

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 41
    :cond_4
    const/16 v0, 0x1a

    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    const/16 v2, 0x33

    if-gt v0, v2, :cond_5

    .line 42
    sget-object v2, Lcom/mcdonalds/app/ordering/alipay/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v1, 0x61

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 45
    :cond_5
    const/16 v0, 0x34

    const/4 v1, 0x0

    :goto_6
    if-gt v0, v6, :cond_6

    .line 46
    sget-object v2, Lcom/mcdonalds/app/ordering/alipay/Base64;->lookUpBase64Alphabet:[C

    add-int/lit8 v3, v1, 0x30

    int-to-char v3, v3

    aput-char v3, v2, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 48
    :cond_6
    sget-object v2, Lcom/mcdonalds/app/ordering/alipay/Base64;->lookUpBase64Alphabet:[C

    aput-char v4, v2, v7

    .line 49
    sget-object v2, Lcom/mcdonalds/app/ordering/alipay/Base64;->lookUpBase64Alphabet:[C

    aput-char v5, v2, v8

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
