.class public final enum Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;
.super Ljava/lang/Enum;
.source "StoreLocatorDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OfferState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

.field public static final enum INVALID_OFFER:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

.field public static final enum INVALID_PUNCHCARD_OFFER:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

.field public static final enum NO_OFFER:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

.field public static final enum VALID_OFFER:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 15
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    const-string v1, "VALID_OFFER"

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;->VALID_OFFER:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    .line 16
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    const-string v1, "INVALID_OFFER"

    invoke-direct {v0, v1, v3}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;->INVALID_OFFER:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    .line 17
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    const-string v1, "INVALID_PUNCHCARD_OFFER"

    invoke-direct {v0, v1, v4}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;->INVALID_PUNCHCARD_OFFER:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    .line 18
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    const-string v1, "NO_OFFER"

    invoke-direct {v0, v1, v5}, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;->NO_OFFER:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    .line 14
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;->VALID_OFFER:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;->INVALID_OFFER:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;->INVALID_PUNCHCARD_OFFER:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;->NO_OFFER:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;->$VALUES:[Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreLocatorDataProvider$OfferState"

    const-string v2, "valueOf"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    const-class v0, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.storelocator.StoreLocatorDataProvider$OfferState"

    const-string v1, "values"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;->$VALUES:[Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    invoke-virtual {v0}, [Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    return-object v0
.end method
