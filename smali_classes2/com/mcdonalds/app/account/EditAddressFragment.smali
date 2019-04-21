.class public Lcom/mcdonalds/app/account/EditAddressFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "EditAddressFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String;

.field public static final STATE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

.field private mAddressTypeContainer:Landroid/view/View;

.field private mAddressTypeLabel:Landroid/widget/TextView;

.field private mAvailableAddressTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressType;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

.field private mElementsContainer:Landroid/widget/LinearLayout;

.field private mIsEdit:Z

.field private mPreValidatedValue:Ljava/lang/String;

.field private mResult:Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;

.field private mSaveButton:Landroid/widget/Button;

.field private mValidationRules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AddressElementType;",
            "Lcom/mcdonalds/sdk/modules/models/AddressElementValidationRule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 54
    const-class v0, Lcom/mcdonalds/app/account/EditAddressFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->NAME:Ljava/lang/String;

    .line 445
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    .line 446
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "AL"

    const-string v2, "Alabama"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "AK"

    const-string v2, "Alaska"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "AB"

    const-string v2, "Alberta"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "AZ"

    const-string v2, "Arizona"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "AR"

    const-string v2, "Arkansas"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "BC"

    const-string v2, "British Columbia"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "CA"

    const-string v2, "California"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "CO"

    const-string v2, "Colorado"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "CT"

    const-string v2, "Connecticut"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "DE"

    const-string v2, "Delaware"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "DC"

    const-string v2, "District Of Columbia"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "FL"

    const-string v2, "Florida"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "GA"

    const-string v2, "Georgia"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "GU"

    const-string v2, "Guam"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "HI"

    const-string v2, "Hawaii"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "ID"

    const-string v2, "Idaho"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "IL"

    const-string v2, "Illinois"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "IN"

    const-string v2, "Indiana"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "IA"

    const-string v2, "Iowa"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "KS"

    const-string v2, "Kansas"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "KY"

    const-string v2, "Kentucky"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "LA"

    const-string v2, "Louisiana"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "ME"

    const-string v2, "Maine"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "MB"

    const-string v2, "Manitoba"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "MD"

    const-string v2, "Maryland"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "MA"

    const-string v2, "Massachusetts"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "MI"

    const-string v2, "Michigan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "MN"

    const-string v2, "Minnesota"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "MS"

    const-string v2, "Mississippi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "MO"

    const-string v2, "Missouri"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "MT"

    const-string v2, "Montana"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "NE"

    const-string v2, "Nebraska"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "NV"

    const-string v2, "Nevada"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "NB"

    const-string v2, "New Brunswick"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "NH"

    const-string v2, "New Hampshire"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "NJ"

    const-string v2, "New Jersey"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "NM"

    const-string v2, "New Mexico"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "NY"

    const-string v2, "New York"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "NF"

    const-string v2, "Newfoundland"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "NC"

    const-string v2, "North Carolina"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "ND"

    const-string v2, "North Dakota"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "NT"

    const-string v2, "Northwest Territories"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "NS"

    const-string v2, "Nova Scotia"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "NU"

    const-string v2, "Nunavut"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "OH"

    const-string v2, "Ohio"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "OK"

    const-string v2, "Oklahoma"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "ON"

    const-string v2, "Ontario"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "OR"

    const-string v2, "Oregon"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "PA"

    const-string v2, "Pennsylvania"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "PE"

    const-string v2, "Prince Edward Island"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "PR"

    const-string v2, "Puerto Rico"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "QC"

    const-string v2, "Quebec"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "RI"

    const-string v2, "Rhode Island"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "SK"

    const-string v2, "Saskatchewan"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "SC"

    const-string v2, "South Carolina"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "SD"

    const-string v2, "South Dakota"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "TN"

    const-string v2, "Tennessee"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "TX"

    const-string v2, "Texas"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "UT"

    const-string v2, "Utah"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "VT"

    const-string v2, "Vermont"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "VI"

    const-string v2, "Virgin Islands"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "VA"

    const-string v2, "Virginia"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "WA"

    const-string v2, "Washington"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "WV"

    const-string v2, "West Virginia"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "WI"

    const-string v2, "Wisconsin"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "WY"

    const-string v2, "Wyoming"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    sget-object v0, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    const-string v1, "YT"

    const-string v2, "Yukon Territory"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 513
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/account/EditAddressFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/EditAddressFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.EditAddressFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-boolean v0, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mIsEdit:Z

    return v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/account/EditAddressFragment;)Lcom/mcdonalds/sdk/modules/models/CustomerAddress;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/EditAddressFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.EditAddressFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/account/EditAddressFragment;)Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/EditAddressFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.EditAddressFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    return-object v0
.end method

.method static synthetic access$302(Lcom/mcdonalds/app/account/EditAddressFragment;Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;)Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/EditAddressFragment;
    .param p1, "x1"    # Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.EditAddressFragment"

    const-string v2, "access$302"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iput-object p1, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mResult:Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;

    return-object p1
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/account/EditAddressFragment;)Ljava/util/Map;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/EditAddressFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.EditAddressFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mValidationRules:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$402(Lcom/mcdonalds/app/account/EditAddressFragment;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/EditAddressFragment;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.EditAddressFragment"

    const-string v2, "access$402"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iput-object p1, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mValidationRules:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/account/EditAddressFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/EditAddressFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.EditAddressFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-direct {p0}, Lcom/mcdonalds/app/account/EditAddressFragment;->refreshViews()V

    return-void
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/account/EditAddressFragment;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/EditAddressFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.EditAddressFragment"

    const-string v2, "access$600"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mPreValidatedValue:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/mcdonalds/app/account/EditAddressFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/EditAddressFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.EditAddressFragment"

    const-string v2, "access$602"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iput-object p1, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mPreValidatedValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/mcdonalds/app/account/EditAddressFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/EditAddressFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.EditAddressFragment"

    const-string v2, "access$700"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-direct {p0}, Lcom/mcdonalds/app/account/EditAddressFragment;->updateSaveButton()V

    return-void
.end method

.method static synthetic access$800(Lcom/mcdonalds/app/account/EditAddressFragment;)Landroid/widget/Button;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/account/EditAddressFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.account.EditAddressFragment"

    const-string v2, "access$800"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mSaveButton:Landroid/widget/Button;

    return-object v0
.end method

.method private refreshAvailableElements()V
    .locals 3

    .prologue
    const-string v0, "refreshAvailableElements"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 281
    const-string v0, "customer"

    invoke-static {v0}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iput-object v0, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 282
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v1

    new-instance v2, Lcom/mcdonalds/app/account/EditAddressFragment$3;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/account/EditAddressFragment$3;-><init>(Lcom/mcdonalds/app/account/EditAddressFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getAddressElements(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    .line 299
    return-void
.end method

.method private refreshViews()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const-string v6, "refreshViews"

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 303
    iget-object v6, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mElementsContainer:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_5

    .line 305
    iget-boolean v6, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mIsEdit:Z

    if-nez v6, :cond_1

    .line 308
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 309
    .local v2, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressElement;>;"
    iget-object v6, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mResult:Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;->getAddressElementTypes()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    .line 310
    .local v4, "type":Lcom/mcdonalds/sdk/modules/models/AddressElementType;
    new-instance v1, Lcom/mcdonalds/sdk/modules/models/AddressElement;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElement;-><init>()V

    .line 311
    .local v1, "element":Lcom/mcdonalds/sdk/modules/models/AddressElement;
    invoke-virtual {v1, v4}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->setAddressElementType(Lcom/mcdonalds/sdk/modules/models/AddressElementType;)V

    .line 313
    new-instance v5, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;

    invoke-direct {v5}, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;-><init>()V

    .line 315
    .local v5, "value":Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;
    sget-object v7, Lcom/mcdonalds/sdk/modules/models/AddressAliasType;->Kanji:Lcom/mcdonalds/sdk/modules/models/AddressAliasType;

    invoke-virtual {v5, v7}, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->setAliasType(Lcom/mcdonalds/sdk/modules/models/AddressAliasType;)V

    .line 316
    const/4 v7, 0x1

    new-array v7, v7, [Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;

    aput-object v5, v7, v9

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->setValue(Ljava/util/List;)V

    .line 318
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 320
    .end local v1    # "element":Lcom/mcdonalds/sdk/modules/models/AddressElement;
    .end local v4    # "type":Lcom/mcdonalds/sdk/modules/models/AddressElementType;
    .end local v5    # "value":Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;
    :cond_0
    iget-object v6, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v6, v2}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->setAddressElements(Ljava/util/List;)V

    .line 331
    :goto_1
    iget-object v6, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressElements()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/AddressElement;

    .line 332
    .restart local v1    # "element":Lcom/mcdonalds/sdk/modules/models/AddressElement;
    new-instance v0, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/mcdonalds/app/account/EditAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 333
    .local v0, "editText":Landroid/widget/EditText;
    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->getValue()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->getAlias()Ljava/lang/String;

    move-result-object v5

    .line 334
    .local v5, "value":Ljava/lang/String;
    if-nez v5, :cond_3

    .line 335
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/EditAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getElementLabel(Lcom/mcdonalds/sdk/modules/models/AddressElement;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 340
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 341
    new-instance v6, Lcom/mcdonalds/app/account/EditAddressFragment$4;

    invoke-direct {v6, p0, v0, v1}, Lcom/mcdonalds/app/account/EditAddressFragment$4;-><init>(Lcom/mcdonalds/app/account/EditAddressFragment;Landroid/widget/EditText;Lcom/mcdonalds/sdk/modules/models/AddressElement;)V

    invoke-virtual {v0, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 398
    iget-object v6, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mElementsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_2

    .line 323
    .end local v0    # "editText":Landroid/widget/EditText;
    .end local v1    # "element":Lcom/mcdonalds/sdk/modules/models/AddressElement;
    .end local v2    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressElement;>;"
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .restart local v2    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressElement;>;"
    iget-object v6, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v6}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressElements()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/AddressElement;

    .line 325
    .restart local v1    # "element":Lcom/mcdonalds/sdk/modules/models/AddressElement;
    iget-object v7, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mResult:Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/GetAddressElementsResult;->getAddressElementTypes()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->getAddressElementType()Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 326
    .local v3, "index":I
    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 328
    .end local v1    # "element":Lcom/mcdonalds/sdk/modules/models/AddressElement;
    .end local v3    # "index":I
    :cond_2
    iget-object v6, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v6, v2}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->setAddressElements(Ljava/util/List;)V

    goto/16 :goto_1

    .line 337
    .restart local v0    # "editText":Landroid/widget/EditText;
    .restart local v1    # "element":Lcom/mcdonalds/sdk/modules/models/AddressElement;
    .restart local v5    # "value":Ljava/lang/String;
    :cond_3
    invoke-virtual {v0, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 402
    .end local v0    # "editText":Landroid/widget/EditText;
    .end local v1    # "element":Lcom/mcdonalds/sdk/modules/models/AddressElement;
    .end local v5    # "value":Ljava/lang/String;
    :cond_4
    iget-object v6, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddressTypeLabel:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressType()Lcom/mcdonalds/sdk/modules/models/AddressType;

    move-result-object v7

    invoke-virtual {p0}, Lcom/mcdonalds/app/account/EditAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressLabel(Lcom/mcdonalds/sdk/modules/models/AddressType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    .end local v2    # "elements":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/modules/models/AddressElement;>;"
    :cond_5
    return-void
.end method

.method private startChooseAddressTypeActivity(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;

    .prologue
    const-string v0, "startChooseAddressTypeActivity"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    const-string v1, "availableTypes"

    iget-object v0, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAvailableAddressTypes:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 245
    const-class v0, Lcom/mcdonalds/app/account/ChooseAddressTypeActivity;

    const/16 v1, 0x2d0e

    invoke-virtual {p0, v0, p1, v1}, Lcom/mcdonalds/app/account/EditAddressFragment;->startActivityForResult(Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 250
    return-void
.end method

.method private updateSaveButton()V
    .locals 5

    .prologue
    const-string v2, "updateSaveButton"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    const/4 v1, 0x1

    .line 269
    .local v1, "valid":Z
    iget-object v2, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/models/AddressElement;

    .line 270
    .local v0, "element":Lcom/mcdonalds/sdk/modules/models/AddressElement;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->getValue()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->getValue()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->getAlias()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 271
    :cond_1
    const/4 v1, 0x0

    .line 276
    .end local v0    # "element":Lcom/mcdonalds/sdk/modules/models/AddressElement;
    :cond_2
    iget-object v2, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 277
    return-void
.end method


# virtual methods
.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    const v0, 0x7f0907a1

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/account/EditAddressFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 254
    const/16 v2, 0x2d0e

    if-ne p1, v2, :cond_0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 256
    const-string v2, "selected_address_type"

    const/4 v3, 0x0

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 257
    .local v0, "key":I
    invoke-static {}, Lcom/mcdonalds/sdk/modules/models/AddressType;->values()[Lcom/mcdonalds/sdk/modules/models/AddressType;

    move-result-object v2

    aget-object v1, v2, v0

    .line 259
    .local v1, "selectedAddressType":Lcom/mcdonalds/sdk/modules/models/AddressType;
    iget-object v2, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v2, v1}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->setAddressType(Lcom/mcdonalds/sdk/modules/models/AddressType;)V

    .line 262
    iget-object v2, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddressTypeLabel:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressType()Lcom/mcdonalds/sdk/modules/models/AddressType;

    move-result-object v3

    invoke-virtual {p0}, Lcom/mcdonalds/app/account/EditAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressLabel(Lcom/mcdonalds/sdk/modules/models/AddressType;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    invoke-direct {p0}, Lcom/mcdonalds/app/account/EditAddressFragment;->updateSaveButton()V

    .line 265
    .end local v0    # "key":I
    .end local v1    # "selectedAddressType":Lcom/mcdonalds/sdk/modules/models/AddressType;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v12, 0x1

    const/4 v9, 0x0

    const-string v7, "onClick"

    new-array v8, v12, [Ljava/lang/Object;

    aput-object p1, v8, v9

    invoke-static {p0, v7, v8}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iget-object v7, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddressTypeContainer:Landroid/view/View;

    if-ne p1, v7, :cond_1

    .line 156
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 157
    .local v0, "args":Landroid/os/Bundle;
    const-string v7, "CURRENT_ADDRESS_TYPE_KEY"

    iget-object v8, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAvailableAddressTypes:Ljava/util/List;

    iget-object v9, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressType()Lcom/mcdonalds/sdk/modules/models/AddressType;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-virtual {v0, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    invoke-direct {p0, v0}, Lcom/mcdonalds/app/account/EditAddressFragment;->startChooseAddressTypeActivity(Landroid/os/Bundle;)V

    .line 240
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v7, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mSaveButton:Landroid/widget/Button;

    if-ne p1, v7, :cond_0

    .line 163
    iget-object v7, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressElements()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    .line 166
    iget-object v7, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressElements()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/AddressElement;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->getAddressElementType()Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->name()Ljava/lang/String;

    move-result-object v7

    const-string v8, "State"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 167
    iget-object v7, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressElements()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/AddressElement;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->getValue()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, "stateAlias":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2

    .line 170
    iget-object v7, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressElements()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/AddressElement;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->getValue()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;

    sget-object v8, Lcom/mcdonalds/app/account/EditAddressFragment;->STATE_MAP:Ljava/util/Map;

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->setAlias(Ljava/lang/String;)V

    .line 175
    .end local v5    # "stateAlias":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressElements()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/AddressElement;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->getAddressElementType()Lcom/mcdonalds/sdk/modules/models/AddressElementType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/AddressElementType;->name()Ljava/lang/String;

    move-result-object v7

    const-string v8, "City"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 176
    iget-object v7, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressElements()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/AddressElement;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->getValue()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 178
    .local v1, "cityAlias":Ljava/lang/String;
    const-string v7, "\\s+"

    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 179
    .local v3, "cityParts":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v7, v3

    if-ge v4, v7, :cond_3

    .line 181
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v3, v4

    invoke-virtual {v8, v9, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v4

    invoke-virtual {v8, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    .line 179
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 185
    :cond_3
    const-string v6, ""

    .line 186
    .local v6, "tempCity":Ljava/lang/String;
    array-length v8, v3

    move v7, v9

    :goto_2
    if-ge v7, v8, :cond_4

    aget-object v2, v3, v7

    .line 187
    .local v2, "cityPart":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 186
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 189
    .end local v2    # "cityPart":Ljava/lang/String;
    :cond_4
    iget-object v7, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressElements()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/AddressElement;

    invoke-virtual {v7}, Lcom/mcdonalds/sdk/modules/models/AddressElement;->getValue()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mcdonalds/sdk/modules/models/AddressAliasValue;->setAlias(Ljava/lang/String;)V

    .line 193
    .end local v1    # "cityAlias":Ljava/lang/String;
    .end local v3    # "cityParts":[Ljava/lang/String;
    .end local v4    # "i":I
    .end local v6    # "tempCity":Ljava/lang/String;
    :cond_5
    iget-object v7, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v8, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    iget-object v9, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v9}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v9

    new-instance v10, Lcom/mcdonalds/app/account/EditAddressFragment$2;

    invoke-direct {v10, p0}, Lcom/mcdonalds/app/account/EditAddressFragment$2;-><init>(Lcom/mcdonalds/app/account/EditAddressFragment;)V

    invoke-virtual {v7, v8, v9, v10}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->validateAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 81
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/account/EditAddressFragment;->setHasOptionsMenu(Z)V

    .line 85
    invoke-virtual {p0}, Lcom/mcdonalds/app/account/EditAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "addressData"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;

    .line 86
    .local v0, "data":Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;
    invoke-virtual {v0}, Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;->getCustomerAddress()Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .line 87
    invoke-virtual {v0}, Lcom/mcdonalds/app/account/EditAddressFragment$EditAddressDataPasser;->getAvailableTypes()Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAvailableAddressTypes:Ljava/util/List;

    .line 89
    iget-object v3, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    if-eqz v3, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mIsEdit:Z

    .line 90
    iget-boolean v1, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mIsEdit:Z

    if-eqz v1, :cond_1

    .line 92
    iget-object v1, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAvailableAddressTypes:Ljava/util/List;

    iget-object v3, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->getAddressType()Lcom/mcdonalds/sdk/modules/models/AddressType;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 101
    :goto_1
    invoke-direct {p0}, Lcom/mcdonalds/app/account/EditAddressFragment;->refreshAvailableElements()V

    .line 102
    return-void

    :cond_0
    move v1, v2

    .line 89
    goto :goto_0

    .line 94
    :cond_1
    new-instance v1, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-direct {v1}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;-><init>()V

    iput-object v1, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    .line 95
    iget-object v1, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->setDefaultAddress(Z)V

    .line 96
    iget-object v1, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->setAllowPromotionsToAddress(Z)V

    .line 97
    iget-object v3, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    iget-object v1, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAvailableAddressTypes:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/modules/models/AddressType;

    invoke-virtual {v3, v1}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->setAddressType(Lcom/mcdonalds/sdk/modules/models/AddressType;)V

    .line 98
    iget-object v1, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mcdonalds/sdk/modules/models/CustomerAddress;->setPhone(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    const-string v1, "onCreateOptionsMenu"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    invoke-super {p0, p1, p2}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 107
    const/high16 v1, 0x7f120000

    invoke-virtual {p2, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 109
    const v1, 0x7f110544

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 110
    .local v0, "deleteItem":Landroid/view/MenuItem;
    iget-boolean v1, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mIsEdit:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 111
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 139
    const v1, 0x7f0400b7

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 141
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f1102a6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mElementsContainer:Landroid/widget/LinearLayout;

    .line 142
    const v1, 0x7f1102a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddressTypeContainer:Landroid/view/View;

    .line 143
    const v1, 0x7f1102ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddressTypeLabel:Landroid/widget/TextView;

    .line 144
    iget-object v1, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddressTypeContainer:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    const v1, 0x7f1102a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mSaveButton:Landroid/widget/Button;

    .line 147
    iget-object v1, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mSaveButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 148
    iget-object v1, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const-string v0, "onOptionsItemSelected"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    nop

    .line 115
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 132
    :goto_0
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 117
    :pswitch_0
    iget-object v0, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    iget-object v1, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mAddress:Lcom/mcdonalds/sdk/modules/models/CustomerAddress;

    iget-object v2, p0, Lcom/mcdonalds/app/account/EditAddressFragment;->mCustomerModule:Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    new-instance v3, Lcom/mcdonalds/app/account/EditAddressFragment$1;

    invoke-direct {v3, p0}, Lcom/mcdonalds/app/account/EditAddressFragment$1;-><init>(Lcom/mcdonalds/app/account/EditAddressFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->removeAddress(Lcom/mcdonalds/sdk/modules/models/CustomerAddress;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Lcom/mcdonalds/sdk/AsyncListener;)Lcom/mcdonalds/sdk/AsyncToken;

    goto :goto_0

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x7f110544
        :pswitch_0
    .end packed-switch
.end method
