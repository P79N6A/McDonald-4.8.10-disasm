.class public Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;
.super Ljava/util/LinkedHashMap;
.source "MWGETQueryArgs.java"

# interfaces
.implements Lcom/mcdonalds/sdk/connectors/middleware/model/MWGetQueryArgsComplexObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs$QueryArgsPair;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/mcdonalds/sdk/connectors/middleware/model/MWGetQueryArgsComplexObject;"
    }
.end annotation


# static fields
.field private static final AVG_QUERY_ARGS_PAIR_LENGTH:I = 0x11


# instance fields
.field private final mConfigBasePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;-><init>(Z)V

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;)V
    .locals 0
    .param p1, "ignored"    # Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;-><init>()V

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;Z)V
    .locals 0
    .param p1, "ignored"    # Lcom/mcdonalds/sdk/connectors/middleware/MiddlewareConnector;
    .param p2, "useNutritionDefaults"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0, p2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;-><init>(Z)V

    .line 32
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "useNutritionDefaults"    # Z

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 39
    const-string v0, "connectors.Middleware"

    iput-object v0, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->mConfigBasePath:Ljava/lang/String;

    .line 41
    if-eqz p1, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->loadNutritionDefaults()V

    .line 46
    :goto_0
    return-void

    .line 44
    :cond_0
    invoke-direct {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->loadDefaults()V

    goto :goto_0
.end method

.method private createArgName(Ljava/util/Stack;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "pathComponents":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 67
    const/4 v3, 0x0

    .line 77
    :goto_0
    return-object v3

    .line 70
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/util/Stack;->size()I

    move-result v2

    .local v2, "size":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 72
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p1, v1}, Ljava/util/Stack;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 77
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private createQueryArgsPairs(Ljava/util/Stack;Ljava/util/List;Lcom/mcdonalds/sdk/connectors/middleware/model/MWGetQueryArgsComplexObject;)V
    .locals 9
    .param p3, "obj"    # Lcom/mcdonalds/sdk/connectors/middleware/model/MWGetQueryArgsComplexObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs$QueryArgsPair;",
            ">;",
            "Lcom/mcdonalds/sdk/connectors/middleware/model/MWGetQueryArgsComplexObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "pathComponents":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .local p2, "queryArgs":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs$QueryArgsPair;>;"
    if-eq p3, p0, :cond_0

    .line 85
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Complex Query Parameters not supported."

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 88
    :cond_0
    invoke-interface {p3}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWGetQueryArgsComplexObject;->getQueryPropertyNames()Ljava/util/List;

    move-result-object v3

    .line 89
    .local v3, "queryPropertyNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v0, v4, :cond_4

    .line 90
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 91
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-interface {p3, v1}, Lcom/mcdonalds/sdk/connectors/middleware/model/MWGetQueryArgsComplexObject;->getQueryProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 94
    .local v5, "value":Ljava/lang/Object;
    instance-of v7, v5, Ljava/util/List;

    if-eqz v7, :cond_1

    .line 95
    check-cast v5, Ljava/util/List;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-direct {p0, p1, p2, v5}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->createQueryArgsPairs(Ljava/util/Stack;Ljava/util/List;Ljava/util/List;)V

    .line 106
    :goto_1
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 96
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v7, v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWGetQueryArgsComplexObject;

    if-eqz v7, :cond_2

    .line 97
    check-cast v5, Lcom/mcdonalds/sdk/connectors/middleware/model/MWGetQueryArgsComplexObject;

    .end local v5    # "value":Ljava/lang/Object;
    invoke-direct {p0, p1, p2, v5}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->createQueryArgsPairs(Ljava/util/Stack;Ljava/util/List;Lcom/mcdonalds/sdk/connectors/middleware/model/MWGetQueryArgsComplexObject;)V

    goto :goto_1

    .line 100
    .restart local v5    # "value":Ljava/lang/Object;
    :cond_2
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->createArgName(Ljava/util/Stack;)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "name":Ljava/lang/String;
    if-nez v5, :cond_3

    const-string v6, ""

    .line 103
    .local v6, "valueStr":Ljava/lang/String;
    :goto_2
    new-instance v7, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs$QueryArgsPair;

    invoke-direct {v7, v2, v6}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs$QueryArgsPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 101
    .end local v6    # "valueStr":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 108
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/Object;
    :cond_4
    return-void
.end method

.method private createQueryArgsPairs(Ljava/util/Stack;Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .param p3, "list"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs$QueryArgsPair;",
            ">;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "pathComponents":Ljava/util/Stack;, "Ljava/util/Stack<Ljava/lang/String;>;"
    .local p2, "queryArgs":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs$QueryArgsPair;>;"
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 133
    :goto_0
    return-void

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/16 v5, 0x5b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 120
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    .local v3, "size":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 121
    if-lez v1, :cond_1

    .line 122
    const/16 v5, 0x2c

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    :cond_1
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 127
    :cond_2
    const/16 v5, 0x5d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 129
    invoke-direct {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->createArgName(Ljava/util/Stack;)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 132
    .local v4, "valueStr":Ljava/lang/String;
    new-instance v5, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs$QueryArgsPair;

    invoke-direct {v5, v2, v4}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs$QueryArgsPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private encode(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs$QueryArgsPair;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "queryArgs":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs$QueryArgsPair;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 146
    .local v3, "size":I
    new-instance v2, Ljava/lang/StringBuilder;

    mul-int/lit8 v4, v3, 0x11

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 148
    .local v2, "query":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 149
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs$QueryArgsPair;

    .line 151
    .local v1, "param":Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs$QueryArgsPair;
    if-lez v0, :cond_0

    .line 152
    const/16 v4, 0x26

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    :cond_0
    const-string v4, "%s=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs$QueryArgsPair;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs$QueryArgsPair;->getValue()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    .end local v1    # "param":Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs$QueryArgsPair;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private loadDefaults()V
    .locals 4

    .prologue
    .line 57
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    .line 59
    .local v0, "config":Lcom/mcdonalds/sdk/services/configuration/Configuration;
    const-string v1, "marketId"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->mConfigBasePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".marketId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "application"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->mConfigBasePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".application"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    const-string v1, "languageName"

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getCurrentLanguageTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-string v1, "platform"

    const-string v2, "android"

    invoke-virtual {p0, v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-void
.end method

.method private loadNutritionDefaults()V
    .locals 4

    .prologue
    .line 50
    invoke-static {}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getSharedInstance()Lcom/mcdonalds/sdk/services/configuration/Configuration;

    move-result-object v0

    .line 52
    .local v0, "config":Lcom/mcdonalds/sdk/services/configuration/Configuration;
    const-string v1, "country"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->mConfigBasePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".country"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getValueForKey(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "language"

    invoke-virtual {v0}, Lcom/mcdonalds/sdk/services/configuration/Configuration;->getNutritionLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    return-void
.end method


# virtual methods
.method public getQueryProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 167
    invoke-virtual {p0, p1}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getQueryPropertyNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 138
    .local v0, "queryArgs":Ljava/util/List;, "Ljava/util/List<Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs$QueryArgsPair;>;"
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    invoke-direct {p0, v1, v0, p0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->createQueryArgsPairs(Ljava/util/Stack;Ljava/util/List;Lcom/mcdonalds/sdk/connectors/middleware/model/MWGetQueryArgsComplexObject;)V

    .line 140
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/mcdonalds/sdk/connectors/middleware/request/MWGETQueryArgs;->encode(Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
