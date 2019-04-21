.class public Lcom/mcdonalds/sdk/modules/models/Pod;
.super Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;
.source "Pod.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final COLD_KIOSK:Ljava/lang/String; = "ColdKiosk"

.field public static final COLD_KIOSK_DRINK:Ljava/lang/String; = "ColdKioskDrink"

.field public static final COLUMN_SALE_TYPE_ID:Ljava/lang/String; = "sale_type_id"

.field public static final COLUMN_TYPE_NAME:Ljava/lang/String; = "type_name"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/Pod;",
            ">;"
        }
    .end annotation
.end field

.field public static final DELIVERY:Ljava/lang/String; = "Delivery"

.field public static final DRIVETHRU:Ljava/lang/String; = "Drivethru"

.field public static final FRONT_COUNTER:Ljava/lang/String; = "FrontCounter"

.field public static final HANDHELD:Ljava/lang/String; = "Handheld"

.field public static final KIOSK:Ljava/lang/String; = "Kiosk"

.field public static final MC_CAFE:Ljava/lang/String; = "McCafe"

.field public static final MC_EXPRESS:Ljava/lang/String; = "McExpress"

.field public static final PICKUP:Ljava/lang/String; = "Pickup"

.field public static final TABLE_NAME:Ljava/lang/String; = "pods"

.field public static final WALK_THRU:Ljava/lang/String; = "WalkThru"


# instance fields
.field private mSaleTypeId:I

.field private mTypeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/Pod$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/Pod$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/Pod;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 134
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel;-><init>()V

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/Pod;->mSaleTypeId:I

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Pod;->mTypeName:Ljava/lang/String;

    .line 139
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    if-ne p0, p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v1

    .line 108
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

    .line 110
    check-cast v0, Lcom/mcdonalds/sdk/modules/models/Pod;

    .line 112
    .local v0, "pod":Lcom/mcdonalds/sdk/modules/models/Pod;
    iget v3, p0, Lcom/mcdonalds/sdk/modules/models/Pod;->mSaleTypeId:I

    iget v4, v0, Lcom/mcdonalds/sdk/modules/models/Pod;->mSaleTypeId:I

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0
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
    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const/4 v1, 0x0

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "sale_type_id"

    const-string v4, "integer"

    invoke-direct {v2, v3, v4}, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/mcdonalds/sdk/services/data/database/DatabaseModel$DatabaseField;

    const-string v3, "type_name"

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
    .line 62
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
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPrimaryKeyNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "sale_type_id"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getSaleTypeId()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Pod;->mSaleTypeId:I

    return v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 4

    .prologue
    .line 75
    const-string v0, "%s=?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "sale_type_id"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/Pod;->mSaleTypeId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "pods"

    return-object v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Pod;->mTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public getValues()Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 67
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 68
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "sale_type_id"

    iget v2, p0, Lcom/mcdonalds/sdk/modules/models/Pod;->mSaleTypeId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    const-string v1, "type_name"

    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/Pod;->mTypeName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 118
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Pod;->mSaleTypeId:I

    return v0
.end method

.method public populateFromCursor(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 85
    const-string v0, "sale_type_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/Pod;->mSaleTypeId:I

    .line 86
    const-string v0, "type_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Pod;->mTypeName:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public setSaleTypeId(I)V
    .locals 0
    .param p1, "saleTypeId"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/Pod;->mSaleTypeId:I

    .line 95
    return-void
.end method

.method public setTypeName(Ljava/lang/String;)V
    .locals 0
    .param p1, "typeName"    # Ljava/lang/String;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/Pod;->mTypeName:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 129
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/Pod;->mSaleTypeId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/Pod;->mTypeName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    return-void
.end method
