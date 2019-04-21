.class public Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;
.super Lcom/mcdonalds/sdk/modules/AppModel;
.source "CustomerLoginInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private defaultPhoneNumberTakenOver:Z

.field private defaultPhoneNumberVerified:Z

.field private emailAddressTakenOver:Z

.field private emailAddressVerified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 30
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->emailAddressTakenOver:Z

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->emailAddressVerified:Z

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->defaultPhoneNumberTakenOver:Z

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->defaultPhoneNumberVerified:Z

    .line 75
    return-void

    :cond_0
    move v0, v2

    .line 71
    goto :goto_0

    :cond_1
    move v0, v2

    .line 72
    goto :goto_1

    :cond_2
    move v0, v2

    .line 73
    goto :goto_2

    :cond_3
    move v1, v2

    .line 74
    goto :goto_3
.end method

.method public constructor <init>(ZZZZ)V
    .locals 0
    .param p1, "emailAddressTakenOver"    # Z
    .param p2, "emailAddressVerified"    # Z
    .param p3, "defaultPhoneNumberTakenOver"    # Z
    .param p4, "defaultPhoneNumberVerified"    # Z

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/mcdonalds/sdk/modules/AppModel;-><init>()V

    .line 23
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->emailAddressTakenOver:Z

    .line 24
    iput-boolean p2, p0, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->emailAddressVerified:Z

    .line 25
    iput-boolean p3, p0, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->defaultPhoneNumberTakenOver:Z

    .line 26
    iput-boolean p4, p0, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->defaultPhoneNumberVerified:Z

    .line 27
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public isDefaultPhoneNumberTakenOver()Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->defaultPhoneNumberTakenOver:Z

    return v0
.end method

.method public isDefaultPhoneNumberVerified()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->defaultPhoneNumberVerified:Z

    return v0
.end method

.method public isEmailAddressTakenOver()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->emailAddressTakenOver:Z

    return v0
.end method

.method public isEmailAddressVerified()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->emailAddressVerified:Z

    return v0
.end method

.method public setDefaultPhoneNumberVerified(Z)V
    .locals 0
    .param p1, "phoneNumberVerified"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->defaultPhoneNumberVerified:Z

    .line 50
    return-void
.end method

.method public setEmailAddressVerified(Z)V
    .locals 0
    .param p1, "emailVerified"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->emailAddressVerified:Z

    .line 54
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->emailAddressTakenOver:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 65
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->emailAddressVerified:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 66
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->defaultPhoneNumberTakenOver:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 67
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/CustomerLoginInfo;->defaultPhoneNumberVerified:Z

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 68
    return-void

    :cond_0
    move v0, v2

    .line 64
    goto :goto_0

    :cond_1
    move v0, v2

    .line 65
    goto :goto_1

    :cond_2
    move v0, v2

    .line 66
    goto :goto_2

    :cond_3
    move v1, v2

    .line 67
    goto :goto_3
.end method
