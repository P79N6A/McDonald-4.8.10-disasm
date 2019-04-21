.class public final enum Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;
.super Ljava/lang/Enum;
.source "MWCustomerFavoriteProductResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MWCustomerFavoriteProductType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;

.field public static final enum CUSTOMER_FAVORITE_PRODUCT_TYPE_ITEM:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;

.field public static final enum CUSTOMER_FAVORITE_PRODUCT_TYPE_LOCATION:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;

.field public static final enum CUSTOMER_FAVORITE_PRODUCT_TYPE_ORDER:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;


# instance fields
.field private mTypeValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 97
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;

    const-string v1, "CUSTOMER_FAVORITE_PRODUCT_TYPE_ITEM"

    invoke-direct {v0, v1, v4, v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;->CUSTOMER_FAVORITE_PRODUCT_TYPE_ITEM:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;

    .line 98
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;

    const-string v1, "CUSTOMER_FAVORITE_PRODUCT_TYPE_ORDER"

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;->CUSTOMER_FAVORITE_PRODUCT_TYPE_ORDER:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;

    .line 99
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;

    const-string v1, "CUSTOMER_FAVORITE_PRODUCT_TYPE_LOCATION"

    invoke-direct {v0, v1, v3, v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;->CUSTOMER_FAVORITE_PRODUCT_TYPE_LOCATION:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;

    .line 96
    new-array v0, v5, [Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;->CUSTOMER_FAVORITE_PRODUCT_TYPE_ITEM:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;->CUSTOMER_FAVORITE_PRODUCT_TYPE_ORDER:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;->CUSTOMER_FAVORITE_PRODUCT_TYPE_LOCATION:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;->$VALUES:[Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;

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
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 104
    iput p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;->mTypeValue:I

    .line 105
    return-void
.end method

.method public static getType(I)Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;
    .locals 1
    .param p0, "index"    # I

    .prologue
    .line 108
    packed-switch p0, :pswitch_data_0

    .line 118
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 110
    :pswitch_0
    sget-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;->CUSTOMER_FAVORITE_PRODUCT_TYPE_ITEM:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;

    goto :goto_0

    .line 112
    :pswitch_1
    sget-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;->CUSTOMER_FAVORITE_PRODUCT_TYPE_ORDER:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;

    goto :goto_0

    .line 114
    :pswitch_2
    sget-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;->CUSTOMER_FAVORITE_PRODUCT_TYPE_LOCATION:Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 96
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;->$VALUES:[Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;

    invoke-virtual {v0}, [Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;

    return-object v0
.end method


# virtual methods
.method public getTypeValue()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerFavoriteProductResponse$MWCustomerFavoriteProductType;->mTypeValue:I

    return v0
.end method
