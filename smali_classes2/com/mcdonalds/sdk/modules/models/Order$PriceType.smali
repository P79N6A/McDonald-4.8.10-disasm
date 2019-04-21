.class public final enum Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
.super Ljava/lang/Enum;
.source "Order.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/modules/models/Order;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PriceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/Order$PriceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

.field public static final enum Delivery:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

.field public static final enum EatIn:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

.field public static final enum TakeOut:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

.field public static final enum Undefined:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;


# instance fields
.field private mIntegerValue:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 990
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    const-string v1, "Undefined"

    invoke-direct {v0, v1, v2, v2}, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->Undefined:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    .line 991
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    const-string v1, "EatIn"

    invoke-direct {v0, v1, v3, v3}, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->EatIn:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    .line 992
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    const-string v1, "TakeOut"

    invoke-direct {v0, v1, v4, v4}, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->TakeOut:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    .line 993
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    const-string v1, "Delivery"

    invoke-direct {v0, v1, v5, v5}, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->Delivery:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    .line 989
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->Undefined:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->EatIn:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->TakeOut:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->Delivery:Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->$VALUES:[Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

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
    .line 997
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 998
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->mIntegerValue:Ljava/lang/Integer;

    .line 999
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 989
    const-class v0, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/sdk/modules/models/Order$PriceType;
    .locals 1

    .prologue
    .line 989
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->$VALUES:[Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    invoke-virtual {v0}, [Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    return-object v0
.end method


# virtual methods
.method public integerValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->mIntegerValue:Ljava/lang/Integer;

    return-object v0
.end method
