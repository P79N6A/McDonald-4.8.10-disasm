.class public Lcom/mcdonalds/sdk/modules/models/Promotion;
.super Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
.source "Promotion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final COLUMN_ACTION_NAME:Ljava/lang/String; = "action_name"

.field public static final COLUMN_DISCOUNT_AMOUNT:Ljava/lang/String; = "discount_amount"

.field public static final COLUMN_DISPLAY_IMAGE_NAME:Ljava/lang/String; = "display_image_name"

.field public static final COLUMN_ID:Ljava/lang/String; = "id"

.field public static final COLUMN_IS_VALID:Ljava/lang/String; = "is_valid"

.field public static final COLUMN_ORIGINAL_PRICE:Ljava/lang/String; = "original_price"

.field public static final COLUMN_PRODUCT_CODE:Ljava/lang/String; = "product_code"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Promotion;",
            ">;"
        }
    .end annotation
.end field

.field public static final TABLE_NAME:Ljava/lang/String; = "promotions"


# instance fields
.field private mActionName:Ljava/lang/String;

.field private mDiscountAmount:Ljava/lang/Double;

.field private mDisplayImageName:Ljava/lang/String;

.field private mIsValid:Ljava/lang/Boolean;

.field private mOriginalPrice:Ljava/lang/Double;

.field private mProductCode:Ljava/lang/Integer;

.field private mPromotionID:Ljava/lang/Integer;

.field private mStaticData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 206
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Promotion$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/Promotion$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Promotion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 190
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 192
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 194
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mPromotionID:Ljava/lang/Integer;

    .line 195
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mProductCode:Ljava/lang/Integer;

    .line 196
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mOriginalPrice:Ljava/lang/Double;

    .line 197
    const-class v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mDiscountAmount:Ljava/lang/Double;

    .line 198
    const-class v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mIsValid:Ljava/lang/Boolean;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mDisplayImageName:Ljava/lang/String;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mActionName:Ljava/lang/String;

    .line 202
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mStaticData:Ljava/util/List;

    .line 203
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mStaticData:Ljava/util/List;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 204
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mActionName:Ljava/lang/String;

    return-object v0
.end method

.method public getDiscountAmount()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mDiscountAmount:Ljava/lang/Double;

    return-object v0
.end method

.method public getDisplayImageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mDisplayImageName:Ljava/lang/String;

    return-object v0
.end method

.method public getFields()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const/4 v1, 0x0

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "id"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "product_code"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "original_price"

    const-string v4, "real"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "discount_amount"

    const-string v4, "real"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "is_valid"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "display_image_name"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "action_name"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getForeignKeyValue(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForeignKeys()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;

    const-string v1, "id"

    const-string v2, "products"

    const-string v3, "external_id"

    invoke-direct {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIsValid()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mIsValid:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getOriginalPrice()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mOriginalPrice:Ljava/lang/Double;

    return-object v0
.end method

.method public getPrimaryKeyNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getProductCode()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mProductCode:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPromotionID()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mPromotionID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    const-string v0, "%s=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 93
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mPromotionID:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getStaticData()Ljava/util/List;
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
    .line 164
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mStaticData:Ljava/util/List;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "promotions"

    return-object v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 75
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 76
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "id"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mPromotionID:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    const-string v1, "product_code"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mProductCode:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 78
    const-string v1, "original_price"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mOriginalPrice:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 79
    const-string v1, "discount_amount"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mDiscountAmount:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 80
    const-string v1, "is_valid"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mIsValid:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/mcdonalds/sdk/modules/models/Promotion;->getIntForBoolean(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    const-string v1, "display_image_name"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mDisplayImageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v1, "action_name"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mActionName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-object v0
.end method

.method public populateFromCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 98
    const-string v0, "id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mPromotionID:Ljava/lang/Integer;

    .line 99
    const-string v0, "product_code"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mProductCode:Ljava/lang/Integer;

    .line 100
    const-string v0, "original_price"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mOriginalPrice:Ljava/lang/Double;

    .line 101
    const-string v0, "discount_amount"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mDiscountAmount:Ljava/lang/Double;

    .line 102
    const-string v0, "is_valid"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/Promotion;->getBooleanForInt(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mIsValid:Ljava/lang/Boolean;

    .line 103
    const-string v0, "display_image_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mDisplayImageName:Ljava/lang/String;

    .line 104
    const-string v0, "action_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mActionName:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setActionName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mActionName"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mActionName:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setDiscountAmount(Ljava/lang/Double;)V
    .locals 0
    .param p1, "mDiscountAmount"    # Ljava/lang/Double;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mDiscountAmount:Ljava/lang/Double;

    .line 137
    return-void
.end method

.method public setDisplayImageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDisplayImageName"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mDisplayImageName:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setIsValid(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "mIsValid"    # Ljava/lang/Boolean;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mIsValid:Ljava/lang/Boolean;

    .line 145
    return-void
.end method

.method public setOriginalPrice(Ljava/lang/Double;)V
    .locals 0
    .param p1, "mOriginalPrice"    # Ljava/lang/Double;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mOriginalPrice:Ljava/lang/Double;

    .line 129
    return-void
.end method

.method public setProductCode(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "mProductCode"    # Ljava/lang/Integer;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mProductCode:Ljava/lang/Integer;

    .line 121
    return-void
.end method

.method public setPromotionID(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "mPromotionID"    # Ljava/lang/Integer;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mPromotionID:Ljava/lang/Integer;

    .line 113
    return-void
.end method

.method public setStaticData(Ljava/util/List;)V
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
    .line 168
    .local p1, "mStaticData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mStaticData:Ljava/util/List;

    .line 169
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 179
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mPromotionID:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mProductCode:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 181
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mOriginalPrice:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mDiscountAmount:Ljava/lang/Double;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mIsValid:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 184
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mDisplayImageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mStaticData:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 186
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Promotion;->mActionName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    return-void
.end method
