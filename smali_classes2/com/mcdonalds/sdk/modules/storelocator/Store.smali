.class public Lcom/mcdonalds/sdk/modules/storelocator/Store;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "Store.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private PODs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAddress1:Ljava/lang/String;

.field private mAddress2:Ljava/lang/String;

.field private mAdvancedOrderMaximumTimeLimitMinutes:I

.field private mAdvancedOrderMinimumTimeLimitMinutes:I

.field private mBagChargeEnabled:Z

.field private mBagProductCode:I

.field private mCity:Ljava/lang/String;

.field private mCountry:Ljava/lang/String;

.field private mCurrentStoreStatus:Ljava/lang/String;

.field private mDayPart:I

.field private mDistance:D

.field private mExpectedDeliveryTime:Ljava/lang/String;

.field private mExpectedDeliveryTimeReference:Ljava/lang/String;

.field private mExternalStoreNumber:Ljava/lang/String;

.field private mFacilityNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGBLNumber:Ljava/lang/String;

.field private mGeneralStatus:Ljava/lang/String;

.field private mGeneralStatusIsOpen:Z

.field private mHasMobileOffers:Z

.field private mHasMobileOrdering:Z

.field private mLargeOrderAllowed:Z

.field private mLatitude:D

.field private mLocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;",
            ">;"
        }
    .end annotation
.end field

.field private mLongitude:D

.field private mMaxAdvanceOrderTime:I

.field private mMenuTypeCalendar:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMinAdvanceOrderTime:I

.field private mMinimumOrderValue:D

.field private mNPVersion:Ljava/lang/String;

.field private mNoBagProductCode:I

.field private mNowInStoreLocalTime:Ljava/lang/String;

.field private mOutageProductCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneNumber:Ljava/lang/String;

.field private mPostalCode:Ljava/lang/String;

.field private mPublicName:Ljava/lang/String;

.field private mState:Ljava/lang/String;

.field private mStoreCurrentTiming:Ljava/lang/String;

.field private mStoreCutoffTime:Ljava/lang/String;

.field private mStoreFavoriteId:Ljava/lang/Integer;

.field private mStoreFavoriteName:Ljava/lang/String;

.field private mStoreHours:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStoreId:I

.field private mStoreLongestHour:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStoreLongestOperatingHours:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStoreOpen:Z

.field private mStoreOperatingHours:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStoreType:Ljava/lang/String;

.field private mStoreURL:Ljava/lang/String;

.field private mTODCutoffTime:Ljava/lang/String;

.field private mTableService:Lcom/mcdonalds/sdk/modules/models/TableService;

.field private mTimeDifference:J

.field private mTimeZone:I

.field private podLocation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/PODLocation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1461
    new-instance v0, Lcom/mcdonalds/sdk/modules/storelocator/Store$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mGeneralStatusIsOpen:Z

    .line 110
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1398
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 101
    iput-boolean v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mGeneralStatusIsOpen:Z

    .line 1399
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreId:I

    .line 1400
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mLatitude:D

    .line 1401
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mLongitude:D

    .line 1402
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mDistance:D

    .line 1403
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mAddress1:Ljava/lang/String;

    .line 1404
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mAddress2:Ljava/lang/String;

    .line 1405
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mCity:Ljava/lang/String;

    .line 1406
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mState:Ljava/lang/String;

    .line 1407
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mPostalCode:Ljava/lang/String;

    .line 1408
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mCountry:Ljava/lang/String;

    .line 1409
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreType:Ljava/lang/String;

    .line 1410
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreURL:Ljava/lang/String;

    .line 1411
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mPhoneNumber:Ljava/lang/String;

    .line 1412
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mHasMobileOffers:Z

    .line 1413
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mHasMobileOrdering:Z

    .line 1414
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mFacilityNames:Ljava/util/List;

    .line 1415
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreHours:Ljava/util/List;

    .line 1416
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreLongestHour:Ljava/util/List;

    .line 1418
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMenuTypeCalendar:Ljava/util/List;

    .line 1419
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMenuTypeCalendar:Ljava/util/List;

    const-class v3, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 1421
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mTimeDifference:J

    .line 1422
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mExpectedDeliveryTime:Ljava/lang/String;

    .line 1423
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mExpectedDeliveryTimeReference:Ljava/lang/String;

    .line 1424
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreOpen:Z

    .line 1425
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mDayPart:I

    .line 1426
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mTODCutoffTime:Ljava/lang/String;

    .line 1427
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreCutoffTime:Ljava/lang/String;

    .line 1428
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mLargeOrderAllowed:Z

    .line 1429
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mNPVersion:Ljava/lang/String;

    .line 1430
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMinimumOrderValue:D

    .line 1431
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mExternalStoreNumber:Ljava/lang/String;

    .line 1432
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreFavoriteName:Ljava/lang/String;

    .line 1433
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreFavoriteId:Ljava/lang/Integer;

    .line 1435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->PODs:Ljava/util/List;

    .line 1436
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->PODs:Ljava/util/List;

    const-class v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 1438
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMaxAdvanceOrderTime:I

    .line 1439
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMinAdvanceOrderTime:I

    .line 1440
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mHasMobileOffers:Z

    .line 1441
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mTimeZone:I

    .line 1443
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mLocations:Ljava/util/List;

    .line 1444
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mLocations:Ljava/util/List;

    const-class v3, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 1445
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mOutageProductCodes:Ljava/util/List;

    .line 1446
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mBagChargeEnabled:Z

    .line 1447
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mBagProductCode:I

    .line 1448
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mNoBagProductCode:I

    .line 1449
    const-class v0, Lcom/mcdonalds/sdk/modules/models/TableService;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/TableService;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mTableService:Lcom/mcdonalds/sdk/modules/models/TableService;

    .line 1450
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_6

    :goto_6
    iput-boolean v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mGeneralStatusIsOpen:Z

    .line 1451
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mCurrentStoreStatus:Ljava/lang/String;

    .line 1452
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mGeneralStatus:Ljava/lang/String;

    .line 1453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreOperatingHours:Ljava/util/List;

    .line 1454
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreOperatingHours:Ljava/util/List;

    const-class v1, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 1455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreLongestOperatingHours:Ljava/util/List;

    .line 1456
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreLongestOperatingHours:Ljava/util/List;

    const-class v1, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 1457
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreCurrentTiming:Ljava/lang/String;

    .line 1458
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mPublicName:Ljava/lang/String;

    .line 1459
    return-void

    :cond_0
    move v0, v2

    .line 1412
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 1413
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 1424
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 1428
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 1440
    goto/16 :goto_4

    :cond_5
    move v0, v2

    .line 1446
    goto :goto_5

    :cond_6
    move v1, v2

    .line 1450
    goto :goto_6
.end method

.method public constructor <init>(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 6
    .param p1, "s"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    .line 112
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 101
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mGeneralStatusIsOpen:Z

    .line 113
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v4

    iput v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreId:I

    .line 114
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getLatitude()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mLatitude:D

    .line 115
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getLongitude()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mLongitude:D

    .line 116
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getDistance()D

    move-result-wide v4

    iput-wide v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mDistance:D

    .line 117
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getAddress1()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mAddress1:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getAddress2()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mAddress2:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCity()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mCity:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getState()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mState:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getPostalCode()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mPostalCode:Ljava/lang/String;

    .line 122
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCountry()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mCountry:Ljava/lang/String;

    .line 123
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreType:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreURL()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreURL:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mPhoneNumber:Ljava/lang/String;

    .line 126
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreHours()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreHours:Ljava/util/List;

    .line 127
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreLongestHours()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreLongestHour:Ljava/util/List;

    .line 128
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreOperatingHours()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreOperatingHours:Ljava/util/List;

    .line 129
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreLongestOperatingHours()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreLongestOperatingHours:Ljava/util/List;

    .line 130
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getMenuTypeCalendar()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMenuTypeCalendar:Ljava/util/List;

    .line 131
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getTimeDifference()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mTimeDifference:J

    .line 132
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getGBLNumber()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mGBLNumber:Ljava/lang/String;

    .line 133
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getMaxAdvanceOrderTime()I

    move-result v4

    iput v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMaxAdvanceOrderTime:I

    .line 134
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getMinAdvanceOrderTime()I

    move-result v4

    iput v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMinAdvanceOrderTime:I

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v0, "facilityNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getFacilityNames()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 138
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getFacilityNames()Ljava/util/List;

    move-result-object v2

    .line 139
    .local v2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 140
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setFacilityNames(Ljava/util/List;)V

    .line 145
    .end local v1    # "i":I
    .end local v2    # "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "size":I
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getLocations()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mLocations:Ljava/util/List;

    .line 146
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getOutageProducts()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mOutageProductCodes:Ljava/util/List;

    .line 147
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->isBagChargeEnabled()Z

    move-result v4

    iput-boolean v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mBagChargeEnabled:Z

    .line 148
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getBagProductCode()I

    move-result v4

    iput v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mBagProductCode:I

    .line 149
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getNoBagProductCode()I

    move-result v4

    iput v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mNoBagProductCode:I

    .line 150
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getTableService()Lcom/mcdonalds/sdk/modules/models/TableService;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mTableService:Lcom/mcdonalds/sdk/modules/models/TableService;

    .line 151
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->isGeneralStatusIsOpen()Z

    move-result v4

    iput-boolean v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mGeneralStatusIsOpen:Z

    .line 152
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreCurrentTiming()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreCurrentTiming:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getPODs()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->PODs:Ljava/util/List;

    .line 154
    iget-object v4, p1, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mPublicName:Ljava/lang/String;

    iput-object v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mPublicName:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->hasMobileOrdering()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mHasMobileOrdering:Z

    .line 156
    return-void
.end method

.method private addOneDay(Ljava/util/Date;)Ljava/util/Date;
    .locals 6
    .param p1, "original"    # Ljava/util/Date;

    .prologue
    .line 1083
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v4, 0x5265c00

    add-long v0, v2, v4

    .line 1084
    .local v0, "toTimeMillis":J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object v2
.end method

.method private adjustMenuTypeBasedOnLocations(Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;Z)Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    .locals 15
    .param p1, "item"    # Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    .param p2, "isDelivery"    # Z

    .prologue
    .line 865
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getFromTime()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->parseFromTimeString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 866
    .local v2, "from":Ljava/util/Date;
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getToTime()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->parseToTimeString(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 873
    .local v11, "to":Ljava/util/Date;
    invoke-virtual {v11, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 874
    invoke-direct {p0, v11}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->addOneDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v11

    .line 877
    :cond_0
    const/4 v8, 0x0

    .line 878
    .local v8, "openingHours":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getLocations()Ljava/util/List;

    move-result-object v6

    .line 879
    .local v6, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;>;"
    if-eqz v6, :cond_7

    if-nez p2, :cond_7

    .line 880
    const/4 v5, 0x0

    .line 881
    .local v5, "location":Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_1

    .line 882
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;->getLocationID()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_6

    .line 883
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "location":Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;
    check-cast v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;

    .line 888
    .restart local v5    # "location":Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;
    :cond_1
    if-eqz v5, :cond_2

    .line 889
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;->getStoreAreaOpeningHours()Ljava/util/List;

    move-result-object v8

    .line 905
    .end local v4    # "j":I
    .end local v5    # "location":Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;
    :cond_2
    :goto_1
    invoke-static {v8}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 906
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getWeekDay()I

    move-result v13

    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;

    .line 909
    .local v7, "openingHour":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;
    :try_start_1
    iget-object v13, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;->fromTime:Ljava/lang/String;

    invoke-static {v13}, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->parseToTimeString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 910
    .local v3, "fromTime":Ljava/util/Date;
    iget-object v13, v7, Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;->toTime:Ljava/lang/String;

    invoke-static {v13}, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->parseToTimeString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    .line 912
    .local v12, "toTime":Ljava/util/Date;
    invoke-virtual {v12, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 913
    invoke-direct {p0, v12}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->addOneDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v12

    .line 916
    :cond_3
    invoke-direct {p0, v3, v12}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->isWholeDay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 920
    const-string v13, "enableMultipleMenuTypes"

    invoke-static {v13}, Lcom/mcdonalds/sdk/services/configuration/AppParameters;->getBooleanForParameter(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_a

    const/4 v0, 0x0

    .line 922
    .local v0, "breakfastMenuTypeId":I
    :goto_2
    const-string v13, "enableMultipleMenuTypes"

    invoke-static {v13}, Lcom/mcdonalds/sdk/services/configuration/AppParameters;->getBooleanForParameter(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_b

    const/4 v9, 0x1

    .line 924
    .local v9, "regularMenuTypeId":I
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getMenuTypeId()I

    move-result v13

    if-ne v13, v0, :cond_c

    .line 925
    invoke-virtual {v3, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v13

    if-eqz v13, :cond_4

    .line 926
    move-object v2, v3

    .line 941
    .end local v0    # "breakfastMenuTypeId":I
    .end local v3    # "fromTime":Ljava/util/Date;
    .end local v7    # "openingHour":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;
    .end local v9    # "regularMenuTypeId":I
    .end local v12    # "toTime":Ljava/util/Date;
    :cond_4
    :goto_4
    if-eqz p2, :cond_5

    .line 942
    invoke-direct {p0, v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getDateWithOffset(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    .line 943
    invoke-direct {p0, v11}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getDateWithOffset(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v11

    .line 947
    :cond_5
    new-instance v10, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;

    invoke-direct {v10}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;-><init>()V

    .line 949
    .local v10, "resultMenuTypeCalendarItem":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->formatTimeString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->setFromTime(Ljava/lang/String;)V

    .line 950
    invoke-static {v11}, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->formatTimeString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->setToTime(Ljava/lang/String;)V

    .line 951
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getWeekDay()I

    move-result v13

    invoke-virtual {v10, v13}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->setWeekDay(I)V

    .line 952
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getMenuTypeId()I

    move-result v13

    invoke-virtual {v10, v13}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->setMenuTypeId(I)V

    .line 953
    .end local v2    # "from":Ljava/util/Date;
    .end local v6    # "locations":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;>;"
    .end local v8    # "openingHours":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;>;"
    .end local v10    # "resultMenuTypeCalendarItem":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    .end local v11    # "to":Ljava/util/Date;
    :goto_5
    return-object v10

    .line 867
    :catch_0
    move-exception v1

    .line 868
    .local v1, "e":Ljava/text/ParseException;
    const-string v13, "DAYPART"

    const-string v14, "Error while trying to parse the from and/or to hours of the store day part (getMenuTypeCalendarItem)"

    invoke-static {v13, v14}, Lcom/mcdonalds/sdk/services/log/MCDLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    const/4 v10, 0x0

    goto :goto_5

    .line 881
    .end local v1    # "e":Ljava/text/ParseException;
    .restart local v2    # "from":Ljava/util/Date;
    .restart local v4    # "j":I
    .restart local v5    # "location":Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;
    .restart local v6    # "locations":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;>;"
    .restart local v8    # "openingHours":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;>;"
    .restart local v11    # "to":Ljava/util/Date;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 892
    .end local v4    # "j":I
    .end local v5    # "location":Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;
    :cond_7
    if-eqz v6, :cond_2

    .line 893
    const/4 v5, 0x0

    .line 894
    .restart local v5    # "location":Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_6
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    if-ge v4, v13, :cond_8

    .line 895
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;

    invoke-virtual {v13}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;->getLocationID()I

    move-result v13

    const/4 v14, 0x4

    if-ne v13, v14, :cond_9

    .line 896
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "location":Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;
    check-cast v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;

    .line 900
    .restart local v5    # "location":Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;
    :cond_8
    if-eqz v5, :cond_2

    .line 901
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;->getStoreAreaOpeningHours()Ljava/util/List;

    move-result-object v8

    goto/16 :goto_1

    .line 894
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 920
    .end local v4    # "j":I
    .end local v5    # "location":Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;
    .restart local v3    # "fromTime":Ljava/util/Date;
    .restart local v7    # "openingHour":Lcom/mcdonalds/sdk/connectors/middleware/model/MWOpeningHourItem;
    .restart local v12    # "toTime":Ljava/util/Date;
    :cond_a
    const/4 v0, 0x1

    goto :goto_2

    .line 922
    .restart local v0    # "breakfastMenuTypeId":I
    :cond_b
    const/4 v9, 0x2

    goto :goto_3

    .line 928
    .restart local v9    # "regularMenuTypeId":I
    :cond_c
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getMenuTypeId()I

    move-result v13

    if-ne v13, v9, :cond_4

    .line 929
    invoke-virtual {v12, v11}, Ljava/util/Date;->before(Ljava/util/Date;)Z
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v13

    if-eqz v13, :cond_4

    .line 930
    move-object v11, v12

    goto :goto_4

    .line 934
    .end local v0    # "breakfastMenuTypeId":I
    .end local v3    # "fromTime":Ljava/util/Date;
    .end local v9    # "regularMenuTypeId":I
    .end local v12    # "toTime":Ljava/util/Date;
    :catch_1
    move-exception v1

    .line 935
    .restart local v1    # "e":Ljava/text/ParseException;
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_4
.end method

.method private getBusinessDay(Ljava/util/Calendar;)Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;
    .locals 8
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    .line 463
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->isSingleWeekDay()Z

    move-result v1

    .line 464
    .local v1, "isSingleDay":Z
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getDayOfWeek(Ljava/util/Calendar;)I

    move-result v5

    .line 466
    .local v5, "weekDay":I
    new-instance v3, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;

    invoke-direct {v3, p1}, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;-><init>(Ljava/util/Calendar;)V

    .line 468
    .local v3, "result":Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;
    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMenuTypeCalendar:Ljava/util/List;

    if-eqz v6, :cond_2

    .line 469
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMenuTypeCalendar:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v0, v4, :cond_2

    .line 470
    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMenuTypeCalendar:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;

    .line 472
    .local v2, "item":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    if-nez v1, :cond_0

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getWeekDay()I

    move-result v6

    if-ne v6, v5, :cond_1

    .line 473
    :cond_0
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getFromTime()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getToTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->expandRange(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 478
    .end local v0    # "i":I
    .end local v2    # "item":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    .end local v4    # "size":I
    :cond_2
    return-object v3
.end method

.method private getCurrentMenuTypeCalendarItem(ZLjava/util/Calendar;)Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    .locals 13
    .param p1, "isDelivery"    # Z
    .param p2, "date"    # Ljava/util/Calendar;

    .prologue
    .line 989
    iget-object v11, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMenuTypeCalendar:Ljava/util/List;

    if-eqz v11, :cond_9

    .line 992
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getDayOfWeek(Ljava/util/Calendar;)I

    move-result v10

    .line 993
    .local v10, "weekDay":I
    invoke-virtual {p0, v10}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getPreviousDayOfWeek(I)I

    move-result v7

    .line 994
    .local v7, "prevWeekDay":I
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->isSingleWeekDay()Z

    move-result v4

    .line 995
    .local v4, "isSingleDay":Z
    invoke-static {p2}, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->getCurrentTime(Ljava/util/Calendar;)Ljava/util/Date;

    move-result-object v0

    .line 997
    .local v0, "currentTime":Ljava/util/Date;
    const/4 v3, 0x0

    .local v3, "i":I
    iget-object v11, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMenuTypeCalendar:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "size":I
    :goto_0
    if-ge v3, v8, :cond_9

    .line 998
    iget-object v11, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMenuTypeCalendar:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1003
    .local v6, "menuTypeCalendarItem":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    :try_start_1
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getFromTime()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->parseFromTimeString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 1004
    .local v2, "from":Ljava/util/Date;
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getToTime()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->parseToTimeString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    .line 1005
    .local v9, "to":Ljava/util/Date;
    if-eqz p1, :cond_0

    .line 1006
    invoke-direct {p0, v2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getDateWithOffset(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v2

    .line 1007
    invoke-direct {p0, v9}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getDateWithOffset(Ljava/util/Date;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    .line 1018
    :cond_0
    if-nez v4, :cond_2

    .line 1019
    :try_start_2
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getWeekDay()I

    move-result v11

    if-ne v7, v11, :cond_1

    invoke-virtual {v9, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1020
    :cond_1
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getWeekDay()I

    move-result v11

    if-ne v10, v11, :cond_8

    invoke-virtual {v2, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 1022
    :cond_2
    invoke-direct {p0, v6, p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->adjustMenuTypeBasedOnLocations(Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;Z)Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;

    move-result-object v5

    .line 1023
    .local v5, "item":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    if-eqz v5, :cond_5

    .line 1024
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getFromTime()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->parseFromTimeString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 1025
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getToTime()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->parseToTimeString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    .line 1027
    invoke-virtual {v9, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1028
    invoke-virtual {v0, v9}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 1029
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->addOneDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    .line 1033
    :cond_3
    invoke-direct {p0, v9}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->addOneDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v9

    .line 1036
    :cond_4
    invoke-virtual {v2, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v9, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v11

    if-nez v11, :cond_8

    .line 1065
    .end local v0    # "currentTime":Ljava/util/Date;
    .end local v2    # "from":Ljava/util/Date;
    .end local v3    # "i":I
    .end local v4    # "isSingleDay":Z
    .end local v5    # "item":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    .end local v6    # "menuTypeCalendarItem":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    .end local v7    # "prevWeekDay":I
    .end local v8    # "size":I
    .end local v9    # "to":Ljava/util/Date;
    .end local v10    # "weekDay":I
    :goto_1
    return-object v5

    .line 1009
    .restart local v0    # "currentTime":Ljava/util/Date;
    .restart local v3    # "i":I
    .restart local v4    # "isSingleDay":Z
    .restart local v6    # "menuTypeCalendarItem":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    .restart local v7    # "prevWeekDay":I
    .restart local v8    # "size":I
    .restart local v10    # "weekDay":I
    :catch_0
    move-exception v1

    .line 1010
    .local v1, "e":Ljava/text/ParseException;
    const-string v11, "DAYPART"

    const-string v12, "Error while trying to parse the from and/or to hours of the store day part (getCurrentMenuTypeCalendarItem)"

    invoke-static {v11, v12}, Lcom/mcdonalds/sdk/services/log/MCDLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    const/4 v5, 0x0

    goto :goto_1

    .line 1041
    .end local v1    # "e":Ljava/text/ParseException;
    .restart local v2    # "from":Ljava/util/Date;
    .restart local v5    # "item":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    .restart local v9    # "to":Ljava/util/Date;
    :cond_5
    invoke-virtual {v9, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 1042
    invoke-virtual {v0, v9}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1043
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->addOneDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    .line 1047
    :cond_6
    invoke-direct {p0, v9}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->addOneDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v9

    .line 1050
    :cond_7
    invoke-virtual {v2, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v11

    if-nez v11, :cond_8

    invoke-virtual {v9, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v11

    if-nez v11, :cond_8

    move-object v5, v6

    .line 1051
    goto :goto_1

    .line 997
    .end local v5    # "item":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 1058
    .end local v0    # "currentTime":Ljava/util/Date;
    .end local v2    # "from":Ljava/util/Date;
    .end local v3    # "i":I
    .end local v4    # "isSingleDay":Z
    .end local v6    # "menuTypeCalendarItem":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    .end local v7    # "prevWeekDay":I
    .end local v8    # "size":I
    .end local v9    # "to":Ljava/util/Date;
    .end local v10    # "weekDay":I
    :catch_1
    move-exception v1

    .line 1060
    .restart local v1    # "e":Ljava/text/ParseException;
    const/4 v5, 0x0

    goto :goto_1

    .line 1065
    .end local v1    # "e":Ljava/text/ParseException;
    :cond_9
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private getDateWithOffset(Ljava/util/Date;)Ljava/util/Date;
    .locals 8
    .param p1, "originalDate"    # Ljava/util/Date;

    .prologue
    .line 1070
    const-string v4, "DeliveryDaypartOffsetInMinutes"

    invoke-static {v4}, Lcom/mcdonalds/sdk/services/configuration/AppParameters;->getAppParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1072
    .local v1, "offsetString":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1078
    .end local p1    # "originalDate":Ljava/util/Date;
    :goto_0
    return-object p1

    .line 1076
    .restart local p1    # "originalDate":Ljava/util/Date;
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    mul-int/lit16 v0, v4, 0x3e8

    .line 1077
    .local v0, "offset":I
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    int-to-long v6, v0

    sub-long v2, v4, v6

    .line 1078
    .local v2, "time":J
    new-instance p1, Ljava/util/Date;

    .end local p1    # "originalDate":Ljava/util/Date;
    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method private isSingleWeekDay()Z
    .locals 3

    .prologue
    .line 1132
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMenuTypeCalendar:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 1133
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMenuTypeCalendar:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1134
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMenuTypeCalendar:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getWeekDay()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1135
    const/4 v2, 0x0

    .line 1139
    .end local v0    # "i":I
    .end local v1    # "size":I
    :goto_1
    return v2

    .line 1133
    .restart local v0    # "i":I
    .restart local v1    # "size":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1139
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isWholeDay(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 8
    .param p1, "from"    # Ljava/util/Date;
    .param p2, "to"    # Ljava/util/Date;

    .prologue
    .line 1090
    invoke-virtual {p2, p1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1091
    invoke-direct {p0, p2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->addOneDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p2

    .line 1094
    :cond_0
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 1095
    .local v0, "fromTimeMillis":J
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 1097
    .local v2, "toTimeMillis":J
    sub-long v4, v2, v0

    const-wide/32 v6, 0x525719f

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 1098
    const/4 v4, 0x1

    .line 1100
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canBeFavorited()Z
    .locals 1

    .prologue
    .line 377
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->hasMobileOffers()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->hasMobileOrdering()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clone()Lcom/mcdonalds/sdk/modules/storelocator/Store;
    .locals 2

    .prologue
    .line 168
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/storelocator/Store;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :goto_0
    return-object v1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "cnse":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->clone()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1341
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1318
    if-ne p0, p1, :cond_1

    .line 1325
    :cond_0
    :goto_0
    return v1

    .line 1320
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 1321
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 1323
    check-cast v0, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .line 1325
    .local v0, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    iget v3, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreId:I

    iget v4, v0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreId:I

    if-ne v3, v4, :cond_4

    iget-wide v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mLatitude:D

    iget-wide v6, v0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mLatitude:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_4

    iget-wide v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mLongitude:D

    iget-wide v6, v0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mLongitude:D

    cmpl-double v3, v4, v6

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mHasMobileOffers:Z

    iget-boolean v4, v0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mHasMobileOffers:Z

    if-ne v3, v4, :cond_4

    iget-boolean v3, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mHasMobileOrdering:Z

    iget-boolean v4, v0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mHasMobileOrdering:Z

    if-eq v3, v4, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getAddress1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mAddress1:Ljava/lang/String;

    return-object v0
.end method

.method public getAddress2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mAddress2:Ljava/lang/String;

    return-object v0
.end method

.method public getAdvancedOrderMaximumTimeLimitMinutes()I
    .locals 1

    .prologue
    .line 1205
    iget v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mAdvancedOrderMaximumTimeLimitMinutes:I

    return v0
.end method

.method public getAdvancedOrderMinimumTimeLimitMinutes()I
    .locals 1

    .prologue
    .line 1213
    iget v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mAdvancedOrderMinimumTimeLimitMinutes:I

    return v0
.end method

.method public getBagProductCode()I
    .locals 1

    .prologue
    .line 1229
    iget v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mBagProductCode:I

    return v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentDate()Ljava/util/Date;
    .locals 4

    .prologue
    .line 1143
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getCurrentDateAtStoreTimeZone()Ljava/util/Date;
    .locals 6

    .prologue
    .line 1273
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mTimeDifference:J

    add-long/2addr v2, v4

    iget v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mTimeZone:I

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    add-long/2addr v2, v4

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public getCurrentMenuTypeCalItemWithTimeZone()Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    .locals 3

    .prologue
    .line 1285
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCurrentDate()Ljava/util/Date;

    move-result-object v1

    .line 1286
    .local v1, "currentDate":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1287
    .local v0, "current":Ljava/util/Calendar;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1289
    const/4 v2, 0x0

    invoke-direct {p0, v2, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCurrentMenuTypeCalendarItem(ZLjava/util/Calendar;)Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;

    move-result-object v2

    return-object v2
.end method

.method public getCurrentMenuTypeCalendarItem(Z)Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    .locals 3
    .param p1, "isDelivery"    # Z

    .prologue
    .line 973
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 974
    .local v0, "current":Ljava/util/Calendar;
    const-string v2, "ordering"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;

    .line 975
    .local v1, "orderingModule":Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/ordering/OrderingModule;->getOrderTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 976
    invoke-direct {p0, p1, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCurrentMenuTypeCalendarItem(ZLjava/util/Calendar;)Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;

    move-result-object v2

    return-object v2
.end method

.method public getCurrentMenuTypeID()I
    .locals 1

    .prologue
    .line 957
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCurrentMenuTypeID(Z)I

    move-result v0

    return v0
.end method

.method public getCurrentMenuTypeID(Z)I
    .locals 2
    .param p1, "isDelivery"    # Z

    .prologue
    .line 962
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCurrentMenuTypeCalendarItem(Z)Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;

    move-result-object v0

    .line 963
    .local v0, "currentMenuTypeCalendarItem":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    if-eqz v0, :cond_0

    .line 964
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getMenuTypeId()I

    move-result v1

    .line 966
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getCurrentMenuTypeIDAtStore()I
    .locals 2

    .prologue
    .line 1259
    .line 1260
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCurrentMenuTypeCalItemWithTimeZone()Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;

    move-result-object v0

    .line 1261
    .local v0, "currentMenuTypeCalendarItem":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    if-eqz v0, :cond_0

    .line 1262
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getMenuTypeId()I

    move-result v1

    .line 1264
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getCurrentStoreStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mCurrentStoreStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getDayOfWeek(Ljava/util/Calendar;)I
    .locals 1
    .param p1, "date"    # Ljava/util/Calendar;

    .prologue
    .line 1104
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1119
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1106
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1108
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 1110
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1112
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 1114
    :pswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 1116
    :pswitch_5
    const/4 v0, 0x6

    goto :goto_0

    .line 1104
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getDayPart()I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mDayPart:I

    return v0
.end method

.method public getDistance()D
    .locals 2

    .prologue
    .line 223
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mDistance:D

    return-wide v0
.end method

.method public getExpectedDeliveryTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mExpectedDeliveryTime:Ljava/lang/String;

    return-object v0
.end method

.method public getExpectedDeliveryTimeReference()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mExpectedDeliveryTimeReference:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalStoreNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 586
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mExternalStoreNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getFacilityNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 730
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mFacilityNames:Ljava/util/List;

    return-object v0
.end method

.method public getGBLNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 980
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mGBLNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getGeneralStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mGeneralStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()D
    .locals 2

    .prologue
    .line 186
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mLatitude:D

    return-wide v0
.end method

.method public getLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1297
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mLocations:Ljava/util/List;

    return-object v0
.end method

.method public getLongitude()D
    .locals 2

    .prologue
    .line 194
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mLongitude:D

    return-wide v0
.end method

.method public getMaxAdvanceOrderTime()I
    .locals 1

    .prologue
    .line 734
    iget v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMaxAdvanceOrderTime:I

    return v0
.end method

.method public getMenuEndingTime(Lcom/mcdonalds/sdk/modules/models/MenuType;)J
    .locals 2
    .param p1, "menuType"    # Lcom/mcdonalds/sdk/modules/models/MenuType;

    .prologue
    .line 637
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getMenuEndingTime(Lcom/mcdonalds/sdk/modules/models/MenuType;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMenuEndingTime(Lcom/mcdonalds/sdk/modules/models/MenuType;Z)J
    .locals 18
    .param p1, "menuType"    # Lcom/mcdonalds/sdk/modules/models/MenuType;
    .param p2, "isDelivery"    # Z

    .prologue
    .line 642
    const-wide/16 v6, 0x0

    .line 644
    .local v6, "differenceInMinutes":J
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getID()I

    move-result v13

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v13, v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getMenuTypeCalendarItem(IZ)Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;

    move-result-object v11

    .line 645
    .local v11, "menuTypeCalendarItem":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getShortName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "breakfast"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 646
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getShortName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "lunch"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 647
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getShortName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "regular"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 648
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getShortName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, "midnight"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 649
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getShortName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "\u65e9\u9910"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 650
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getShortName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "\u6b63\u9910"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 651
    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getShortName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "\u665a\u9910"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    :cond_0
    const/4 v10, 0x1

    .line 653
    .local v10, "isSupportedMenuName":Z
    :goto_0
    if-eqz v10, :cond_3

    if-eqz v11, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getID()I

    move-result v13

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCurrentMenuTypeID(Z)I

    move-result v14

    if-ne v13, v14, :cond_3

    .line 656
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 657
    .local v2, "current":Ljava/util/Calendar;
    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->getCurrentTime(Ljava/util/Calendar;)Ljava/util/Date;

    move-result-object v3

    .line 658
    .local v3, "currentStoreTime":Ljava/util/Date;
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getFromTime()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->parseFromTimeString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v9

    .line 659
    .local v9, "fromTime":Ljava/util/Date;
    invoke-virtual {v11}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getToTime()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->parseToTimeString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    .line 661
    .local v12, "toTime":Ljava/util/Date;
    invoke-virtual {v12, v9}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 663
    invoke-virtual {v3, v12}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 664
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->addOneDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    .line 668
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->addOneDay(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v12

    .line 671
    :cond_2
    invoke-virtual {v3, v9}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-virtual {v3, v12}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 672
    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    sub-long v4, v14, v16

    .line 677
    .local v4, "difference":J
    const-wide/32 v14, 0xea60

    div-long v6, v4, v14
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 683
    .end local v2    # "current":Ljava/util/Calendar;
    .end local v3    # "currentStoreTime":Ljava/util/Date;
    .end local v4    # "difference":J
    .end local v9    # "fromTime":Ljava/util/Date;
    .end local v12    # "toTime":Ljava/util/Date;
    :cond_3
    :goto_1
    return-wide v6

    .line 651
    .end local v10    # "isSupportedMenuName":Z
    :cond_4
    const/4 v10, 0x0

    goto :goto_0

    .line 679
    .restart local v10    # "isSupportedMenuName":Z
    :catch_0
    move-exception v8

    .line 680
    .local v8, "e":Ljava/text/ParseException;
    invoke-virtual {v8}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_1
.end method

.method public getMenuTypeCalendar()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMenuTypeCalendar:Ljava/util/List;

    return-object v0
.end method

.method public getMenuTypeCalendarItem(I)Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    .locals 1
    .param p1, "menuTypeId"    # I

    .prologue
    .line 809
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getMenuTypeCalendarItem(IZ)Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;

    move-result-object v0

    return-object v0
.end method

.method public getMenuTypeCalendarItem(IZ)Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    .locals 13
    .param p1, "menuTypeId"    # I
    .param p2, "isDelivery"    # Z

    .prologue
    .line 814
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 815
    .local v1, "date":Ljava/util/Calendar;
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->isSingleWeekDay()Z

    move-result v5

    .line 816
    .local v5, "isSingleDay":Z
    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getDayOfWeek(Ljava/util/Calendar;)I

    move-result v10

    .line 817
    .local v10, "weekDay":I
    invoke-virtual {p0, v10}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getPreviousDayOfWeek(I)I

    move-result v7

    .line 820
    .local v7, "prevWeekDay":I
    :try_start_0
    invoke-static {v1}, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->getCurrentTime(Ljava/util/Calendar;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 825
    .local v0, "currentTime":Ljava/util/Date;
    iget-object v11, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMenuTypeCalendar:Ljava/util/List;

    if-eqz v11, :cond_3

    .line 827
    const/4 v4, 0x0

    .local v4, "i":I
    iget-object v11, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMenuTypeCalendar:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    .local v8, "size":I
    :goto_0
    if-ge v4, v8, :cond_3

    .line 829
    iget-object v11, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMenuTypeCalendar:Ljava/util/List;

    invoke-interface {v11, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;

    .line 830
    .local v6, "item":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getMenuTypeId()I

    move-result v11

    if-ne v11, p1, :cond_2

    .line 835
    :try_start_1
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getFromTime()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->parseFromTimeString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    .line 836
    .local v3, "from":Ljava/util/Date;
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getToTime()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->parseToTimeString(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v9

    .line 847
    .local v9, "to":Ljava/util/Date;
    if-nez v5, :cond_1

    .line 848
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getWeekDay()I

    move-result v11

    if-ne v7, v11, :cond_0

    invoke-virtual {v9, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 849
    :cond_0
    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->getWeekDay()I

    move-result v11

    if-ne v10, v11, :cond_2

    .line 851
    :cond_1
    invoke-direct {p0, v6, p2}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->adjustMenuTypeBasedOnLocations(Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;Z)Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;

    move-result-object v11

    .line 856
    .end local v0    # "currentTime":Ljava/util/Date;
    .end local v3    # "from":Ljava/util/Date;
    .end local v4    # "i":I
    .end local v6    # "item":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    .end local v8    # "size":I
    .end local v9    # "to":Ljava/util/Date;
    :goto_1
    return-object v11

    .line 821
    :catch_0
    move-exception v2

    .line 822
    .local v2, "e":Ljava/text/ParseException;
    const/4 v11, 0x0

    goto :goto_1

    .line 837
    .end local v2    # "e":Ljava/text/ParseException;
    .restart local v0    # "currentTime":Ljava/util/Date;
    .restart local v4    # "i":I
    .restart local v6    # "item":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    .restart local v8    # "size":I
    :catch_1
    move-exception v2

    .line 838
    .restart local v2    # "e":Ljava/text/ParseException;
    const-string v11, "DAYPART"

    const-string v12, "Error while trying to parse the from and/or to hours of the store day part (getMenuTypeCalendarItem)"

    invoke-static {v11, v12}, Lcom/mcdonalds/sdk/services/log/MCDLog;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    const/4 v11, 0x0

    goto :goto_1

    .line 827
    .end local v2    # "e":Ljava/text/ParseException;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 856
    .end local v4    # "i":I
    .end local v6    # "item":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    .end local v8    # "size":I
    :cond_3
    const/4 v11, 0x0

    goto :goto_1
.end method

.method public getMinAdvanceOrderTime()I
    .locals 1

    .prologue
    .line 742
    iget v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMinAdvanceOrderTime:I

    return v0
.end method

.method public getMinimumOrderValue()D
    .locals 2

    .prologue
    .line 578
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMinimumOrderValue:D

    return-wide v0
.end method

.method public getNPVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 570
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mNPVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreFavoriteId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 802
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreFavoriteName:Ljava/lang/String;

    .line 805
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mAddress1:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNoBagProductCode()I
    .locals 1

    .prologue
    .line 1237
    iget v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mNoBagProductCode:I

    return v0
.end method

.method public getNowInStoreLocalTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mNowInStoreLocalTime:Ljava/lang/String;

    return-object v0
.end method

.method public getOutageProducts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1305
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mOutageProductCodes:Ljava/util/List;

    return-object v0
.end method

.method public getPODs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->PODs:Ljava/util/List;

    return-object v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getPodLocations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/PODLocation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->podLocation:Ljava/util/List;

    return-object v0
.end method

.method public getPostalCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mPostalCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPreviousDayOfWeek(I)I
    .locals 0
    .param p1, "dayOfWeek"    # I

    .prologue
    .line 1124
    add-int/lit8 p1, p1, -0x1

    .line 1125
    if-gez p1, :cond_0

    .line 1126
    const/4 p1, 0x6

    .line 1127
    :cond_0
    return p1
.end method

.method public getPublicName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mPublicName:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mState:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreCurrentTiming()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreCurrentTiming:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreCutoffTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreCutoffTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreFavoriteId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 718
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreFavoriteId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStoreFavoriteName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreFavoriteName:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreHours()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 594
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreHours:Ljava/util/List;

    if-nez v0, :cond_0

    .line 595
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreHours:Ljava/util/List;

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreHours:Ljava/util/List;

    return-object v0
.end method

.method public getStoreId()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreId:I

    return v0
.end method

.method public getStoreLongestHours()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 608
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreLongestHour:Ljava/util/List;

    if-nez v0, :cond_0

    .line 609
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreLongestHour:Ljava/util/List;

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreLongestHour:Ljava/util/List;

    return-object v0
.end method

.method public getStoreLongestOperatingHours()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 630
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreLongestOperatingHours:Ljava/util/List;

    if-nez v0, :cond_0

    .line 631
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreLongestOperatingHours:Ljava/util/List;

    .line 633
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreLongestOperatingHours:Ljava/util/List;

    return-object v0
.end method

.method public getStoreName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreFavoriteName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getAddress1()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStoreOperatingHours()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 615
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreOperatingHours:Ljava/util/List;

    if-nez v0, :cond_0

    .line 616
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreOperatingHours:Ljava/util/List;

    .line 620
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreOperatingHours:Ljava/util/List;

    return-object v0
.end method

.method public getStoreType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreType:Ljava/lang/String;

    return-object v0
.end method

.method public getStoreURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreURL:Ljava/lang/String;

    return-object v0
.end method

.method public getTODCutoffTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 546
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mTODCutoffTime:Ljava/lang/String;

    return-object v0
.end method

.method public getTableService()Lcom/mcdonalds/sdk/modules/models/TableService;
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mTableService:Lcom/mcdonalds/sdk/modules/models/TableService;

    return-object v0
.end method

.method public getTimeDifference()J
    .locals 2

    .prologue
    .line 358
    iget-wide v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mTimeDifference:J

    return-wide v0
.end method

.method public getTimeZone()I
    .locals 1

    .prologue
    .line 1197
    iget v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mTimeZone:I

    return v0
.end method

.method public hasMobileOffers()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mHasMobileOffers:Z

    return v0
.end method

.method public hasMobileOrdering()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mHasMobileOrdering:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1335
    iget v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreId:I

    return v0
.end method

.method public isBagChargeEnabled()Z
    .locals 1

    .prologue
    .line 1221
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mBagChargeEnabled:Z

    return v0
.end method

.method public isGeneralStatusIsOpen()Z
    .locals 1

    .prologue
    .line 454
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mGeneralStatusIsOpen:Z

    return v0
.end method

.method public isLargeOrderAllowed()Z
    .locals 1

    .prologue
    .line 562
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mLargeOrderAllowed:Z

    return v0
.end method

.method public isStoreClosed()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 512
    iget-object v6, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMenuTypeCalendar:Ljava/util/List;

    if-nez v6, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreHours()V

    .line 516
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 517
    .local v1, "date":Ljava/util/Calendar;
    invoke-direct {p0, v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getBusinessDay(Ljava/util/Calendar;)Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;

    move-result-object v0

    .line 519
    .local v0, "bizDay":Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;
    iget-object v6, v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->from:Ljava/util/Calendar;

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 520
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 521
    .local v3, "prevDay":Ljava/util/Calendar;
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 522
    const/4 v6, 0x5

    const/4 v7, -0x1

    invoke-virtual {v3, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 524
    invoke-direct {p0, v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getBusinessDay(Ljava/util/Calendar;)Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;

    move-result-object v2

    .line 526
    .local v2, "prevBizDay":Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;
    iget-object v6, v2, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->to:Ljava/util/Calendar;

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 534
    .end local v2    # "prevBizDay":Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;
    .end local v3    # "prevDay":Ljava/util/Calendar;
    :cond_1
    :goto_0
    return v4

    .restart local v2    # "prevBizDay":Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;
    .restart local v3    # "prevDay":Ljava/util/Calendar;
    :cond_2
    move v4, v5

    .line 529
    goto :goto_0

    .line 531
    .end local v2    # "prevBizDay":Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;
    .end local v3    # "prevDay":Ljava/util/Calendar;
    :cond_3
    iget-object v6, v0, Lcom/mcdonalds/sdk/modules/storelocator/StoreDayPartRange;->to:Ljava/util/Calendar;

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v5

    .line 532
    goto :goto_0
.end method

.method public isStoreOpen()Z
    .locals 1

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreOpen:Z

    return v0
.end method

.method public mergeWithEcpInfo(Lcom/mcdonalds/sdk/modules/storelocator/Store;)V
    .locals 2
    .param p1, "ecpStore"    # Lcom/mcdonalds/sdk/modules/storelocator/Store;

    .prologue
    .line 1155
    if-nez p1, :cond_1

    .line 1194
    :cond_0
    :goto_0
    return-void

    .line 1159
    :cond_1
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getPODs()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setPODs(Ljava/util/List;)V

    .line 1160
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getMenuTypeCalendar()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setMenuTypeCalendar(Ljava/util/List;)V

    .line 1161
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreHours()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreHours(Ljava/util/List;)V

    .line 1162
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreOperatingHours()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setStoreOperatingHours(Ljava/util/List;)V

    .line 1163
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getTimeDifference()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setTimeDifference(J)V

    .line 1164
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getLocations()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setLocations(Ljava/util/List;)V

    .line 1165
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getOutageProducts()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setOutageProducts(Ljava/util/List;)V

    .line 1166
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->isBagChargeEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setBagChargeEnabled(Z)V

    .line 1167
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getBagProductCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setBagProductCode(I)V

    .line 1168
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getNoBagProductCode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setNoBagProductCode(I)V

    .line 1169
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getTableService()Lcom/mcdonalds/sdk/modules/models/TableService;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setTableService(Lcom/mcdonalds/sdk/modules/models/TableService;)V

    .line 1171
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getAddress1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1172
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getAddress1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setAddress1(Ljava/lang/String;)V

    .line 1175
    :cond_2
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getAddress2()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1176
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getAddress2()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setAddress2(Ljava/lang/String;)V

    .line 1179
    :cond_3
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1180
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setCity(Ljava/lang/String;)V

    .line 1183
    :cond_4
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1184
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getState()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setState(Ljava/lang/String;)V

    .line 1187
    :cond_5
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1188
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getPostalCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setPostalCode(Ljava/lang/String;)V

    .line 1191
    :cond_6
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1192
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setCountry(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public setAddress1(Ljava/lang/String;)V
    .locals 0
    .param p1, "address1"    # Ljava/lang/String;

    .prologue
    .line 238
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mAddress1:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setAddress2(Ljava/lang/String;)V
    .locals 0
    .param p1, "address2"    # Ljava/lang/String;

    .prologue
    .line 249
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mAddress2:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setAdvancedOrderMaximumTimeLimitMinutes(I)V
    .locals 0
    .param p1, "mAdvancedOrderMaximumTimeLimitMinutes"    # I

    .prologue
    .line 1209
    iput p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mAdvancedOrderMaximumTimeLimitMinutes:I

    .line 1210
    return-void
.end method

.method public setAdvancedOrderMinimumTimeLimitMinutes(I)V
    .locals 0
    .param p1, "mAdvancedOrderMinimumTimeLimitMinutes"    # I

    .prologue
    .line 1217
    iput p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mAdvancedOrderMinimumTimeLimitMinutes:I

    .line 1218
    return-void
.end method

.method public setBagChargeEnabled(Z)V
    .locals 0
    .param p1, "mBagChargeEnabled"    # Z

    .prologue
    .line 1225
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mBagChargeEnabled:Z

    .line 1226
    return-void
.end method

.method public setBagProductCode(I)V
    .locals 0
    .param p1, "mBagProductCode"    # I

    .prologue
    .line 1233
    iput p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mBagProductCode:I

    .line 1234
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 0
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mCity:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 321
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mCountry:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public setCurrentStoreStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "mStoreStatus"    # Ljava/lang/String;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mCurrentStoreStatus:Ljava/lang/String;

    .line 264
    return-void
.end method

.method public setDayPart(I)V
    .locals 0
    .param p1, "dayPart"    # I

    .prologue
    .line 542
    iput p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mDayPart:I

    .line 543
    return-void
.end method

.method public setDistance(D)V
    .locals 1
    .param p1, "distance"    # D

    .prologue
    .line 227
    iput-wide p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mDistance:D

    .line 228
    return-void
.end method

.method public setExpectedDeliveryTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "expectedDeliveryTime"    # Ljava/lang/String;

    .prologue
    .line 419
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mExpectedDeliveryTime:Ljava/lang/String;

    .line 420
    return-void
.end method

.method public setExpectedDeliveryTimeReference(Ljava/lang/String;)V
    .locals 0
    .param p1, "expectedDeliveryTimeReference"    # Ljava/lang/String;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mExpectedDeliveryTimeReference:Ljava/lang/String;

    .line 436
    return-void
.end method

.method public setExpectedDeliveryTimeReference(Ljava/util/Date;)V
    .locals 3
    .param p1, "expectedDeliveryTimeReference"    # Ljava/util/Date;

    .prologue
    .line 439
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ss"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 440
    .local v0, "df":Ljava/text/SimpleDateFormat;
    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 441
    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 442
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setExpectedDeliveryTimeReference(Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method public setExternalStoreNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "externalStoreNumber"    # Ljava/lang/String;

    .prologue
    .line 590
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mExternalStoreNumber:Ljava/lang/String;

    .line 591
    return-void
.end method

.method public setFacilityNames(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 726
    .local p1, "facilityNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mFacilityNames:Ljava/util/List;

    .line 727
    return-void
.end method

.method public setGBLNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "mGBLNumber"    # Ljava/lang/String;

    .prologue
    .line 984
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mGBLNumber:Ljava/lang/String;

    .line 985
    return-void
.end method

.method public setGeneralStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "mGeneralStatus"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mGeneralStatus:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setGeneralStatusIsOpen(Z)V
    .locals 0
    .param p1, "generalStatusIsOpen"    # Z

    .prologue
    .line 458
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mGeneralStatusIsOpen:Z

    .line 459
    return-void
.end method

.method public setHasMobileOffers(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "hasMobileOffers"    # Ljava/lang/Boolean;

    .prologue
    .line 385
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mHasMobileOffers:Z

    .line 386
    return-void
.end method

.method public setHasMobileOrdering(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "hasMobileOrdering"    # Ljava/lang/Boolean;

    .prologue
    .line 393
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mHasMobileOrdering:Z

    .line 394
    return-void
.end method

.method public setLargeOrderAllowed(Z)V
    .locals 0
    .param p1, "largeOrderAllowed"    # Z

    .prologue
    .line 566
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mLargeOrderAllowed:Z

    .line 567
    return-void
.end method

.method public setLatitude(D)V
    .locals 1
    .param p1, "latitude"    # D

    .prologue
    .line 190
    iput-wide p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mLatitude:D

    .line 191
    return-void
.end method

.method public setLocations(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1293
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWLocation;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mLocations:Ljava/util/List;

    .line 1294
    return-void
.end method

.method public setLongitude(D)V
    .locals 1
    .param p1, "longitude"    # D

    .prologue
    .line 198
    iput-wide p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mLongitude:D

    .line 199
    return-void
.end method

.method public setMaxAdvanceOrderTime(I)V
    .locals 0
    .param p1, "maxAdvanceOrderTime"    # I

    .prologue
    .line 738
    iput p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMaxAdvanceOrderTime:I

    .line 739
    return-void
.end method

.method public setMenuTypeCalendar(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 351
    .local p1, "menuTypeCalendarItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMenuTypeCalendar:Ljava/util/List;

    .line 352
    return-void
.end method

.method public setMinAdvanceOrderTime(I)V
    .locals 0
    .param p1, "minAdvanceOrderTime"    # I

    .prologue
    .line 746
    iput p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMinAdvanceOrderTime:I

    .line 747
    return-void
.end method

.method public setMinimumOrderValue(D)V
    .locals 1
    .param p1, "minimumOrderValue"    # D

    .prologue
    .line 582
    iput-wide p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMinimumOrderValue:D

    .line 583
    return-void
.end method

.method public setNPVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "NPVersion"    # Ljava/lang/String;

    .prologue
    .line 574
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mNPVersion:Ljava/lang/String;

    .line 575
    return-void
.end method

.method public setNoBagProductCode(I)V
    .locals 0
    .param p1, "mNoBagProductCode"    # I

    .prologue
    .line 1241
    iput p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mNoBagProductCode:I

    .line 1242
    return-void
.end method

.method public setNowInStoreLocalTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "nowInStoreLocalTime"    # Ljava/lang/String;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mNowInStoreLocalTime:Ljava/lang/String;

    .line 424
    return-void
.end method

.method public setOutageProducts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1301
    .local p1, "outageProducts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mOutageProductCodes:Ljava/util/List;

    .line 1302
    return-void
.end method

.method public setPODs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1147
    .local p1, "PODs":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/model/MWPointOfDistributionItem;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->PODs:Ljava/util/List;

    .line 1148
    return-void
.end method

.method public setPhoneNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mPhoneNumber:Ljava/lang/String;

    .line 374
    return-void
.end method

.method public setPodLocation(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/PODLocation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1472
    .local p1, "podLocation":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/PODLocation;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->podLocation:Ljava/util/List;

    .line 1473
    return-void
.end method

.method public setPostalCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "postalCode"    # Ljava/lang/String;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mPostalCode:Ljava/lang/String;

    .line 311
    return-void
.end method

.method public setPublicName(Ljava/lang/String;)V
    .locals 0
    .param p1, "publicName"    # Ljava/lang/String;

    .prologue
    .line 1309
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mPublicName:Ljava/lang/String;

    .line 1310
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 0
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mState:Ljava/lang/String;

    .line 300
    return-void
.end method

.method public setStoreCurrentTiming(Ljava/lang/String;)V
    .locals 0
    .param p1, "mStoreCurrentTiming"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreCurrentTiming:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setStoreCutoffTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "storeCutoffTime"    # Ljava/lang/String;

    .prologue
    .line 558
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreCutoffTime:Ljava/lang/String;

    .line 559
    return-void
.end method

.method public setStoreFavoriteId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "storeFavoriteId"    # Ljava/lang/Integer;

    .prologue
    .line 722
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreFavoriteId:Ljava/lang/Integer;

    .line 723
    return-void
.end method

.method public setStoreFavoriteName(Ljava/lang/String;)V
    .locals 0
    .param p1, "storeFavoriteName"    # Ljava/lang/String;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreFavoriteName:Ljava/lang/String;

    .line 408
    return-void
.end method

.method protected setStoreHours()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 483
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreOperatingHours()Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreOperatingHours:Ljava/util/List;

    .line 484
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 486
    .local v3, "menuTypeCalendarItems":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;>;"
    const-string v9, "enableMultipleMenuTypes"

    invoke-static {v9}, Lcom/mcdonalds/sdk/services/configuration/AppParameters;->getBooleanForParameter(Ljava/lang/String;)Z

    move-result v0

    .line 487
    .local v0, "enableMultipleMenuTypes":Z
    if-eqz v0, :cond_0

    iget-object v9, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMenuTypeCalendar:Ljava/util/List;

    if-nez v9, :cond_2

    :cond_0
    move v6, v8

    .line 488
    .local v6, "useEcpOpeningHours":Z
    :goto_0
    iget-object v9, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreOperatingHours:Ljava/util/List;

    if-eqz v9, :cond_3

    .line 489
    iget-object v9, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreOperatingHours:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 490
    .local v5, "todaysOperatingHours":[Ljava/lang/String;
    aget-object v1, v5, v7

    .line 491
    .local v1, "fromTime":Ljava/lang/String;
    aget-object v4, v5, v8

    .line 493
    .local v4, "toTime":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 494
    new-instance v2, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;-><init>()V

    .line 495
    .local v2, "item":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    invoke-virtual {v2, v4}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->setToTime(Ljava/lang/String;)V

    .line 496
    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;->setFromTime(Ljava/lang/String;)V

    .line 497
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1    # "fromTime":Ljava/lang/String;
    .end local v2    # "item":Lcom/mcdonalds/sdk/modules/storelocator/MenuTypeCalendarItem;
    .end local v4    # "toTime":Ljava/lang/String;
    .end local v5    # "todaysOperatingHours":[Ljava/lang/String;
    .end local v6    # "useEcpOpeningHours":Z
    :cond_2
    move v6, v7

    .line 487
    goto :goto_0

    .line 503
    .restart local v6    # "useEcpOpeningHours":Z
    :cond_3
    if-nez v6, :cond_4

    iget-object v7, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMenuTypeCalendar:Ljava/util/List;

    if-eqz v7, :cond_4

    .line 504
    iget-object v7, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMenuTypeCalendar:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 507
    :cond_4
    invoke-virtual {p0, v3}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->setMenuTypeCalendar(Ljava/util/List;)V

    .line 509
    return-void
.end method

.method public setStoreHours(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 687
    .local p1, "mStoreHours":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreHours:Ljava/util/List;

    .line 688
    return-void
.end method

.method public setStoreId(I)V
    .locals 0
    .param p1, "storeId"    # I

    .prologue
    .line 182
    iput p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreId:I

    .line 183
    return-void
.end method

.method public setStoreOpen(Z)V
    .locals 0
    .param p1, "storeOpen"    # Z

    .prologue
    .line 450
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreOpen:Z

    .line 451
    return-void
.end method

.method public setStoreOperatingHours(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 700
    .local p1, "storeOperatingHours":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreOperatingHours:Ljava/util/List;

    .line 701
    return-void
.end method

.method public setStoreType(Ljava/lang/String;)V
    .locals 0
    .param p1, "storeType"    # Ljava/lang/String;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreType:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public setStoreURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "storeURL"    # Ljava/lang/String;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreURL:Ljava/lang/String;

    .line 341
    return-void
.end method

.method public setTODCutoffTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "TODCutoffTime"    # Ljava/lang/String;

    .prologue
    .line 550
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mTODCutoffTime:Ljava/lang/String;

    .line 551
    return-void
.end method

.method public setTableService(Lcom/mcdonalds/sdk/modules/models/TableService;)V
    .locals 0
    .param p1, "tableService"    # Lcom/mcdonalds/sdk/modules/models/TableService;

    .prologue
    .line 1249
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mTableService:Lcom/mcdonalds/sdk/modules/models/TableService;

    .line 1250
    return-void
.end method

.method public setTimeDifference(J)V
    .locals 1
    .param p1, "mTimeDifference"    # J

    .prologue
    .line 362
    iput-wide p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mTimeDifference:J

    .line 363
    return-void
.end method

.method public setTimeZone(I)V
    .locals 0
    .param p1, "mTimeZone"    # I

    .prologue
    .line 1201
    iput p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mTimeZone:I

    .line 1202
    return-void
.end method

.method public setmStoreLongestHour(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 696
    .local p1, "mStoreHours":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreLongestHour:Ljava/util/List;

    .line 697
    return-void
.end method

.method public setmStoreLongestOperatingHours(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 709
    .local p1, "storeOperatingHours":Ljava/util/List;, "Ljava/util/List<[Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreLongestOperatingHours:Ljava/util/List;

    .line 710
    return-void
.end method

.method public toLocation()Landroid/location/Location;
    .locals 4

    .prologue
    .line 159
    new-instance v0, Landroid/location/Location;

    const-string v1, "mcdonalds"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, "location":Landroid/location/Location;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 161
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 162
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Store{mStoreId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLatitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mLatitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLongitude="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mLongitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mDistance:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAddress1=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mAddress1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAddress2=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mAddress2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCity=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mCity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mState=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPostalCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mPostalCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCountry=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStoreType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStoreURL=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPhoneNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasMobileOffers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mHasMobileOffers:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHasMobileOrdering="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mHasMobileOrdering:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFacilityNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mFacilityNames:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStoreHours="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreHours:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMenuTypeCalendar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMenuTypeCalendar:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStoreOperatingHours="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreOperatingHours:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimeDifference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mTimeDifference:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExpectedDeliveryTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mExpectedDeliveryTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStoreOpen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDayPart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mDayPart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTODCutoffTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mTODCutoffTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStoreCutoffTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreCutoffTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLargeOrderAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mLargeOrderAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNPVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mNPVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinimumOrderValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMinimumOrderValue:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExternalStoreNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mExternalStoreNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStoreFavoriteName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreFavoriteName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mStoreFavoriteId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreFavoriteId:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", PODs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->PODs:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxAdvanceOrderTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMaxAdvanceOrderTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinAdvanceOrderTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMinAdvanceOrderTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimeZone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mTimeZone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdvancedOrderMinimumTimeLimitMinutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mAdvancedOrderMinimumTimeLimitMinutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAdvancedOrderMaximumTimeLimitMinutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mAdvancedOrderMaximumTimeLimitMinutes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mGBLNumber=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mGBLNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBagChargeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mBagChargeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBagProductCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mBagProductCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mNoBagProductCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mNoBagProductCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLocations="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mLocations:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTableService"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mTableService:Lcom/mcdonalds/sdk/modules/models/TableService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mGeneralStatusIsOpen"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mGeneralStatusIsOpen:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1346
    iget v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1347
    iget-wide v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mLatitude:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1348
    iget-wide v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mLongitude:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1349
    iget-wide v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mDistance:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1350
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mAddress1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1351
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mAddress2:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1352
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mCity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1353
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mState:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1354
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mPostalCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1355
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mCountry:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1356
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1357
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1358
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mPhoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1359
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mHasMobileOffers:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1360
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mHasMobileOrdering:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1361
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mFacilityNames:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1362
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreHours:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1363
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreLongestHour:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1364
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMenuTypeCalendar:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1365
    iget-wide v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mTimeDifference:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1366
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mExpectedDeliveryTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1367
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mExpectedDeliveryTimeReference:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1368
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreOpen:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1369
    iget v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mDayPart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1370
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mTODCutoffTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1371
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreCutoffTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1372
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mLargeOrderAllowed:Z

    if-eqz v0, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1373
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mNPVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1374
    iget-wide v4, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMinimumOrderValue:D

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeDouble(D)V

    .line 1375
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mExternalStoreNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1376
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreFavoriteName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1377
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreFavoriteId:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 1378
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->PODs:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1379
    iget v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMaxAdvanceOrderTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1380
    iget v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mMinAdvanceOrderTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1381
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mHasMobileOffers:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1382
    iget v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mTimeZone:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1383
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mLocations:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1384
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mOutageProductCodes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 1385
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mBagChargeEnabled:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_5
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1386
    iget v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mBagProductCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1387
    iget v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mNoBagProductCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1388
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mTableService:Lcom/mcdonalds/sdk/modules/models/TableService;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1389
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mGeneralStatusIsOpen:Z

    if-eqz v0, :cond_6

    :goto_6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 1390
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mCurrentStoreStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1391
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mGeneralStatus:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1392
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreOperatingHours:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1393
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreLongestOperatingHours:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 1394
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mStoreCurrentTiming:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1395
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/Store;->mPublicName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1396
    return-void

    :cond_0
    move v0, v2

    .line 1359
    goto/16 :goto_0

    :cond_1
    move v0, v2

    .line 1360
    goto/16 :goto_1

    :cond_2
    move v0, v2

    .line 1368
    goto/16 :goto_2

    :cond_3
    move v0, v2

    .line 1372
    goto/16 :goto_3

    :cond_4
    move v0, v2

    .line 1381
    goto :goto_4

    :cond_5
    move v0, v2

    .line 1385
    goto :goto_5

    :cond_6
    move v1, v2

    .line 1389
    goto :goto_6
.end method
