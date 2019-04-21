.class public Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "CustomerAddress.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static CFG_KEY_ADDRESS_FORMAT:Ljava/lang/String;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerAddress;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isDefaultAddress:Z

.field private mAddressElements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressElement;",
            ">;"
        }
    .end annotation
.end field

.field private mAddressType:Lcom/mcdonalds/sdk/modules/models/AddressType;

.field private mAllowPromotionsToAddress:Z

.field private mCustomerAddressPreference:I

.field private mPhone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "interface.address.addressFormat"

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->CFG_KEY_ADDRESS_FORMAT:Ljava/lang/String;

    .line 298
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 286
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 288
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->mCustomerAddressPreference:I

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 291
    .local v0, "tmpMAddressType":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->mAddressType:Lcom/mcdonalds/sdk/modules/models/AddressType;

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->isDefaultAddress:Z

    .line 293
    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElement;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->mAddressElements:Ljava/util/List;

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->mPhone:Ljava/lang/String;

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    :goto_2
    iput-boolean v2, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->mAllowPromotionsToAddress:Z

    .line 296
    return-void

    .line 291
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/AddressType;->values()[Lcom/mcdonalds/sdk/modules/models/AddressType;

    move-result-object v1

    aget-object v1, v1, v0

    goto :goto_0

    :cond_1
    move v1, v3

    .line 292
    goto :goto_1

    :cond_2
    move v2, v3

    .line 295
    goto :goto_2
.end method

.method private appendIfExists(Ljava/lang/StringBuffer;Ljava/util/List;Lcom/mcdonalds/sdk/modules/models/AddressElementType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p3, "elementType"    # Lcom/mcdonalds/sdk/modules/models/AddressElementType;
    .param p4, "preText"    # Ljava/lang/String;
    .param p5, "postText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuffer;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressElement;",
            ">;",
            "Lcom/mcdonalds/sdk/modules/models/AddressElementType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 208
    .local p2, "addressElements":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressElement;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 209
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mcdonalds/sdk/modules/models/AddressElement;>;"
    const/4 v2, 0x0

    .line 210
    .local v2, "val":Ljava/lang/String;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/AddressElement;

    .line 212
    .local v0, "element":Lcom/mcdonalds/sdk/modules/models/AddressElement;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->getAddressElementType()Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->getValue()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->getAlias()Ljava/lang/String;

    move-result-object v2

    .line 218
    .end local v0    # "element":Lcom/mcdonalds/sdk/modules/models/AddressElement;
    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 219
    if-eqz p4, :cond_2

    .line 220
    invoke-virtual {p1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    if-eqz p5, :cond_3

    .line 224
    invoke-virtual {p1, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    :cond_3
    return-void
.end method

.method public static getAddressLabel(Lcom/mcdonalds/sdk/modules/models/AddressType;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "addressType"    # Lcom/mcdonalds/sdk/modules/models/AddressType;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressType:[I

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/AddressType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 48
    const-string v0, ""

    :goto_0
    return-object v0

    .line 33
    :pswitch_0
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_type_home1:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 36
    :pswitch_1
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_type_home2:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 39
    :pswitch_2
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_type_office1:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 42
    :pswitch_3
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_type_office2:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 45
    :pswitch_4
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_type_other:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 31
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getElementLabel(Lcom/mcdonalds/sdk/modules/models/AddressElement;Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "addressElement"    # Lcom/mcdonalds/sdk/modules/models/AddressElement;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->getAddressElementType()Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 147
    const-string v0, ""

    :goto_0
    return-object v0

    .line 54
    :pswitch_0
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_element_area:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 57
    :pswitch_1
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_element_building:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 60
    :pswitch_2
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_element_city:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 63
    :pswitch_3
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_element_company:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 66
    :pswitch_4
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_element_department:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :pswitch_5
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_element_district:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    :pswitch_6
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_element_garden:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 75
    :pswitch_7
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_element_state:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 78
    :pswitch_8
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_element_street:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 81
    :pswitch_9
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_element_street_type:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 84
    :pswitch_a
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_element_suburb:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 87
    :pswitch_b
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_element_zipcode:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :pswitch_c
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_element_block:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 93
    :pswitch_d
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_element_level:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :pswitch_e
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_element_unit:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 99
    :pswitch_f
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_element_house_number:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 102
    :pswitch_10
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_element_external_address_type_id:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 105
    :pswitch_11
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_element_is_default_address:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :pswitch_12
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_element_address_preference_type_id:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 111
    :pswitch_13
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_element_street_lon_number:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 114
    :pswitch_14
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_element_remark:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 117
    :pswitch_15
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_element_longitude:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 120
    :pswitch_16
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_element_latitude:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 123
    :pswitch_17
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_element_is_black_zone:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 126
    :pswitch_18
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_element_is_golden_zone:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 129
    :pswitch_19
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_element_landmark:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 132
    :pswitch_1a
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_element_phone_number:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 135
    :pswitch_1b
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_element_phone_extension:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 138
    :pswitch_1c
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_element_one_line_address:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 141
    :pswitch_1d
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_element_rsds_address_type:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 144
    :pswitch_1e
    sget v0, Lcom/mcdonalds/sdk/R$string;->address_element_rsds_address_point:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public getAddressElementValue(Lcom/mcdonalds/sdk/modules/models/AddressElementType;)Ljava/lang/String;
    .locals 3
    .param p1, "elementType"    # Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .prologue
    .line 151
    iget-object v1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->mAddressElements:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/AddressElement;

    .line 152
    .local v0, "element":Lcom/mcdonalds/sdk/modules/models/AddressElement;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->getAddressElementType()Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->getValue()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->getAlias()Ljava/lang/String;

    move-result-object v1

    .line 157
    .end local v0    # "element":Lcom/mcdonalds/sdk/modules/models/AddressElement;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAddressElements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 246
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->mAddressElements:Ljava/util/List;

    return-object v0
.end method

.method public getAddressType()Lcom/mcdonalds/sdk/modules/models/AddressType;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->mAddressType:Lcom/mcdonalds/sdk/modules/models/AddressType;

    return-object v0
.end method

.method public getCustomerAddressPreference()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->mCustomerAddressPreference:I

    return v0
.end method

.method public getDisplayAddress()Ljava/lang/String;
    .locals 10

    .prologue
    .line 196
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->CFG_KEY_ADDRESS_FORMAT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/gson/internal/LinkedTreeMap;

    .line 198
    .local v6, "displayFormat":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 199
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v0, "fields"

    invoke-virtual {v6, v0}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 200
    .local v8, "formatFields":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/gson/internal/LinkedTreeMap;

    .line 201
    .local v7, "f":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->mAddressElements:Ljava/util/List;

    const-string v0, "elementType"

    invoke-virtual {v7, v0}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->valueOf(Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    move-result-object v3

    const-string v0, "preText"

    invoke-virtual {v7, v0}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v0, "postText"

    invoke-virtual {v7, v0}, Lcom/google/gson/internal/LinkedTreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->appendIfExists(Ljava/lang/StringBuffer;Ljava/util/List;Lcom/mcdonalds/sdk/modules/models/AddressElementType;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    .end local v7    # "f":Lcom/google/gson/internal/LinkedTreeMap;, "Lcom/google/gson/internal/LinkedTreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFullAddress()Ljava/lang/String;
    .locals 10

    .prologue
    .line 169
    invoke-static {}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getSharedInstance()Lcom/mcdonalds/sdk/services/data/LocalDataManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/data/LocalDataManager;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v9

    .line 170
    .local v9, "language":Ljava/lang/String;
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 173
    .local v1, "sb":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->mAddressElements:Ljava/util/List;

    sget-object v3, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->OneLineAddress:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->appendIfExists(Ljava/lang/StringBuffer;Ljava/util/List;Lcom/mcdonalds/sdk/modules/models/AddressElementType;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->mAddressElements:Ljava/util/List;

    sget-object v3, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Level:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v4, " "

    const-string v5, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->appendIfExists(Ljava/lang/StringBuffer;Ljava/util/List;Lcom/mcdonalds/sdk/modules/models/AddressElementType;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->mAddressElements:Ljava/util/List;

    sget-object v3, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Unit:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v4, " "

    const-string v5, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->appendIfExists(Ljava/lang/StringBuffer;Ljava/util/List;Lcom/mcdonalds/sdk/modules/models/AddressElementType;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->mAddressElements:Ljava/util/List;

    sget-object v3, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Remark:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->appendIfExists(Ljava/lang/StringBuffer;Ljava/util/List;Lcom/mcdonalds/sdk/modules/models/AddressElementType;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    :goto_0
    return-object v0

    .line 178
    :cond_0
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->CFG_KEY_ADDRESS_FORMAT:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getDisplayAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 181
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .local v6, "addressBuilder":Ljava/lang/StringBuilder;
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->mAddressElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 183
    .local v8, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mcdonalds/sdk/modules/models/AddressElement;>;"
    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/AddressElement;

    .line 185
    .local v7, "element":Lcom/mcdonalds/sdk/modules/models/AddressElement;
    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->getValue()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 187
    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 191
    .end local v7    # "element":Lcom/mcdonalds/sdk/modules/models/AddressElement;
    :cond_3
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->mPhone:Ljava/lang/String;

    return-object v0
.end method

.method public isAllowPromotionsToAddress()Z
    .locals 1

    .prologue
    .line 262
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->mAllowPromotionsToAddress:Z

    return v0
.end method

.method public isDefaultAddress()Z
    .locals 1

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->isDefaultAddress:Z

    return v0
.end method

.method public setAddressElements(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 250
    .local p1, "addressElements":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressElement;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->mAddressElements:Ljava/util/List;

    .line 251
    return-void
.end method

.method public setAddressType(Lcom/mcdonalds/sdk/modules/models/AddressType;)V
    .locals 0
    .param p1, "addressType"    # Lcom/mcdonalds/sdk/modules/models/AddressType;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->mAddressType:Lcom/mcdonalds/sdk/modules/models/AddressType;

    .line 243
    return-void
.end method

.method public setAllowPromotionsToAddress(Z)V
    .locals 0
    .param p1, "allowPromotionsToAddress"    # Z

    .prologue
    .line 266
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->mAllowPromotionsToAddress:Z

    .line 267
    return-void
.end method

.method public setCustomerAddressPreference(I)V
    .locals 0
    .param p1, "customerAddressPreference"    # I

    .prologue
    .line 234
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->mCustomerAddressPreference:I

    .line 235
    return-void
.end method

.method public setDefaultAddress(Z)V
    .locals 0
    .param p1, "isDefaultAddress"    # Z

    .prologue
    .line 165
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->isDefaultAddress:Z

    .line 166
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 258
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->mPhone:Ljava/lang/String;

    .line 259
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 277
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->mCustomerAddressPreference:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 278
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->mAddressType:Lcom/mcdonalds/sdk/modules/models/AddressType;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->isDefaultAddress:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 280
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->mAddressElements:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 281
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->mPhone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->mAllowPromotionsToAddress:Z

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 283
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->mAddressType:Lcom/mcdonalds/sdk/modules/models/AddressType;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/AddressType;->ordinal()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 279
    goto :goto_1

    :cond_2
    move v1, v2

    .line 282
    goto :goto_2
.end method
