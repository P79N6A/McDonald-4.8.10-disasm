.class public Lcom/mcdonalds/sdk/modules/models/OfferProduct;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "OfferProduct.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OfferProduct;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAction:Lcom/mcdonalds/sdk/modules/models/OfferAction;

.field private mAlias:Ljava/lang/String;

.field private mAnyProduct:Ljava/lang/Boolean;

.field private mCodesFromAlias:Ljava/lang/String;

.field private mExpired:Ljava/lang/Boolean;

.field private mMaxUnitPrice:Ljava/lang/Double;

.field private mMaxUnitPriceAlias:Ljava/lang/String;

.field private mMinUnitPrice:Ljava/lang/Double;

.field private mMinUnitPriceAlias:Ljava/lang/String;

.field private mProducts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OfferProductOption;",
            ">;"
        }
    .end annotation
.end field

.field private mPromoItem:Ljava/lang/Boolean;

.field private mQuantity:Ljava/lang/Integer;

.field private mSelectedOption:Lcom/mcdonalds/sdk/modules/models/OfferProductOption;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 228
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OfferProduct$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/OfferProduct$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 206
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 210
    const-class v0, Lcom/mcdonalds/sdk/modules/models/OfferAction;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OfferAction;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mAction:Lcom/mcdonalds/sdk/modules/models/OfferAction;

    .line 211
    const-class v0, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mSelectedOption:Lcom/mcdonalds/sdk/modules/models/OfferProductOption;

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mAlias:Ljava/lang/String;

    .line 213
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mAnyProduct:Ljava/lang/Boolean;

    .line 214
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mMaxUnitPrice:Ljava/lang/Double;

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mMaxUnitPriceAlias:Ljava/lang/String;

    .line 216
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mMinUnitPrice:Ljava/lang/Double;

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mMinUnitPriceAlias:Ljava/lang/String;

    .line 219
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mProducts:Ljava/util/List;

    .line 220
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mProducts:Ljava/util/List;

    const-class v1, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 222
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mPromoItem:Ljava/lang/Boolean;

    .line 223
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mQuantity:Ljava/lang/Integer;

    .line 224
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mExpired:Ljava/lang/Boolean;

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mCodesFromAlias:Ljava/lang/String;

    .line 226
    return-void
.end method


# virtual methods
.method public clone()Lcom/mcdonalds/sdk/modules/models/OfferProduct;
    .locals 6

    .prologue
    .line 34
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;-><init>()V

    .line 35
    .local v0, "newOfferProduct":Lcom/mcdonalds/sdk/modules/models/OfferProduct;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getAction()Lcom/mcdonalds/sdk/modules/models/OfferAction;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->setAction(Lcom/mcdonalds/sdk/modules/models/OfferAction;)V

    .line 36
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->setAlias(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getAnyProduct()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->setAnyProduct(Ljava/lang/Boolean;)V

    .line 38
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getMaxUnitPrice()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->setMaxUnitPrice(Ljava/lang/Double;)V

    .line 39
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getMaxUnitPriceAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->setMaxUnitPriceAlias(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getMinUnitPrice()Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->setMinUnitPrice(Ljava/lang/Double;)V

    .line 41
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getMinUnitPriceAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->setMinUnitPriceAlias(Ljava/lang/String;)V

    .line 42
    iget-object v4, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mPromoItem:Ljava/lang/Boolean;

    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->setPromoItem(Ljava/lang/Boolean;)V

    .line 43
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getQuantity()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->setQuantity(Ljava/lang/Integer;)V

    .line 44
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getExpired()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->setExpired(Ljava/lang/Boolean;)V

    .line 45
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getCodesFromAlias()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->setCodesFromAlias(Ljava/lang/String;)V

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v2, "newOfferProductOptions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OfferProductOption;>;"
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getProducts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;

    .line 49
    .local v3, "offerProductOption":Lcom/mcdonalds/sdk/modules/models/OfferProductOption;
    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/OfferProductOption;->clone()Lcom/mcdonalds/sdk/modules/models/OfferProductOption;

    move-result-object v1

    .line 50
    .local v1, "newOfferProductOption":Lcom/mcdonalds/sdk/modules/models/OfferProductOption;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->getSelectedOption()Lcom/mcdonalds/sdk/modules/models/OfferProductOption;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 51
    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->setSelectedOption(Lcom/mcdonalds/sdk/modules/models/OfferProductOption;)V

    .line 53
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    .end local v1    # "newOfferProductOption":Lcom/mcdonalds/sdk/modules/models/OfferProductOption;
    .end local v3    # "offerProductOption":Lcom/mcdonalds/sdk/modules/models/OfferProductOption;
    :cond_1
    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->setProducts(Ljava/util/List;)V

    .line 57
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->clone()Lcom/mcdonalds/sdk/modules/models/OfferProduct;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return v0
.end method

.method public getAction()Lcom/mcdonalds/sdk/modules/models/OfferAction;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mAction:Lcom/mcdonalds/sdk/modules/models/OfferAction;

    return-object v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getAnyProduct()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mAnyProduct:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getCodesFromAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mCodesFromAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getExpired()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mExpired:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getMaxUnitPrice()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mMaxUnitPrice:Ljava/lang/Double;

    return-object v0
.end method

.method public getMaxUnitPriceAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mMaxUnitPriceAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getMinUnitPrice()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mMinUnitPrice:Ljava/lang/Double;

    return-object v0
.end method

.method public getMinUnitPriceAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mMinUnitPriceAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getProducts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OfferProductOption;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mProducts:Ljava/util/List;

    return-object v0
.end method

.method public getQuantity()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mQuantity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSelectedOption()Lcom/mcdonalds/sdk/modules/models/OfferProductOption;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mSelectedOption:Lcom/mcdonalds/sdk/modules/models/OfferProductOption;

    return-object v0
.end method

.method public isPromoItem()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mPromoItem:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAction(Lcom/mcdonalds/sdk/modules/models/OfferAction;)V
    .locals 0
    .param p1, "action"    # Lcom/mcdonalds/sdk/modules/models/OfferAction;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mAction:Lcom/mcdonalds/sdk/modules/models/OfferAction;

    .line 66
    return-void
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mAlias:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setAnyProduct(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "anyProduct"    # Ljava/lang/Boolean;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mAnyProduct:Ljava/lang/Boolean;

    .line 90
    return-void
.end method

.method public setCodesFromAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "codesFromAlias"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mCodesFromAlias:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setExpired(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "expired"    # Ljava/lang/Boolean;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mExpired:Ljava/lang/Boolean;

    .line 154
    return-void
.end method

.method public setMaxUnitPrice(Ljava/lang/Double;)V
    .locals 0
    .param p1, "maxUnitPrice"    # Ljava/lang/Double;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mMaxUnitPrice:Ljava/lang/Double;

    .line 98
    return-void
.end method

.method public setMaxUnitPriceAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "maxUnitPriceAlias"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mMaxUnitPriceAlias:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setMinUnitPrice(Ljava/lang/Double;)V
    .locals 0
    .param p1, "minUnitPrice"    # Ljava/lang/Double;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mMinUnitPrice:Ljava/lang/Double;

    .line 114
    return-void
.end method

.method public setMinUnitPriceAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "minUnitPriceAlias"    # Ljava/lang/String;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mMinUnitPriceAlias:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setProducts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/OfferProductOption;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "products":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/OfferProductOption;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mProducts:Ljava/util/List;

    .line 130
    return-void
.end method

.method public setPromoItem(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "promoItem"    # Ljava/lang/Boolean;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mPromoItem:Ljava/lang/Boolean;

    .line 138
    return-void
.end method

.method public setQuantity(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "quantity"    # Ljava/lang/Integer;

    .prologue
    .line 145
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mQuantity:Ljava/lang/Integer;

    .line 146
    return-void
.end method

.method public setSelectedOption(Lcom/mcdonalds/sdk/modules/models/OfferProductOption;)V
    .locals 0
    .param p1, "selectedOption"    # Lcom/mcdonalds/sdk/modules/models/OfferProductOption;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mSelectedOption:Lcom/mcdonalds/sdk/modules/models/OfferProductOption;

    .line 74
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OfferProduct{mAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mAction:Lcom/mcdonalds/sdk/modules/models/OfferAction;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mSelectedOption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mSelectedOption:Lcom/mcdonalds/sdk/modules/models/OfferProductOption;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAlias=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mAnyProduct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mAnyProduct:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxUnitPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mMaxUnitPrice:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMaxUnitPriceAlias=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mMaxUnitPriceAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mMinUnitPrice="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mMinUnitPrice:Ljava/lang/Double;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMinUnitPriceAlias=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mMinUnitPriceAlias:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mProducts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mProducts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPromoItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mPromoItem:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mQuantity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mQuantity:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExpired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mExpired:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mAction:Lcom/mcdonalds/sdk/modules/models/OfferAction;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 191
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mSelectedOption:Lcom/mcdonalds/sdk/modules/models/OfferProductOption;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 192
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mAnyProduct:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 194
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mMaxUnitPrice:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 195
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mMaxUnitPriceAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mMinUnitPrice:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mMinUnitPriceAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mProducts:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 199
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mPromoItem:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mQuantity:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mExpired:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/OfferProduct;->mCodesFromAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    return-void
.end method
