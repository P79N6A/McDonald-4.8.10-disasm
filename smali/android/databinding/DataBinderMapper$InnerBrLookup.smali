.class Landroid/databinding/DataBinderMapper$InnerBrLookup;
.super Ljava/lang/Object;
.source "DataBinderMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/databinding/DataBinderMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerBrLookup"
.end annotation


# static fields
.field static sKeys:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 130
    const/16 v0, 0x38

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_all"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "bagCharge"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "checked"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "continueButtonText"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "deliveryFee"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "deliveryHeaderText"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "discount"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "enableContinueButton"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "enableMinusButton"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "enablePaymentContainer"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "enablePlusButton"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "hatButtonResourceId"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "invoiceEnabled"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "isLoading"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "nameDetails"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "payer"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "paymentMethodName"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "presenter"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "productName"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "productUplift"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "quantity"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "remark"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "remarkEnabled"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "showBagCharge"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "showCheckBox"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "showDeliveryFee"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "showDeliveryLocation"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "showDisclosureArrow"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "showDiscount"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "showHatButton"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "showInfoButton"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "showInvoice"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "showLocationSelection"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "showNameDetails"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "showNoPaymentRequired"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "showOrderRemark"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "showPaymentContainer"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "showPickupLocation"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "showQRScanFirstTime"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "showSubtotal"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "showTableService"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "showTax"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "showTimeRestrictionWarning"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "showTotalCalories"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "showUnavailablePODs"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "showUplift"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "specialInstructions"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "storeName"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "subtotal"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "tax"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "thumbnailImageUrl"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "timeRestrictionWarning"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string/jumbo v2, "total"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string/jumbo v2, "totalCalories"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string/jumbo v2, "totalPrice"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string/jumbo v2, "unavailablePODsMessage"

    aput-object v2, v0, v1

    sput-object v0, Landroid/databinding/DataBinderMapper$InnerBrLookup;->sKeys:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
