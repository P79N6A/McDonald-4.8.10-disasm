.class public final enum Lcom/newrelic/agent/android/FeatureFlag;
.super Ljava/lang/Enum;
.source "FeatureFlag.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/newrelic/agent/android/FeatureFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/newrelic/agent/android/FeatureFlag;

.field public static final enum AnalyticsEvents:Lcom/newrelic/agent/android/FeatureFlag;

.field public static final enum CrashReporting:Lcom/newrelic/agent/android/FeatureFlag;

.field public static final enum DefaultInteractions:Lcom/newrelic/agent/android/FeatureFlag;

.field public static final enum HandledExceptions:Lcom/newrelic/agent/android/FeatureFlag;

.field public static final enum HttpResponseBodyCapture:Lcom/newrelic/agent/android/FeatureFlag;

.field public static final enum InteractionTracing:Lcom/newrelic/agent/android/FeatureFlag;

.field public static final enum NetworkErrorRequests:Lcom/newrelic/agent/android/FeatureFlag;

.field public static final enum NetworkRequests:Lcom/newrelic/agent/android/FeatureFlag;

.field protected static final enabledFeatures:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/newrelic/agent/android/FeatureFlag;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/newrelic/agent/android/FeatureFlag;

    const-string v1, "HttpResponseBodyCapture"

    invoke-direct {v0, v1, v3}, Lcom/newrelic/agent/android/FeatureFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newrelic/agent/android/FeatureFlag;->HttpResponseBodyCapture:Lcom/newrelic/agent/android/FeatureFlag;

    .line 8
    new-instance v0, Lcom/newrelic/agent/android/FeatureFlag;

    const-string v1, "CrashReporting"

    invoke-direct {v0, v1, v4}, Lcom/newrelic/agent/android/FeatureFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newrelic/agent/android/FeatureFlag;->CrashReporting:Lcom/newrelic/agent/android/FeatureFlag;

    .line 9
    new-instance v0, Lcom/newrelic/agent/android/FeatureFlag;

    const-string v1, "AnalyticsEvents"

    invoke-direct {v0, v1, v5}, Lcom/newrelic/agent/android/FeatureFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newrelic/agent/android/FeatureFlag;->AnalyticsEvents:Lcom/newrelic/agent/android/FeatureFlag;

    .line 10
    new-instance v0, Lcom/newrelic/agent/android/FeatureFlag;

    const-string v1, "InteractionTracing"

    invoke-direct {v0, v1, v6}, Lcom/newrelic/agent/android/FeatureFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newrelic/agent/android/FeatureFlag;->InteractionTracing:Lcom/newrelic/agent/android/FeatureFlag;

    .line 11
    new-instance v0, Lcom/newrelic/agent/android/FeatureFlag;

    const-string v1, "DefaultInteractions"

    invoke-direct {v0, v1, v7}, Lcom/newrelic/agent/android/FeatureFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newrelic/agent/android/FeatureFlag;->DefaultInteractions:Lcom/newrelic/agent/android/FeatureFlag;

    .line 12
    new-instance v0, Lcom/newrelic/agent/android/FeatureFlag;

    const-string v1, "NetworkRequests"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/newrelic/agent/android/FeatureFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newrelic/agent/android/FeatureFlag;->NetworkRequests:Lcom/newrelic/agent/android/FeatureFlag;

    .line 13
    new-instance v0, Lcom/newrelic/agent/android/FeatureFlag;

    const-string v1, "NetworkErrorRequests"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/newrelic/agent/android/FeatureFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newrelic/agent/android/FeatureFlag;->NetworkErrorRequests:Lcom/newrelic/agent/android/FeatureFlag;

    .line 14
    new-instance v0, Lcom/newrelic/agent/android/FeatureFlag;

    const-string v1, "HandledExceptions"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/newrelic/agent/android/FeatureFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newrelic/agent/android/FeatureFlag;->HandledExceptions:Lcom/newrelic/agent/android/FeatureFlag;

    .line 6
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/newrelic/agent/android/FeatureFlag;

    sget-object v1, Lcom/newrelic/agent/android/FeatureFlag;->HttpResponseBodyCapture:Lcom/newrelic/agent/android/FeatureFlag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/newrelic/agent/android/FeatureFlag;->CrashReporting:Lcom/newrelic/agent/android/FeatureFlag;

    aput-object v1, v0, v4

    sget-object v1, Lcom/newrelic/agent/android/FeatureFlag;->AnalyticsEvents:Lcom/newrelic/agent/android/FeatureFlag;

    aput-object v1, v0, v5

    sget-object v1, Lcom/newrelic/agent/android/FeatureFlag;->InteractionTracing:Lcom/newrelic/agent/android/FeatureFlag;

    aput-object v1, v0, v6

    sget-object v1, Lcom/newrelic/agent/android/FeatureFlag;->DefaultInteractions:Lcom/newrelic/agent/android/FeatureFlag;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/newrelic/agent/android/FeatureFlag;->NetworkRequests:Lcom/newrelic/agent/android/FeatureFlag;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/newrelic/agent/android/FeatureFlag;->NetworkErrorRequests:Lcom/newrelic/agent/android/FeatureFlag;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/newrelic/agent/android/FeatureFlag;->HandledExceptions:Lcom/newrelic/agent/android/FeatureFlag;

    aput-object v2, v0, v1

    sput-object v0, Lcom/newrelic/agent/android/FeatureFlag;->$VALUES:[Lcom/newrelic/agent/android/FeatureFlag;

    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/FeatureFlag;->enabledFeatures:Ljava/util/Set;

    .line 19
    invoke-static {}, Lcom/newrelic/agent/android/FeatureFlag;->resetFeatures()V

    .line 20
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static disableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V
    .locals 1
    .param p0, "featureFlag"    # Lcom/newrelic/agent/android/FeatureFlag;

    .prologue
    .line 27
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->enabledFeatures:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 28
    return-void
.end method

.method public static enableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V
    .locals 1
    .param p0, "featureFlag"    # Lcom/newrelic/agent/android/FeatureFlag;

    .prologue
    .line 23
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->enabledFeatures:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    return-void
.end method

.method public static featureEnabled(Lcom/newrelic/agent/android/FeatureFlag;)Z
    .locals 1
    .param p0, "featureFlag"    # Lcom/newrelic/agent/android/FeatureFlag;

    .prologue
    .line 31
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->enabledFeatures:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static resetFeatures()V
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->enabledFeatures:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 38
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->HttpResponseBodyCapture:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v0}, Lcom/newrelic/agent/android/FeatureFlag;->enableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    .line 39
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->CrashReporting:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v0}, Lcom/newrelic/agent/android/FeatureFlag;->enableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    .line 40
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->AnalyticsEvents:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v0}, Lcom/newrelic/agent/android/FeatureFlag;->enableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    .line 41
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->InteractionTracing:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v0}, Lcom/newrelic/agent/android/FeatureFlag;->enableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    .line 42
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->DefaultInteractions:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v0}, Lcom/newrelic/agent/android/FeatureFlag;->enableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    .line 43
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->NetworkRequests:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v0}, Lcom/newrelic/agent/android/FeatureFlag;->enableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    .line 44
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->NetworkErrorRequests:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v0}, Lcom/newrelic/agent/android/FeatureFlag;->enableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    .line 45
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->HandledExceptions:Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v0}, Lcom/newrelic/agent/android/FeatureFlag;->enableFeature(Lcom/newrelic/agent/android/FeatureFlag;)V

    .line 46
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/newrelic/agent/android/FeatureFlag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/newrelic/agent/android/FeatureFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/FeatureFlag;

    return-object v0
.end method

.method public static values()[Lcom/newrelic/agent/android/FeatureFlag;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/newrelic/agent/android/FeatureFlag;->$VALUES:[Lcom/newrelic/agent/android/FeatureFlag;

    invoke-virtual {v0}, [Lcom/newrelic/agent/android/FeatureFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/newrelic/agent/android/FeatureFlag;

    return-object v0
.end method
