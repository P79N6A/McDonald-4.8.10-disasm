.class public Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "AdvertisablePromotion.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBaseProductId:I

.field private mDaysOfWeek:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIsAdvertisable:Z

.field private mPromotionName:Ljava/lang/String;

.field private mSwapProductId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v0, 0x1

    .line 157
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mIsAdvertisable:Z

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mPromotionName:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mBaseProductId:I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mSwapProductId:I

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mDaysOfWeek:Ljava/util/List;

    .line 163
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mDaysOfWeek:Ljava/util/List;

    const-class v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 164
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;)V
    .locals 0
    .param p1, "advertisable"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 27
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->setIsAdvertisable(Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->setpromotionName(Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;)V

    .line 29
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->setDaysOfWeek(Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;)V

    .line 30
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->setBaseProductId(Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->setSwapProductId(Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;)V

    .line 32
    return-void
.end method

.method private setBaseProductId(Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;)V
    .locals 2
    .param p1, "advertisable"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;

    .prologue
    const/4 v1, 0x0

    .line 67
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;->productSets:Ljava/util/List;

    .line 68
    invoke-static {v0}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;->productSets:Ljava/util/List;

    .line 69
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;->productSets:Ljava/util/List;

    .line 70
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableProductSet;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableProductSet;->swapMapping:Ljava/util/List;

    invoke-static {v0}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;->productSets:Ljava/util/List;

    .line 71
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableProductSet;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableProductSet;->swapMapping:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;->productSets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableProductSet;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableProductSet;->swapMapping:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableSwapMapping;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableSwapMapping;->regular:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mBaseProductId:I

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mBaseProductId:I

    goto :goto_0
.end method

.method private setIsAdvertisable(Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;)V
    .locals 1
    .param p1, "advertisable"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;

    .prologue
    .line 39
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;->isAdvertisable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mIsAdvertisable:Z

    .line 40
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setSwapProductId(Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;)V
    .locals 2
    .param p1, "advertisable"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;

    .prologue
    const/4 v1, 0x0

    .line 87
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;->productSets:Ljava/util/List;

    .line 88
    invoke-static {v0}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;->productSets:Ljava/util/List;

    .line 89
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;->productSets:Ljava/util/List;

    .line 90
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableProductSet;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableProductSet;->swapMapping:Ljava/util/List;

    invoke-static {v0}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;->productSets:Ljava/util/List;

    .line 91
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableProductSet;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableProductSet;->swapMapping:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;->productSets:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableProductSet;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableProductSet;->swapMapping:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableSwapMapping;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableSwapMapping;->swap:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mSwapProductId:I

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mSwapProductId:I

    goto :goto_0
.end method

.method private setpromotionName(Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;)V
    .locals 1
    .param p1, "advertisable"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;->advertisableName:Ljava/lang/String;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mPromotionName:Ljava/lang/String;

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mPromotionName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public getBaseProductId()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mBaseProductId:I

    return v0
.end method

.method public getDaysOfWeek()Ljava/util/List;
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
    .line 117
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mDaysOfWeek:Ljava/util/List;

    return-object v0
.end method

.method public getPromotionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mPromotionName:Ljava/lang/String;

    return-object v0
.end method

.method public getSwapProductId()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mSwapProductId:I

    return v0
.end method

.method public hasAdvertisablePromotion(I)Z
    .locals 1
    .param p1, "productCode"    # I

    .prologue
    .line 133
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mBaseProductId:I

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mIsAdvertisable:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->isValidForToday()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->isAdvertisedProduct(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    .line 136
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAdvertisable()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mIsAdvertisable:Z

    return v0
.end method

.method public isAdvertisedProduct(I)Z
    .locals 1
    .param p1, "productCode"    # I

    .prologue
    .line 140
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mSwapProductId:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidForToday()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 121
    iget-boolean v3, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mIsAdvertisable:Z

    if-eqz v3, :cond_1

    .line 122
    invoke-static {v2}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "today":Ljava/lang/String;
    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mDaysOfWeek:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 124
    .local v0, "dayOfWeek":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 125
    const/4 v2, 0x1

    .line 129
    .end local v0    # "dayOfWeek":Ljava/lang/String;
    .end local v1    # "today":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method public setBaseProductId(I)V
    .locals 0
    .param p1, "productId"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mBaseProductId:I

    .line 64
    return-void
.end method

.method public setDaysOfWeek(Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;)V
    .locals 1
    .param p1, "advertisable"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;

    .prologue
    .line 107
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;->conditions:Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableConditions;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;->conditions:Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableConditions;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableConditions;->dayOfWeekConditions:Ljava/util/List;

    .line 109
    invoke-static {v0}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisable;->conditions:Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableConditions;

    iget-object v0, v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWAdvertisableConditions;->dayOfWeekConditions:Ljava/util/List;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mDaysOfWeek:Ljava/util/List;

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mDaysOfWeek:Ljava/util/List;

    goto :goto_0
.end method

.method public setDaysOfWeek(Ljava/util/List;)V
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
    .line 103
    .local p1, "daysOfWeek":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mDaysOfWeek:Ljava/util/List;

    .line 104
    return-void
.end method

.method public setIsAdvertisable(Z)V
    .locals 0
    .param p1, "isAdvertisable"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mIsAdvertisable:Z

    .line 36
    return-void
.end method

.method public setSwapProductId(I)V
    .locals 0
    .param p1, "productId"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mSwapProductId:I

    .line 84
    return-void
.end method

.method public setpromotionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "promotionDescription"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mPromotionName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mIsAdvertisable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mPromotionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mBaseProductId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mSwapProductId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AdvertisablePromotion;->mDaysOfWeek:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 155
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
