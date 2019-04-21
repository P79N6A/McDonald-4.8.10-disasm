.class public Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "AddressAliasValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mAliasType:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 44
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 48
    .local v0, "tmpMAliasType":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->mAliasType:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->mAlias:Ljava/lang/String;

    .line 50
    return-void

    .line 48
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->values()[Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public getAlias()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getAliasType()Lcom/mcdonalds/sdk/modules/models/AddressAliasType;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->mAliasType:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    return-object v0
.end method

.method public setAlias(Ljava/lang/String;)V
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->mAlias:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setAliasType(Lcom/mcdonalds/sdk/modules/models/AddressAliasType;)V
    .locals 0
    .param p1, "aliasType"    # Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->mAliasType:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    .line 21
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->mAliasType:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->mAlias:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    return-void

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->mAliasType:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->ordinal()I

    move-result v0

    goto :goto_0
.end method
