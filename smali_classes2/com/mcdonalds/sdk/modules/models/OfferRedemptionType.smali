.class public final enum Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;
.super Ljava/lang/Enum;
.source "OfferRedemptionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

.field public static final enum OFFER_REDEMPTION_TYPE_ABSOLUTE:Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

.field public static final enum OFFER_REDEMPTION_TYPE_PERCENT:Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

.field public static final enum OFFER_REDEMPTION_TYPE_RELATIVE:Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

.field public static final enum OFFER_REDEMPTION_TYPE_UNUSED:Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    const-string v1, "OFFER_REDEMPTION_TYPE_UNUSED"

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;->OFFER_REDEMPTION_TYPE_UNUSED:Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    .line 8
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    const-string v1, "OFFER_REDEMPTION_TYPE_PERCENT"

    invoke-direct {v0, v1, v3}, Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;->OFFER_REDEMPTION_TYPE_PERCENT:Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    .line 9
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    const-string v1, "OFFER_REDEMPTION_TYPE_RELATIVE"

    invoke-direct {v0, v1, v4}, Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;->OFFER_REDEMPTION_TYPE_RELATIVE:Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    .line 10
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    const-string v1, "OFFER_REDEMPTION_TYPE_ABSOLUTE"

    invoke-direct {v0, v1, v5}, Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;->OFFER_REDEMPTION_TYPE_ABSOLUTE:Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;->OFFER_REDEMPTION_TYPE_UNUSED:Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;->OFFER_REDEMPTION_TYPE_PERCENT:Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;->OFFER_REDEMPTION_TYPE_RELATIVE:Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;->OFFER_REDEMPTION_TYPE_ABSOLUTE:Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;->$VALUES:[Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;->$VALUES:[Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    invoke-virtual {v0}, [Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/sdk/modules/models/OfferRedemptionType;

    return-object v0
.end method
