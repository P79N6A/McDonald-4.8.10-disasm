.class public Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;
.super Ljava/lang/Object;
.source "MWCustomerSecurityAccountDetailsResponse.java"


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
.field addressCountry:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "addressCountry"
    .end annotation
.end field

.field birthDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "birthDate"
    .end annotation
.end field

.field emailAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "emailAddress"
    .end annotation
.end field

.field firstName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "firstName"
    .end annotation
.end field

.field gender:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "gender"
    .end annotation
.end field

.field invalidFields:Ljava/lang/Object;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "invalidFields"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field lastName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lastName"
    .end annotation
.end field

.field lastUpdated:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "lastUpdated"
    .end annotation
.end field

.field mobilePhone:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mobilePhone"
    .end annotation
.end field

.field status:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field token:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "token"
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
    .line 13
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddressCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->addressCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->birthDate:Ljava/lang/String;

    return-object v0
.end method

.method public getBirthdateCalendar()Ljava/util/Calendar;
    .locals 5

    .prologue
    .line 58
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse<TT;>;"
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->birthDate:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 59
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 60
    .local v0, "birthdate":Ljava/util/Calendar;
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->birthDate:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "fields":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 64
    .end local v0    # "birthdate":Ljava/util/Calendar;
    .end local v1    # "fields":[Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->emailAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getGender()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->gender:Ljava/lang/String;

    return-object v0
.end method

.method public getInvalidFields()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->invalidFields:Ljava/lang/Object;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastUpdated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->lastUpdated:Ljava/lang/String;

    return-object v0
.end method

.method public getMobilePhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->mobilePhone:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->token:Ljava/lang/String;

    return-object v0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse<TT;>;"
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->uuid:Ljava/lang/String;

    return-object v0
.end method

.method public setAddressCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "addressCountry"    # Ljava/lang/String;

    .prologue
    .line 83
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->addressCountry:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setBirthDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "birthDate"    # Ljava/lang/String;

    .prologue
    .line 67
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->birthDate:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "emailAddress"    # Ljava/lang/String;

    .prologue
    .line 91
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->emailAddress:Ljava/lang/String;

    .line 92
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstName"    # Ljava/lang/String;

    .prologue
    .line 42
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->firstName:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setGender(Ljava/lang/String;)V
    .locals 0
    .param p1, "gender"    # Ljava/lang/String;

    .prologue
    .line 75
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->gender:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setInvalidFields(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 131
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse<TT;>;"
    .local p1, "invalidFields":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->invalidFields:Ljava/lang/Object;

    .line 132
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastName"    # Ljava/lang/String;

    .prologue
    .line 50
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->lastName:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setLastUpdated(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastUpdated"    # Ljava/lang/String;

    .prologue
    .line 123
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->lastUpdated:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public setMobilePhone(Ljava/lang/String;)V
    .locals 0
    .param p1, "mobilePhone"    # Ljava/lang/String;

    .prologue
    .line 99
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->mobilePhone:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 34
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->status:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 115
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->token:Ljava/lang/String;

    .line 116
    return-void
.end method

.method public setUuid(Ljava/lang/String;)V
    .locals 0
    .param p1, "uuid"    # Ljava/lang/String;

    .prologue
    .line 107
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse<TT;>;"
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->uuid:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .local p0, "this":Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;, "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse<TT;>;"
    const/16 v2, 0x27

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MWCustomerSecurityAccountDetailsResponse{status=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->status:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", firstName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->firstName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->lastName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", birthDate=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->birthDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gender=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->gender:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", addressCountry=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->addressCountry:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emailAddress=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->emailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mobilePhone=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->mobilePhone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uuid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", token=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->token:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastUpdated=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->lastUpdated:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", invalidFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountDetailsResponse;->invalidFields:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
