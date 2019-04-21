.class public Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
.super Ljava/lang/Object;
.source "AnalyticAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;
    }
.end annotation


# static fields
.field public static final ACCOUNT_ID_ATTRIBUTE:Ljava/lang/String; = "accountId"

.field public static final APPLICATION_PLATFORM_ATTRIBUTE:Ljava/lang/String; = "platform"

.field public static final APPLICATION_PLATFORM_VERSION_ATTRIBUTE:Ljava/lang/String; = "platformVersion"

.field public static final APP_BUILD_ATTRIBUTE:Ljava/lang/String; = "appBuild"

.field public static final APP_ID_ATTRIBUTE:Ljava/lang/String; = "appId"

.field public static final APP_INSTALL_ATTRIBUTE:Ljava/lang/String; = "install"

.field public static final APP_NAME_ATTRIBUTE:Ljava/lang/String; = "appName"

.field public static final APP_UPGRADE_ATTRIBUTE:Ljava/lang/String; = "upgradeFrom"

.field public static final ARCHITECTURE_ATTRIBUTE:Ljava/lang/String; = "architecture"

.field public static final ATTRIBUTE_NAME_MAX_LENGTH:I = 0x100

.field public static final ATTRIBUTE_VALUE_MAX_LENGTH:I = 0x1000

.field public static final BYTES_RECEIVED_ATTRIBUTE:Ljava/lang/String; = "bytesReceived"

.field public static final BYTES_SENT_ATTRIBUTE:Ljava/lang/String; = "bytesSent"

.field public static final CARRIER_ATTRIBUTE:Ljava/lang/String; = "carrier"

.field public static final CONNECTION_TYPE_ATTRIBUTE:Ljava/lang/String; = "connectionType"

.field public static final DEVICE_MANUFACTURER_ATTRIBUTE:Ljava/lang/String; = "deviceManufacturer"

.field public static final DEVICE_MODEL_ATTRIBUTE:Ljava/lang/String; = "deviceModel"

.field public static final EVENT_CATEGORY_ATTRIBUTE:Ljava/lang/String; = "category"

.field public static final EVENT_NAME_ATTRIBUTE:Ljava/lang/String; = "name"

.field public static final EVENT_TIMESTAMP_ATTRIBUTE:Ljava/lang/String; = "timestamp"

.field public static final EVENT_TYPE_ATTRIBUTE:Ljava/lang/String; = "eventType"

.field public static final EVENT_TYPE_ATTRIBUTE_MOBILE:Ljava/lang/String; = "Mobile"

.field public static final EVENT_TYPE_ATTRIBUTE_MOBILE_BREADCRUMB:Ljava/lang/String; = "MobileBreadcrumb"

.field public static final EVENT_TYPE_ATTRIBUTE_MOBILE_CRASH:Ljava/lang/String; = "MobileCrash"

.field public static final EVENT_TYPE_ATTRIBUTE_MOBILE_REQUEST:Ljava/lang/String; = "MobileRequest"

.field public static final EVENT_TYPE_ATTRIBUTE_MOBILE_REQUEST_ERROR:Ljava/lang/String; = "MobileRequestError"

.field public static final INTERACTION_DURATION_ATTRIBUTE:Ljava/lang/String; = "interactionDuration"

.field public static final LAST_INTERACTION_ATTRIBUTE:Ljava/lang/String; = "lastInteraction"

.field public static final MEM_USAGE_MB_ATTRIBUTE:Ljava/lang/String; = "memUsageMb"

.field public static final NETWORK_ERROR_CODE_ATTRIBUTE:Ljava/lang/String; = "networkErrorCode"

.field public static final NEW_RELIC_VERSION_ATTRIBUTE:Ljava/lang/String; = "newRelicVersion"

.field public static final OS_BUILD_ATTRIBUTE:Ljava/lang/String; = "osBuild"

.field public static final OS_MAJOR_VERSION_ATTRIBUTE:Ljava/lang/String; = "osMajorVersion"

.field public static final OS_NAME_ATTRIBUTE:Ljava/lang/String; = "osName"

.field public static final OS_VERSION_ATTRIBUTE:Ljava/lang/String; = "osVersion"

.field public static final REQUEST_DOMAIN_ATTRIBUTE:Ljava/lang/String; = "requestDomain"

.field public static final REQUEST_METHOD_ATTRIBUTE:Ljava/lang/String; = "requestMethod"

.field public static final REQUEST_PATH_ATTRIBUTE:Ljava/lang/String; = "requestPath"

.field public static final REQUEST_URL_ATTRIBUTE:Ljava/lang/String; = "requestUrl"

.field public static final RESPONSE_TIME_ATTRIBUTE:Ljava/lang/String; = "responseTime"

.field public static final RUNTIME_ATTRIBUTE:Ljava/lang/String; = "runTime"

.field public static final SESSION_DURATION_ATTRIBUTE:Ljava/lang/String; = "sessionDuration"

.field public static final SESSION_ID_ATTRIBUTE:Ljava/lang/String; = "sessionId"

.field public static final SESSION_TIME_SINCE_LOAD_ATTRIBUTE:Ljava/lang/String; = "timeSinceLoad"

.field public static final STATUS_CODE_ATTRIBUTE:Ljava/lang/String; = "statusCode"

.field public static final TYPE_ATTRIBUTE:Ljava/lang/String; = "type"

.field public static final USER_ID_ATTRIBUTE:Ljava/lang/String; = "userId"

.field public static final UUID_ATTRIBUTE:Ljava/lang/String; = "uuid"

.field protected static blackList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

.field private floatValue:F

.field private isPersistent:Z

.field private name:Ljava/lang/String;

.field private stringValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$1;

    invoke-direct {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$1;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->blackList:Ljava/util/Set;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->stringValue:Ljava/lang/String;

    .line 91
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->floatValue:F

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent:Z

    .line 93
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;->VOID:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)V
    .locals 1
    .param p1, "clone"    # Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iget-object v0, p1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->name:Ljava/lang/String;

    .line 131
    iget v0, p1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->floatValue:F

    iput v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->floatValue:F

    .line 132
    iget-object v0, p1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->stringValue:Ljava/lang/String;

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->stringValue:Ljava/lang/String;

    .line 133
    iget-boolean v0, p1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent:Z

    iput-boolean v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent:Z

    .line 134
    iget-object v0, p1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    .line 135
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;F)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "floatValue"    # F

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;FZ)V

    .line 109
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;FZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "floatValue"    # F
    .param p3, "isPersistent"    # Z

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->name:Ljava/lang/String;

    .line 114
    invoke-virtual {p0, p2}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->setFloatValue(F)V

    .line 115
    iput-boolean p3, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent:Z

    .line 116
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 97
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "stringValue"    # Ljava/lang/String;
    .param p3, "isPersistent"    # Z

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->name:Ljava/lang/String;

    .line 103
    invoke-virtual {p0, p2}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->setStringValue(Ljava/lang/String;)V

    .line 104
    iput-boolean p3, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent:Z

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "boolValue"    # Z

    .prologue
    .line 119
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;ZZ)V

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "boolValue"    # Z
    .param p3, "isPersistent"    # Z

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->name:Ljava/lang/String;

    .line 125
    invoke-virtual {p0, p2}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->setBooleanValue(Z)V

    .line 126
    iput-boolean p3, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent:Z

    .line 127
    return-void
.end method

.method public static isAttributeBlacklisted(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)Z
    .locals 2
    .param p0, "attribute"    # Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    .prologue
    .line 236
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->blackList:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static newFromJson(Lcom/newrelic/com/google/gson/JsonObject;)Ljava/util/Set;
    .locals 8
    .param p0, "attributesJson"    # Lcom/newrelic/com/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newrelic/com/google/gson/JsonObject;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 292
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 293
    .local v0, "attributeSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    invoke-virtual {p0}, Lcom/newrelic/com/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 295
    .local v2, "entry":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 296
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 297
    .local v1, "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 298
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/newrelic/com/google/gson/JsonElement;

    invoke-virtual {v5}, Lcom/newrelic/com/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 299
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/newrelic/com/google/gson/JsonElement;

    invoke-virtual {v5}, Lcom/newrelic/com/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/newrelic/com/google/gson/JsonPrimitive;

    move-result-object v4

    .line 300
    .local v4, "value":Lcom/newrelic/com/google/gson/JsonPrimitive;
    invoke-virtual {v4}, Lcom/newrelic/com/google/gson/JsonPrimitive;->isString()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 301
    new-instance v5, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    invoke-virtual {v4}, Lcom/newrelic/com/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v3, v6, v7}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 302
    :cond_1
    invoke-virtual {v4}, Lcom/newrelic/com/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 303
    new-instance v5, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    invoke-virtual {v4}, Lcom/newrelic/com/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v6

    invoke-direct {v5, v3, v6, v7}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;ZZ)V

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 304
    :cond_2
    invoke-virtual {v4}, Lcom/newrelic/com/google/gson/JsonPrimitive;->isNumber()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 305
    new-instance v5, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    invoke-virtual {v4}, Lcom/newrelic/com/google/gson/JsonPrimitive;->getAsFloat()F

    move-result v6

    invoke-direct {v5, v3, v6, v7}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;FZ)V

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 308
    .end local v4    # "value":Lcom/newrelic/com/google/gson/JsonPrimitive;
    :cond_3
    new-instance v6, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/newrelic/com/google/gson/JsonElement;

    invoke-virtual {v5}, Lcom/newrelic/com/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v3, v5, v7}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 312
    .end local v1    # "elem":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/newrelic/com/google/gson/JsonElement;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_4
    return-object v0
.end method


# virtual methods
.method public asJsonElement()Lcom/newrelic/com/google/gson/JsonElement;
    .locals 3

    .prologue
    .line 270
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$2;->$SwitchMap$com$newrelic$agent$android$analytics$AnalyticAttribute$AttributeDataType:[I

    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 284
    const/4 v0, 0x0

    .line 288
    .local v0, "jsonPrimitive":Lcom/newrelic/com/google/gson/JsonPrimitive;
    :goto_0
    return-object v0

    .line 272
    .end local v0    # "jsonPrimitive":Lcom/newrelic/com/google/gson/JsonPrimitive;
    :pswitch_0
    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/newrelic/agent/android/util/SafeJsonPrimitive;->factory(Ljava/lang/String;)Lcom/newrelic/com/google/gson/JsonPrimitive;

    move-result-object v0

    .line 273
    .restart local v0    # "jsonPrimitive":Lcom/newrelic/com/google/gson/JsonPrimitive;
    goto :goto_0

    .line 276
    .end local v0    # "jsonPrimitive":Lcom/newrelic/com/google/gson/JsonPrimitive;
    :pswitch_1
    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getFloatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lcom/newrelic/agent/android/util/SafeJsonPrimitive;->factory(Ljava/lang/Number;)Lcom/newrelic/com/google/gson/JsonPrimitive;

    move-result-object v0

    .line 277
    .restart local v0    # "jsonPrimitive":Lcom/newrelic/com/google/gson/JsonPrimitive;
    goto :goto_0

    .line 280
    .end local v0    # "jsonPrimitive":Lcom/newrelic/com/google/gson/JsonPrimitive;
    :pswitch_2
    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getBooleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/newrelic/agent/android/util/SafeJsonPrimitive;->factory(Ljava/lang/Boolean;)Lcom/newrelic/com/google/gson/JsonPrimitive;

    move-result-object v0

    .line 281
    .restart local v0    # "jsonPrimitive":Lcom/newrelic/com/google/gson/JsonPrimitive;
    goto :goto_0

    .line 270
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 194
    if-ne p0, p1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return v1

    .line 195
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 197
    check-cast v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    .line 199
    .local v0, "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    iget-object v3, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getAttributeDataType()Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    return-object v0
.end method

.method public getBooleanValue()Z
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;->BOOLEAN:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->stringValue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFloatValue()F
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;->FLOAT:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->floatValue:F

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;->STRING:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->stringValue:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isBooleanAttribute()Z
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;->BOOLEAN:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFloatAttribute()Z
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;->FLOAT:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isAttributeBlacklisted(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStringAttribute()Z
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;->STRING:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBooleanValue(Z)V
    .locals 1
    .param p1, "boolValue"    # Z

    .prologue
    .line 178
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->stringValue:Ljava/lang/String;

    .line 179
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->floatValue:F

    .line 180
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;->BOOLEAN:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    .line 181
    return-void
.end method

.method public setFloatValue(F)V
    .locals 1
    .param p1, "floatValue"    # F

    .prologue
    .line 168
    iput p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->floatValue:F

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->stringValue:Ljava/lang/String;

    .line 170
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;->FLOAT:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    .line 171
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .param p1, "isPersistent"    # Z

    .prologue
    .line 189
    iput-boolean p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent:Z

    .line 190
    return-void
.end method

.method public setStringValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->stringValue:Ljava/lang/String;

    .line 159
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->floatValue:F

    .line 160
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;->STRING:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    .line 161
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AnalyticAttribute{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$2;->$SwitchMap$com$newrelic$agent$android$analytics$AnalyticAttribute$AttributeDataType:[I

    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 229
    :goto_0
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",isPersistent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 219
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",stringValue=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->stringValue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 222
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",floatValue=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->floatValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 225
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ",booleanValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->stringValue:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public valueAsString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 246
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$2;->$SwitchMap$com$newrelic$agent$android$analytics$AnalyticAttribute$AttributeDataType:[I

    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->attributeDataType:Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    invoke-virtual {v2}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 260
    const/4 v0, 0x0

    .line 264
    .local v0, "value":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 248
    .end local v0    # "value":Ljava/lang/String;
    :pswitch_0
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->stringValue:Ljava/lang/String;

    .line 249
    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_0

    .line 252
    .end local v0    # "value":Ljava/lang/String;
    :pswitch_1
    iget v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->floatValue:F

    invoke-static {v1}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 253
    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_0

    .line 256
    .end local v0    # "value":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getBooleanValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v0

    .line 257
    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_0

    .line 246
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
