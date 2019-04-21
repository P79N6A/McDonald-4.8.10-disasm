.class public Lcom/mcdonalds/app/util/Barcode;
.super Ljava/lang/Object;
.source "Barcode.java"


# static fields
.field public static final NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/mcdonalds/app/util/Barcode;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/util/Barcode;->NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateAztec(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "size"    # I

    .prologue
    const/4 v3, 0x0

    const-string v4, "com.mcdonalds.app.util.Barcode"

    const-string v5, "generateAztec"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v6, v7

    invoke-static {v3, v4, v5, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    :try_start_0
    new-instance v0, Lcom/google/zxing/aztec/AztecWriter;

    invoke-direct {v0}, Lcom/google/zxing/aztec/AztecWriter;-><init>()V

    .line 27
    .local v0, "aztecWriter":Lcom/google/zxing/aztec/AztecWriter;
    sget-object v4, Lcom/google/zxing/BarcodeFormat;->AZTEC:Lcom/google/zxing/BarcodeFormat;

    invoke-virtual {v0, p0, v4, p1, p1}, Lcom/google/zxing/aztec/AztecWriter;->encode(Ljava/lang/String;Lcom/google/zxing/BarcodeFormat;II)Lcom/google/zxing/common/BitMatrix;

    move-result-object v1

    .line 34
    .local v1, "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    invoke-static {v1}, Lcom/mcdonalds/app/util/Barcode;->toBitmap(Lcom/google/zxing/common/BitMatrix;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 39
    .end local v0    # "aztecWriter":Lcom/google/zxing/aztec/AztecWriter;
    .end local v1    # "bitMatrix":Lcom/google/zxing/common/BitMatrix;
    :goto_0
    return-object v3

    .line 35
    :catch_0
    move-exception v2

    .line 36
    .local v2, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/mcdonalds/app/util/Barcode;->NAME:Ljava/lang/String;

    const-string v5, "error generating bar code"

    invoke-static {v4, v5, v2}, Lcom/mcdonalds/app/util/SafeLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static toBitmap(Lcom/google/zxing/common/BitMatrix;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "matrix"    # Lcom/google/zxing/common/BitMatrix;

    .prologue
    const/4 v5, 0x0

    const-string v6, "com.mcdonalds.app.util.Barcode"

    const-string v7, "toBitmap"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    invoke-static {v5, v6, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getHeight()I

    move-result v1

    .line 50
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/google/zxing/common/BitMatrix;->getWidth()I

    move-result v2

    .line 51
    .local v2, "width":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 52
    .local v0, "bmp":Landroid/graphics/Bitmap;
    const/4 v3, 0x0

    .local v3, "x":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 53
    const/4 v4, 0x0

    .local v4, "y":I
    :goto_1
    if-ge v4, v1, :cond_1

    .line 54
    invoke-virtual {p0, v3, v4}, Lcom/google/zxing/common/BitMatrix;->get(II)Z

    move-result v5

    if-eqz v5, :cond_0

    const/high16 v5, -0x1000000

    :goto_2
    invoke-virtual {v0, v3, v4, v5}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 53
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 54
    :cond_0
    const/4 v5, -0x1

    goto :goto_2

    .line 52
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57
    .end local v4    # "y":I
    :cond_2
    return-object v0
.end method
