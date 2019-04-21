.class public final enum Lcom/mcdonalds/sdk/modules/models/OffersOperationType;
.super Ljava/lang/Enum;
.source "OffersOperationType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/OffersOperationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/sdk/modules/models/OffersOperationType;

.field public static final enum AllModes:Lcom/mcdonalds/sdk/modules/models/OffersOperationType;

.field public static final enum NoOffers:Lcom/mcdonalds/sdk/modules/models/OffersOperationType;

.field public static final enum OnlyInStore:Lcom/mcdonalds/sdk/modules/models/OffersOperationType;

.field public static final enum OnlyMobile:Lcom/mcdonalds/sdk/modules/models/OffersOperationType;


# instance fields
.field private final mValue:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OffersOperationType;

    const-string v1, "NoOffers"

    invoke-direct {v0, v1, v2, v2}, Lcom/mcdonalds/sdk/modules/models/OffersOperationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/OffersOperationType;->NoOffers:Lcom/mcdonalds/sdk/modules/models/OffersOperationType;

    .line 9
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OffersOperationType;

    const-string v1, "OnlyMobile"

    invoke-direct {v0, v1, v3, v3}, Lcom/mcdonalds/sdk/modules/models/OffersOperationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/OffersOperationType;->OnlyMobile:Lcom/mcdonalds/sdk/modules/models/OffersOperationType;

    .line 10
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OffersOperationType;

    const-string v1, "AllModes"

    invoke-direct {v0, v1, v4, v4}, Lcom/mcdonalds/sdk/modules/models/OffersOperationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/OffersOperationType;->AllModes:Lcom/mcdonalds/sdk/modules/models/OffersOperationType;

    .line 11
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OffersOperationType;

    const-string v1, "OnlyInStore"

    invoke-direct {v0, v1, v5, v5}, Lcom/mcdonalds/sdk/modules/models/OffersOperationType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/OffersOperationType;->OnlyInStore:Lcom/mcdonalds/sdk/modules/models/OffersOperationType;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mcdonalds/sdk/modules/models/OffersOperationType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/OffersOperationType;->NoOffers:Lcom/mcdonalds/sdk/modules/models/OffersOperationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/OffersOperationType;->OnlyMobile:Lcom/mcdonalds/sdk/modules/models/OffersOperationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/OffersOperationType;->AllModes:Lcom/mcdonalds/sdk/modules/models/OffersOperationType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/OffersOperationType;->OnlyInStore:Lcom/mcdonalds/sdk/modules/models/OffersOperationType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/OffersOperationType;->$VALUES:[Lcom/mcdonalds/sdk/modules/models/OffersOperationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OffersOperationType;->mValue:Ljava/lang/Integer;

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/OffersOperationType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/mcdonalds/sdk/modules/models/OffersOperationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OffersOperationType;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/sdk/modules/models/OffersOperationType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/OffersOperationType;->$VALUES:[Lcom/mcdonalds/sdk/modules/models/OffersOperationType;

    invoke-virtual {v0}, [Lcom/mcdonalds/sdk/modules/models/OffersOperationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/sdk/modules/models/OffersOperationType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OffersOperationType;->mValue:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method
