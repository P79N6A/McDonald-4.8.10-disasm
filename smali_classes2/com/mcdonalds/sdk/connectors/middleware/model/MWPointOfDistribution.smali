.class public final enum Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;
.super Ljava/lang/Enum;
.source "MWPointOfDistribution.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

.field public static final enum CSO:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

.field public static final enum ColdKiosk:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

.field public static final enum ColdKioskDrink:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

.field public static final enum Delivery:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

.field public static final enum DriveThru:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

.field public static final enum FrontCounter:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

.field public static final enum HOT:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

.field public static final enum McCafe:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

.field public static final enum McExpress:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

.field public static final enum WalkThru:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;


# instance fields
.field private final mValue:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 8
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    const-string v1, "FrontCounter"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->FrontCounter:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    .line 9
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    const-string v1, "DriveThru"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->DriveThru:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    .line 10
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    const-string v1, "WalkThru"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->WalkThru:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    .line 11
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    const-string v1, "Delivery"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->Delivery:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    .line 12
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    const-string v1, "ColdKiosk"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->ColdKiosk:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    .line 13
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    const-string v1, "McCafe"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->McCafe:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    .line 14
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    const-string v1, "McExpress"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->McExpress:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    .line 15
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    const-string v1, "ColdKioskDrink"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->ColdKioskDrink:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    .line 16
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    const-string v1, "CSO"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->CSO:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    .line 17
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    const-string v1, "HOT"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->HOT:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    .line 7
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->FrontCounter:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->DriveThru:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->WalkThru:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->Delivery:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->ColdKiosk:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->McCafe:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->McExpress:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->ColdKioskDrink:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->CSO:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->HOT:Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->$VALUES:[Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->mValue:Ljava/lang/Integer;

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->$VALUES:[Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    invoke-virtual {v0}, [Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;

    return-object v0
.end method


# virtual methods
.method public integerValue()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistribution;->mValue:Ljava/lang/Integer;

    return-object v0
.end method
