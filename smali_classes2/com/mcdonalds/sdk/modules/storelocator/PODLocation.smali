.class public Lcom/mcdonalds/sdk/modules/storelocator/PODLocation;
.super Ljava/lang/Object;
.source "PODLocation.java"


# instance fields
.field private locationID:Ljava/lang/Integer;

.field private paymentMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private saleTypeEatIn:Ljava/lang/Boolean;

.field private saleTypeOther:Ljava/lang/Boolean;

.field private saleTypeTakeOut:Ljava/lang/Boolean;

.field private storeAreaOpeningHours:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/OpeningHour;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLocationID()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/PODLocation;->locationID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPaymentMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 26
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/PODLocation;->paymentMethods:Ljava/util/List;

    return-object v0
.end method

.method public getSaleTypeEatIn()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/PODLocation;->saleTypeEatIn:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSaleTypeOther()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/PODLocation;->saleTypeOther:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getSaleTypeTakeOut()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/PODLocation;->saleTypeTakeOut:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getStoreAreaOpeningHours()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/OpeningHour;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/storelocator/PODLocation;->storeAreaOpeningHours:Ljava/util/List;

    return-object v0
.end method

.method public setLocationID(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "locationID"    # Ljava/lang/Integer;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/PODLocation;->locationID:Ljava/lang/Integer;

    .line 15
    return-void
.end method

.method public setPaymentMethods(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "paymentMethods":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/PODLocation;->paymentMethods:Ljava/util/List;

    .line 23
    return-void
.end method

.method public setSaleTypeEatIn(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "saleTypeEatIn"    # Ljava/lang/Boolean;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/PODLocation;->saleTypeEatIn:Ljava/lang/Boolean;

    .line 31
    return-void
.end method

.method public setSaleTypeOther(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "saleTypeOther"    # Ljava/lang/Boolean;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/PODLocation;->saleTypeOther:Ljava/lang/Boolean;

    .line 39
    return-void
.end method

.method public setSaleTypeTakeOut(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "saleTypeTakeOut"    # Ljava/lang/Boolean;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/PODLocation;->saleTypeTakeOut:Ljava/lang/Boolean;

    .line 47
    return-void
.end method

.method public setStoreAreaOpeningHours(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/OpeningHour;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "storeAreaOpeningHours":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/OpeningHour;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/storelocator/PODLocation;->storeAreaOpeningHours:Ljava/util/List;

    .line 55
    return-void
.end method
