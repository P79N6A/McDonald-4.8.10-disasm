.class public final enum Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;
.super Ljava/lang/Enum;
.source "FavoriteItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/modules/models/FavoriteItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FavoriteProductType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

.field public static final enum FAVORITE_PRODUCT_TYPE_ITEM:Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

.field public static final enum FAVORITE_PRODUCT_TYPE_ORDER:Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;


# instance fields
.field private mTypeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 45
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    const-string v1, "FAVORITE_PRODUCT_TYPE_ITEM"

    invoke-direct {v0, v1, v3, v2}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;->FAVORITE_PRODUCT_TYPE_ITEM:Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    .line 46
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    const-string v1, "FAVORITE_PRODUCT_TYPE_ORDER"

    invoke-direct {v0, v1, v2, v4}, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;->FAVORITE_PRODUCT_TYPE_ORDER:Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    .line 44
    new-array v0, v4, [Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;->FAVORITE_PRODUCT_TYPE_ITEM:Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;->FAVORITE_PRODUCT_TYPE_ORDER:Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;->$VALUES:[Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;->mTypeValue:I

    .line 52
    return-void
.end method

.method public static getType(I)Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 55
    packed-switch p0, :pswitch_data_0

    .line 63
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 57
    :pswitch_0
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;->FAVORITE_PRODUCT_TYPE_ITEM:Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    goto :goto_0

    .line 59
    :pswitch_1
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;->FAVORITE_PRODUCT_TYPE_ORDER:Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    goto :goto_0

    .line 55
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;->$VALUES:[Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    invoke-virtual {v0}, [Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;

    return-object v0
.end method


# virtual methods
.method public getTypeValue()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/FavoriteItem$FavoriteProductType;->mTypeValue:I

    return v0
.end method
