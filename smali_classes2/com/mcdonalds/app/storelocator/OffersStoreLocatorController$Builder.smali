.class public Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;
.super Ljava/lang/Object;
.source "OffersStoreLocatorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAutoSelectClosestStore:Z

.field private mCurrentStoreSelectionMode:Z

.field private mInitialMarkerStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

.field private mIsMapOnly:Z

.field private mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

.field private mOfferSelectionType:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

.field private mOffersStoreLocatorController:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;

.field private mShouldDismissOnPlaceOrder:Z

.field private mStoreIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mUrlNavigationFragment:Lcom/mcdonalds/app/ui/URLNavigationFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    sget-object v0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;->Nearby:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;->mOfferSelectionType:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    return-void
.end method


# virtual methods
.method public create()Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;
    .locals 11

    .prologue
    const/4 v5, 0x0

    const-string v0, "create"

    invoke-static {p0, v0, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    new-instance v0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;

    iget-object v1, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;->mUrlNavigationFragment:Lcom/mcdonalds/app/ui/URLNavigationFragment;

    iget-boolean v2, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;->mIsMapOnly:Z

    iget-boolean v3, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;->mCurrentStoreSelectionMode:Z

    iget-boolean v4, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;->mAutoSelectClosestStore:Z

    iget-boolean v6, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;->mShouldDismissOnPlaceOrder:Z

    iget-object v7, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;->mStoreIdList:Ljava/util/List;

    iget-object v8, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;->mOfferSelectionType:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    iget-object v9, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;->mInitialMarkerStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    iget-object v10, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    invoke-direct/range {v0 .. v10}, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;-><init>(Lcom/mcdonalds/app/ui/URLNavigationFragment;ZZZLjava/lang/String;ZLjava/util/List;Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;Lcom/mcdonalds/sdk/modules/storelocator/Store;Lcom/mcdonalds/sdk/modules/models/Offer;)V

    iput-object v0, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;->mOffersStoreLocatorController:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;

    .line 256
    iget-object v0, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;->mOffersStoreLocatorController:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController;

    return-object v0
.end method

.method public hasCurrentStoreSelectionMode(Z)Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;
    .locals 4
    .param p1, "currentStoreSelectionMode"    # Z

    .prologue
    const-string v0, "hasCurrentStoreSelectionMode"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    iput-boolean p1, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;->mCurrentStoreSelectionMode:Z

    .line 235
    return-object p0
.end method

.method public isMapOnly(Z)Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;
    .locals 4
    .param p1, "isMapOnly"    # Z

    .prologue
    const-string v0, "isMapOnly"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    iput-boolean p1, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;->mIsMapOnly:Z

    .line 230
    return-object p0
.end method

.method public shouldAutoSelectClosestStore(Z)Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;
    .locals 4
    .param p1, "autoSelectClosestStore"    # Z

    .prologue
    const-string v0, "shouldAutoSelectClosestStore"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    iput-boolean p1, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;->mAutoSelectClosestStore:Z

    .line 240
    return-object p0
.end method

.method public shouldDismissOnPlaceOrder(Z)Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;
    .locals 4
    .param p1, "shouldDismissOnPlaceOrder"    # Z

    .prologue
    const-string v0, "shouldDismissOnPlaceOrder"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 244
    iput-boolean p1, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;->mShouldDismissOnPlaceOrder:Z

    .line 245
    return-object p0
.end method

.method public useOffer(Lcom/mcdonalds/sdk/modules/models/Offer;)Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;
    .locals 3
    .param p1, "offer"    # Lcom/mcdonalds/sdk/modules/models/Offer;

    .prologue
    const-string v0, "useOffer"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 275
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;->mOffer:Lcom/mcdonalds/sdk/modules/models/Offer;

    .line 276
    return-object p0
.end method

.method public withOfferSelectionType(Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;)Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;
    .locals 3
    .param p1, "offerSelectionType"    # Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    .prologue
    const-string v0, "withOfferSelectionType"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;->mOfferSelectionType:Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$OfferSelection;

    .line 266
    return-object p0
.end method

.method public withStoreIds(Ljava/util/List;)Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;"
        }
    .end annotation

    .prologue
    .local p1, "storeIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-string v0, "withStoreIds"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;->mStoreIdList:Ljava/util/List;

    .line 250
    return-object p0
.end method

.method public withTargetMarkerStore(Lcom/mcdonalds/sdk/modules/storelocator/Store;)Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;
    .locals 3
    .param p1, "initialMarkerStore"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    const-string v0, "withTargetMarkerStore"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;->mInitialMarkerStore:Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 271
    return-object p0
.end method

.method public withUrlNavigationFragment(Lcom/mcdonalds/app/ui/URLNavigationFragment;)Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;
    .locals 3
    .param p1, "urlNavigationFragment"    # Lcom/mcdonalds/app/ui/URLNavigationFragment;

    .prologue
    const-string v0, "withUrlNavigationFragment"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    iput-object p1, p0, Lcom/mcdonalds/app/storelocator/OffersStoreLocatorController$Builder;->mUrlNavigationFragment:Lcom/mcdonalds/app/ui/URLNavigationFragment;

    .line 225
    return-object p0
.end method
