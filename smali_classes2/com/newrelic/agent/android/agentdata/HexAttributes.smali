.class public Lcom/newrelic/agent/android/agentdata/HexAttributes;
.super Ljava/lang/Object;
.source "HexAttributes.java"


# static fields
.field public static final HEX_ATTR_APP_BUILD_ID:Ljava/lang/String; = "appBuild"

.field public static final HEX_ATTR_APP_UUID_HI:Ljava/lang/String; = "appUuidHigh"

.field public static final HEX_ATTR_APP_UUID_LO:Ljava/lang/String; = "appUuidLow"

.field public static final HEX_ATTR_APP_VERSION:Ljava/lang/String; = "appVersion"

.field public static final HEX_ATTR_CAUSE:Ljava/lang/String; = "cause"

.field public static final HEX_ATTR_CLASS_NAME:Ljava/lang/String; = "className"

.field public static final HEX_ATTR_FILENAME:Ljava/lang/String; = "fileName"

.field public static final HEX_ATTR_LINE_NUMBER:Ljava/lang/String; = "lineNumber"

.field public static final HEX_ATTR_MESSAGE:Ljava/lang/String; = "message"

.field public static final HEX_ATTR_METHOD_NAME:Ljava/lang/String; = "methodName"

.field public static final HEX_ATTR_NAME:Ljava/lang/String; = "name"

.field public static final HEX_ATTR_SESSION_ID:Ljava/lang/String; = "sessionId"

.field public static final HEX_ATTR_THREAD:Ljava/lang/String; = "thread"

.field public static final HEX_ATTR_THREAD_CRASHED:Ljava/lang/String; = "crashed"

.field public static final HEX_ATTR_THREAD_ID:Ljava/lang/String; = "threadId"

.field public static final HEX_ATTR_THREAD_NUMBER:Ljava/lang/String; = "threadNumber"

.field public static final HEX_ATTR_THREAD_PRI:Ljava/lang/String; = "priority"

.field public static final HEX_ATTR_THREAD_STATE:Ljava/lang/String; = "state"

.field public static final HEX_ATTR_TIMESTAMP_MS:Ljava/lang/String; = "timestampMs"

.field public static final HEX_REQUIRED_ATTRIBUTES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final HEX_SESSION_ATTR_WHITELIST:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 34
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x10

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "osName"

    aput-object v2, v1, v4

    const-string v2, "osVersion"

    aput-object v2, v1, v5

    const-string v2, "osBuild"

    aput-object v2, v1, v6

    const-string v2, "osMajorVersion"

    aput-object v2, v1, v7

    const-string v2, "deviceManufacturer"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "deviceModel"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "uuid"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "carrier"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "newRelicVersion"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "memUsageMb"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "sessionId"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "platform"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "platformVersion"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "runTime"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "architecture"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "appBuild"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/newrelic/agent/android/agentdata/HexAttributes;->HEX_SESSION_ATTR_WHITELIST:Ljava/util/Set;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "appBuild"

    aput-object v2, v1, v4

    const-string v2, "appUuidHigh"

    aput-object v2, v1, v5

    const-string v2, "appUuidLow"

    aput-object v2, v1, v6

    const-string v2, "sessionId"

    aput-object v2, v1, v7

    const-string v2, "message"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "cause"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "name"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "timestampMs"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "timeSinceLoad"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/newrelic/agent/android/agentdata/HexAttributes;->HEX_REQUIRED_ATTRIBUTES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
