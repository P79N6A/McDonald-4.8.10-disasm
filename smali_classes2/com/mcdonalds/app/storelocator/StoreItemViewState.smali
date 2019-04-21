.class public final enum Lcom/mcdonalds/app/storelocator/StoreItemViewState;
.super Ljava/lang/Enum;
.source "StoreItemViewState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/app/storelocator/StoreItemViewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/app/storelocator/StoreItemViewState;

.field public static final enum Current:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

.field public static final enum CurrentAndFavorite:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

.field public static final enum ExpandedFavoritePlaceOrder:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

.field public static final enum ExpandedNickname:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

.field public static final enum ExpandedPlaceOrder:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

.field public static final enum ExpandedSelectCurrent:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

.field public static final enum Favorite:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

.field public static final enum Normal:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

.field public static final enum Offer:Lcom/mcdonalds/app/storelocator/StoreItemViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v3}, Lcom/mcdonalds/app/storelocator/StoreItemViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->Normal:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    .line 9
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    const-string v1, "Favorite"

    invoke-direct {v0, v1, v4}, Lcom/mcdonalds/app/storelocator/StoreItemViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->Favorite:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    .line 10
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    const-string v1, "Offer"

    invoke-direct {v0, v1, v5}, Lcom/mcdonalds/app/storelocator/StoreItemViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->Offer:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    .line 11
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    const-string v1, "Current"

    invoke-direct {v0, v1, v6}, Lcom/mcdonalds/app/storelocator/StoreItemViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->Current:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    .line 12
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    const-string v1, "CurrentAndFavorite"

    invoke-direct {v0, v1, v7}, Lcom/mcdonalds/app/storelocator/StoreItemViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->CurrentAndFavorite:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    .line 13
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    const-string v1, "ExpandedPlaceOrder"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/storelocator/StoreItemViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->ExpandedPlaceOrder:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    .line 14
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    const-string v1, "ExpandedFavoritePlaceOrder"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/storelocator/StoreItemViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->ExpandedFavoritePlaceOrder:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    .line 15
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    const-string v1, "ExpandedNickname"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/storelocator/StoreItemViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->ExpandedNickname:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    .line 16
    new-instance v0, Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    const-string v1, "ExpandedSelectCurrent"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/app/storelocator/StoreItemViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->ExpandedSelectCurrent:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    .line 6
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->Normal:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->Favorite:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->Offer:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->Current:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->CurrentAndFavorite:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->ExpandedPlaceOrder:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->ExpandedFavoritePlaceOrder:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->ExpandedNickname:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->ExpandedSelectCurrent:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->$VALUES:[Lcom/mcdonalds/app/storelocator/StoreItemViewState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/app/storelocator/StoreItemViewState;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.storelocator.StoreItemViewState"

    const-string v2, "valueOf"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    const-class v0, Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/app/storelocator/StoreItemViewState;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "com.mcdonalds.app.storelocator.StoreItemViewState"

    const-string v1, "values"

    invoke-static {v2, v0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->$VALUES:[Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    invoke-virtual {v0}, [Lcom/mcdonalds/app/storelocator/StoreItemViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    return-object v0
.end method


# virtual methods
.method public isExpandedState()Z
    .locals 2

    .prologue
    const-string v0, "isExpandedState"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->ExpandedPlaceOrder:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->ExpandedFavoritePlaceOrder:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->ExpandedNickname:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreItemViewState;->ExpandedSelectCurrent:Lcom/mcdonalds/app/storelocator/StoreItemViewState;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
