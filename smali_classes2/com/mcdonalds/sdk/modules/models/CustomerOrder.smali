.class public Lcom/mcdonalds/sdk/modules/models/CustomerOrder;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "CustomerOrder.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerOrder;",
            ">;"
        }
    .end annotation
.end field

.field private static final SERVICE_MODE_DELIVERY:I = 0x2

.field private static final SERVICE_MODE_PICKUP:I = 0x1


# instance fields
.field private isFinalized:Z

.field private mName:Ljava/lang/String;

.field private mOrderId:Ljava/lang/Integer;

.field private mOrderNumber:Ljava/lang/String;

.field private mProducts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceMode:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerOrder$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 80
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->mName:Ljava/lang/String;

    .line 100
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->mOrderId:Ljava/lang/Integer;

    .line 101
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->mProducts:Ljava/util/List;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->mOrderNumber:Ljava/lang/String;

    .line 103
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->mServiceMode:Ljava/lang/Integer;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->isFinalized:Z

    .line 105
    return-void

    .line 104
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->mOrderId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getOrderNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->mOrderNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getProducts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->mProducts:Ljava/util/List;

    return-object v0
.end method

.method public getServiceMode()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->mServiceMode:Ljava/lang/Integer;

    return-object v0
.end method

.method public isDelivery()Z
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->mServiceMode:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->mServiceMode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFinalized()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->isFinalized:Z

    return v0
.end method

.method public setFinalized(Z)V
    .locals 0
    .param p1, "finalized"    # Z

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->isFinalized:Z

    .line 77
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->mName:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setOrderId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "orderId"    # Ljava/lang/Integer;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->mOrderId:Ljava/lang/Integer;

    .line 57
    return-void
.end method

.method public setOrderNumber(Ljava/lang/String;)V
    .locals 0
    .param p1, "orderNumber"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->mOrderNumber:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setProducts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->mProducts:Ljava/util/List;

    .line 65
    return-void
.end method

.method public setServiceMode(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "serviceMode"    # Ljava/lang/Integer;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->mServiceMode:Ljava/lang/Integer;

    .line 45
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->mOrderId:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->mProducts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 93
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->mOrderNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->mServiceMode:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 95
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrder;->isFinalized:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
