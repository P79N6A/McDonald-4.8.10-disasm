.class public final enum Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;
.super Ljava/lang/Enum;
.source "Order.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/modules/models/Order;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QRCodeSaleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

.field public static final enum EatIn:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

.field public static final enum EatInOther:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

.field public static final enum EatInTakeOut:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

.field public static final enum EatInTakeOutOther:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

.field public static final enum Other:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

.field public static final enum TakeOut:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

.field public static final enum TakeOutOther:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

.field public static final enum UNUSED:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;


# instance fields
.field private mIntegerValue:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1024
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    const-string v1, "UNUSED"

    invoke-direct {v0, v1, v4, v4}, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->UNUSED:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    .line 1025
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    const-string v1, "EatIn"

    invoke-direct {v0, v1, v5, v5}, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->EatIn:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    .line 1026
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    const-string v1, "TakeOut"

    invoke-direct {v0, v1, v6, v6}, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->TakeOut:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    .line 1027
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    const-string v1, "EatInTakeOut"

    invoke-direct {v0, v1, v7, v7}, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->EatInTakeOut:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    .line 1028
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    const-string v1, "Other"

    invoke-direct {v0, v1, v8, v8}, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->Other:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    .line 1029
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    const-string v1, "EatInOther"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->EatInOther:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    .line 1030
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    const-string v1, "TakeOutOther"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->TakeOutOther:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    .line 1031
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    const-string v1, "EatInTakeOutOther"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->EatInTakeOutOther:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    .line 1023
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->UNUSED:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->EatIn:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->TakeOut:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->EatInTakeOut:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->Other:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->EatInOther:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->TakeOutOther:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->EatInTakeOutOther:Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->$VALUES:[Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "intValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 1035
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1036
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->mIntegerValue:Ljava/lang/Integer;

    .line 1037
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1023
    const-class v0, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;
    .locals 1

    .prologue
    .line 1023
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->$VALUES:[Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    invoke-virtual {v0}, [Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;

    return-object v0
.end method


# virtual methods
.method public integerValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order$QRCodeSaleType;->mIntegerValue:Ljava/lang/Integer;

    return-object v0
.end method
