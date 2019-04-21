.class public Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
.super Ljava/lang/Object;
.source "AuthenticationParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAllowSocialLoginWithoutEmail:Z

.field private mEmailAddress:Ljava/lang/String;

.field private mFirstName:Ljava/lang/String;

.field private mLastName:Ljava/lang/String;

.field private mNewPassword:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mSocialAuthenticationToken:Ljava/lang/String;

.field private mSocialProvider:Ljava/lang/String;

.field private mSocialServiceID:I

.field private mSocialUserID:Ljava/lang/String;

.field private mUpdatedUserName:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;

.field private mUsingSocialLogin:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mAllowSocialLoginWithoutEmail:Z

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mUsingSocialLogin:Z

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mSocialServiceID:I

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mSocialAuthenticationToken:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mSocialUserID:Ljava/lang/String;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mUserName:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mUpdatedUserName:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mPassword:Ljava/lang/String;

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mNewPassword:Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mEmailAddress:Ljava/lang/String;

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mSocialProvider:Ljava/lang/String;

    .line 191
    return-void

    :cond_0
    move v0, v2

    .line 180
    goto :goto_0

    :cond_1
    move v1, v2

    .line 181
    goto :goto_1
.end method

.method public static fromProfile(Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;)Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    .locals 2
    .param p0, "profile"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    .prologue
    .line 122
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;-><init>()V

    .line 123
    .local v0, "parameters":Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLogin()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 124
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isUsingSocialLoginWithoutEmail()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUserName(Ljava/lang/String;)V

    .line 130
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUsingSocialLogin(Z)V

    .line 131
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialServiceAuthenticationID()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialServiceID(I)V

    .line 132
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialAuthenticationToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialAuthenticationToken(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialUserID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialUserID(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFirstName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setFirstName(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLastName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setLastName(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setSocialProvider(Ljava/lang/String;)V

    .line 144
    :goto_1
    return-object v0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUserName(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setUserName(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->setPassword(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mFirstName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mLastName:Ljava/lang/String;

    return-object v0
.end method

.method public getNewPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mNewPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialAuthenticationToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mSocialAuthenticationToken:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mSocialProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getSocialServiceID()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mSocialServiceID:I

    return v0
.end method

.method public getSocialUserID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mSocialUserID:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatedUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mUpdatedUserName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method public isAllowSocialLoginWithoutEmail()Z
    .locals 1

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mAllowSocialLoginWithoutEmail:Z

    return v0
.end method

.method public isUsingSocialLogin()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mUsingSocialLogin:Z

    return v0
.end method

.method public setAllowSocialLoginWithoutEmail(Z)V
    .locals 0
    .param p1, "allowSocialLoginWithoutEmail"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mAllowSocialLoginWithoutEmail:Z

    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mEmailAddress:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstName"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mFirstName:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastName"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mLastName:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setNewPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "newPassword"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mNewPassword:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mPassword:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setSocialAuthenticationToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "socialAuthenticationToken"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mSocialAuthenticationToken:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setSocialProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "socialProvider"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mSocialProvider:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setSocialServiceID(I)V
    .locals 0
    .param p1, "socialServiceID"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mSocialServiceID:I

    .line 46
    return-void
.end method

.method public setSocialUserID(Ljava/lang/String;)V
    .locals 0
    .param p1, "socialUserID"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mSocialUserID:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setUpdatedUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "updatedUserName"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mUpdatedUserName:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setUserName(Ljava/lang/String;)V
    .locals 0
    .param p1, "userName"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mUserName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setUsingSocialLogin(Z)V
    .locals 0
    .param p1, "usingSocialLogin"    # Z

    .prologue
    .line 37
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mUsingSocialLogin:Z

    .line 38
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 163
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mAllowSocialLoginWithoutEmail:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 164
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mUsingSocialLogin:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 165
    iget v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mSocialServiceID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mSocialAuthenticationToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mSocialUserID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mUpdatedUserName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mNewPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/AuthenticationParameters;->mSocialProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    return-void

    :cond_0
    move v0, v2

    .line 163
    goto :goto_0

    :cond_1
    move v1, v2

    .line 164
    goto :goto_1
.end method
