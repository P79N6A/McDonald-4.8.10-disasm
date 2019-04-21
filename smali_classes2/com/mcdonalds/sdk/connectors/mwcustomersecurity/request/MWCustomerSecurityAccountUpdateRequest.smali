.class public Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountUpdateRequest;
.super Ljava/lang/Object;
.source "MWCustomerSecurityAccountUpdateRequest.java"

# interfaces
.implements Lcom/mcdonalds/sdk/services/network/RequestProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/mcdonalds/sdk/services/network/RequestProvider",
        "<",
        "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse;",
        "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;",
        ">;"
    }
.end annotation


# static fields
.field private static final URL_PATH:Ljava/lang/String; = "/customer/security/account"


# instance fields
.field private final mHeaderMap:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityRequestHeaders;

.field protected mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "connector"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;
    .param p2, "customer"    # Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    .param p3, "addressCountry"    # Ljava/lang/String;
    .param p4, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v2, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityRequestHeaders;

    invoke-direct {v2}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityRequestHeaders;-><init>()V

    iput-object v2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountUpdateRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityRequestHeaders;

    .line 35
    new-instance v2, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    invoke-direct {v2, p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;-><init>(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;)V

    iput-object v2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountUpdateRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    .line 37
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountUpdateRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    const-string v3, "accessToken"

    invoke-virtual {v2, v3, p4}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string v2, "/customer/security/account"

    invoke-virtual {p1, v2}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/MWCustomerSecurityConnector;->getURLStringForEndpoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountUpdateRequest;->mUrl:Ljava/lang/String;

    .line 41
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isPasswordChangeRequired()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountUpdateRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    const-string v3, "password"

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountUpdateRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    const-string v3, "newPassword"

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getNewPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountUpdateRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    const-string v3, "newPasswordConfirm"

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getNewPassword()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountUpdateRequest;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?type=password"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountUpdateRequest;->mUrl:Ljava/lang/String;

    .line 47
    :cond_0
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFirstName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 48
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountUpdateRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    const-string v3, "firstName"

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_1
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLastName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 51
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountUpdateRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    const-string v3, "lastName"

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLastName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_2
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMobileNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 54
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountUpdateRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    const-string v3, "mobilePhone"

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMobileNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :cond_3
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getZipCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 57
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountUpdateRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    const-string v3, "zipCode"

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getZipCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    :cond_4
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->shouldChangeBirthdate()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 63
    const-string v0, ""

    .line 64
    .local v0, "birthDate":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getBirthDate()Ljava/util/Calendar;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 66
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, "janrainFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getBirthDate()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .end local v1    # "janrainFormat":Ljava/text/SimpleDateFormat;
    :cond_5
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountUpdateRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    const-string v3, "birthDate"

    invoke-virtual {v2, v3, v0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .end local v0    # "birthDate":Ljava/lang/String;
    :cond_6
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getGender()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 72
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountUpdateRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    const-string v3, "gender"

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getGender()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_7
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getmTermsAndConditionVersion()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 75
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountUpdateRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    const-string v3, "tncMobile"

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getmTermsAndConditionVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    :cond_8
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getmPrivacyPolicyVersion()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 78
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountUpdateRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    const-string v3, "ppMobile"

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getmPrivacyPolicyVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_9
    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getDeactivateAccountTimeStamp()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 81
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountUpdateRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    const-string v3, "deactivateAccount"

    invoke-virtual {p2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getDeactivateAccountTimeStamp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_a
    iget-object v2, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountUpdateRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    const-string v3, "addressCountry"

    invoke-virtual {v2, v3, p3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Update Profile Request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountUpdateRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/sdk/services/log/MCDLog;->debug(Ljava/lang/String;)V

    .line 87
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountUpdateRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;->toJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomTypeAdapters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/mcdonalds/sdk/services/network/CustomTypeAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountUpdateRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityRequestHeaders;

    return-object v0
.end method

.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->PUT:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method

.method public getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;->JSON:Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;

    return-object v0
.end method

.method public getResponseClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<",
            "Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    const-class v0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/response/MWCustomerSecurityAccountUpdateResponse;

    return-object v0
.end method

.method public getURLString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountUpdateRequest;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setBody(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;)V
    .locals 0
    .param p1, "body"    # Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountUpdateRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    .line 117
    return-void
.end method

.method public bridge synthetic setBody(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountUpdateRequest;->setBody(Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MWCustomerSecurityAccountUpdateRequest{mHeaderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountUpdateRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityRequestHeaders;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPostBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityAccountUpdateRequest;->mPostBody:Lcom/mcdonalds/sdk/connectors/mwcustomersecurity/request/MWCustomerSecurityJSONRequestBody;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
