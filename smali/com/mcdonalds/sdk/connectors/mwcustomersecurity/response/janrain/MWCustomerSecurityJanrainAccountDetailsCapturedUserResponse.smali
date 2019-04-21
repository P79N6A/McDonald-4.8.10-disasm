.class public Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;
.super Ljava/lang/Object;
.source "MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field birthDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "birthday"
    .end annotation
.end field

.field deactivateAccount:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "deactivateAccount"
    .end annotation
.end field

.field emailAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field emailVerified:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emailVerified"
    .end annotation
.end field

.field firstName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "givenName"
    .end annotation
.end field

.field gender:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gender"
    .end annotation
.end field

.field lastName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "familyName"
    .end annotation
.end field

.field lastUpdated:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lastUpdated"
    .end annotation
.end field

.field primaryAddressResponse:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "primaryAddress"
    .end annotation
.end field

.field privacyPolicyVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "ppMobile"
    .end annotation
.end field

.field smsVerified:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "smsVerified"
    .end annotation
.end field

.field termsAndConditionVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "tncMobile"
    .end annotation
.end field

.field uuid:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "uuid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBirthDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->birthDate:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthdateCalendar()Ljava/util/Calendar;
    .locals 5

    .prologue
    .line 54
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse<TT;>;"
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->birthDate:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 55
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 56
    .local v2, "df":Ljava/text/DateFormat;
    const/4 v0, 0x0

    .line 58
    .local v0, "birthdate":Ljava/util/Calendar;
    :try_start_0
    iget-object v4, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->birthDate:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 59
    .local v1, "date":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 60
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .end local v1    # "date":Ljava/util/Date;
    :goto_0
    if-eqz v0, :cond_0

    .line 68
    .end local v0    # "birthdate":Ljava/util/Calendar;
    .end local v2    # "df":Ljava/text/DateFormat;
    :goto_1
    return-object v0

    .line 61
    .restart local v0    # "birthdate":Ljava/util/Calendar;
    .restart local v2    # "df":Ljava/text/DateFormat;
    :catch_0
    move-exception v3

    .line 62
    .local v3, "e":Ljava/text/ParseException;
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    .line 68
    .end local v0    # "birthdate":Ljava/util/Calendar;
    .end local v2    # "df":Ljava/text/DateFormat;
    .end local v3    # "e":Ljava/text/ParseException;
    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->emailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getEmailVerified()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->emailVerified:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 107
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->lastUpdated:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimaryAddressResponse()Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse;
    .locals 1

    .prologue
    .line 91
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->primaryAddressResponse:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse;

    return-object v0
.end method

.method public getPrivacyPolicyVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->privacyPolicyVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSmsVerified()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->smsVerified:Ljava/lang/String;

    return-object v0
.end method

.method public getTermsAndConditionVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->termsAndConditionVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public isDeactivateAccount()Z
    .locals 1

    .prologue
    .line 148
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->deactivateAccount:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBirthDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "birthDate"    # Ljava/lang/String;

    .prologue
    .line 71
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->birthDate:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setDeactivateAccount(Ljava/lang/String;)V
    .locals 0
    .param p1, "deactivateAccount"    # Ljava/lang/String;

    .prologue
    .line 152
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->deactivateAccount:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 87
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->emailAddress:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setEmailVerified(Ljava/lang/String;)V
    .locals 0
    .param p1, "emailVerified"    # Ljava/lang/String;

    .prologue
    .line 119
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->emailVerified:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstName"    # Ljava/lang/String;

    .prologue
    .line 38
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->firstName:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 79
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->gender:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastName"    # Ljava/lang/String;

    .prologue
    .line 46
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->lastName:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setLastUpdated(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastUpdated"    # Ljava/lang/String;

    .prologue
    .line 111
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->lastUpdated:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setPrimaryAddressResponse(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse;)V
    .locals 0
    .param p1, "primaryAddressResponse"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse;

    .prologue
    .line 95
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->primaryAddressResponse:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse;

    .line 96
    return-void
.end method

.method public setPrivacyPolicyVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "privacyPolicyVersion"    # Ljava/lang/String;

    .prologue
    .line 143
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->privacyPolicyVersion:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setSmsVerified(Ljava/lang/String;)V
    .locals 0
    .param p1, "smsVerified"    # Ljava/lang/String;

    .prologue
    .line 127
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->smsVerified:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setTermsAndConditionVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "termsAndConditionVersion"    # Ljava/lang/String;

    .prologue
    .line 135
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->termsAndConditionVersion:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 103
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->uuid:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse<TT;>;"
    const/16 v2, 0x27

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse{firstName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", birthDate=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->birthDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gender=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->gender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", primaryAddressResponse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->primaryAddressResponse:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsPrimaryAddressResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emailAddress=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->emailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastUpdated=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->lastUpdated:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emailVerified=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->emailVerified:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", smsVerified=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->smsVerified:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", termsAndConditionVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->termsAndConditionVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", privacyPolicyVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->privacyPolicyVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", deactivateAccount=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/janrain/MWCustomerSecurityJanrainAccountDetailsCapturedUserResponse;->deactivateAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
