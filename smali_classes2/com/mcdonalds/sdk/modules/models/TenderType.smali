.class public Lcom/mcdonalds/sdk/modules/models/TenderType;
.super Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
.source "TenderType.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final COLUMN_CODE:Ljava/lang/String; = "code"

.field public static final COLUMN_DEFAULT_TENDER_AMOUNT_DISPLAY:Ljava/lang/String; = "default_tender_amount_display"

.field public static final COLUMN_DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final COLUMN_ID:Ljava/lang/String; = "id"

.field public static final COLUMN_IS_DEFAULT:Ljava/lang/String; = "is_default"

.field public static final COLUMN_IS_VALID:Ljava/lang/String; = "is_valid"

.field public static final COLUMN_LAST_MODIFICATION:Ljava/lang/String; = "last_modification"

.field public static final COLUMN_MARKET_ID:Ljava/lang/String; = "market_id"

.field public static final COLUMN_MINIMUM_TENDER_AMOUNT:Ljava/lang/String; = "minimum_tender_amount"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/TenderType;",
            ">;"
        }
    .end annotation
.end field

.field public static final TABLE_NAME:Ljava/lang/String; = "tender_types"


# instance fields
.field public mCode:I

.field public mDefaultTenderAmountDisplay:I

.field public mDisplayName:Ljava/lang/String;

.field public mID:I

.field public mIsDefault:Z

.field public mIsValid:Z

.field public mLastModification:Ljava/lang/String;

.field public mMarketID:I

.field public mMinimumTenderAmount:I

.field public mStaticsData:Ljava/util/List;
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
    .line 236
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/TenderType$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/TenderType$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/TenderType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 217
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 219
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mID:I

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mCode:I

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mDisplayName:Ljava/lang/String;

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mMarketID:I

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mMinimumTenderAmount:I

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mDefaultTenderAmountDisplay:I

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mIsDefault:Z

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mLastModification:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mIsValid:Z

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mStaticsData:Ljava/util/List;

    .line 232
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mStaticsData:Ljava/util/List;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 234
    return-void

    :cond_0
    move v0, v2

    .line 227
    goto :goto_0

    :cond_1
    move v1, v2

    .line 229
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    return v0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mCode:I

    return v0
.end method

.method public getDefaultTenderAmountDisplay()I
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mDefaultTenderAmountDisplay:I

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mDisplayName:Ljava/lang/String;

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
    .line 53
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const/4 v1, 0x0

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "id"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "code"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "display_name"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "market_id"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "minimum_tender_amount"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "default_tender_amount_display"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "is_default"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "last_modification"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "is_valid"

    const-string v4, "integer"

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
    .line 73
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForeignKeys()Ljava/util/List;
    .locals 1
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
    .line 68
    const/4 v0, 0x0

    return-object v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mID:I

    return v0
.end method

.method public getLastModification()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mLastModification:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketID()I
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mMarketID:I

    return v0
.end method

.method public getMinimumTenderAmount()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mMinimumTenderAmount:I

    return v0
.end method

.method public getPrimaryKeyNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 4

    .prologue
    .line 93
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
    .line 98
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mID:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getStaticsData()Ljava/util/List;
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
    .line 189
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mStaticsData:Ljava/util/List;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "tender_types"

    return-object v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 78
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 79
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "id"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 80
    const-string v1, "code"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    const-string v1, "display_name"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v1, "market_id"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mMarketID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    const-string v1, "minimum_tender_amount"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mMinimumTenderAmount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    const-string v1, "default_tender_amount_display"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mDefaultTenderAmountDisplay:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 85
    const-string v1, "is_default"

    iget-boolean v2, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mIsDefault:Z

    invoke-virtual {p0, v2}, Lcom/mcdonalds/sdk/modules/models/TenderType;->getIntForBoolean(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    const-string v1, "last_modification"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mLastModification:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v1, "is_valid"

    iget-boolean v2, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mIsValid:Z

    invoke-virtual {p0, v2}, Lcom/mcdonalds/sdk/modules/models/TenderType;->getIntForBoolean(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    return-object v0
.end method

.method public isDefault()Z
    .locals 1

    .prologue
    .line 165
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mIsDefault:Z

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 181
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mIsValid:Z

    return v0
.end method

.method public populateFromCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 104
    const-string v0, "id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mID:I

    .line 105
    const-string v0, "code"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mCode:I

    .line 106
    const-string v0, "display_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mDisplayName:Ljava/lang/String;

    .line 107
    const-string v0, "market_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mMarketID:I

    .line 108
    const-string v0, "minimum_tender_amount"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mMinimumTenderAmount:I

    .line 109
    const-string v0, "default_tender_amount_display"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mDefaultTenderAmountDisplay:I

    .line 110
    const-string v0, "is_default"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/TenderType;->getBooleanForInt(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mIsDefault:Z

    .line 111
    const-string v0, "last_modification"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mLastModification:Ljava/lang/String;

    .line 112
    const-string v0, "is_valid"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/TenderType;->getBooleanForInt(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mIsValid:Z

    .line 114
    return-void
.end method

.method public setCode(I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mCode:I

    .line 130
    return-void
.end method

.method public setDefault(Z)V
    .locals 0
    .param p1, "aDefault"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mIsDefault:Z

    .line 170
    return-void
.end method

.method public setDefaultTenderAmountDisplay(I)V
    .locals 0
    .param p1, "defaultTenderAmountDisplay"    # I

    .prologue
    .line 161
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mDefaultTenderAmountDisplay:I

    .line 162
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mDisplayName:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public setID(I)V
    .locals 0
    .param p1, "ID"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mID:I

    .line 122
    return-void
.end method

.method public setLastModification(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastModification"    # Ljava/lang/String;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mLastModification:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public setMarketID(I)V
    .locals 0
    .param p1, "marketID"    # I

    .prologue
    .line 145
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mMarketID:I

    .line 146
    return-void
.end method

.method public setMinimumTenderAmount(I)V
    .locals 0
    .param p1, "minimumTenderAmount"    # I

    .prologue
    .line 153
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mMinimumTenderAmount:I

    .line 154
    return-void
.end method

.method public setStaticsData(Ljava/util/List;)V
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
    .line 193
    .local p1, "staticsData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mStaticsData:Ljava/util/List;

    .line 194
    return-void
.end method

.method public setValid(Z)V
    .locals 0
    .param p1, "valid"    # Z

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mIsValid:Z

    .line 186
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 204
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mMarketID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mMinimumTenderAmount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mDefaultTenderAmountDisplay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mIsDefault:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 211
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mLastModification:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mIsValid:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 213
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/TenderType;->mStaticsData:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 214
    return-void

    :cond_0
    move v0, v2

    .line 210
    goto :goto_0

    :cond_1
    move v1, v2

    .line 212
    goto :goto_1
.end method
