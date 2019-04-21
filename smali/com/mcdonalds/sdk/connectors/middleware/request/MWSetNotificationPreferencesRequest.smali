.class public Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;
.super Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;
.source "MWSetNotificationPreferencesRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest",
        "<",
        "Lcom/mcdonalds/sdk/connectors/middleware/response/MWSetNotificationPreferencesResponse;",
        "Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;",
        ">;"
    }
.end annotation


# static fields
.field private static final URL_PATH:Ljava/lang/String; = "/customer/preference/notification"


# instance fields
.field private final mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

.field private final mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;


# direct methods
.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;)V
    .locals 0
    .param p1, "ignored"    # Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;
    .param p2, "ecpToken"    # Ljava/lang/String;
    .param p3, "username"    # Ljava/lang/String;
    .param p4, "preferences"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p2, p3, p4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;)V
    .locals 12
    .param p1, "ecpToken"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "preferences"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWNotificationPreferences;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequest;-><init>()V

    .line 37
    new-instance v8, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-direct {v8}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;-><init>()V

    iput-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    .line 38
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->getHeaderMap(Ljava/lang/String;)Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    move-result-object v8

    iput-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    .line 40
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string/jumbo v9, "userName"

    invoke-virtual {v8, v9, p2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v9, "preferences"

    invoke-virtual {v8, v9, p3}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const-string v8, "customer"

    invoke-static {v8}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 44
    .local v0, "customerModule":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v3

    .line 46
    .local v3, "profile":Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v9, "firstName"

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getFirstName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v9, "lastName"

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getLastName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v9, "customerId"

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v9, "emailAddress"

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getEmailAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string/jumbo v9, "zipCode"

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getZipCode()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v9, "source"

    const-string v10, "GMA"

    invoke-virtual {v8, v9, v10}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v6, ""

    .line 54
    .local v6, "storeId":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentStore()Lcom/mcdonalds/sdk/modules/storelocator/Store;

    move-result-object v5

    .line 55
    .local v5, "store":Lcom/mcdonalds/sdk/modules/storelocator/Store;
    if-eqz v5, :cond_0

    .line 56
    invoke-virtual {v5}, Lcom/mcdonalds/sdk/modules/storelocator/Store;->getStoreId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 58
    :cond_0
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v9, "restaurantId"

    invoke-virtual {v8, v9, v6}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v8, "notification"

    invoke-static {v8}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mcdonalds/sdk/modules/notification/NotificationModule;

    .line 61
    .local v2, "notificationModule":Lcom/mcdonalds/sdk/modules/notification/NotificationModule;
    if-eqz v2, :cond_1

    .line 62
    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/notification/NotificationModule;->getRegistrationId()Ljava/lang/String;

    move-result-object v4

    .line 63
    .local v4, "registrationId":Ljava/lang/String;
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v9, "deviceToken"

    invoke-virtual {v8, v9, v4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .end local v4    # "registrationId":Ljava/lang/String;
    :cond_1
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v9, "socialNetworkProvider"

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getSocialProvider()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguage()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "language":Ljava/lang/String;
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v9, "systemLanguage"

    invoke-virtual {v8, v9, v1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v9, "systemVersion"

    sget-object v10, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    invoke-static {}, Lcom/mcdonalds/sdk/utils/DateUtils;->timeZoneForNotificationCall()Ljava/lang/String;

    move-result-object v7

    .line 74
    .local v7, "timeZone":Ljava/lang/String;
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v9, "timeZone"

    invoke-virtual {v8, v9, v7}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v9, "systemName"

    const-string v10, "Android"

    invoke-virtual {v8, v9, v10}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v9, "title"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v9, "gender"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v9, "sourceProgram"

    const-string v10, "GMA"

    invoke-virtual {v8, v9, v10}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v9, "deviceBuildId"

    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string/jumbo v9, "userKey"

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getCustomerId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string/jumbo v9, "uuid"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v9, "deviceName"

    sget-object v10, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v9, "deviceBrand"

    sget-object v10, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v9, "deviceManufacturer"

    sget-object v10, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object v8, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    const-string v9, "mobilePhone"

    invoke-virtual {v3}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->getMobileNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;->toJson()Ljava/lang/String;

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

.method getEndpoint()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    const-string v0, "/customer/preference/notification"

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
    .line 107
    iget-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    return-object v0
.end method

.method public getMethodType()Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;->POST:Lcom/mcdonalds/sdk/services/network/RequestProvider$MethodType;

    return-object v0
.end method

.method public getRequestType()Lcom/mcdonalds/sdk/services/network/RequestProvider$RequestType;
    .locals 1

    .prologue
    .line 97
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
            "Lcom/mcdonalds/sdk/connectors/middleware/response/MWSetNotificationPreferencesResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    const-class v0, Lcom/mcdonalds/sdk/connectors/middleware/response/MWSetNotificationPreferencesResponse;

    return-object v0
.end method

.method public setBody(Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;)V
    .locals 0
    .param p1, "body"    # Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    .prologue
    .line 117
    return-void
.end method

.method public bridge synthetic setBody(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 24
    check-cast p1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->setBody(Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MWSetNoificationPreferencesRequest{mHeaderMap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->mHeaderMap:Lcom/mcdonalds/sdk/connectors/middleware/request/MWRequestHeaders;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBody="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWSetNotificationPreferencesRequest;->mBody:Lcom/mcdonalds/sdk/connectors/middleware/request/MWJSONRequestBody;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
