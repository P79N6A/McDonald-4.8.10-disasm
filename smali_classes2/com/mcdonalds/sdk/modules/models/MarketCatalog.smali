.class public Lcom/mcdonalds/sdk/modules/models/MarketCatalog;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "MarketCatalog.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/MarketCatalog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoriesVersion:Ljava/lang/String;

.field private mFacilities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Facility;",
            ">;"
        }
    .end annotation
.end field

.field private mFacilitiesVersion:Ljava/lang/String;

.field private mFeedBackTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FeedBackType;",
            ">;"
        }
    .end annotation
.end field

.field private mFeedBackTypesVersion:Ljava/lang/String;

.field private mMenuTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/MenuType;",
            ">;"
        }
    .end annotation
.end field

.field private mMenuTypesVersion:Ljava/lang/String;

.field private mNamesVersion:Ljava/lang/String;

.field private mPaymentMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentMethod;",
            ">;"
        }
    .end annotation
.end field

.field private mPaymentMethodsVersion:Ljava/lang/String;

.field private mPromotions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Promotion;",
            ">;"
        }
    .end annotation
.end field

.field private mPromotionsVersion:Ljava/lang/String;

.field private mRecipesVersion:Ljava/lang/String;

.field private mSocialNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/SocialNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private mSocialNetworksVersion:Ljava/lang/String;

.field private mStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;"
        }
    .end annotation
.end field

.field private mStoresVersion:Ljava/lang/String;

.field private mTenderTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/TenderType;",
            ">;"
        }
    .end annotation
.end field

.field private mTenderTypesVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 274
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/MarketCatalog$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 36
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 230
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mCategoriesVersion:Ljava/lang/String;

    .line 232
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/Category;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mCategories:Ljava/util/List;

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mFacilitiesVersion:Ljava/lang/String;

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mFacilities:Ljava/util/List;

    .line 236
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mFacilities:Ljava/util/List;

    const-class v1, Lcom/mcdonalds/sdk/modules/models/Facility;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mStoresVersion:Ljava/lang/String;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mStores:Ljava/util/List;

    .line 241
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mStores:Ljava/util/List;

    const-class v1, Lcom/mcdonalds/sdk/modules/storelocator/Store;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mPaymentMethodsVersion:Ljava/lang/String;

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mPaymentMethods:Ljava/util/List;

    .line 246
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mPaymentMethods:Ljava/util/List;

    const-class v1, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mFeedBackTypesVersion:Ljava/lang/String;

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mFeedBackTypes:Ljava/util/List;

    .line 251
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mFeedBackTypes:Ljava/util/List;

    const-class v1, Lcom/mcdonalds/sdk/modules/models/FeedBackType;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 253
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mTenderTypesVersion:Ljava/lang/String;

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mTenderTypes:Ljava/util/List;

    .line 256
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mTenderTypes:Ljava/util/List;

    const-class v1, Lcom/mcdonalds/sdk/modules/models/TenderType;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 258
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mPromotionsVersion:Ljava/lang/String;

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mPromotions:Ljava/util/List;

    .line 261
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mPromotions:Ljava/util/List;

    const-class v1, Lcom/mcdonalds/sdk/modules/models/Promotion;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mMenuTypesVersion:Ljava/lang/String;

    .line 264
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/MenuType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mMenuTypes:Ljava/util/List;

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mSocialNetworksVersion:Ljava/lang/String;

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mSocialNetworks:Ljava/util/List;

    .line 268
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mSocialNetworks:Ljava/util/List;

    const-class v1, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mNamesVersion:Ljava/lang/String;

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mRecipesVersion:Ljava/lang/String;

    .line 272
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 203
    const/4 v0, 0x0

    return v0
.end method

.method public getCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mCategories:Ljava/util/List;

    return-object v0
.end method

.method public getCategoriesVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mCategoriesVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getFacilities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Facility;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mFacilities:Ljava/util/List;

    return-object v0
.end method

.method public getFacilitiesVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mFacilitiesVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedBackTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FeedBackType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mFeedBackTypes:Ljava/util/List;

    return-object v0
.end method

.method public getFeedBackTypesVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mFeedBackTypesVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getMenuTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/MenuType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mMenuTypes:Ljava/util/List;

    return-object v0
.end method

.method public getMenuTypesVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mMenuTypesVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getNamesVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mNamesVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentMethods()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentMethod;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mPaymentMethods:Ljava/util/List;

    return-object v0
.end method

.method public getPaymentMethodsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mPaymentMethodsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Promotion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mPromotions:Ljava/util/List;

    return-object v0
.end method

.method public getPromotionsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mPromotionsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getRecipesVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mRecipesVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialNetworks()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/SocialNetwork;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mSocialNetworks:Ljava/util/List;

    return-object v0
.end method

.method public getSocialNetworksVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mSocialNetworksVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getStores()Ljava/util/List;
    .locals 1
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
    .line 143
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mStores:Ljava/util/List;

    return-object v0
.end method

.method public getStoresVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mStoresVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getTenderTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/TenderType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mTenderTypes:Ljava/util/List;

    return-object v0
.end method

.method public getTenderTypesVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mTenderTypesVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isEmptyCatalog()Z
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mCategories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mFacilities:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mStores:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mPaymentMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mFeedBackTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mTenderTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mPromotions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCategories(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p1, "categories":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Category;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mCategories:Ljava/util/List;

    .line 132
    return-void
.end method

.method public setCategoriesVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "categoriesVersion"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mCategoriesVersion:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setFacilities(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Facility;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 139
    .local p1, "facilities":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Facility;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mFacilities:Ljava/util/List;

    .line 140
    return-void
.end method

.method public setFacilitiesVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "facilitiesVersion"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mFacilitiesVersion:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setFeedBackTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/FeedBackType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "feedBackTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/FeedBackType;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mFeedBackTypes:Ljava/util/List;

    .line 164
    return-void
.end method

.method public setFeedBackTypesVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "feedBackTypesVersion"    # Ljava/lang/String;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mFeedBackTypesVersion:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setMenuTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/MenuType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "menuTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/MenuType;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mMenuTypes:Ljava/util/List;

    .line 188
    return-void
.end method

.method public setMenuTypesVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "menuTypesVersion"    # Ljava/lang/String;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mMenuTypesVersion:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setNamesVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "namesVersion"    # Ljava/lang/String;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mNamesVersion:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setPaymentMethods(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentMethod;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 155
    .local p1, "paymentMethods":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentMethod;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mPaymentMethods:Ljava/util/List;

    .line 156
    return-void
.end method

.method public setPaymentMethodsVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "paymentMethodsVersion"    # Ljava/lang/String;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mPaymentMethodsVersion:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setPromotions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Promotion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "promotions":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/Promotion;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mPromotions:Ljava/util/List;

    .line 180
    return-void
.end method

.method public setPromotionsVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "promotionsVersion"    # Ljava/lang/String;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mPromotionsVersion:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setRecipesVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "recipesVersion"    # Ljava/lang/String;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mRecipesVersion:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setSocialNetworks(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/SocialNetwork;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p1, "socialNetworks":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/SocialNetwork;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mSocialNetworks:Ljava/util/List;

    .line 196
    return-void
.end method

.method public setSocialNetworksVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "socialNetworksVersion"    # Ljava/lang/String;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mSocialNetworksVersion:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setStores(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/storelocator/Store;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, "stores":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/storelocator/Store;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mStores:Ljava/util/List;

    .line 148
    return-void
.end method

.method public setStoresVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "storesVersion"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mStoresVersion:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setTenderTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/TenderType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 171
    .local p1, "tenderTypes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/TenderType;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mTenderTypes:Ljava/util/List;

    .line 172
    return-void
.end method

.method public setTenderTypesVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "tenderTypesVersion"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mTenderTypesVersion:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mCategoriesVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mCategories:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 210
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mFacilitiesVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mFacilities:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 212
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mStoresVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mStores:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 214
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mPaymentMethodsVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mPaymentMethods:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 216
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mFeedBackTypesVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mFeedBackTypes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 218
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mTenderTypesVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mTenderTypes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 220
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mPromotionsVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mPromotions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 222
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mMenuTypesVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mMenuTypes:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 224
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mSocialNetworksVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mSocialNetworks:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 226
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mNamesVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MarketCatalog;->mRecipesVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    return-void
.end method
