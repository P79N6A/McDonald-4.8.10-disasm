.class public final enum Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;
.super Ljava/lang/Enum;
.source "MWPriceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;

.field public static final enum EatIn:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;

.field public static final enum Other:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;

.field public static final enum TakeOut:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;

.field public static final enum Undefined:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;


# instance fields
.field private mValue:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;

    const-string v1, "Undefined"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;->Undefined:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;

    .line 10
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;

    const-string v1, "EatIn"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;->EatIn:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;

    .line 11
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;

    const-string v1, "TakeOut"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;->TakeOut:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;

    .line 12
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;

    const-string v1, "Other"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;->Other:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;->Undefined:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;->EatIn:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;->TakeOut:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;->Other:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;->$VALUES:[Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0
    .param p3, "x"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 22
    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;->mValue:Ljava/lang/Integer;

    .line 23
    return-void
.end method

.method public static fromOrderPriceType(Lcom/mcdonalds/sdk/modules/models/Order$PriceType;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;
    .locals 2
    .param p0, "priceType"    # Lcom/mcdonalds/sdk/modules/models/Order$PriceType;

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/Order$PriceType;->integerValue()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 18
    .local v0, "index":I
    invoke-static {}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;->values()[Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;

    move-result-object v1

    aget-object v1, v1, v0

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;->$VALUES:[Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;

    invoke-virtual {v0}, [Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;

    return-object v0
.end method


# virtual methods
.method public integerValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPriceType;->mValue:Ljava/lang/Integer;

    return-object v0
.end method
