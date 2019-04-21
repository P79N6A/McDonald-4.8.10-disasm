.class public Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "OrderUnAttendedCheckIn.java"


# instance fields
.field private mAdditionalPayments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderPayment;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckInData:Ljava/lang/String;

.field private mOrderPayment:Lcom/mcdonalds/sdk/modules/models/OrderPayment;

.field private mPriceChaged:Z

.field private mPriceType:Ljava/lang/Integer;

.field private mStoreID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;->mPriceChaged:Z

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;->mAdditionalPayments:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getAdditionalPayments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderPayment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;->mAdditionalPayments:Ljava/util/List;

    return-object v0
.end method

.method public getCheckInData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;->mCheckInData:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderPayment()Lcom/mcdonalds/sdk/modules/models/OrderPayment;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;->mOrderPayment:Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    return-object v0
.end method

.method public getPriceType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;->mPriceType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStoreID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;->mStoreID:Ljava/lang/String;

    return-object v0
.end method

.method public isPriceChaged()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;->mPriceChaged:Z

    return v0
.end method

.method public setAdditionalPayments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OrderPayment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p1, "additionalPayments":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OrderPayment;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;->mAdditionalPayments:Ljava/util/List;

    .line 62
    return-void
.end method

.method public setCheckInData(Ljava/lang/String;)V
    .locals 0
    .param p1, "checkInData"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;->mCheckInData:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setOrderPayment(Lcom/mcdonalds/sdk/modules/models/OrderPayment;)V
    .locals 0
    .param p1, "orderPayment"    # Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;->mOrderPayment:Lcom/mcdonalds/sdk/modules/models/OrderPayment;

    .line 22
    return-void
.end method

.method public setPriceChanged(Z)V
    .locals 0
    .param p1, "mPriceChaged"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;->mPriceChaged:Z

    .line 54
    return-void
.end method

.method public setPriceType(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "priceType"    # Ljava/lang/Integer;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;->mPriceType:Ljava/lang/Integer;

    .line 46
    return-void
.end method

.method public setStoreID(Ljava/lang/String;)V
    .locals 0
    .param p1, "storeID"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OrderUnAttendedCheckIn;->mStoreID:Ljava/lang/String;

    .line 30
    return-void
.end method
