.class public final enum Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;
.super Ljava/lang/Enum;
.source "MiddlewareStoreLocatorSearchParam.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

.field public static final enum Attribute:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

.field public static final enum Locale:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

.field public static final enum Location:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

.field public static final enum Market:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

.field public static final enum PageSize:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

.field public static final enum Query:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

.field public static final enum StoreId:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

.field public static final enum StoreIdType:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;


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
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    const-string v1, "Location"

    const-string v2, "locationCriteria"

    invoke-direct {v0, v1, v4, v2}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->Location:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    .line 7
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    const-string v1, "Attribute"

    const-string v2, "storeAttributes"

    invoke-direct {v0, v1, v5, v2}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->Attribute:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    .line 8
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    const-string v1, "PageSize"

    const-string v2, "pageSize"

    invoke-direct {v0, v1, v6, v2}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->PageSize:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    .line 9
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    const-string v1, "StoreIdType"

    const-string v2, "storeUniqueIdType"

    invoke-direct {v0, v1, v7, v2}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->StoreIdType:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    .line 10
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    const-string v1, "StoreId"

    const-string v2, "storeUniqueId"

    invoke-direct {v0, v1, v8, v2}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->StoreId:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    .line 11
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    const-string v1, "Market"

    const/4 v2, 0x5

    const-string v3, "market"

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->Market:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    .line 12
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    const-string v1, "Locale"

    const/4 v2, 0x6

    const-string v3, "local"

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->Locale:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    .line 13
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    const-string v1, "Query"

    const/4 v2, 0x7

    const-string v3, "query"

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->Query:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    .line 3
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->Location:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->Attribute:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->PageSize:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->StoreIdType:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->StoreId:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->Market:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->Locale:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->Query:Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->$VALUES:[Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

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
    iput-object p3, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->text:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->$VALUES:[Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    invoke-virtual {v0}, [Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middlewarestorelocator/MiddlewareStoreLocatorSearchParam;->text:Ljava/lang/String;

    return-object v0
.end method
