.class public final enum Lcom/mcdonalds/sdk/modules/models/Product$ProductType;
.super Ljava/lang/Enum;
.source "Product.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/modules/models/Product;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProductType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/Product$ProductType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

.field public static final enum Choice:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

.field public static final enum Comment:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

.field public static final enum DeliveryFee:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

.field public static final enum GiftCertificate:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

.field public static final enum Ingredient:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

.field public static final enum Meal:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

.field public static final enum NonFood:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

.field public static final enum Product:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

.field private static mProducts:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Product$ProductType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCode:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1163
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    const-string v1, "Product"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->Product:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    .line 1164
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    const-string v1, "Ingredient"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->Ingredient:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    .line 1165
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    const-string v1, "Meal"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->Meal:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    .line 1166
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    const-string v1, "Comment"

    const/4 v2, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->Comment:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    .line 1167
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    const-string v1, "GiftCertificate"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->GiftCertificate:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    .line 1168
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    const-string v1, "DeliveryFee"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->DeliveryFee:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    .line 1169
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    const-string v1, "Choice"

    const/4 v2, 0x6

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->Choice:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    .line 1170
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    const-string v1, "NonFood"

    const/4 v2, 0x7

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->NonFood:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    .line 1162
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->Product:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->Ingredient:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->Meal:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    aput-object v1, v0, v6

    const/4 v1, 0x3

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->Comment:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->GiftCertificate:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->DeliveryFee:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->Choice:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->NonFood:Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->$VALUES:[Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    .line 1173
    const/4 v0, 0x0

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->mProducts:Landroid/util/SparseArray;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0
    .param p3, "code"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1186
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1187
    iput-object p3, p0, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->mCode:Ljava/lang/Integer;

    .line 1188
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/Product$ProductType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1162
    const-class v0, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    return-object v0
.end method

.method public static valueToProductType(Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/models/Product$ProductType;
    .locals 6
    .param p0, "intType"    # Ljava/lang/Integer;

    .prologue
    .line 1176
    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->mProducts:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 1177
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->mProducts:Landroid/util/SparseArray;

    .line 1178
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->values()[Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 1179
    .local v0, "productType":Lcom/mcdonalds/sdk/modules/models/Product$ProductType;
    sget-object v4, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->mProducts:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->integerValue()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1178
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1183
    .end local v0    # "productType":Lcom/mcdonalds/sdk/modules/models/Product$ProductType;
    :cond_0
    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->mProducts:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    return-object v1
.end method

.method public static values()[Lcom/mcdonalds/sdk/modules/models/Product$ProductType;
    .locals 1

    .prologue
    .line 1162
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->$VALUES:[Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    invoke-virtual {v0}, [Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/sdk/modules/models/Product$ProductType;

    return-object v0
.end method


# virtual methods
.method public integerValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Product$ProductType;->mCode:Ljava/lang/Integer;

    return-object v0
.end method
