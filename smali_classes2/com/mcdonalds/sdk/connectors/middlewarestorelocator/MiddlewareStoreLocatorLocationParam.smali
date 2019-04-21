.class public final enum Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;
.super Ljava/lang/Enum;
.source "MiddlewareStoreLocatorLocationParam.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

.field public static final enum AREA:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

.field public static final enum BRANCH:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

.field public static final enum CITY_TOWN:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

.field public static final enum COUNTY:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

.field public static final enum CROSS_STREETS:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

.field public static final enum DISTANCE:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

.field public static final enum DISTRICT:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

.field public static final enum LATITUDE:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

.field public static final enum LONGITUDE:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

.field public static final enum REGION:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

.field public static final enum STATE_PROVINCE:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

.field public static final enum SUBDIVISION:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

.field public static final enum ZIP_POSTAL:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;


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

    .line 6
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    const-string v1, "LATITUDE"

    const-string v2, "latitude"

    invoke-direct {v0, v1, v4, v2}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->LATITUDE:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    .line 7
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    const-string v1, "LONGITUDE"

    const-string v2, "longitude"

    invoke-direct {v0, v1, v5, v2}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->LONGITUDE:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    .line 8
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    const-string v1, "DISTANCE"

    const-string v2, "distance"

    invoke-direct {v0, v1, v6, v2}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->DISTANCE:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    .line 9
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    const-string v1, "CITY_TOWN"

    const-string v2, "cityTown"

    invoke-direct {v0, v1, v7, v2}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->CITY_TOWN:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    .line 10
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    const-string v1, "STATE_PROVINCE"

    const-string v2, "stateProvince"

    invoke-direct {v0, v1, v8, v2}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->STATE_PROVINCE:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    .line 11
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    const-string v1, "REGION"

    const/4 v2, 0x5

    const-string v3, "region"

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->REGION:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    .line 12
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    const-string v1, "ZIP_POSTAL"

    const/4 v2, 0x6

    const-string v3, "zipCode"

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->ZIP_POSTAL:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    .line 13
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    const-string v1, "AREA"

    const/4 v2, 0x7

    const-string v3, "area"

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->AREA:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    .line 14
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    const-string v1, "COUNTY"

    const/16 v2, 0x8

    const-string v3, "county"

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->COUNTY:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    .line 15
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    const-string v1, "BRANCH"

    const/16 v2, 0x9

    const-string v3, "branch"

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->BRANCH:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    .line 16
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    const-string v1, "DISTRICT"

    const/16 v2, 0xa

    const-string v3, "district"

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->DISTRICT:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    .line 17
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    const-string v1, "SUBDIVISION"

    const/16 v2, 0xb

    const-string v3, "subdivision"

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->SUBDIVISION:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    .line 18
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    const-string v1, "CROSS_STREETS"

    const/16 v2, 0xc

    const-string v3, "crossStreets"

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->CROSS_STREETS:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    .line 3
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->LATITUDE:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->LONGITUDE:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->DISTANCE:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->CITY_TOWN:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->STATE_PROVINCE:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->REGION:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->ZIP_POSTAL:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->AREA:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->COUNTY:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->BRANCH:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->DISTRICT:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->SUBDIVISION:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->CROSS_STREETS:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->$VALUES:[Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->text:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->$VALUES:[Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    invoke-virtual {v0}, [Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorLocationParam;->text:Ljava/lang/String;

    return-object v0
.end method
