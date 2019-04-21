.class synthetic Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;
.super Ljava/lang/Object;
.source "CustomerAddress.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

.field static final synthetic $SwitchMap$com$mcdonalds$sdk$modules$models$AddressType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->values()[Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    :try_start_0
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Area:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_23

    :goto_0
    :try_start_1
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Building:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_22

    :goto_1
    :try_start_2
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->City:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_21

    :goto_2
    :try_start_3
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Company:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_20

    :goto_3
    :try_start_4
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Department:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1f

    :goto_4
    :try_start_5
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->District:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_1e

    :goto_5
    :try_start_6
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Garden:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1d

    :goto_6
    :try_start_7
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->State:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1c

    :goto_7
    :try_start_8
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Street:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1b

    :goto_8
    :try_start_9
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->StreetType:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_1a

    :goto_9
    :try_start_a
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Suburb:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_19

    :goto_a
    :try_start_b
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ZipCode:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_18

    :goto_b
    :try_start_c
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Block:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_17

    :goto_c
    :try_start_d
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Level:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_16

    :goto_d
    :try_start_e
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Unit:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_15

    :goto_e
    :try_start_f
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->HouseNumber:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_14

    :goto_f
    :try_start_10
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ExternalAddressTypeID:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_13

    :goto_10
    :try_start_11
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->IsDefaultAddress:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_12

    :goto_11
    :try_start_12
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->AddressPreferenceTypeID:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_11

    :goto_12
    :try_start_13
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->StreetLonNumber:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_10

    :goto_13
    :try_start_14
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Remark:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_f

    :goto_14
    :try_start_15
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Longitude:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_e

    :goto_15
    :try_start_16
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Latitude:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_d

    :goto_16
    :try_start_17
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->IsBlackZone:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_c

    :goto_17
    :try_start_18
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->IsGoldenZone:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_b

    :goto_18
    :try_start_19
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Landmark:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_a

    :goto_19
    :try_start_1a
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->PhoneNumber:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_9

    :goto_1a
    :try_start_1b
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->PhoneExtension:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_8

    :goto_1b
    :try_start_1c
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->OneLineAddress:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_7

    :goto_1c
    :try_start_1d
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->RSDSAddressType:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_6

    :goto_1d
    :try_start_1e
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressElementType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->RSDSAddressPointID:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_5

    .line 31
    :goto_1e
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/AddressType;->values()[Lcom/mcdonalds/sdk/modules/models/AddressType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressType:[I

    :try_start_1f
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressType;->Home1:Lcom/mcdonalds/sdk/modules/models/AddressType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_4

    :goto_1f
    :try_start_20
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressType;->Home2:Lcom/mcdonalds/sdk/modules/models/AddressType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_3

    :goto_20
    :try_start_21
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressType;->Office1:Lcom/mcdonalds/sdk/modules/models/AddressType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_2

    :goto_21
    :try_start_22
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressType;->Office2:Lcom/mcdonalds/sdk/modules/models/AddressType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_1

    :goto_22
    :try_start_23
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerAddress$2;->$SwitchMap$com$mcdonalds$sdk$modules$models$AddressType:[I

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressType;->Other:Lcom/mcdonalds/sdk/modules/models/AddressType;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_0

    :goto_23
    return-void

    :catch_0
    move-exception v0

    goto :goto_23

    :catch_1
    move-exception v0

    goto :goto_22

    :catch_2
    move-exception v0

    goto :goto_21

    :catch_3
    move-exception v0

    goto :goto_20

    :catch_4
    move-exception v0

    goto :goto_1f

    .line 52
    :catch_5
    move-exception v0

    goto :goto_1e

    :catch_6
    move-exception v0

    goto :goto_1d

    :catch_7
    move-exception v0

    goto :goto_1c

    :catch_8
    move-exception v0

    goto :goto_1b

    :catch_9
    move-exception v0

    goto/16 :goto_1a

    :catch_a
    move-exception v0

    goto/16 :goto_19

    :catch_b
    move-exception v0

    goto/16 :goto_18

    :catch_c
    move-exception v0

    goto/16 :goto_17

    :catch_d
    move-exception v0

    goto/16 :goto_16

    :catch_e
    move-exception v0

    goto/16 :goto_15

    :catch_f
    move-exception v0

    goto/16 :goto_14

    :catch_10
    move-exception v0

    goto/16 :goto_13

    :catch_11
    move-exception v0

    goto/16 :goto_12

    :catch_12
    move-exception v0

    goto/16 :goto_11

    :catch_13
    move-exception v0

    goto/16 :goto_10

    :catch_14
    move-exception v0

    goto/16 :goto_f

    :catch_15
    move-exception v0

    goto/16 :goto_e

    :catch_16
    move-exception v0

    goto/16 :goto_d

    :catch_17
    move-exception v0

    goto/16 :goto_c

    :catch_18
    move-exception v0

    goto/16 :goto_b

    :catch_19
    move-exception v0

    goto/16 :goto_a

    :catch_1a
    move-exception v0

    goto/16 :goto_9

    :catch_1b
    move-exception v0

    goto/16 :goto_8

    :catch_1c
    move-exception v0

    goto/16 :goto_7

    :catch_1d
    move-exception v0

    goto/16 :goto_6

    :catch_1e
    move-exception v0

    goto/16 :goto_5

    :catch_1f
    move-exception v0

    goto/16 :goto_4

    :catch_20
    move-exception v0

    goto/16 :goto_3

    :catch_21
    move-exception v0

    goto/16 :goto_2

    :catch_22
    move-exception v0

    goto/16 :goto_1

    :catch_23
    move-exception v0

    goto/16 :goto_0
.end method
