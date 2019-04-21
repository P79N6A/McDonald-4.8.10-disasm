.class public Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerLoginInfo;
.super Ljava/lang/Object;
.source "MWCustomerLoginInfo.java"


# instance fields
.field private isDefaultPhoneNumberTakenOver:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsDefaultPhoneNumberTakenOver"
    .end annotation
.end field

.field private isDefaultPhoneNumberVerified:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsDefaultPhoneNumberVerified"
    .end annotation
.end field

.field private isEmailAddressTakenOver:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsEmailAddressTakenOver"
    .end annotation
.end field

.field private isEmailAddressVerified:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "IsEmailAddressVerified"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public constructor <init>(ZZZZ)V
    .locals 0
    .param p1, "isEmailAddressTakenOver"    # Z
    .param p2, "isEmailAddressVerified"    # Z
    .param p3, "isDefaultPhoneNumberTakenOver"    # Z
    .param p4, "isDefaultPhoneNumberVerified"    # Z

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerLoginInfo;->isEmailAddressTakenOver:Z

    .line 30
    iput-boolean p2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerLoginInfo;->isEmailAddressVerified:Z

    .line 31
    iput-boolean p3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerLoginInfo;->isDefaultPhoneNumberTakenOver:Z

    .line 32
    iput-boolean p4, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerLoginInfo;->isDefaultPhoneNumberVerified:Z

    .line 33
    return-void
.end method

.method public static fromCustomerLoginInfo(Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;)Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerLoginInfo;
    .locals 5
    .param p0, "info"    # Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 66
    new-instance v0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerLoginInfo;

    .line 67
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->isEmailAddressTakenOver()Z

    move-result v1

    .line 68
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->isEmailAddressVerified()Z

    move-result v2

    .line 69
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->isDefaultPhoneNumberTakenOver()Z

    move-result v3

    .line 70
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->isDefaultPhoneNumberVerified()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerLoginInfo;-><init>(ZZZZ)V

    .line 66
    return-object v0
.end method


# virtual methods
.method public isDefaultPhoneNumberTakenOver()Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerLoginInfo;->isDefaultPhoneNumberTakenOver:Z

    return v0
.end method

.method public isDefaultPhoneNumberVerified()Z
    .locals 1

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerLoginInfo;->isDefaultPhoneNumberVerified:Z

    return v0
.end method

.method public isEmailAddressTakenOver()Z
    .locals 1

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerLoginInfo;->isEmailAddressTakenOver:Z

    return v0
.end method

.method public isEmailAddressVerified()Z
    .locals 1

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerLoginInfo;->isEmailAddressVerified:Z

    return v0
.end method

.method public toCustomerLoginInfo()Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;
    .locals 5

    .prologue
    .line 56
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;

    iget-boolean v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerLoginInfo;->isEmailAddressTakenOver:Z

    iget-boolean v2, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerLoginInfo;->isEmailAddressVerified:Z

    iget-boolean v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerLoginInfo;->isDefaultPhoneNumberTakenOver:Z

    iget-boolean v4, p0, Lcom/mcdonalds/sdk/connectors/middleware/model/MWCustomerLoginInfo;->isDefaultPhoneNumberVerified:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;-><init>(ZZZZ)V

    return-object v0
.end method
