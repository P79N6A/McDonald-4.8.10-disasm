.class public Lcom/mcdonalds/sdk/modules/models/MenuType;
.super Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
.source "MenuType.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final COLUMN_COLOR:Ljava/lang/String; = "color"

.field public static final COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final COLUMN_DISPLAY_IMAGE:Ljava/lang/String; = "display_image"

.field public static final COLUMN_FROM_TIME:Ljava/lang/String; = "from_time"

.field public static final COLUMN_ID:Ljava/lang/String; = "id"

.field public static final COLUMN_IS_VALID:Ljava/lang/String; = "is_valid"

.field public static final COLUMN_LAST_MODIFICATION:Ljava/lang/String; = "last_modification"

.field public static final COLUMN_LONG_NAME:Ljava/lang/String; = "long_name"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_SEQUENCE:Ljava/lang/String; = "sequence"

.field public static final COLUMN_SHORT_NAME:Ljava/lang/String; = "short_name"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/MenuType;",
            ">;"
        }
    .end annotation
.end field

.field public static final DRINK:I = 0x2

.field public static final TABLE_NAME:Ljava/lang/String; = "menu_types"


# instance fields
.field private mColor:Ljava/lang/String;

.field private mDescription:Ljava/lang/String;

.field private mDisplayImage:Ljava/lang/String;

.field private mFromTime:Ljava/lang/String;

.field private mID:I

.field private mIsValid:Z

.field private mLastModification:Ljava/lang/String;

.field private mLongName:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mSequence:Ljava/lang/String;

.field private mShortName:Ljava/lang/String;

.field private mStaticsData:Ljava/util/List;
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
    .line 297
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/MenuType$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/MenuType$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/MenuType;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 277
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mID:I

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mDescription:Ljava/lang/String;

    .line 282
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mColor:Ljava/lang/String;

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mDisplayImage:Ljava/lang/String;

    .line 284
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mIsValid:Z

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mName:Ljava/lang/String;

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mShortName:Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mLongName:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mSequence:Ljava/lang/String;

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mStaticsData:Ljava/util/List;

    .line 291
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mStaticsData:Ljava/util/List;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mLastModification:Ljava/lang/String;

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mFromTime:Ljava/lang/String;

    .line 295
    return-void

    .line 284
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 257
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 240
    if-ne p0, p1, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v1

    .line 241
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

    .line 243
    check-cast v0, Lcom/mcdonalds/sdk/modules/models/MenuType;

    .line 245
    .local v0, "menuType":Lcom/mcdonalds/sdk/modules/models/MenuType;
    iget v3, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mID:I

    iget v4, v0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mID:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mColor:Ljava/lang/String;

    return-object v0
.end method

.method public getCommonName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayImage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mDisplayImage:Ljava/lang/String;

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
    .line 59
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const/4 v1, 0x0

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "id"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "description"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "color"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "display_image"

    const-string v4, "text"

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

    const-string v3, "name"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "short_name"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "long_name"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "sequence"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "last_modification"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "from_time"

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
    .line 81
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
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFromTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mFromTime:Ljava/lang/String;

    return-object v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 127
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mID:I

    return v0
.end method

.method public getIsValid()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 159
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mIsValid:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getLastModification()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mLastModification:Ljava/lang/String;

    return-object v0
.end method

.method public getLongName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mLongName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Lcom/mcdonalds/sdk/modules/models/Name;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 168
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Name;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/Name;-><init>()V

    .line 169
    .local v0, "name":Lcom/mcdonalds/sdk/modules/models/Name;
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Name;->setName(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mShortName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Name;->setShortName(Ljava/lang/String;)V

    .line 171
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mLongName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/Name;->setLongName(Ljava/lang/String;)V

    .line 172
    return-object v0
.end method

.method public getPrimaryKeyNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
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
    .line 103
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
    .line 108
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mID:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getSequence()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mSequence:Ljava/lang/String;

    return-object v0
.end method

.method public getShortName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mShortName:Ljava/lang/String;

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
    .line 215
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mStaticsData:Ljava/util/List;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "menu_types"

    return-object v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 86
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 87
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "id"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    const-string v1, "description"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mDescription:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v1, "color"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mColor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v1, "display_image"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mDisplayImage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v1, "is_valid"

    iget-boolean v2, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mIsValid:Z

    invoke-virtual {p0, v2}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getIntForBoolean(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    const-string v1, "name"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v1, "short_name"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mShortName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v1, "long_name"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mLongName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v1, "sequence"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mSequence:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string v1, "last_modification"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mLastModification:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v1, "from_time"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mFromTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 251
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mID:I

    return v0
.end method

.method public populateFromCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 113
    const-string v0, "id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mID:I

    .line 114
    const-string v0, "description"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mDescription:Ljava/lang/String;

    .line 115
    const-string v0, "color"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mColor:Ljava/lang/String;

    .line 116
    const-string v0, "display_image"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mDisplayImage:Ljava/lang/String;

    .line 117
    const-string v0, "is_valid"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/MenuType;->getBooleanForInt(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mIsValid:Z

    .line 118
    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mName:Ljava/lang/String;

    .line 119
    const-string v0, "short_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mShortName:Ljava/lang/String;

    .line 120
    const-string v0, "long_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mLongName:Ljava/lang/String;

    .line 121
    const-string v0, "sequence"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mSequence:Ljava/lang/String;

    .line 122
    const-string v0, "last_modification"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mLastModification:Ljava/lang/String;

    .line 123
    const-string v0, "from_time"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mFromTime:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mColor:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mDescription:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setDisplayImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDisplayImage"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mDisplayImage:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setFromTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "mFromTime"    # Ljava/lang/String;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mFromTime:Ljava/lang/String;

    .line 236
    return-void
.end method

.method public setID(I)V
    .locals 0
    .param p1, "ID"    # I

    .prologue
    .line 131
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mID:I

    .line 132
    return-void
.end method

.method public setIsValid(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "isValid"    # Ljava/lang/Boolean;

    .prologue
    .line 163
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mIsValid:Z

    .line 164
    return-void
.end method

.method public setLastModification(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastModification"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mLastModification:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setLongName(Ljava/lang/String;)V
    .locals 0
    .param p1, "longName"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mLongName:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setName(Lcom/mcdonalds/sdk/modules/models/Name;)V
    .locals 1
    .param p1, "name"    # Lcom/mcdonalds/sdk/modules/models/Name;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Name;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mName:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Name;->getShortName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mShortName:Ljava/lang/String;

    .line 179
    invoke-virtual {p1}, Lcom/mcdonalds/sdk/modules/models/Name;->getLongName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mLongName:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mName:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setSequence(Ljava/lang/String;)V
    .locals 0
    .param p1, "sequence"    # Ljava/lang/String;

    .prologue
    .line 211
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mSequence:Ljava/lang/String;

    .line 212
    return-void
.end method

.method public setShortName(Ljava/lang/String;)V
    .locals 0
    .param p1, "shortName"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mShortName:Ljava/lang/String;

    .line 196
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
    .line 219
    .local p1, "staticsData":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mStaticsData:Ljava/util/List;

    .line 220
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 262
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 263
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mColor:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mDisplayImage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 266
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mIsValid:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 267
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mShortName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mLongName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mSequence:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mStaticsData:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 272
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mLastModification:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/MenuType;->mFromTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    return-void

    .line 266
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
