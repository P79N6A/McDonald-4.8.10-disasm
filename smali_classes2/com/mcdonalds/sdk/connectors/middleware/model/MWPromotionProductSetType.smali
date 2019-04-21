.class public final enum Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSetType;
.super Ljava/lang/Enum;
.source "MWPromotionProductSetType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSetType;

.field public static final enum Action:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSetType;

.field public static final enum Condition:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSetType;


# instance fields
.field private mValue:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 7
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSetType;

    const-string v1, "Condition"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSetType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSetType;->Condition:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSetType;

    .line 8
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSetType;

    const-string v1, "Action"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSetType;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSetType;->Action:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSetType;

    .line 6
    new-array v0, v5, [Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSetType;

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSetType;->Condition:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSetType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSetType;->Action:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSetType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSetType;->$VALUES:[Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSetType;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSetType;->mValue:Ljava/lang/Integer;

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSetType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSetType;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSetType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSetType;->$VALUES:[Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSetType;

    invoke-virtual {v0}, [Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSetType;

    return-object v0
.end method


# virtual methods
.method public integerValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionProductSetType;->mValue:Ljava/lang/Integer;

    return-object v0
.end method
