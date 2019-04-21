.class public final enum Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;
.super Ljava/lang/Enum;
.source "MWPromotionActionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;

.field public static final enum AmountDiscount:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;

.field public static final enum FixedAmount:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;

.field public static final enum INVALID:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;

.field public static final enum PercentDiscount:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;

.field public static final enum Promo:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;


# instance fields
.field private mValue:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;

    const-string v1, "INVALID"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;->INVALID:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;

    .line 8
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;

    const-string v1, "PercentDiscount"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;->PercentDiscount:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;

    .line 9
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;

    const-string v1, "AmountDiscount"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;->AmountDiscount:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;

    .line 10
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;

    const-string v1, "FixedAmount"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;->FixedAmount:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;

    .line 11
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;

    const-string v1, "Promo"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;->Promo:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;->INVALID:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;->PercentDiscount:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;->AmountDiscount:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;->FixedAmount:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;->Promo:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;->$VALUES:[Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;->mValue:Ljava/lang/Integer;

    .line 17
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;->$VALUES:[Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;

    invoke-virtual {v0}, [Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;

    return-object v0
.end method


# virtual methods
.method public integerValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionActionType;->mValue:Ljava/lang/Integer;

    return-object v0
.end method
