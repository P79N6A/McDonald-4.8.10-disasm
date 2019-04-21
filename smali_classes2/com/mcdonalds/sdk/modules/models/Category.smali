.class public Lcom/mcdonalds/sdk/modules/models/Category;
.super Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
.source "Category.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final COLUMN_CATEGORY_DESCRIPTION:Ljava/lang/String; = "category_description"

.field public static final COLUMN_CATEGORY_ID:Ljava/lang/String; = "category_id"

.field public static final COLUMN_DISPLAY_ORDER:Ljava/lang/String; = "display_order"

.field public static final COLUMN_DISPLAY_SIZE_SELECTION:Ljava/lang/String; = "display_size_selection"

.field public static final COLUMN_EXTERNAL_ID:Ljava/lang/String; = "external_id"

.field public static final COLUMN_MARKETING_NAME:Ljava/lang/String; = "marketing_name"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_PARENT_DISPLAY_CATEGORY_ID:Ljava/lang/String; = "parent_display_category_id"

.field public static final COLUMN_SEQUENCE_ID:Ljava/lang/String; = "sequence_id"

.field public static final COLUMN_TEST_CATEGORY:Ljava/lang/String; = "test_category"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "type"

.field private static final CORE:Ljava/lang/String; = "Core"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Category;",
            ">;"
        }
    .end annotation
.end field

.field public static final DO_NOT_SHOW:Ljava/lang/String; = "do_not_show"

.field public static final TABLE_NAME:Ljava/lang/String; = "categories"


# instance fields
.field private mCategoryDescription:Ljava/lang/String;

.field private mDisplayOrder:I

.field private mDisplaySizeSelection:I

.field private mDoNotShow:Ljava/lang/String;

.field private mExternalId:I

.field private mID:I

.field private mMarketingName:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mParentDisplayCategoryID:I

.field private mSequenceID:I

.field private mTestCategory:Z

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 317
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Category$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/Category$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Category;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 56
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mID:I

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mName:Ljava/lang/String;

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mCategoryDescription:Ljava/lang/String;

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mTestCategory:Z

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mMarketingName:Ljava/lang/String;

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mDisplayOrder:I

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mType:I

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mExternalId:I

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mDisplaySizeSelection:I

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mParentDisplayCategoryID:I

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mSequenceID:I

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mDoNotShow:Ljava/lang/String;

    .line 315
    return-void

    .line 306
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 266
    if-ne p0, p1, :cond_1

    .line 271
    :cond_0
    :goto_0
    return v1

    .line 267
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 269
    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Category;

    .line 271
    .local v0, "category":Lcom/mcdonalds/sdk/modules/models/Category;
    iget v3, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mID:I

    iget v4, v0, Lcom/mcdonalds/sdk/modules/models/Category;->mID:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getCategoryDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mCategoryDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayOrder()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mDisplayOrder:I

    return v0
.end method

.method public getDisplaySizeSelection()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mDisplaySizeSelection:I

    return v0
.end method

.method public getDoNotShow()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mDoNotShow:Ljava/lang/String;

    return-object v0
.end method

.method public getExternalId()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mExternalId:I

    return v0
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
    .line 70
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const/4 v1, 0x0

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "category_id"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "name"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "category_description"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "test_category"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "marketing_name"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "display_order"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "type"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "external_id"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "display_size_selection"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "parent_display_category_id"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "sequence_id"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "do_not_show"

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
    .line 93
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
    .line 88
    const/4 v0, 0x0

    return-object v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 191
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mID:I

    return v0
.end method

.method public getMarketingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mMarketingName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParentDisplayCategoryID()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mParentDisplayCategoryID:I

    return v0
.end method

.method public getPrimaryKeyNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "category_id"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 4

    .prologue
    .line 116
    const-string v0, "%s=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "category_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 121
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mID:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getSequenceID()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mSequenceID:I

    return v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "categories"

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 175
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mType:I

    return v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 98
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 99
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "category_id"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    const-string v1, "name"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v1, "category_description"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mCategoryDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v1, "test_category"

    iget-boolean v2, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mTestCategory:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 103
    const-string v1, "marketing_name"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mMarketingName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v1, "display_order"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mDisplayOrder:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 105
    const-string v1, "type"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    const-string v1, "external_id"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mExternalId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    const-string v1, "display_size_selection"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mDisplaySizeSelection:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    const-string v1, "parent_display_category_id"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mParentDisplayCategoryID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 109
    const-string v1, "sequence_id"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mSequenceID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string v1, "do_not_show"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mDoNotShow:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 277
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mID:I

    return v0
.end method

.method public isTestCategory()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mTestCategory:Z

    return v0
.end method

.method public populateFromCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/mcdonalds/sdk/modules/models/Category;->populateFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public populateFromCursor(Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 4
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "alias"    # Ljava/lang/String;

    .prologue
    .line 131
    const-string v0, ""

    .line 132
    .local v0, "prefix":Ljava/lang/String;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    const-string v1, "%s_"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 136
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "category_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mID:I

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mName:Ljava/lang/String;

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "category_description"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mCategoryDescription:Ljava/lang/String;

    .line 139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "test_category"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/mcdonalds/sdk/modules/models/Category;->getBooleanForInt(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mTestCategory:Z

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "marketing_name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mMarketingName:Ljava/lang/String;

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "display_order"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mDisplayOrder:I

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mType:I

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "external_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mExternalId:I

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "display_size_selection"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mDisplaySizeSelection:I

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "parent_display_category_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mParentDisplayCategoryID:I

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "sequence_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mSequenceID:I

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "do_not_show"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mDoNotShow:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setCategoryDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "categoryDescription"    # Ljava/lang/String;

    .prologue
    .line 231
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mCategoryDescription:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public setDisplayOrder(I)V
    .locals 0
    .param p1, "displayOrder"    # I

    .prologue
    .line 171
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mDisplayOrder:I

    .line 172
    return-void
.end method

.method public setDisplaySizeSelection(I)V
    .locals 0
    .param p1, "displaySizeSelection"    # I

    .prologue
    .line 203
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mDisplaySizeSelection:I

    .line 204
    return-void
.end method

.method public setDoNotShow(Ljava/lang/String;)V
    .locals 0
    .param p1, "doNotShow"    # Ljava/lang/String;

    .prologue
    .line 215
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mDoNotShow:Ljava/lang/String;

    .line 216
    return-void
.end method

.method public setExternalId(I)V
    .locals 0
    .param p1, "externalId"    # I

    .prologue
    .line 187
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mExternalId:I

    .line 188
    return-void
.end method

.method public setID(I)V
    .locals 0
    .param p1, "ID"    # I

    .prologue
    .line 195
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mID:I

    .line 196
    return-void
.end method

.method public setMarketingName(Ljava/lang/String;)V
    .locals 0
    .param p1, "marketingName"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mMarketingName:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mName:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public setParentDisplayCategoryID(I)V
    .locals 0
    .param p1, "mParentDisplayCategoryID"    # I

    .prologue
    .line 239
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mParentDisplayCategoryID:I

    .line 240
    return-void
.end method

.method public setSequenceID(I)V
    .locals 0
    .param p1, "sequenceID"    # I

    .prologue
    .line 247
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mSequenceID:I

    .line 248
    return-void
.end method

.method public setTestCategory(Z)V
    .locals 0
    .param p1, "testCategory"    # Z

    .prologue
    .line 155
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mTestCategory:Z

    .line 156
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 179
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mType:I

    .line 180
    return-void
.end method

.method public shouldShow()Z
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mDoNotShow:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mDoNotShow:Ljava/lang/String;

    const-string v1, "Core"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Category{mID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mName=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mCategoryDescription=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mCategoryDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mTestCategory="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mTestCategory:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMarketingName=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mMarketingName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", mDisplayOrder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mDisplayOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExternalId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mExternalId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 288
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mCategoryDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 291
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mTestCategory:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 292
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mMarketingName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 293
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mDisplayOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mExternalId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mDisplaySizeSelection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mParentDisplayCategoryID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mSequenceID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Category;->mDoNotShow:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    return-void

    .line 291
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
