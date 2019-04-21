.class public final enum Lcom/mcdonalds/sdk/modules/models/AddressElementType;
.super Ljava/lang/Enum;
.source "AddressElementType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mcdonalds/sdk/modules/models/AddressElementType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum AddressPreferenceTypeID:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum Area:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum Block:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum Building:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum City:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum Company:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum Department:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum District:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum ExternalAddressTypeID:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum Garden:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum HouseNumber:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum IsBlackZone:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum IsDefaultAddress:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum IsGoldenZone:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum Landmark:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum Latitude:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum Level:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum Longitude:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum OneLineAddress:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum PhoneExtension:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum PhoneNumber:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum RSDSAddressPointID:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum RSDSAddressType:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum Remark:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum State:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum Street:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum StreetLonNumber:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum StreetType:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum Suburb:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum UNUSED:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum Unit:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

.field public static final enum ZipCode:Lcom/mcdonalds/sdk/modules/models/AddressElementType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "UNUSED"

    invoke-direct {v0, v1, v3}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->UNUSED:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 8
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "Area"

    invoke-direct {v0, v1, v4}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Area:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 9
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "Building"

    invoke-direct {v0, v1, v5}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Building:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 10
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "City"

    invoke-direct {v0, v1, v6}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->City:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 11
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "Company"

    invoke-direct {v0, v1, v7}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Company:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 12
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "Department"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Department:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 13
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "District"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->District:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 14
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "Garden"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Garden:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 15
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "State"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->State:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 16
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "Street"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Street:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 17
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "StreetType"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->StreetType:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 18
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "Suburb"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Suburb:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 19
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "ZipCode"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ZipCode:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 20
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "Block"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Block:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 21
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "Level"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Level:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 22
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "Unit"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Unit:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 23
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "HouseNumber"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->HouseNumber:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 24
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "ExternalAddressTypeID"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ExternalAddressTypeID:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 25
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "IsDefaultAddress"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->IsDefaultAddress:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 26
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "AddressPreferenceTypeID"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->AddressPreferenceTypeID:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 27
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "StreetLonNumber"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->StreetLonNumber:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 28
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "Remark"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Remark:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 29
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "Longitude"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Longitude:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 30
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "Latitude"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Latitude:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 31
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "IsBlackZone"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->IsBlackZone:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 32
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "IsGoldenZone"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->IsGoldenZone:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 33
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "Landmark"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Landmark:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 34
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "PhoneNumber"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->PhoneNumber:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 35
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "PhoneExtension"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->PhoneExtension:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 36
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "OneLineAddress"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->OneLineAddress:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 37
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "RSDSAddressType"

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->RSDSAddressType:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 38
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    const-string v1, "RSDSAddressPointID"

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->RSDSAddressPointID:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 6
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->UNUSED:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Area:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Building:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->City:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Company:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Department:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->District:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Garden:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->State:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Street:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->StreetType:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Suburb:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ZipCode:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Block:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Level:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Unit:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->HouseNumber:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->ExternalAddressTypeID:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->IsDefaultAddress:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->AddressPreferenceTypeID:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->StreetLonNumber:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Remark:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Longitude:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Latitude:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->IsBlackZone:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->IsGoldenZone:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->Landmark:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->PhoneNumber:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->PhoneExtension:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->OneLineAddress:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->RSDSAddressType:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    sget-object v2, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->RSDSAddressPointID:Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->$VALUES:[Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mcdonalds/sdk/modules/models/AddressElementType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    return-object v0
.end method

.method public static values()[Lcom/mcdonalds/sdk/modules/models/AddressElementType;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->$VALUES:[Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    invoke-virtual {v0}, [Lcom/mcdonalds/sdk/modules/models/AddressElementType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    return-object v0
.end method
