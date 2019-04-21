.class public Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "CustomerOrderProduct.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private choiceSolution:Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

.field private choices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;",
            ">;"
        }
    .end annotation
.end field

.field private components:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;",
            ">;"
        }
    .end annotation
.end field

.field private customizations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLight:Ljava/lang/Boolean;

.field private mProductCode:Ljava/lang/Integer;

.field private mPromoQuantity:Ljava/lang/Integer;

.field private mQuantity:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 128
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 108
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->choices:Ljava/util/List;

    .line 113
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->choices:Ljava/util/List;

    const-class v1, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->components:Ljava/util/List;

    .line 116
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->components:Ljava/util/List;

    const-class v1, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->customizations:Ljava/util/List;

    .line 119
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->customizations:Ljava/util/List;

    const-class v1, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 121
    const-class v0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->choiceSolution:Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .line 122
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->mProductCode:Ljava/lang/Integer;

    .line 123
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->mPromoQuantity:Ljava/lang/Integer;

    .line 124
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->mQuantity:Ljava/lang/Integer;

    .line 125
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->mIsLight:Ljava/lang/Boolean;

    .line 126
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public getChoiceSolution()Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->choiceSolution:Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    return-object v0
.end method

.method public getChoices()Ljava/util/List;
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
    .line 26
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->choices:Ljava/util/List;

    return-object v0
.end method

.method public getComponents()Ljava/util/List;
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
    .line 34
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->components:Ljava/util/List;

    return-object v0
.end method

.method public getCustomizations()Ljava/util/List;
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
    .line 42
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->customizations:Ljava/util/List;

    return-object v0
.end method

.method public getIsLight()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->mIsLight:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getProductCode()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->mProductCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPromoQuantity()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->mPromoQuantity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getQuantity()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->mQuantity:Ljava/lang/Integer;

    return-object v0
.end method

.method public setChoiceSolution(Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;)V
    .locals 0
    .param p1, "choiceSolution"    # Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->choiceSolution:Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    .line 55
    return-void
.end method

.method public setChoices(Ljava/util/List;)V
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
    .line 30
    .local p1, "choices":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->choices:Ljava/util/List;

    .line 31
    return-void
.end method

.method public setComponents(Ljava/util/List;)V
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
    .line 38
    .local p1, "components":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->components:Ljava/util/List;

    .line 39
    return-void
.end method

.method public setCustomizations(Ljava/util/List;)V
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
    .line 46
    .local p1, "customizations":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->customizations:Ljava/util/List;

    .line 47
    return-void
.end method

.method public setIsLight(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isLight"    # Ljava/lang/Boolean;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->mIsLight:Ljava/lang/Boolean;

    .line 87
    return-void
.end method

.method public setProductCode(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "productCode"    # Ljava/lang/Integer;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->mProductCode:Ljava/lang/Integer;

    .line 63
    return-void
.end method

.method public setPromoQuantity(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "promoQuantity"    # Ljava/lang/Integer;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->mPromoQuantity:Ljava/lang/Integer;

    .line 71
    return-void
.end method

.method public setQuantity(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "quantity"    # Ljava/lang/Integer;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->mQuantity:Ljava/lang/Integer;

    .line 79
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->choices:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 98
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->components:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 99
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->customizations:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 100
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->choiceSolution:Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 101
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->mProductCode:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->mPromoQuantity:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 103
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->mQuantity:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerOrderProduct;->mIsLight:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 105
    return-void
.end method
