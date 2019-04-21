.class public final enum Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;
.super Ljava/lang/Enum;
.source "Offer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/modules/models/Offer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OfferType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

.field public static final enum OFFER_TYPE_DELIVERY_FEE:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

.field public static final enum OFFER_TYPE_EVERYDAY:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

.field public static final enum OFFER_TYPE_FREQUENCY:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

.field public static final enum OFFER_TYPE_LIMITED_TIME:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

.field public static final enum OFFER_TYPE_LOCATION_BASED:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

.field public static final enum OFFER_TYPE_MSA:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

.field public static final enum OFFER_TYPE_PLACEHOLDER_FOR_ENUM_8:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

.field public static final enum OFFER_TYPE_RENEWABLE_FREQUENCY:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

.field public static final enum OFFER_TYPE_REWARD:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

.field public static final enum OFFER_TYPE_UNKNOWN:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

.field public static final enum OFFER_TYPE_WEEKLY:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 331
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    const-string v1, "OFFER_TYPE_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_UNKNOWN:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    .line 332
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    const-string v1, "OFFER_TYPE_REWARD"

    invoke-direct {v0, v1, v4}, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_REWARD:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    .line 333
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    const-string v1, "OFFER_TYPE_WEEKLY"

    invoke-direct {v0, v1, v5}, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_WEEKLY:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    .line 334
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    const-string v1, "OFFER_TYPE_LIMITED_TIME"

    invoke-direct {v0, v1, v6}, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_LIMITED_TIME:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    .line 335
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    const-string v1, "OFFER_TYPE_EVERYDAY"

    invoke-direct {v0, v1, v7}, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_EVERYDAY:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    .line 336
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    const-string v1, "OFFER_TYPE_FREQUENCY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_FREQUENCY:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    .line 337
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    const-string v1, "OFFER_TYPE_LOCATION_BASED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_LOCATION_BASED:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    .line 338
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    const-string v1, "OFFER_TYPE_MSA"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_MSA:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    .line 339
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    const-string v1, "OFFER_TYPE_PLACEHOLDER_FOR_ENUM_8"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_PLACEHOLDER_FOR_ENUM_8:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    .line 340
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    const-string v1, "OFFER_TYPE_RENEWABLE_FREQUENCY"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_RENEWABLE_FREQUENCY:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    .line 341
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    const-string v1, "OFFER_TYPE_DELIVERY_FEE"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_DELIVERY_FEE:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    .line 330
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_UNKNOWN:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_REWARD:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_WEEKLY:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_LIMITED_TIME:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_EVERYDAY:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_FREQUENCY:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_LOCATION_BASED:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_MSA:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_PLACEHOLDER_FOR_ENUM_8:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_RENEWABLE_FREQUENCY:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->OFFER_TYPE_DELIVERY_FEE:Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->$VALUES:[Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

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
    .line 330
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 330
    const-class v0, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;
    .locals 1

    .prologue
    .line 330
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->$VALUES:[Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    invoke-virtual {v0}, [Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/sdk/modules/models/Offer$OfferType;

    return-object v0
.end method
