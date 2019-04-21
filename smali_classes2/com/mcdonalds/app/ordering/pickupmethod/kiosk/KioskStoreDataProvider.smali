.class public Lcom/mcdonalds/app/ordering/pickupmethod/kiosk/KioskStoreDataProvider;
.super Ljava/lang/Object;
.source "KioskStoreDataProvider.java"

# interfaces
.implements Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public allowsFavoritingWithoutMobileOrdering()Z
    .locals 2

    .prologue
    const-string v0, "allowsFavoritingWithoutMobileOrdering"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public allowsSelectionWithoutMobileOrdering()Z
    .locals 2

    .prologue
    const-string v0, "allowsSelectionWithoutMobileOrdering"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "getCurrentStore"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    return-object v1
.end method

.method public getFavoriteStores()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string v0, "getFavoriteStores"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    return-object v1
.end method

.method public getLastLocation()Landroid/location/Location;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "getLastLocation"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    return-object v1
.end method

.method public getMapPinResID(Ljava/lang/Integer;)I
    .locals 3
    .param p1, "storeId"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x0

    const-string v0, "getMapPinResID"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    return v2
.end method

.method public getNearByStores()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const-string v0, "getNearByStores"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    return-object v1
.end method

.method public getOfferState(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/app/storelocator/StoreLocatorDataProvider$OfferState;
    .locals 3
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const-string v0, "getOfferState"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectMapPinResID(Ljava/lang/Integer;)I
    .locals 3
    .param p1, "storeId"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x0

    const-string v0, "getSelectMapPinResID"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    return v2
.end method

.method public getSelectedStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "getSelectedStore"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    return-object v1
.end method

.method public getSelectedStoreId()Ljava/lang/Integer;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "getSelectedStoreId"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    return-object v1
.end method

.method public getSelectedStoreNickName()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "getSelectedStoreNickName"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    return-object v1
.end method

.method public getSelectedStoreSection()Lcom/mcdonalds/app/storelocator/StoreLocatorSection;
    .locals 2

    .prologue
    const/4 v1, 0x0

    const-string v0, "getSelectedStoreSection"

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    return-object v1
.end method

.method public isCurrentStoreSelectionMode()Z
    .locals 2

    .prologue
    const-string v0, "isCurrentStoreSelectionMode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public locationServicesEnabled()Z
    .locals 2

    .prologue
    const-string v0, "locationServicesEnabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public stateForStore(Ljava/lang/Integer;Lcom/mcdonalds/app/storelocator/StoreLocatorSection;)Lcom/mcdonalds/app/storelocator/StoreItemViewState;
    .locals 3
    .param p1, "storeId"    # Ljava/lang/Integer;
    .param p2, "section"    # Lcom/mcdonalds/app/storelocator/StoreLocatorSection;

    .prologue
    const-string v0, "stateForStore"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    const/4 v0, 0x0

    return-object v0
.end method
