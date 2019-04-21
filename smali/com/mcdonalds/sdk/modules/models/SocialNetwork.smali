.class public Lcom/mcdonalds/sdk/modules/models/SocialNetwork;
.super Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
.source "SocialNetwork.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final COLUMN_ID:Ljava/lang/String; = "id"

.field public static final COLUMN_IMAGE_RESOURCE:Ljava/lang/String; = "image_resource"

.field public static final COLUMN_IS_VALID:Ljava/lang/String; = "is_valid"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_TYPE:Ljava/lang/String; = "type"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/SocialNetwork;",
            ">;"
        }
    .end annotation
.end field

.field public static final FACEBOOK:I = 0x2

.field public static final FACEBOOK_NAME:Ljava/lang/String; = "Facebook"

.field public static final GOOGLEPLUS:I = 0x1

.field public static final GOOGLEPLUS_NAME:Ljava/lang/String; = "GooglePlus"

.field public static final MAX_SOCIAL_NETWORK_TYPE:I = 0x5

.field public static final PINTEREST:I = 0x4

.field public static final PINTEREST_NAME:Ljava/lang/String; = "Pinterest"

.field public static final TABLE_NAME:Ljava/lang/String; = "social_networks"

.field public static final TWITTER:I = 0x5

.field public static final TWITTER_NAME:Ljava/lang/String; = "Twitter"

.field public static final UNUSED:I = -0x1

.field public static final UNUSED_NAME:Ljava/lang/String; = "unused"

.field public static final WECHAT:I = 0x3

.field public static final WECHAT_NAME:Ljava/lang/String; = "WeChat"


# instance fields
.field private mImageResource:I

.field private mIsValid:Z

.field private mSocialNetworkID:I

.field private mSocialNetworkName:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 232
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "socialNetworkID"    # I
    .param p2, "type"    # I

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 55
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mSocialNetworkID:I

    .line 56
    iput p2, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mType:I

    .line 57
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->setImageResource()V

    .line 58
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 225
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mSocialNetworkID:I

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mType:I

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mSocialNetworkName:Ljava/lang/String;

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mIsValid:Z

    .line 230
    return-void

    .line 229
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialNetwork;)V
    .locals 3
    .param p1, "socialNetwork"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialNetwork;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 61
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 62
    iget-object v0, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialNetwork;->socialNetworkID:Ljava/lang/Integer;

    if-nez v0, :cond_2

    move v0, v1

    .line 63
    :goto_0
    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mSocialNetworkID:I

    .line 64
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mSocialNetworkID:I

    if-lez v0, :cond_1

    .line 65
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mSocialNetworkID:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->getSocialNetworkID()I

    move-result v1

    :cond_0
    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mType:I

    .line 69
    :cond_1
    iget-object v0, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialNetwork;->socialNetworkName:Ljava/lang/String;

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mSocialNetworkName:Ljava/lang/String;

    .line 70
    iget-boolean v0, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialNetwork;->isValid:Z

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mIsValid:Z

    .line 71
    return-void

    .line 62
    :cond_2
    iget-object v0, p1, Lcom/mcdonalds/sdk/connectors/middleware/model/MWSocialNetwork;->socialNetworkID:Ljava/lang/Integer;

    .line 63
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public static getNameForType(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 152
    packed-switch p0, :pswitch_data_0

    .line 164
    const-string/jumbo v0, "unused"

    :goto_0
    return-object v0

    .line 154
    :pswitch_0
    const-string v0, "GooglePlus"

    goto :goto_0

    .line 156
    :pswitch_1
    const-string v0, "Facebook"

    goto :goto_0

    .line 158
    :pswitch_2
    const-string v0, "WeChat"

    goto :goto_0

    .line 160
    :pswitch_3
    const-string v0, "Twitter"

    goto :goto_0

    .line 162
    :pswitch_4
    const-string v0, "Pinterest"

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private setImageResource()V
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 193
    :goto_0
    return-void

    .line 179
    :pswitch_0
    sget v0, Lcom/mcdonalds/sdk/R$drawable;->googleplus:I

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mImageResource:I

    goto :goto_0

    .line 182
    :pswitch_1
    sget v0, Lcom/mcdonalds/sdk/R$drawable;->facebook:I

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mImageResource:I

    goto :goto_0

    .line 185
    :pswitch_2
    sget v0, Lcom/mcdonalds/sdk/R$drawable;->wechat:I

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mImageResource:I

    goto :goto_0

    .line 188
    :pswitch_3
    sget v0, Lcom/mcdonalds/sdk/R$drawable;->twitter:I

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mImageResource:I

    goto :goto_0

    .line 191
    :pswitch_4
    sget v0, Lcom/mcdonalds/sdk/R$drawable;->pinterest:I

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mImageResource:I

    goto :goto_0

    .line 177
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x0

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
    .line 85
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const/4 v1, 0x0

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "id"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string/jumbo v3, "type"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "name"

    const-string v4, "text"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "image_resource"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

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
    .line 106
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
    .line 96
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageResource()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mImageResource:I

    return v0
.end method

.method public getPrimaryKeyNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
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
    .line 101
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
    .line 122
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mSocialNetworkID:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getSocialNetworkID()I
    .locals 1

    .prologue
    .line 135
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mSocialNetworkID:I

    return v0
.end method

.method public getSocialNetworkName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mSocialNetworkName:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const-string v0, "social_networks"

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mType:I

    return v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 111
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 112
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "id"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mSocialNetworkID:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 113
    const-string/jumbo v1, "type"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 114
    const-string v1, "name"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mSocialNetworkName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    const-string v1, "image_resource"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mImageResource:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    const-string v1, "is_valid"

    iget-boolean v2, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mIsValid:Z

    invoke-virtual {p0, v2}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->getIntForBoolean(Z)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mIsValid:Z

    return v0
.end method

.method public populateFromCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 127
    const-string v0, "id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mSocialNetworkID:I

    .line 128
    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mType:I

    .line 129
    const-string v0, "name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mSocialNetworkName:Ljava/lang/String;

    .line 130
    const-string v0, "image_resource"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mImageResource:I

    .line 131
    const-string v0, "is_valid"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->getBooleanForInt(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mIsValid:Z

    .line 132
    return-void
.end method

.method public setImageResource(I)V
    .locals 0
    .param p1, "imageResource"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mImageResource:I

    .line 174
    return-void
.end method

.method public setSocialNetworkID(I)V
    .locals 0
    .param p1, "socialNetworkID"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mSocialNetworkID:I

    .line 140
    return-void
.end method

.method public setSocialNetworkName(Ljava/lang/String;)V
    .locals 0
    .param p1, "socialNetworkName"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mSocialNetworkName:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mType:I

    .line 148
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->setImageResource()V

    .line 149
    return-void
.end method

.method public setValid(Z)V
    .locals 0
    .param p1, "isValid"    # Z

    .prologue
    .line 208
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mIsValid:Z

    .line 209
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 219
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mSocialNetworkID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mSocialNetworkName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialNetwork;->mIsValid:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 223
    return-void

    .line 222
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
