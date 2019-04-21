.class public final enum Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;
.super Ljava/lang/Enum;
.source "GoogleAPIFilter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

.field public static final enum DriveThru:Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

.field public static final enum GiftCards:Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

.field public static final enum MobileOffers:Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

.field public static final enum MobileOrdering:Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

.field public static final enum PlayLand:Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

.field public static final enum WiFi:Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;


# instance fields
.field private text:Ljava/lang/String;


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
    new-instance v0, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

    const-string v1, "PlayLand"

    const-string v2, "PlayLand"

    invoke-direct {v0, v1, v4, v2}, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;->PlayLand:Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

    .line 9
    new-instance v0, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

    const-string v1, "DriveThru"

    const-string v2, "DriveThru"

    invoke-direct {v0, v1, v5, v2}, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;->DriveThru:Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

    .line 10
    new-instance v0, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

    const-string v1, "WiFi"

    const-string v2, "WiFi"

    invoke-direct {v0, v1, v6, v2}, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;->WiFi:Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

    .line 11
    new-instance v0, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

    const-string v1, "GiftCards"

    const-string v2, "GiftCards"

    invoke-direct {v0, v1, v7, v2}, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;->GiftCards:Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

    .line 12
    new-instance v0, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

    const-string v1, "MobileOffers"

    const-string v2, "MobileOffers"

    invoke-direct {v0, v1, v8, v2}, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;->MobileOffers:Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

    .line 13
    new-instance v0, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

    const-string v1, "MobileOrdering"

    const/4 v2, 0x5

    const-string v3, "MobileOrdering"

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;->MobileOrdering:Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

    sget-object v1, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;->PlayLand:Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;->DriveThru:Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;->WiFi:Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;->GiftCards:Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;->MobileOffers:Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;->MobileOrdering:Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;->$VALUES:[Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;->text:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;->$VALUES:[Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

    invoke-virtual {v0}, [Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/google/GoogleAPIFilter;->text:Ljava/lang/String;

    return-object v0
.end method
