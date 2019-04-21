.class public Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;
.super Lcom/mcdonalds/app/storelocator/StoreLocatorController;
.source "OffersStoreLocatorController.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;,
        Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;
    }
.end annotation


# static fields
.field private static OFFER_UNAVAILABLE_MAP_ICON_RES_ID:I

.field private static OFFER_UNAVAILABLE_SELECTED_MAP_ICON_RES_ID:I

.field private static OFFER_VALID_MAP_ICON_RES_ID:I

.field private static OFFER_VALID_SELECTED_MAP_ICON_RES_ID:I


# instance fields
.field private mInitialMarkerStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

.field private final mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

.field private mOfferSelectionType:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

.field private mOfferStoresIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput v0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->OFFER_VALID_SELECTED_MAP_ICON_RES_ID:I

    .line 27
    sput v0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->OFFER_VALID_MAP_ICON_RES_ID:I

    .line 31
    sput v0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->OFFER_UNAVAILABLE_SELECTED_MAP_ICON_RES_ID:I

    .line 32
    sput v0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->OFFER_UNAVAILABLE_MAP_ICON_RES_ID:I

    return-void
.end method

.method public constructor <init>(Lcom/mcdonalds/app/ui/URLNavigationFragment;ZZZLjava/lang/String;ZLjava/util/List;Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/modules/models/Offer;)V
    .locals 3
    .param p1, "urlNavigationFragment"    # Lcom/mcdonalds/app/ui/URLNavigationFragment;
    .param p2, "mapOnly"    # Z
    .param p3, "currentStoreSelectionMode"    # Z
    .param p4, "autoSelectClosestStore"    # Z
    .param p5, "nearbySearchAddress"    # Ljava/lang/String;
    .param p6, "dismissOnPlaceOrder"    # Z
    .param p8, "offerSelectionType"    # Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;
    .param p9, "initialMarkerStore"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .param p10, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/app/ui/URLNavigationFragment;",
            "ZZZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            "Lcom/mcdonalds/sdk/modules/models/Offer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    .local p7, "offerStoresId":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p6}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;-><init>(Lcom/mcdonalds/app/ui/URLNavigationFragment;ZZZLjava/lang/String;Z)V

    .line 43
    iput-object p7, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->mOfferStoresIds:Ljava/util/List;

    .line 44
    iput-object p8, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->mOfferSelectionType:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    .line 45
    iput-object p9, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->mInitialMarkerStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 46
    iput-object p10, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 48
    if-eqz p9, :cond_0

    .line 50
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Nearby:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .line 51
    .local v0, "section":Lcom/mcdonalds/app/storelocator/StoreLocatorSection;
    sget-object v1, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$1;->$SwitchMap$com$mcdonalds$app$storelocator$OffersStoreLocatorController$OfferSelection:[I

    invoke-virtual {p8}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 60
    :goto_0
    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->mInitialMarkerStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->selectStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)V

    .line 62
    .end local v0    # "section":Lcom/mcdonalds/app/storelocator/StoreLocatorSection;
    :cond_0
    return-void

    .line 53
    .restart local v0    # "section":Lcom/mcdonalds/app/storelocator/StoreLocatorSection;
    :pswitch_0
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Current:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .line 54
    goto :goto_0

    .line 57
    :pswitch_1
    sget-object v0, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Favorites:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    goto :goto_0

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private findStoreById(Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 4
    .param p1, "storeID"    # Ljava/lang/Integer;

    .prologue
    const-string v1, "findStoreById"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Nearby:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-virtual {p0, p1, v1}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->getStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 135
    .local v0, "ret":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-nez v0, :cond_0

    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Favorites:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-virtual {p0, p1, v1}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->getStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 136
    :cond_0
    if-nez v0, :cond_1

    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Current:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-virtual {p0, p1, v1}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->getStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    .line 138
    :cond_1
    return-object v0
.end method

.method private getUnavailableMapIconResID()I
    .locals 2

    .prologue
    const-string v0, "getUnavailableMapIconResID"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    sget v0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->OFFER_UNAVAILABLE_MAP_ICON_RES_ID:I

    if-nez v0, :cond_0

    .line 172
    const-string v0, "interface.storelocator.offerUnavailableUnselectedMapIcon"

    const-string v1, "pin_gray"

    .line 173
    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->getDrawableResIDByString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->OFFER_UNAVAILABLE_MAP_ICON_RES_ID:I

    .line 176
    :cond_0
    sget v0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->OFFER_UNAVAILABLE_MAP_ICON_RES_ID:I

    return v0
.end method

.method private getUnavailableSelectedMapIconResID()I
    .locals 2

    .prologue
    const-string v0, "getUnavailableSelectedMapIconResID"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    sget v0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->OFFER_UNAVAILABLE_SELECTED_MAP_ICON_RES_ID:I

    if-nez v0, :cond_0

    .line 163
    const-string v0, "interface.storelocator.offerUnavailableSelectedMapIcon"

    const-string v1, "pin_gray_outline"

    .line 164
    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->getDrawableResIDByString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->OFFER_UNAVAILABLE_SELECTED_MAP_ICON_RES_ID:I

    .line 167
    :cond_0
    sget v0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->OFFER_UNAVAILABLE_SELECTED_MAP_ICON_RES_ID:I

    return v0
.end method

.method private getValidMapIconResID()I
    .locals 2

    .prologue
    const-string v0, "getValidMapIconResID"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    sget v0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->OFFER_VALID_MAP_ICON_RES_ID:I

    if-nez v0, :cond_0

    .line 153
    const-string v0, "interface.storelocator.offerValidUnselectedMapIcon"

    const-string v1, "offer_pin_yellow"

    .line 154
    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->getDrawableResIDByString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->OFFER_VALID_MAP_ICON_RES_ID:I

    .line 157
    :cond_0
    sget v0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->OFFER_VALID_MAP_ICON_RES_ID:I

    return v0
.end method

.method private getValidSelectedMapIconResID()I
    .locals 2

    .prologue
    const-string v0, "getValidSelectedMapIconResID"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    sget v0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->OFFER_VALID_SELECTED_MAP_ICON_RES_ID:I

    if-nez v0, :cond_0

    .line 144
    const-string v0, "interface.storelocator.offerValidSelectedMapIcon"

    const-string v1, "offer_pin_yellow_outline"

    .line 145
    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->getDrawableResIDByString(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->OFFER_VALID_SELECTED_MAP_ICON_RES_ID:I

    .line 148
    :cond_0
    sget v0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->OFFER_VALID_SELECTED_MAP_ICON_RES_ID:I

    return v0
.end method


# virtual methods
.method public getMapPinResID(Ljava/lang/Integer;)I
    .locals 5
    .param p1, "storeId"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const-string v3, "getMapPinResID"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->getNearByStores()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->getNearByStores()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v2

    .line 90
    .local v0, "isValid":Z
    :cond_1
    if-nez v0, :cond_2

    sget-object v2, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Nearby:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-virtual {p0, p1, v2}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->getOfferState(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    move-result-object v2

    sget-object v3, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;->VALID_OFFER:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    if-ne v2, v3, :cond_3

    .line 91
    :cond_2
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->getValidMapIconResID()I

    move-result v1

    .line 96
    .local v1, "ret":I
    :goto_0
    return v1

    .line 93
    .end local v1    # "ret":I
    :cond_3
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->getUnavailableMapIconResID()I

    move-result v1

    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method public getOfferState(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;
    .locals 7
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const-string v4, "getOfferState"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "isValid":Z
    if-eqz p1, :cond_2

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->getStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    .line 105
    .local v2, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->findStoreById(Ljava/lang/Integer;)Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v2

    .line 106
    :cond_0
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->hasMobileOffers()Z

    move-result v3

    .line 107
    .local v3, "storeSupportsOffers":Z
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->mOfferStoresIds:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->mOfferStoresIds:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    .line 109
    :cond_1
    if-eqz v3, :cond_2

    .line 110
    const/4 v0, 0x1

    .line 119
    .end local v2    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .end local v3    # "storeSupportsOffers":Z
    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    .line 120
    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;->VALID_OFFER:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    .line 130
    .local v1, "ret":Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;
    :goto_1
    return-object v1

    .line 111
    .end local v1    # "ret":Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;
    .restart local v2    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .restart local v3    # "storeSupportsOffers":Z
    :cond_3
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->mOfferStoresIds:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 112
    const/4 v0, 0x1

    goto :goto_0

    .line 123
    .end local v2    # "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .end local v3    # "storeSupportsOffers":Z
    :cond_4
    iget-object v4, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-virtual {v4}, Lcom/mcdonalds/sdk/modules/models/Offer;->isPunchCard()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 124
    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;->INVALID_PUNCHCARD_OFFER:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    .restart local v1    # "ret":Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;
    goto :goto_1

    .line 126
    .end local v1    # "ret":Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;
    :cond_5
    sget-object v1, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;->INVALID_OFFER:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    .restart local v1    # "ret":Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;
    goto :goto_1
.end method

.method public getSelectMapPinResID(Ljava/lang/Integer;)I
    .locals 5
    .param p1, "storeId"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const-string v3, "getSelectMapPinResID"

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v0

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->getNearByStores()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->getNearByStores()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v0, v2

    .line 75
    .local v0, "isValid":Z
    :cond_1
    if-nez v0, :cond_2

    sget-object v2, Lcom/mcdonalds/app/storelocator/StoreLocatorSection;->Nearby:Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    invoke-virtual {p0, p1, v2}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->getOfferState(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    move-result-object v2

    sget-object v3, Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;->VALID_OFFER:Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;

    if-ne v2, v3, :cond_3

    .line 76
    :cond_2
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->getValidSelectedMapIconResID()I

    move-result v1

    .line 81
    .local v1, "ret":I
    :goto_0
    return v1

    .line 78
    .end local v1    # "ret":I
    :cond_3
    invoke-direct {p0}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->getUnavailableSelectedMapIconResID()I

    move-result v1

    .restart local v1    # "ret":I
    goto :goto_0
.end method

.method public getSelectedStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 2

    .prologue
    const-string v0, "getSelectedStore"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 195
    invoke-virtual {p0}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->getSelectedStoreId()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->mInitialMarkerStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 198
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->getSelectedStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    goto :goto_0
.end method

.method public isMapOnly()Z
    .locals 2

    .prologue
    const-string v0, "isMapOnly"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method protected updateStoresByLocation(Z)V
    .locals 4
    .param p1, "showActivityIndicator"    # Z

    .prologue
    const/4 v3, 0x0

    const-string v0, "updateStoresByLocation"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Boolean;

    invoke-direct {v2, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->mOfferSelectionType:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    sget-object v1, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;->Current:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->mOfferSelectionType:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    sget-object v1, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;->Favorite:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    if-ne v0, v1, :cond_1

    .line 185
    :cond_0
    invoke-virtual {p0, v3}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;->requestUpdateStoresByCurrentStore(Z)V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-super {p0, p1}, Lcom/mcdonalds/app/storelocator/StoreLocatorController;->updateStoresByLocation(Z)V

    goto :goto_0
.end method
