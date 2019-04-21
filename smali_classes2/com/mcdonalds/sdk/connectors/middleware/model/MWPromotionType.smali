.class public final enum Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;
.super Ljava/lang/Enum;
.source "MWPromotionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;

.field public static final enum OFFER_TYPE_EVERYDAY:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;

.field public static final enum OFFER_TYPE_FREQUENCY:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;

.field public static final enum OFFER_TYPE_LIMITED_TIME:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;

.field public static final enum OFFER_TYPE_REWARD:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;

.field public static final enum OFFER_TYPE_UNKNOWN:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;

.field public static final enum OFFER_TYPE_WEEKLY:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;


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
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;

    const-string v1, "OFFER_TYPE_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;->OFFER_TYPE_UNKNOWN:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;

    .line 8
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;

    const-string v1, "OFFER_TYPE_REWARD"

    invoke-direct {v0, v1, v4}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;->OFFER_TYPE_REWARD:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;

    .line 9
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;

    const-string v1, "OFFER_TYPE_WEEKLY"

    invoke-direct {v0, v1, v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;->OFFER_TYPE_WEEKLY:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;

    .line 10
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;

    const-string v1, "OFFER_TYPE_LIMITED_TIME"

    invoke-direct {v0, v1, v6}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;->OFFER_TYPE_LIMITED_TIME:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;

    .line 11
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;

    const-string v1, "OFFER_TYPE_EVERYDAY"

    invoke-direct {v0, v1, v7}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;->OFFER_TYPE_EVERYDAY:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;

    .line 12
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;

    const-string v1, "OFFER_TYPE_FREQUENCY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;->OFFER_TYPE_FREQUENCY:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;

    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;->OFFER_TYPE_UNKNOWN:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;->OFFER_TYPE_REWARD:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;->OFFER_TYPE_WEEKLY:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;->OFFER_TYPE_LIMITED_TIME:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;->OFFER_TYPE_EVERYDAY:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;->OFFER_TYPE_FREQUENCY:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;->$VALUES:[Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;->$VALUES:[Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;

    invoke-virtual {v0}, [Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/sdk/connectors/middleware/model/MWPromotionType;

    return-object v0
.end method
