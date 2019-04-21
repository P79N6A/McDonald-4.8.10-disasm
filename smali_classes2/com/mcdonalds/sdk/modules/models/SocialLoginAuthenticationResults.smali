.class public Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;
.super Ljava/lang/Object;
.source "SocialLoginAuthenticationResults.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccessToken:Ljava/lang/String;

.field private mAllowSocialLoginWithoutEmail:Z

.field private mEmailAddress:Ljava/lang/String;

.field private mFirstName:Ljava/lang/String;

.field private mLastName:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;

.field private mZipCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults$1;

    invoke-direct {v0}, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults$1;-><init>()V

    sput-object v0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mFirstName:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mLastName:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mAccessToken:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mUserId:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mEmailAddress:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mZipCode:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mAllowSocialLoginWithoutEmail:Z

    .line 108
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mAccessToken:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;
    .param p3, "accessToken"    # Ljava/lang/String;
    .param p4, "AllowSocialLoginWithoutEmail"    # Z

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mFirstName:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mUserId:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mAccessToken:Ljava/lang/String;

    .line 28
    iput-boolean p4, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mAllowSocialLoginWithoutEmail:Z

    .line 29
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mEmailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mFirstName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mLastName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method public getZipCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mZipCode:Ljava/lang/String;

    return-object v0
.end method

.method public isAllowSocialLoginWithoutEmail()Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mAllowSocialLoginWithoutEmail:Z

    return v0
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mAccessToken:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setAllowSocialLoginWithoutEmail(Z)V
    .locals 0
    .param p1, "allowSocialLoginWithoutEmail"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mAllowSocialLoginWithoutEmail:Z

    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mEmailAddress:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstName"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mFirstName:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastName"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mLastName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mUserId:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setZipCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "zipCode"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mZipCode:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mFirstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mLastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mAccessToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mUserId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mZipCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-boolean v0, p0, Lcom/mcdonalds/sdk/modules/models/SocialLoginAuthenticationResults;->mAllowSocialLoginWithoutEmail:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 98
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
