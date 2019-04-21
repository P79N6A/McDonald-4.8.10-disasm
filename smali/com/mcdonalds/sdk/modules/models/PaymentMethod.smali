.class public Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
.super Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
.source "PaymentMethod.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;
    }
.end annotation


# static fields
.field public static final COLUMN_ID:Ljava/lang/String; = "id"

.field public static final COLUMN_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_PAYMENT_MODE:Ljava/lang/String; = "payment_mode"

.field public static final COLUMN_REGISTRATION_RETURN_URL:Ljava/lang/String; = "registration_return_url"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/PaymentMethod;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_CASH:Ljava/lang/String; = "supportedPaymentMethods.cash.expectedPaymentMethodID"

.field public static final KEY_CREDIT_CARD:Ljava/lang/String; = "supportedPaymentMethods.creditCard.expectedPaymentMethodID"

.field public static final KEY_OTHER:Ljava/lang/String; = "supportedPaymentMethods.other.expectedPaymentMethodID"

.field public static final KEY_SUPPORTED_PAYMENTS:Ljava/lang/String; = "supportedPaymentMethods.paymentMethodIDs"

.field public static final KEY_THIRD_PARTY:Ljava/lang/String; = "supportedPaymentMethods.thirdParty.expectedPaymentMethodID"

.field public static final KEY_WECHAT_PAYMENT:Ljava/lang/String; = "supportedPaymentMethods.wechatPayment.expectedPaymentMethodID"

.field public static final TABLE_NAME:Ljava/lang/String; = "payment_methods"


# instance fields
.field private mID:Ljava/lang/Integer;

.field private mName:Ljava/lang/String;

.field private mPaymentMode:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

.field private mPaymentType:Ljava/lang/Integer;

.field private mRegistrationReturnURL:Ljava/lang/String;

.field private mRegistrationType:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 211
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 51
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 204
    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mID:Ljava/lang/Integer;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mName:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 207
    .local v0, "tmpMPaymentMode":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mPaymentMode:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mRegistrationReturnURL:Ljava/lang/String;

    .line 209
    return-void

    .line 207
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->values()[Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;)V
    .locals 0
    .param p1, "ID"    # Ljava/lang/Integer;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "paymentMode"    # Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mID:Ljava/lang/Integer;

    .line 55
    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mName:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mPaymentMode:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    .line 57
    return-void
.end method

.method public static fromMWPaymentMethod(Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;Ljava/util/Map;)Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    .locals 4
    .param p0, "mwPaymentMethod"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;",
            ">;)",
            "Lcom/mcdonalds/sdk/modules/models/PaymentMethod;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 125
    .local p1, "intToModeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;>;"
    new-instance v1, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;-><init>()V

    .line 126
    .local v1, "ret":Lcom/mcdonalds/sdk/modules/models/PaymentMethod;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->getPaymentMethodID()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->setID(Ljava/lang/Integer;)V

    .line 127
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->getPaymentLabels()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentLabel;

    iget-object v2, v2, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentLabel;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->setName(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->getPaymentMode()Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    .line 131
    .local v0, "paymentMode":Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;
    if-nez v0, :cond_0

    .line 132
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->Other:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    .line 134
    :cond_0
    invoke-virtual {v1, v0}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->setPaymentMode(Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;)V

    .line 136
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->getPaymentType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->setPaymentType(Ljava/lang/Integer;)V

    .line 137
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWPaymentMethod;->getRegistrationType()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->setRegistrationType(Ljava/lang/Integer;)V

    .line 139
    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 192
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
    .line 71
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const/4 v1, 0x0

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "id"

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

    const-string v3, "payment_mode"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "registration_return_url"

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
    .line 86
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
    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getID()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentMode()Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mPaymentMode:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    return-object v0
.end method

.method public getPaymentType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mPaymentType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPrimaryKeyNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getRegistrationReturnURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mRegistrationReturnURL:Ljava/lang/String;

    return-object v0
.end method

.method public getRegistrationType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mRegistrationType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 4

    .prologue
    .line 104
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
    .line 109
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mID:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    const-string v0, "payment_methods"

    return-object v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 91
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 92
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "id"

    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mID:Ljava/lang/Integer;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    const-string v2, "name"

    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->values()[Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 97
    .local v0, "paymentModes":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;>;"
    const-string v2, "payment_mode"

    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mPaymentMode:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    invoke-interface {v0, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    const-string v2, "registration_return_url"

    iget-object v3, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mRegistrationReturnURL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-object v1
.end method

.method public populateFromCursor(Landroid/database/Cursor;)V
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 114
    const-string v1, "id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mID:Ljava/lang/Integer;

    .line 115
    const-string v1, "name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mName:Ljava/lang/String;

    .line 116
    const-string v1, "payment_mode"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 117
    .local v0, "paymentModeIndex":I
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->values()[Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    move-result-object v1

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mPaymentMode:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    .line 118
    const-string v1, "registration_return_url"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mRegistrationReturnURL:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public setID(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "ID"    # Ljava/lang/Integer;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mID:Ljava/lang/Integer;

    .line 148
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mName:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setPaymentMode(Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;)V
    .locals 0
    .param p1, "paymentMode"    # Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mPaymentMode:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    .line 164
    return-void
.end method

.method public setPaymentType(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "mPaymentType"    # Ljava/lang/Integer;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mPaymentType:Ljava/lang/Integer;

    .line 180
    return-void
.end method

.method public setRegistrationReturnURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "mRegistrationReturnURL"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mRegistrationReturnURL:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setRegistrationType(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "mRegistrationType"    # Ljava/lang/Integer;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mRegistrationType:Ljava/lang/Integer;

    .line 172
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mID:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mPaymentMode:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mRegistrationReturnURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    return-void

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/PaymentMethod;->mPaymentMode:Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/PaymentMethod$PaymentMode;->ordinal()I

    move-result v0

    goto :goto_0
.end method
