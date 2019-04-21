.class public Lcom/mcdonalds/sdk/modules/models/ProductView;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "ProductView.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mChangeStatus:Ljava/lang/Integer;

.field private mChoices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductView;",
            ">;"
        }
    .end annotation
.end field

.field private mComponents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductView;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomizations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductView;",
            ">;"
        }
    .end annotation
.end field

.field private mIsLight:Ljava/lang/Boolean;

.field private mIsPromotional:Ljava/lang/Boolean;

.field private mProductCode:Ljava/lang/Integer;

.field private mPromoQuantity:Ljava/lang/Integer;

.field private mPromotion:Lcom/mcdonalds/sdk/modules/models/Promotion;

.field private mQuantity:Ljava/lang/Integer;

.field private mTotalEnergy:Ljava/lang/Double;

.field private mTotalValue:Ljava/lang/Double;

.field private mUnitPrice:Ljava/lang/Double;

.field private mValidationErrorCode:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 252
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/ProductView$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/ProductView$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/ProductView;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 231
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 232
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 235
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mQuantity:Ljava/lang/Integer;

    .line 236
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mIsLight:Ljava/lang/Boolean;

    .line 237
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mUnitPrice:Ljava/lang/Double;

    .line 238
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mTotalValue:Ljava/lang/Double;

    .line 239
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mTotalEnergy:Ljava/lang/Double;

    .line 240
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mPromoQuantity:Ljava/lang/Integer;

    .line 241
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mChangeStatus:Ljava/lang/Integer;

    .line 242
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mIsPromotional:Ljava/lang/Boolean;

    .line 243
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mProductCode:Ljava/lang/Integer;

    .line 244
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mValidationErrorCode:Ljava/lang/Integer;

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mChoices:Ljava/util/ArrayList;

    .line 246
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mChoices:Ljava/util/ArrayList;

    const-class v1, Lcom/mcdonalds/sdk/modules/models/ProductView;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 247
    const-class v0, Lcom/mcdonalds/sdk/modules/models/Promotion;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Promotion;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mPromotion:Lcom/mcdonalds/sdk/modules/models/Promotion;

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mComponents:Ljava/util/ArrayList;

    .line 249
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mComponents:Ljava/util/ArrayList;

    const-class v1, Lcom/mcdonalds/sdk/modules/models/ProductView;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 250
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 13
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v11, 0x0

    .line 168
    instance-of v10, p1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    if-eqz v10, :cond_2

    .line 169
    check-cast p1, Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->getProductCode()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 170
    .local v3, "productCode":I
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getProductCode()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v3, v10, :cond_1

    const/4 v10, 0x1

    :goto_0
    move v11, v10

    .line 205
    .end local v3    # "productCode":I
    :cond_0
    :goto_1
    return v11

    .restart local v3    # "productCode":I
    :cond_1
    move v10, v11

    .line 170
    goto :goto_0

    .line 173
    .end local v3    # "productCode":I
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_2
    instance-of v10, p1, Lcom/mcdonalds/sdk/modules/models/ProductView;

    if-eqz v10, :cond_9

    move-object v2, p1

    .line 174
    check-cast v2, Lcom/mcdonalds/sdk/modules/models/ProductView;

    .line 175
    .local v2, "object":Lcom/mcdonalds/sdk/modules/models/ProductView;
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getProductCode()Ljava/lang/Integer;

    move-result-object v3

    .line 176
    .local v3, "productCode":Ljava/lang/Integer;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getProductCode()Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 177
    .local v0, "equals":Z
    if-eqz v0, :cond_8

    .line 178
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getCustomizations()Ljava/util/ArrayList;

    move-result-object v9

    .line 179
    .local v9, "productViewCustomizations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    if-nez v9, :cond_4

    move v8, v11

    .line 180
    .local v8, "productViewCustomizationSize":I
    :goto_2
    if-nez v8, :cond_3

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getCustomizations()Ljava/util/ArrayList;

    move-result-object v10

    invoke-static {v10}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 183
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    if-ge v1, v8, :cond_5

    .line 184
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/ProductView;

    .line 185
    .local v7, "productViewCustomization":Lcom/mcdonalds/sdk/modules/models/ProductView;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getCustomizations()Ljava/util/ArrayList;

    move-result-object v10

    invoke-static {v10}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getCustomizations()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mcdonalds/sdk/modules/models/ProductView;

    invoke-virtual {v10, v7}, Lcom/mcdonalds/sdk/modules/models/ProductView;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 179
    .end local v1    # "i":I
    .end local v7    # "productViewCustomization":Lcom/mcdonalds/sdk/modules/models/ProductView;
    .end local v8    # "productViewCustomizationSize":I
    :cond_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v8

    goto :goto_2

    .line 190
    .restart local v1    # "i":I
    .restart local v8    # "productViewCustomizationSize":I
    :cond_5
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getActualChoice()Lcom/mcdonalds/sdk/modules/models/ProductView;

    move-result-object v10

    if-eq v10, p0, :cond_6

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getActualChoice()Lcom/mcdonalds/sdk/modules/models/ProductView;

    move-result-object v10

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getActualChoice()Lcom/mcdonalds/sdk/modules/models/ProductView;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/mcdonalds/sdk/modules/models/ProductView;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 194
    :cond_6
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getChoices()Ljava/util/ArrayList;

    move-result-object v6

    .line 195
    .local v6, "productViewChoices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    if-nez v6, :cond_7

    move v5, v11

    .line 196
    .local v5, "productViewChoiceSize":I
    :goto_4
    const/4 v1, 0x0

    :goto_5
    if-ge v1, v5, :cond_8

    .line 197
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/ProductView;

    .line 198
    .local v4, "productViewChoice":Lcom/mcdonalds/sdk/modules/models/ProductView;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getChoices()Ljava/util/ArrayList;

    move-result-object v10

    invoke-static {v10}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getChoices()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mcdonalds/sdk/modules/models/ProductView;

    invoke-virtual {v10, v4}, Lcom/mcdonalds/sdk/modules/models/ProductView;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 196
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 195
    .end local v4    # "productViewChoice":Lcom/mcdonalds/sdk/modules/models/ProductView;
    .end local v5    # "productViewChoiceSize":I
    :cond_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    goto :goto_4

    .end local v1    # "i":I
    .end local v6    # "productViewChoices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    .end local v8    # "productViewCustomizationSize":I
    .end local v9    # "productViewCustomizations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    :cond_8
    move v11, v0

    .line 203
    goto/16 :goto_1

    .line 205
    .end local v0    # "equals":Z
    .end local v2    # "object":Lcom/mcdonalds/sdk/modules/models/ProductView;
    .end local v3    # "productCode":Ljava/lang/Integer;
    :cond_9
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    goto/16 :goto_1
.end method

.method public getActualChoice()Lcom/mcdonalds/sdk/modules/models/ProductView;
    .locals 2

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getProductCode()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getChoices()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getChoices()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/ProductView;

    .line 148
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method public getChangeStatus()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mChangeStatus:Ljava/lang/Integer;

    return-object v0
.end method

.method public getChoices()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mChoices:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getComponents()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mComponents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCustomizations()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductView;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mCustomizations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIsLight()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mIsLight:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getIsPromotional()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mIsPromotional:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getProductCode()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mProductCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPromoQuantity()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mPromoQuantity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPromotion()Lcom/mcdonalds/sdk/modules/models/Promotion;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mPromotion:Lcom/mcdonalds/sdk/modules/models/Promotion;

    return-object v0
.end method

.method public getQuantity()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mQuantity:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSubProductView(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/ProductView;
    .locals 4
    .param p1, "orderProduct"    # Lcom/mcdonalds/sdk/modules/models/OrderProduct;

    .prologue
    .line 152
    const/4 v2, 0x1

    invoke-virtual {p1, p0, v2}, Lcom/mcdonalds/sdk/modules/models/OrderProduct;->equals(Lcom/mcdonalds/sdk/modules/models/ProductView;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    .end local p0    # "this":Lcom/mcdonalds/sdk/modules/models/ProductView;
    :goto_0
    return-object p0

    .line 155
    .restart local p0    # "this":Lcom/mcdonalds/sdk/modules/models/ProductView;
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getChoices()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/utils/ListUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 156
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getChoices()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/ProductView;

    .line 157
    .local v0, "choice":Lcom/mcdonalds/sdk/modules/models/ProductView;
    invoke-virtual {v0, p1}, Lcom/mcdonalds/sdk/modules/models/ProductView;->getSubProductView(Lcom/mcdonalds/sdk/modules/models/OrderProduct;)Lcom/mcdonalds/sdk/modules/models/ProductView;

    move-result-object v1

    .line 158
    .local v1, "subProduct":Lcom/mcdonalds/sdk/modules/models/ProductView;
    if-eqz v1, :cond_1

    move-object p0, v1

    .line 159
    goto :goto_0

    .line 163
    .end local v0    # "choice":Lcom/mcdonalds/sdk/modules/models/ProductView;
    .end local v1    # "subProduct":Lcom/mcdonalds/sdk/modules/models/ProductView;
    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public getTotalValue()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mTotalValue:Ljava/lang/Double;

    return-object v0
.end method

.method public getUnitPrice()Ljava/lang/Double;
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mUnitPrice:Ljava/lang/Double;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mUnitPrice:Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getValidationErrorCode()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mValidationErrorCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getmTotalEnergy()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mTotalEnergy:Ljava/lang/Double;

    return-object v0
.end method

.method public setChangeStatus(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "changeStatus"    # Ljava/lang/Integer;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mChangeStatus:Ljava/lang/Integer;

    .line 62
    return-void
.end method

.method public setChoices(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    .local p1, "choices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mChoices:Ljava/util/ArrayList;

    .line 126
    return-void
.end method

.method public setComponents(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "components":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mComponents:Ljava/util/ArrayList;

    .line 138
    return-void
.end method

.method public setCustomizations(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/ProductView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 133
    .local p1, "customizations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/mcdonalds/sdk/modules/models/ProductView;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mCustomizations:Ljava/util/ArrayList;

    .line 134
    return-void
.end method

.method public setIsLight(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isLight"    # Ljava/lang/Boolean;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mIsLight:Ljava/lang/Boolean;

    .line 70
    return-void
.end method

.method public setIsPromotional(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "isPromotional"    # Ljava/lang/Boolean;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mIsPromotional:Ljava/lang/Boolean;

    .line 78
    return-void
.end method

.method public setProductCode(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "productCode"    # Ljava/lang/Integer;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mProductCode:Ljava/lang/Integer;

    .line 38
    return-void
.end method

.method public setPromoQuantity(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "promoQuantity"    # Ljava/lang/Integer;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mPromoQuantity:Ljava/lang/Integer;

    .line 86
    return-void
.end method

.method public setPromotion(Lcom/mcdonalds/sdk/modules/models/Promotion;)V
    .locals 0
    .param p1, "mPromotion"    # Lcom/mcdonalds/sdk/modules/models/Promotion;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mPromotion:Lcom/mcdonalds/sdk/modules/models/Promotion;

    .line 54
    return-void
.end method

.method public setQuantity(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "quantity"    # Ljava/lang/Integer;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mQuantity:Ljava/lang/Integer;

    .line 94
    return-void
.end method

.method public setTotalValue(Ljava/lang/Double;)V
    .locals 0
    .param p1, "totalValue"    # Ljava/lang/Double;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mTotalValue:Ljava/lang/Double;

    .line 110
    return-void
.end method

.method public setUnitPrice(Ljava/lang/Double;)V
    .locals 0
    .param p1, "unitPrice"    # Ljava/lang/Double;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mUnitPrice:Ljava/lang/Double;

    .line 118
    return-void
.end method

.method public setValidationErrorCode(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "validationErrorCode"    # Ljava/lang/Integer;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mValidationErrorCode:Ljava/lang/Integer;

    .line 46
    return-void
.end method

.method public setmTotalEnergy(Ljava/lang/Double;)V
    .locals 0
    .param p1, "totalEnergy"    # Ljava/lang/Double;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mTotalEnergy:Ljava/lang/Double;

    .line 102
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 216
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mQuantity:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 217
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mIsLight:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 218
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mUnitPrice:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mTotalValue:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 220
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mTotalEnergy:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mPromoQuantity:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mChangeStatus:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mIsPromotional:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 224
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mProductCode:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 225
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mValidationErrorCode:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 226
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mChoices:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 227
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mPromotion:Lcom/mcdonalds/sdk/modules/models/Promotion;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 228
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/ProductView;->mComponents:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 229
    return-void
.end method
