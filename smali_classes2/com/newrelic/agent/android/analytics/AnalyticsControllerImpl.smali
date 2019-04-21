.class public Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;
.super Ljava/lang/Object;
.source "AnalyticsControllerImpl.java"

# interfaces
.implements Lcom/newrelic/agent/android/analytics/AnalyticsController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl$InteractionCompleteListener;
    }
.end annotation


# static fields
.field protected static final MAX_ATTRIBUTES:I = 0x40

.field private static final NEW_RELIC_PREFIX:Ljava/lang/String; = "newRelic"

.field private static final NR_PREFIX:Ljava/lang/String; = "nr."

.field private static final initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final instance:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

.field private static final log:Lcom/newrelic/agent/android/logging/AgentLog;

.field private static final reservedNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private agentImpl:Lcom/newrelic/agent/android/AgentImpl;

.field private attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

.field private final eventManager:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

.field private final isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final listener:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl$InteractionCompleteListener;

.field private final systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private final userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticAttribute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Lcom/newrelic/agent/android/logging/AgentLogManager;->getAgentLog()Lcom/newrelic/agent/android/logging/AgentLog;

    move-result-object v0

    sput-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    .line 32
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    invoke-direct {v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->instance:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 143
    new-instance v0, Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    invoke-direct {v0}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    .line 144
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 145
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 146
    new-instance v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl$InteractionCompleteListener;

    invoke-direct {v0, p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl$InteractionCompleteListener;-><init>(Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;)V

    iput-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->listener:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl$InteractionCompleteListener;

    .line 147
    return-void
.end method

.method static synthetic access$000()Lcom/newrelic/agent/android/logging/AgentLog;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    return-object v0
.end method

.method private addNewUserAttribute(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)Z
    .locals 5
    .param p1, "attribute"    # Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    .prologue
    .line 969
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    const/16 v2, 0x40

    if-ge v1, v2, :cond_0

    .line 971
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 972
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 973
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    invoke-interface {v1, p1}, Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;->store(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 974
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to store attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to attribute store."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 975
    const/4 v1, 0x0

    .line 988
    :goto_0
    return v1

    .line 981
    :cond_0
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Attribute limit exceeded: at most 64 are allowed."

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 982
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Currently defined attributes:"

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 983
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    .line 984
    .local v0, "attr":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    sget-object v2, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->valueAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 988
    .end local v0    # "attr":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private clear()V
    .locals 2

    .prologue
    .line 683
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "AnalyticsControllerImpl.clear - clearing out attributes and events"

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 685
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 686
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    .line 687
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->empty()V

    .line 688
    return-void
.end method

.method private createAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 752
    :try_start_0
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 753
    new-instance v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p1, v3}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    .end local p2    # "value":Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 754
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v1, p2, Ljava/lang/Float;

    if-eqz v1, :cond_1

    .line 755
    new-instance v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    check-cast p2, Ljava/lang/Float;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {v1, p1, v3}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;F)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 774
    :catch_0
    move-exception v0

    .line 775
    .local v0, "e":Ljava/lang/ClassCastException;
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v3, "Error casting attribute [%s] to String or Float: "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v1, v2

    .line 778
    goto :goto_0

    .line 756
    .end local v0    # "e":Ljava/lang/ClassCastException;
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_1
    :try_start_1
    instance-of v1, p2, Ljava/lang/Double;

    if-eqz v1, :cond_2

    .line 757
    new-instance v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    check-cast p2, Ljava/lang/Double;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {v1, p1, v3}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;F)V

    goto :goto_0

    .line 758
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v1, p2, Ljava/lang/Integer;

    if-eqz v1, :cond_3

    .line 759
    new-instance v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {v1, p1, v3}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;F)V

    goto :goto_0

    .line 760
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v1, p2, Ljava/lang/Short;

    if-eqz v1, :cond_4

    .line 761
    new-instance v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    check-cast p2, Ljava/lang/Short;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {v1, p1, v3}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;F)V

    goto :goto_0

    .line 762
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v1, p2, Ljava/lang/Long;

    if-eqz v1, :cond_5

    .line 763
    new-instance v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    check-cast p2, Ljava/lang/Long;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-float v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {v1, p1, v3}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;F)V

    goto/16 :goto_0

    .line 764
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_5
    instance-of v1, p2, Ljava/math/BigDecimal;

    if-eqz v1, :cond_6

    .line 765
    new-instance v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    check-cast p2, Ljava/math/BigDecimal;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {v1, p1, v3}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;F)V

    goto/16 :goto_0

    .line 766
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_6
    instance-of v1, p2, Ljava/math/BigInteger;

    if-eqz v1, :cond_7

    .line 767
    new-instance v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    check-cast p2, Ljava/math/BigInteger;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/math/BigInteger;->floatValue()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {v1, p1, v3}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;F)V

    goto/16 :goto_0

    .line 768
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_7
    instance-of v1, p2, Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 769
    new-instance v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    check-cast p2, Ljava/lang/Boolean;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {v1, p1, v3}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 771
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_8
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported event attribute type for key ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v2

    .line 772
    goto/16 :goto_0
.end method

.method public static getInstance()Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;
    .locals 1

    .prologue
    .line 633
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->instance:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    return-object v0
.end method

.method private getSystemAttribute(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 657
    const/4 v0, 0x0

    .line 659
    .local v0, "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    .line 660
    .local v1, "nextAttribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    invoke-virtual {v1}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 661
    move-object v0, v1

    .line 666
    .end local v1    # "nextAttribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    :cond_1
    return-object v0
.end method

.method private getUserAttribute(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 670
    const/4 v0, 0x0

    .line 672
    .local v0, "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    .line 673
    .local v1, "nextAttribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    invoke-virtual {v1}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 674
    move-object v0, v1

    .line 679
    .end local v1    # "nextAttribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    :cond_1
    return-object v0
.end method

.method public static initialize(Lcom/newrelic/agent/android/AgentConfiguration;Lcom/newrelic/agent/android/AgentImpl;)V
    .locals 3
    .param p0, "agentConfiguration"    # Lcom/newrelic/agent/android/AgentConfiguration;
    .param p1, "agentImpl"    # Lcom/newrelic/agent/android/AgentImpl;

    .prologue
    .line 90
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "AnalyticsControllerImpl.initialize invoked."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 93
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "AnalyticsControllerImpl has already been initialized.  Bypassing.."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 133
    :goto_0
    return-void

    .line 98
    :cond_0
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->instance:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    invoke-direct {v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->clear()V

    .line 100
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "eventType"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "type"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "timestamp"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "category"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "accountId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "appId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "appName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "uuid"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "sessionId"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "osName"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "osVersion"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "osMajorVersion"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "deviceManufacturer"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "deviceModel"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "memUsageMb"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "carrier"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "newRelicVersion"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "interactionDuration"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "install"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "upgradeFrom"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "platform"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "platformVersion"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "lastInteraction"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "osBuild"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "runTime"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "architecture"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    const-string v1, "appBuild"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->instance:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    invoke-virtual {v0, p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reinitialize(Lcom/newrelic/agent/android/AgentConfiguration;Lcom/newrelic/agent/android/AgentImpl;)V

    .line 130
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->instance:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    iget-object v0, v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->listener:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl$InteractionCompleteListener;

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->addTraceListener(Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;)V

    .line 132
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "Analytics Controller started."

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->info(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private isAttributeNameValid(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 694
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isNameValid(Ljava/lang/String;)Z

    move-result v0

    .line 696
    .local v0, "valid":Z
    if-eqz v0, :cond_0

    .line 697
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isNameReserved(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 698
    :goto_0
    if-nez v0, :cond_0

    .line 699
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attribute name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is reserved for internal use and will be ignored."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 704
    :cond_0
    return v0

    .line 697
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isHttpError(Lcom/newrelic/agent/android/harvest/HttpTransaction;)Z
    .locals 4
    .param p1, "txn"    # Lcom/newrelic/agent/android/harvest/HttpTransaction;

    .prologue
    .line 942
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->getStatusCode()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x190

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInitializedAndEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 950
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 951
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Analytics controller is not initialized!"

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    .line 960
    :goto_0
    return v0

    .line 955
    :cond_0
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    .line 956
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v2, "Analytics controller is not enabled!"

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 960
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isNameReserved(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 731
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->reservedNames:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 732
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is in the reserved names list."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 746
    :goto_0
    return v0

    .line 736
    :cond_0
    const-string v1, "newRelic"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 737
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " starts with reserved prefix "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "newRelic"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    goto :goto_0

    .line 741
    :cond_1
    const-string v1, "nr."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 742
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " starts with reserved prefix "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "nr."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    goto :goto_0

    .line 746
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNameValid(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x100

    .line 711
    if-eqz p1, :cond_1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v4, :cond_1

    const/4 v0, 0x1

    .line 713
    .local v0, "valid":Z
    :goto_0
    if-nez v0, :cond_0

    .line 714
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attribute name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null, empty, or exceeds the maximum length of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " characters."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 717
    :cond_0
    return v0

    .line 711
    .end local v0    # "valid":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNetworkFailure(Lcom/newrelic/agent/android/harvest/HttpTransaction;)Z
    .locals 1
    .param p1, "txn"    # Lcom/newrelic/agent/android/harvest/HttpTransaction;

    .prologue
    .line 938
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isStringValueValid(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x1000

    .line 721
    if-eqz p2, :cond_1

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    if-ge v1, v4, :cond_1

    const/4 v0, 0x1

    .line 723
    .local v0, "valid":Z
    :goto_0
    if-nez v0, :cond_0

    .line 724
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attribute value for name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is null, empty, or exceeds the maximum length of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 727
    :cond_0
    return v0

    .line 721
    .end local v0    # "valid":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSuccessfulRequest(Lcom/newrelic/agent/android/harvest/HttpTransaction;)Z
    .locals 2
    .param p1, "txn"    # Lcom/newrelic/agent/android/harvest/HttpTransaction;

    .prologue
    .line 946
    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->getStatusCode()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/newrelic/agent/android/harvest/HttpTransaction;->getStatusCode()I

    move-result v0

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shutdown()V
    .locals 3

    .prologue
    .line 136
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->instance:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    iget-object v0, v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->listener:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl$InteractionCompleteListener;

    invoke-static {v0}, Lcom/newrelic/agent/android/tracing/TraceMachine;->removeTraceListener(Lcom/newrelic/agent/android/tracing/TraceLifecycleAware;)V

    .line 137
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->instance:Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getEventManager()Lcom/newrelic/agent/android/analytics/EventManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/newrelic/agent/android/analytics/EventManager;->shutdown()V

    .line 138
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 139
    return-void
.end method


# virtual methods
.method public addAttributeUnchecked(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;Z)Z
    .locals 6
    .param p1, "attribute"    # Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    .param p2, "persistent"    # Z

    .prologue
    const/4 v3, 0x0

    .line 412
    sget-object v4, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AnalyticsControllerImpl.setAttributeUnchecked - "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ": "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getStringValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz p2, :cond_0

    const-string v2, " (persistent)"

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 414
    sget-object v2, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    .line 415
    sget-object v2, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Analytics controller is not initialized!"

    invoke-interface {v2, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    move v2, v3

    .line 473
    :goto_1
    return v2

    .line 412
    :cond_0
    const-string v2, " (transient)"

    goto :goto_0

    .line 419
    :cond_1
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_2

    .line 420
    sget-object v2, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Analytics controller is not enabled!"

    invoke-interface {v2, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    move v2, v3

    .line 421
    goto :goto_1

    .line 424
    :cond_2
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    .line 426
    .local v1, "name":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isNameValid(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    .line 427
    goto :goto_1

    .line 430
    :cond_3
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isStringAttribute()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 431
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isStringValueValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    move v2, v3

    .line 432
    goto :goto_1

    .line 436
    :cond_4
    invoke-direct {p0, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getSystemAttribute(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    move-result-object v0

    .line 438
    .local v0, "cachedAttribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    if-nez v0, :cond_5

    .line 441
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 442
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 443
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    invoke-interface {v2, p1}, Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;->store(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 444
    sget-object v2, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to store attribute "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to attribute store."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    move v2, v3

    .line 445
    goto :goto_1

    .line 449
    :cond_5
    sget-object v2, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl$1;->$SwitchMap$com$newrelic$agent$android$analytics$AnalyticAttribute$AttributeDataType:[I

    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getAttributeDataType()Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute$AttributeDataType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 461
    :goto_2
    invoke-virtual {v0, p2}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->setPersistent(Z)V

    .line 463
    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 464
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    invoke-interface {v2, v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;->store(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 465
    sget-object v2, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to store attribute "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to attribute store."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    move v2, v3

    .line 466
    goto/16 :goto_1

    .line 451
    :pswitch_0
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->setStringValue(Ljava/lang/String;)V

    goto :goto_2

    .line 454
    :pswitch_1
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getFloatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->setFloatValue(F)V

    goto :goto_2

    .line 457
    :pswitch_2
    invoke-virtual {p1}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getBooleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->setBooleanValue(Z)V

    goto :goto_2

    .line 469
    :cond_6
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    invoke-interface {v2, v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;->delete(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)V

    .line 473
    :cond_7
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 449
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public addEvent(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z
    .locals 7
    .param p1, "event"    # Lcom/newrelic/agent/android/analytics/AnalyticsEvent;

    .prologue
    .line 585
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 586
    const/4 v1, 0x0

    .line 600
    :goto_0
    return v1

    .line 589
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 592
    .local v0, "sessionAttributes":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->agentImpl:Lcom/newrelic/agent/android/AgentImpl;

    invoke-interface {v1}, Lcom/newrelic/agent/android/AgentImpl;->getSessionDurationMillis()J

    move-result-wide v2

    .line 593
    .local v2, "sessionDuration":J
    const-wide/16 v4, 0x0

    cmp-long v1, v4, v2

    if-nez v1, :cond_1

    .line 594
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "Harvest instance is not running! Session duration will be invalid"

    invoke-interface {v1, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    .line 600
    :goto_1
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    invoke-virtual {v1, p1}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->addEvent(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z

    move-result v1

    goto :goto_0

    .line 596
    :cond_1
    new-instance v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v4, "timeSinceLoad"

    long-to-float v5, v2

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    invoke-direct {v1, v4, v5}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 597
    invoke-virtual {p1, v0}, Lcom/newrelic/agent/android/analytics/AnalyticsEvent;->addAttributes(Ljava/util/Set;)V

    goto :goto_1
.end method

.method public addEvent(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Set;)Z
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "eventCategory"    # Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;
    .param p3, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticAttribute;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 564
    .local p4, "eventAttributes":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    sget-object v3, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AnalyticsControllerImpl.addEvent - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": category="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", eventType: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", eventAttributes:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 566
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 567
    const/4 v3, 0x0

    .line 580
    :goto_0
    return v3

    .line 570
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 572
    .local v2, "validatedAttributes":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    .line 573
    .local v0, "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isAttributeNameValid(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 574
    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 578
    .end local v0    # "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    :cond_2
    invoke-static {p1, p2, p3, v2}, Lcom/newrelic/agent/android/analytics/AnalyticsEventFactory;->createEvent(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Set;)Lcom/newrelic/agent/android/analytics/AnalyticsEvent;

    move-result-object v1

    .line 580
    .local v1, "event":Lcom/newrelic/agent/android/analytics/AnalyticsEvent;
    invoke-virtual {p0, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->addEvent(Lcom/newrelic/agent/android/analytics/AnalyticsEvent;)Z

    move-result v3

    goto :goto_0
.end method

.method public addEvent(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticAttribute;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 559
    .local p2, "eventAttributes":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->Custom:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    const-string v1, "Mobile"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->addEvent(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v0

    return v0
.end method

.method createHttpErrorEvent(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V
    .locals 1
    .param p1, "txn"    # Lcom/newrelic/agent/android/harvest/HttpTransaction;

    .prologue
    .line 908
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 909
    invoke-static {p1}, Lcom/newrelic/agent/android/analytics/NetworkEventController;->createHttpErrorEvent(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V

    .line 911
    :cond_0
    return-void
.end method

.method createNetworkFailureEvent(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V
    .locals 1
    .param p1, "txn"    # Lcom/newrelic/agent/android/harvest/HttpTransaction;

    .prologue
    .line 914
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 915
    invoke-static {p1}, Lcom/newrelic/agent/android/analytics/NetworkEventController;->createNetworkFailureEvent(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V

    .line 917
    :cond_0
    return-void
.end method

.method createNetworkRequestEvent(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V
    .locals 1
    .param p1, "txn"    # Lcom/newrelic/agent/android/harvest/HttpTransaction;

    .prologue
    .line 920
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    invoke-static {p1}, Lcom/newrelic/agent/android/analytics/NetworkEventController;->createNetworkRequestEvent(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V

    .line 923
    :cond_0
    return-void
.end method

.method public createNetworkRequestEvents(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V
    .locals 1
    .param p1, "txn"    # Lcom/newrelic/agent/android/harvest/HttpTransaction;

    .prologue
    .line 926
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 927
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isHttpError(Lcom/newrelic/agent/android/harvest/HttpTransaction;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 928
    invoke-static {p1}, Lcom/newrelic/agent/android/analytics/NetworkEventController;->createHttpErrorEvent(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V

    .line 935
    :cond_0
    :goto_0
    return-void

    .line 929
    :cond_1
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isNetworkFailure(Lcom/newrelic/agent/android/harvest/HttpTransaction;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 930
    invoke-static {p1}, Lcom/newrelic/agent/android/analytics/NetworkEventController;->createNetworkFailureEvent(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V

    goto :goto_0

    .line 931
    :cond_2
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isSuccessfulRequest(Lcom/newrelic/agent/android/harvest/HttpTransaction;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    invoke-static {p1}, Lcom/newrelic/agent/android/analytics/NetworkEventController;->createNetworkRequestEvent(Lcom/newrelic/agent/android/harvest/HttpTransaction;)V

    goto :goto_0
.end method

.method public getAttribute(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 215
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnalyticsControllerImpl.getAttribute - retrieving "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 217
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getUserAttribute(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    move-result-object v0

    .line 218
    .local v0, "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    if-nez v0, :cond_0

    .line 219
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getSystemAttribute(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    move-result-object v0

    .line 221
    :cond_0
    return-object v0
.end method

.method public getEventManager()Lcom/newrelic/agent/android/analytics/EventManager;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    return-object v0
.end method

.method public getMaxEventBufferTime()I
    .locals 1

    .prologue
    .line 620
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->getMaxEventBufferTime()I

    move-result v0

    return v0
.end method

.method public getMaxEventPoolSize()I
    .locals 1

    .prologue
    .line 605
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->getMaxEventPoolSize()I

    move-result v0

    return v0
.end method

.method public getSessionAttributeCount()I
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getSessionAttributes()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Ljava/util/HashSet;

    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getSessionAttributeCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 261
    .local v0, "attrs":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getSystemAttributes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 262
    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getUserAttributes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 264
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public getSystemAttributeCount()I
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    return v0
.end method

.method public getSystemAttributes()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 230
    .local v1, "attrs":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    .line 232
    .local v0, "attr":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    new-instance v3, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    invoke-direct {v3, v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 235
    .end local v0    # "attr":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method public getUserAttributeCount()I
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v0

    const/16 v1, 0x40

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getUserAttributes()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/newrelic/agent/android/analytics/AnalyticAttribute;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 243
    .local v1, "attrs":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    iget-object v2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    .line 245
    .local v0, "attr":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    new-instance v3, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    invoke-direct {v3, v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)V

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v3

    const/16 v4, 0x40

    if-ne v3, v4, :cond_0

    .line 253
    .end local v0    # "attr":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method public incrementAttribute(Ljava/lang/String;F)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 478
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnalyticsControllerImpl.incrementAttribute - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 481
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->incrementAttribute(Ljava/lang/String;FZ)Z

    move-result v0

    return v0
.end method

.method public incrementAttribute(Ljava/lang/String;FZ)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "persistent"    # Z

    .prologue
    const/4 v2, 0x0

    .line 486
    sget-object v3, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AnalyticsControllerImpl.incrementAttribute - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_0

    const-string v1, " (persistent)"

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 488
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 521
    :goto_1
    return v1

    .line 486
    :cond_0
    const-string v1, " (transient)"

    goto :goto_0

    .line 492
    :cond_1
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isAttributeNameValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    .line 493
    goto :goto_1

    .line 496
    :cond_2
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getAttribute(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    move-result-object v0

    .line 498
    .local v0, "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isFloatAttribute()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 500
    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getFloatValue()F

    move-result v1

    add-float/2addr v1, p2

    invoke-virtual {v0, v1}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->setFloatValue(F)V

    .line 501
    invoke-virtual {v0, p3}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->setPersistent(Z)V

    .line 503
    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 504
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    invoke-interface {v1, v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;->store(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 505
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to store attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to attribute store."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    move v1, v2

    .line 506
    goto :goto_1

    .line 511
    :cond_3
    if-nez v0, :cond_4

    .line 512
    new-instance v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    invoke-direct {v1, p1, p2, p3}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;FZ)V

    invoke-direct {p0, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->addNewUserAttribute(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)Z

    move-result v1

    goto :goto_1

    .line 516
    :cond_4
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot increment attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": the attribute is already defined as a non-float value."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->warning(Ljava/lang/String;)V

    move v1, v2

    .line 517
    goto :goto_1

    .line 521
    :cond_5
    const/4 v1, 0x1

    goto :goto_1
.end method

.method loadPersistentAttributes()V
    .locals 6

    .prologue
    .line 642
    sget-object v3, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v4, "AnalyticsControllerImpl.loadPersistentAttributes - loading userAttributes from the attribute store..."

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 645
    iget-object v3, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    invoke-interface {v3}, Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;->fetchAll()Ljava/util/List;

    move-result-object v2

    .line 646
    .local v2, "storedAttrs":Ljava/util/List;, "Ljava/util/List<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    sget-object v3, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AnalyticsControllerImpl.loadPersistentAttributes - found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " userAttributes in the attribute store..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/newrelic/agent/android/logging/AgentLog;->debug(Ljava/lang/String;)V

    .line 647
    iget-object v3, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    .line 648
    .local v1, "size":I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    .line 649
    .local v0, "attr":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    iget-object v4, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/16 v4, 0x40

    if-gt v1, v4, :cond_0

    .line 650
    iget-object v4, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 651
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 654
    .end local v0    # "attr":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    :cond_1
    return-void
.end method

.method public recordBreadcrumb(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "eventAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 824
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 843
    :cond_0
    :goto_0
    return v5

    .line 828
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 830
    .local v1, "attributes":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 831
    .local v3, "key":Ljava/lang/String;
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 832
    .local v4, "value":Ljava/lang/Object;
    invoke-direct {p0, v3, v4}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->createAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    move-result-object v0

    .line 833
    .local v0, "attr":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    if-eqz v0, :cond_0

    .line 834
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 839
    .end local v0    # "attr":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 840
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v7, "Error occurred while recording event [%s]: "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 843
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v5, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->Breadcrumb:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    const-string v6, "MobileBreadcrumb"

    invoke-virtual {p0, p1, v5, v6, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->addEvent(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v5

    goto :goto_0
.end method

.method public recordCustomEvent(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 11
    .param p1, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "eventAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x0

    .line 787
    sget-object v8, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "AnalyticsControllerImpl.recordCustomEvent - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " attributes"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 789
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v8

    if-nez v8, :cond_1

    .line 820
    :cond_0
    :goto_0
    return v7

    .line 793
    :cond_1
    iget-object v8, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    invoke-virtual {v8, p1}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->isEventTypeReserved(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    invoke-virtual {v8, p1}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->isEventTypeValid(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 797
    move-object v3, p1

    .line 798
    .local v3, "eventName":Ljava/lang/String;
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 800
    .local v1, "attributes":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 801
    .local v4, "key":Ljava/lang/String;
    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 802
    .local v6, "value":Ljava/lang/Object;
    invoke-direct {p0, v4, v6}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->createAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    move-result-object v0

    .line 803
    .local v0, "attr":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    if-eqz v0, :cond_0

    .line 805
    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "name"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 806
    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getStringValue()Ljava/lang/String;

    move-result-object v5

    .line 807
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 808
    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->getStringValue()Ljava/lang/String;

    move-result-object v3

    .line 811
    .end local v5    # "name":Ljava/lang/String;
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 816
    .end local v0    # "attr":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 817
    .local v2, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v9, "Error occurred while recording event [%s]: "

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p1, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 820
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    sget-object v7, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->Custom:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    invoke-virtual {p0, v3, v7, p1, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->addEvent(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v7

    goto :goto_0
.end method

.method public recordEvent(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "eventCategory"    # Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;
    .param p3, "eventType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p4, "eventAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 854
    sget-object v6, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AnalyticsControllerImpl.recordEvent - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p4}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " attributes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 856
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 879
    :cond_0
    :goto_0
    return v5

    .line 860
    :cond_1
    iget-object v6, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    invoke-virtual {v6, p3}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->isEventTypeValid(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 864
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 867
    .local v1, "attributes":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    :try_start_0
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 868
    .local v3, "key":Ljava/lang/String;
    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 869
    .local v4, "value":Ljava/lang/Object;
    invoke-direct {p0, v3, v4}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->createAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    move-result-object v0

    .line 870
    .local v0, "attr":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    if-eqz v0, :cond_0

    .line 873
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 875
    .end local v0    # "attr":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 876
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v7, "Error occurred while recording event [%s]: "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 879
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->addEvent(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v5

    goto :goto_0
.end method

.method public recordEvent(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "eventAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 884
    sget-object v6, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AnalyticsControllerImpl.recordEvent - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " attributes"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 886
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v6

    if-nez v6, :cond_1

    .line 904
    :cond_0
    :goto_0
    return v5

    .line 890
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 892
    .local v1, "attributes":Ljava/util/Set;, "Ljava/util/Set<Lcom/newrelic/agent/android/analytics/AnalyticAttribute;>;"
    :try_start_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 893
    .local v3, "key":Ljava/lang/String;
    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 894
    .local v4, "value":Ljava/lang/Object;
    invoke-direct {p0, v3, v4}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->createAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    move-result-object v0

    .line 895
    .local v0, "attr":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    if-eqz v0, :cond_0

    .line 898
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 900
    .end local v0    # "attr":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 901
    .local v2, "e":Ljava/lang/Exception;
    sget-object v6, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v7, "Error occurred while recording event [%s]: "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v6, v5, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 904
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v5, Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;->Custom:Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;

    const-string v6, "Mobile"

    invoke-virtual {p0, p1, v5, v6, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->addEvent(Ljava/lang/String;Lcom/newrelic/agent/android/analytics/AnalyticsEventCategory;Ljava/lang/String;Ljava/util/Set;)Z

    move-result v5

    goto :goto_0
.end method

.method reinitialize(Lcom/newrelic/agent/android/AgentConfiguration;Lcom/newrelic/agent/android/AgentImpl;)V
    .locals 12
    .param p1, "agentConfiguration"    # Lcom/newrelic/agent/android/AgentConfiguration;
    .param p2, "agentImpl"    # Lcom/newrelic/agent/android/AgentImpl;

    .prologue
    .line 150
    iput-object p2, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->agentImpl:Lcom/newrelic/agent/android/AgentImpl;

    .line 151
    iget-object v6, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    invoke-virtual {v6}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->initialize()V

    .line 152
    iget-object v6, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Lcom/newrelic/agent/android/AgentConfiguration;->getEnableAnalyticsEvents()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 153
    invoke-virtual {p1}, Lcom/newrelic/agent/android/AgentConfiguration;->getAnalyticAttributeStore()Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    move-result-object v6

    iput-object v6, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    .line 155
    invoke-virtual {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->loadPersistentAttributes()V

    .line 170
    invoke-interface {p2}, Lcom/newrelic/agent/android/AgentImpl;->getDeviceInformation()Lcom/newrelic/agent/android/harvest/DeviceInformation;

    move-result-object v1

    .line 171
    .local v1, "deviceInformation":Lcom/newrelic/agent/android/harvest/DeviceInformation;
    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getOsVersion()Ljava/lang/String;

    move-result-object v5

    .line 174
    .local v5, "osVersion":Ljava/lang/String;
    const-string v6, " "

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 177
    const-string v6, "[.:-]"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 179
    .local v4, "osMajorVersionArr":[Ljava/lang/String;
    array-length v6, v4

    if-lez v6, :cond_1

    .line 180
    const/4 v6, 0x0

    aget-object v3, v4, v6

    .line 185
    .local v3, "osMajorVersion":Ljava/lang/String;
    :goto_0
    invoke-interface {p2}, Lcom/newrelic/agent/android/AgentImpl;->getEnvironmentInformation()Lcom/newrelic/agent/android/harvest/EnvironmentInformation;

    move-result-object v2

    .line 187
    .local v2, "environmentInformation":Lcom/newrelic/agent/android/harvest/EnvironmentInformation;
    iget-object v6, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v7, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v8, "osName"

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getOsName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v6, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v7, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v8, "osVersion"

    invoke-direct {v7, v8, v5}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v6, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v7, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v8, "osBuild"

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getOsBuild()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v6, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v7, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v8, "osMajorVersion"

    invoke-direct {v7, v8, v3}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v6, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v7, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v8, "deviceManufacturer"

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getManufacturer()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v6, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v7, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v8, "deviceModel"

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getModel()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v6, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v7, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v8, "uuid"

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getDeviceId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v6, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v7, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v8, "carrier"

    invoke-interface {p2}, Lcom/newrelic/agent/android/AgentImpl;->getNetworkCarrier()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v6, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v7, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v8, "newRelicVersion"

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getAgentVersion()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v6, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v7, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v8, "memUsageMb"

    invoke-virtual {v2}, Lcom/newrelic/agent/android/harvest/EnvironmentInformation;->getMemoryUsage()J

    move-result-wide v10

    long-to-float v9, v10

    invoke-direct {v7, v8, v9}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;F)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v6, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v7, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v8, "sessionId"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/AgentConfiguration;->getSessionID()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v6, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v7, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v8, "platform"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/AgentConfiguration;->getApplicationPlatform()Lcom/newrelic/agent/android/ApplicationPlatform;

    move-result-object v9

    invoke-virtual {v9}, Lcom/newrelic/agent/android/ApplicationPlatform;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v6, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v7, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v8, "platformVersion"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/AgentConfiguration;->getApplicationPlatformVersion()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v6, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v7, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v8, "runTime"

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getRunTime()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v6, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v7, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v8, "architecture"

    invoke-virtual {v1}, Lcom/newrelic/agent/android/harvest/DeviceInformation;->getArchitecture()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 203
    invoke-virtual {p1}, Lcom/newrelic/agent/android/AgentConfiguration;->getCustomBuildIdentifier()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 204
    iget-object v6, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v7, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v8, "appBuild"

    invoke-virtual {p1}, Lcom/newrelic/agent/android/AgentConfiguration;->getCustomBuildIdentifier()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_0
    :goto_1
    return-void

    .line 182
    .end local v2    # "environmentInformation":Lcom/newrelic/agent/android/harvest/EnvironmentInformation;
    .end local v3    # "osMajorVersion":Ljava/lang/String;
    :cond_1
    move-object v3, v5

    .restart local v3    # "osMajorVersion":Ljava/lang/String;
    goto/16 :goto_0

    .line 206
    .restart local v2    # "environmentInformation":Lcom/newrelic/agent/android/harvest/EnvironmentInformation;
    :cond_2
    invoke-static {}, Lcom/newrelic/agent/android/Agent;->getApplicationInformation()Lcom/newrelic/agent/android/harvest/ApplicationInformation;

    move-result-object v6

    invoke-virtual {v6}, Lcom/newrelic/agent/android/harvest/ApplicationInformation;->getVersionCode()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    .local v0, "appBuildString":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 208
    iget-object v6, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->systemAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v7, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    const-string v8, "appBuild"

    invoke-direct {v7, v8, v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public removeAllAttributes()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 545
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    const-string v1, "AnalyticsControllerImpl.removeAttributes - "

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 547
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 554
    :goto_0
    return v2

    .line 551
    :cond_0
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    invoke-interface {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;->clear()V

    .line 552
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->clear()V

    goto :goto_0
.end method

.method public removeAttribute(Ljava/lang/String;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 526
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AnalyticsControllerImpl.removeAttribute - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 528
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 529
    const/4 v1, 0x0

    .line 540
    :goto_0
    return v1

    .line 532
    :cond_0
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getAttribute(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    move-result-object v0

    .line 533
    .local v0, "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    if-eqz v0, :cond_1

    .line 534
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->userAttributes:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    .line 535
    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 536
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    invoke-interface {v1, v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;->delete(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)V

    .line 540
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setAttribute(Ljava/lang/String;F)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 325
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnalyticsControllerImpl.setAttribute - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 328
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->setAttribute(Ljava/lang/String;FZ)Z

    move-result v0

    return v0
.end method

.method public setAttribute(Ljava/lang/String;FZ)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "persistent"    # Z

    .prologue
    const/4 v2, 0x0

    .line 333
    sget-object v3, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AnalyticsControllerImpl.setAttribute - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_0

    const-string v1, " (persistent)"

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 335
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 360
    :goto_1
    return v1

    .line 333
    :cond_0
    const-string v1, " (transient)"

    goto :goto_0

    .line 339
    :cond_1
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isAttributeNameValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    .line 340
    goto :goto_1

    .line 343
    :cond_2
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getAttribute(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    move-result-object v0

    .line 345
    .local v0, "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    if-nez v0, :cond_3

    .line 347
    new-instance v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    invoke-direct {v1, p1, p2, p3}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;FZ)V

    invoke-direct {p0, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->addNewUserAttribute(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)Z

    move-result v1

    goto :goto_1

    .line 349
    :cond_3
    invoke-virtual {v0, p2}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->setFloatValue(F)V

    .line 350
    invoke-virtual {v0, p3}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->setPersistent(Z)V

    .line 351
    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 352
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    invoke-interface {v1, v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;->store(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 353
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to store attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to attribute store."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    move v1, v2

    .line 354
    goto :goto_1

    .line 357
    :cond_4
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    invoke-interface {v1, v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;->delete(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)V

    .line 360
    :cond_5
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 284
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnalyticsControllerImpl.setAttribute - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 287
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "persistent"    # Z

    .prologue
    const/4 v2, 0x0

    .line 292
    sget-object v3, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AnalyticsControllerImpl.setAttribute - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_0

    const-string v1, " (persistent)"

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 294
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 320
    :goto_1
    return v1

    .line 292
    :cond_0
    const-string v1, " (transient)"

    goto :goto_0

    .line 298
    :cond_1
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isAttributeNameValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isStringValueValid(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move v1, v2

    .line 299
    goto :goto_1

    .line 302
    :cond_3
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getAttribute(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    move-result-object v0

    .line 304
    .local v0, "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    if-nez v0, :cond_4

    .line 306
    new-instance v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    invoke-direct {v1, p1, p2, p3}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->addNewUserAttribute(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)Z

    move-result v1

    goto :goto_1

    .line 308
    :cond_4
    invoke-virtual {v0, p2}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->setStringValue(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0, p3}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->setPersistent(Z)V

    .line 310
    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 311
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    invoke-interface {v1, v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;->store(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 312
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to store attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to attribute store."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    move v1, v2

    .line 313
    goto :goto_1

    .line 316
    :cond_5
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    invoke-interface {v1, v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;->delete(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)V

    .line 320
    :cond_6
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public setAttribute(Ljava/lang/String;Z)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 365
    sget-object v0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AnalyticsControllerImpl.setAttribute - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 368
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->setAttribute(Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public setAttribute(Ljava/lang/String;ZZ)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .param p3, "persistent"    # Z

    .prologue
    const/4 v2, 0x0

    .line 373
    sget-object v3, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AnalyticsControllerImpl.setAttribute - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p3, :cond_0

    const-string v1, " (persistent)"

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/newrelic/agent/android/logging/AgentLog;->verbose(Ljava/lang/String;)V

    .line 375
    invoke-direct {p0}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isInitializedAndEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    .line 400
    :goto_1
    return v1

    .line 373
    :cond_0
    const-string v1, " (transient)"

    goto :goto_0

    .line 379
    :cond_1
    invoke-direct {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isAttributeNameValid(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    .line 380
    goto :goto_1

    .line 383
    :cond_2
    invoke-virtual {p0, p1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->getAttribute(Ljava/lang/String;)Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    move-result-object v0

    .line 384
    .local v0, "attribute":Lcom/newrelic/agent/android/analytics/AnalyticAttribute;
    if-nez v0, :cond_3

    .line 386
    new-instance v1, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;

    invoke-direct {v1, p1, p2, p3}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;-><init>(Ljava/lang/String;ZZ)V

    invoke-direct {p0, v1}, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->addNewUserAttribute(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)Z

    move-result v1

    goto :goto_1

    .line 388
    :cond_3
    invoke-virtual {v0, p2}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->setBooleanValue(Z)V

    .line 389
    invoke-virtual {v0, p3}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->setPersistent(Z)V

    .line 390
    invoke-virtual {v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttribute;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 391
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    invoke-interface {v1, v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;->store(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 392
    sget-object v1, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->log:Lcom/newrelic/agent/android/logging/AgentLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to store attribute "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to attribute store."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lcom/newrelic/agent/android/logging/AgentLog;->error(Ljava/lang/String;)V

    move v1, v2

    .line 393
    goto :goto_1

    .line 396
    :cond_4
    iget-object v1, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->attributeStore:Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;

    invoke-interface {v1, v0}, Lcom/newrelic/agent/android/analytics/AnalyticAttributeStore;->delete(Lcom/newrelic/agent/android/analytics/AnalyticAttribute;)V

    .line 400
    :cond_5
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 964
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->isEnabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 965
    return-void
.end method

.method public setMaxEventBufferTime(I)V
    .locals 1
    .param p1, "maxBufferTimeInSec"    # I

    .prologue
    .line 615
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->setMaxEventBufferTime(I)V

    .line 616
    return-void
.end method

.method public setMaxEventPoolSize(I)V
    .locals 1
    .param p1, "maxSize"    # I

    .prologue
    .line 610
    iget-object v0, p0, Lcom/newrelic/agent/android/analytics/AnalyticsControllerImpl;->eventManager:Lcom/newrelic/agent/android/analytics/EventManagerImpl;

    invoke-virtual {v0, p1}, Lcom/newrelic/agent/android/analytics/EventManagerImpl;->setMaxEventPoolSize(I)V

    .line 611
    return-void
.end method
