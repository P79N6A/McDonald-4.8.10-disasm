.class public Lcom/newrelic/agent/android/agentdata/builder/AgentDataBuilder;
.super Ljava/lang/Object;
.source "AgentDataBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static attributesMapFromAgentData(Lcom/newrelic/mobile/fbs/AgentData;)Ljava/util/Map;
    .locals 12
    .param p0, "agentData"    # Lcom/newrelic/mobile/fbs/AgentData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/newrelic/mobile/fbs/AgentData;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 311
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .local v6, "si":I
    :goto_0
    invoke-virtual {p0}, Lcom/newrelic/mobile/fbs/AgentData;->stringAttributesLength()I

    move-result v9

    if-ge v6, v9, :cond_0

    .line 312
    invoke-virtual {p0, v6}, Lcom/newrelic/mobile/fbs/AgentData;->stringAttributes(I)Lcom/newrelic/mobile/fbs/StringSessionAttribute;

    move-result-object v0

    .line 313
    .local v0, "a":Lcom/newrelic/mobile/fbs/StringSessionAttribute;
    invoke-virtual {v0}, Lcom/newrelic/mobile/fbs/StringSessionAttribute;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/newrelic/mobile/fbs/StringSessionAttribute;->value()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 316
    .end local v0    # "a":Lcom/newrelic/mobile/fbs/StringSessionAttribute;
    :cond_0
    const/4 v6, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/newrelic/mobile/fbs/AgentData;->longAttributesLength()I

    move-result v9

    if-ge v6, v9, :cond_1

    .line 317
    invoke-virtual {p0, v6}, Lcom/newrelic/mobile/fbs/AgentData;->longAttributes(I)Lcom/newrelic/mobile/fbs/LongSessionAttribute;

    move-result-object v0

    .line 318
    .local v0, "a":Lcom/newrelic/mobile/fbs/LongSessionAttribute;
    invoke-virtual {v0}, Lcom/newrelic/mobile/fbs/LongSessionAttribute;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/newrelic/mobile/fbs/LongSessionAttribute;->value()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 321
    .end local v0    # "a":Lcom/newrelic/mobile/fbs/LongSessionAttribute;
    :cond_1
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/newrelic/mobile/fbs/AgentData;->doubleAttributesLength()I

    move-result v9

    if-ge v6, v9, :cond_2

    .line 322
    invoke-virtual {p0, v6}, Lcom/newrelic/mobile/fbs/AgentData;->doubleAttributes(I)Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;

    move-result-object v0

    .line 323
    .local v0, "a":Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;
    invoke-virtual {v0}, Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;->value()D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 326
    .end local v0    # "a":Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;
    :cond_2
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {p0}, Lcom/newrelic/mobile/fbs/AgentData;->boolAttributesLength()I

    move-result v9

    if-ge v6, v9, :cond_3

    .line 327
    invoke-virtual {p0, v6}, Lcom/newrelic/mobile/fbs/AgentData;->boolAttributes(I)Lcom/newrelic/mobile/fbs/BoolSessionAttribute;

    move-result-object v0

    .line 328
    .local v0, "a":Lcom/newrelic/mobile/fbs/BoolSessionAttribute;
    invoke-virtual {v0}, Lcom/newrelic/mobile/fbs/BoolSessionAttribute;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lcom/newrelic/mobile/fbs/BoolSessionAttribute;->value()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 331
    .end local v0    # "a":Lcom/newrelic/mobile/fbs/BoolSessionAttribute;
    :cond_3
    const/4 v6, 0x0

    :goto_4
    invoke-virtual {p0}, Lcom/newrelic/mobile/fbs/AgentData;->handledExceptionsLength()I

    move-result v9

    if-ge v6, v9, :cond_6

    .line 332
    invoke-virtual {p0, v6}, Lcom/newrelic/mobile/fbs/AgentData;->handledExceptions(I)Lcom/newrelic/mobile/fbs/hex/HandledException;

    move-result-object v4

    .line 333
    .local v4, "hex":Lcom/newrelic/mobile/fbs/hex/HandledException;
    const-string v9, "timestampMs"

    invoke-virtual {v4}, Lcom/newrelic/mobile/fbs/hex/HandledException;->timestampMs()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    const-string v9, "appUuidHigh"

    invoke-virtual {v4}, Lcom/newrelic/mobile/fbs/hex/HandledException;->appUuidHigh()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 335
    const-string v9, "appUuidLow"

    invoke-virtual {v4}, Lcom/newrelic/mobile/fbs/hex/HandledException;->appUuidLow()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v9, "name"

    invoke-virtual {v4}, Lcom/newrelic/mobile/fbs/hex/HandledException;->name()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    const-string v9, "cause"

    invoke-virtual {v4}, Lcom/newrelic/mobile/fbs/hex/HandledException;->cause()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string v9, "message"

    invoke-virtual {v4}, Lcom/newrelic/mobile/fbs/hex/HandledException;->message()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    const/4 v7, 0x0

    .local v7, "t":I
    :goto_5
    invoke-virtual {v4}, Lcom/newrelic/mobile/fbs/hex/HandledException;->threadsLength()I

    move-result v9

    if-ge v7, v9, :cond_5

    .line 340
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 341
    .local v1, "currentThread":Ljava/lang/Thread;
    new-instance v8, Ljava/util/LinkedHashMap;

    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 342
    .local v8, "threadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .local v2, "f":I
    :goto_6
    invoke-virtual {v4, v7}, Lcom/newrelic/mobile/fbs/hex/HandledException;->threads(I)Lcom/newrelic/mobile/fbs/hex/Thread;

    move-result-object v9

    invoke-virtual {v9}, Lcom/newrelic/mobile/fbs/hex/Thread;->framesLength()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 343
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 344
    .local v3, "frameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "fileName"

    invoke-virtual {v4, v7}, Lcom/newrelic/mobile/fbs/hex/HandledException;->threads(I)Lcom/newrelic/mobile/fbs/hex/Thread;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/newrelic/mobile/fbs/hex/Thread;->frames(I)Lcom/newrelic/mobile/fbs/hex/Frame;

    move-result-object v10

    invoke-virtual {v10}, Lcom/newrelic/mobile/fbs/hex/Frame;->fileName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v9, "lineNumber"

    invoke-virtual {v4, v7}, Lcom/newrelic/mobile/fbs/hex/HandledException;->threads(I)Lcom/newrelic/mobile/fbs/hex/Thread;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/newrelic/mobile/fbs/hex/Thread;->frames(I)Lcom/newrelic/mobile/fbs/hex/Frame;

    move-result-object v10

    invoke-virtual {v10}, Lcom/newrelic/mobile/fbs/hex/Frame;->lineNumber()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v9, "className"

    invoke-virtual {v4, v7}, Lcom/newrelic/mobile/fbs/hex/HandledException;->threads(I)Lcom/newrelic/mobile/fbs/hex/Thread;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/newrelic/mobile/fbs/hex/Thread;->frames(I)Lcom/newrelic/mobile/fbs/hex/Frame;

    move-result-object v10

    invoke-virtual {v10}, Lcom/newrelic/mobile/fbs/hex/Frame;->className()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v9, "methodName"

    invoke-virtual {v4, v7}, Lcom/newrelic/mobile/fbs/hex/HandledException;->threads(I)Lcom/newrelic/mobile/fbs/hex/Thread;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/newrelic/mobile/fbs/hex/Thread;->frames(I)Lcom/newrelic/mobile/fbs/hex/Frame;

    move-result-object v10

    invoke-virtual {v10}, Lcom/newrelic/mobile/fbs/hex/Frame;->methodName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "frame "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 351
    .end local v3    # "frameMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    const-string v9, "crashed"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string v9, "state"

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread$State;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v9, "threadNumber"

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v9, "threadId"

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v9, "priority"

    invoke-virtual {v1}, Ljava/lang/Thread;->getPriority()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "thread "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_5

    .line 331
    .end local v1    # "currentThread":Ljava/lang/Thread;
    .end local v2    # "f":I
    .end local v8    # "threadMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 360
    .end local v4    # "hex":Lcom/newrelic/mobile/fbs/hex/HandledException;
    .end local v7    # "t":I
    :cond_6
    return-object v5
.end method

.method protected static computeIfAbsent(Ljava/lang/String;Ljava/util/Map;Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)V
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p2, "flat"    # Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    .line 33
    invoke-interface {p1, p0}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 34
    invoke-virtual {p2, p0}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v0

    .line 35
    .local v0, "offset":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .end local v0    # "offset":I
    :cond_0
    return-void
.end method

.method public static startAndFinishAgentData(Ljava/util/Map;Ljava/util/Set;)Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    .locals 54
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)",
            "Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "attributesMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p1, "agentData":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v40, Ljava/util/HashMap;

    invoke-direct/range {v40 .. v40}, Ljava/util/HashMap;-><init>()V

    .line 48
    .local v40, "stringIndexMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v20, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;

    invoke-direct/range {v20 .. v20}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;-><init>()V

    .line 51
    .local v20, "flat":Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v50

    invoke-interface/range {v50 .. v50}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v50

    :cond_0
    :goto_0
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    move-result v51

    if-eqz v51, :cond_1

    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 52
    .local v13, "attribute":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 53
    .local v31, "key":Ljava/lang/String;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v47

    .line 55
    .local v47, "val":Ljava/lang/Object;
    move-object/from16 v0, v31

    move-object/from16 v1, v40

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/agentdata/builder/AgentDataBuilder;->computeIfAbsent(Ljava/lang/String;Ljava/util/Map;Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)V

    .line 56
    move-object/from16 v0, v47

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v51, v0

    if-eqz v51, :cond_0

    move-object/from16 v39, v47

    .line 57
    check-cast v39, Ljava/lang/String;

    .line 58
    .local v39, "s":Ljava/lang/String;
    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/agentdata/builder/AgentDataBuilder;->computeIfAbsent(Ljava/lang/String;Ljava/util/Map;Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)V

    goto :goto_0

    .line 62
    .end local v13    # "attribute":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v31    # "key":Ljava/lang/String;
    .end local v39    # "s":Ljava/lang/String;
    .end local v47    # "val":Ljava/lang/Object;
    :cond_1
    const/16 v43, 0x0

    .line 64
    .local v43, "thread":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v51

    :goto_1
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_2

    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/util/Map;

    .line 65
    .local v30, "hex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v50, "name"

    move-object/from16 v0, v30

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/String;

    move-object/from16 v0, v50

    move-object/from16 v1, v40

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/agentdata/builder/AgentDataBuilder;->computeIfAbsent(Ljava/lang/String;Ljava/util/Map;Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)V

    .line 66
    const-string v50, "message"

    move-object/from16 v0, v30

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/String;

    move-object/from16 v0, v50

    move-object/from16 v1, v40

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/agentdata/builder/AgentDataBuilder;->computeIfAbsent(Ljava/lang/String;Ljava/util/Map;Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)V

    .line 67
    const-string v50, "cause"

    move-object/from16 v0, v30

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/String;

    move-object/from16 v0, v50

    move-object/from16 v1, v40

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/newrelic/agent/android/agentdata/builder/AgentDataBuilder;->computeIfAbsent(Ljava/lang/String;Ljava/util/Map;Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)V

    .line 69
    const-string v50, "thread"

    move-object/from16 v0, v30

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    .end local v43    # "thread":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    check-cast v43, Ljava/util/List;

    .line 70
    .restart local v43    # "thread":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    goto :goto_1

    .line 73
    .end local v30    # "hex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 74
    .local v26, "framesOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v46, Ljava/util/ArrayList;

    invoke-direct/range {v46 .. v46}, Ljava/util/ArrayList;-><init>()V

    .line 77
    .local v46, "threadsOffsets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v43, :cond_9

    .line 78
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v51

    :goto_2
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_9

    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map;

    .line 79
    .local v21, "frame":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v24, Ljava/util/HashMap;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 81
    .local v24, "frameValStringIndexMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v50, "fileName"

    const-string v52, ""

    move-object/from16 v0, v20

    move-object/from16 v1, v52

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v52

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    move-object/from16 v0, v24

    move-object/from16 v1, v50

    move-object/from16 v2, v52

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-interface/range {v21 .. v21}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v50

    invoke-interface/range {v50 .. v50}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v50

    :cond_3
    :goto_3
    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->hasNext()Z

    move-result v52

    if-eqz v52, :cond_4

    invoke-interface/range {v50 .. v50}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/Map$Entry;

    .line 84
    .local v22, "frameElement":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 85
    .restart local v31    # "key":Ljava/lang/String;
    invoke-interface/range {v22 .. v22}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v47

    .line 87
    .restart local v47    # "val":Ljava/lang/Object;
    move-object/from16 v0, v47

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v52, v0

    if-eqz v52, :cond_3

    .line 88
    check-cast v47, Ljava/lang/String;

    .end local v47    # "val":Ljava/lang/Object;
    move-object/from16 v0, v20

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->createString(Ljava/lang/CharSequence;)I

    move-result v38

    .line 89
    .local v38, "offset":I
    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v52

    move-object/from16 v0, v24

    move-object/from16 v1, v31

    move-object/from16 v2, v52

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 95
    .end local v22    # "frameElement":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v31    # "key":Ljava/lang/String;
    .end local v38    # "offset":I
    :cond_4
    invoke-static/range {v20 .. v20}, Lcom/newrelic/mobile/fbs/hex/Frame;->startFrame(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)V

    .line 96
    const-string v50, "className"

    move-object/from16 v0, v24

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    if-eqz v50, :cond_5

    .line 97
    const-string v50, "className"

    move-object/from16 v0, v24

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/Integer;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Integer;->intValue()I

    move-result v50

    move-object/from16 v0, v20

    move/from16 v1, v50

    invoke-static {v0, v1}, Lcom/newrelic/mobile/fbs/hex/Frame;->addClassName(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 99
    :cond_5
    const-string v50, "methodName"

    move-object/from16 v0, v24

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    if-eqz v50, :cond_6

    .line 100
    const-string v50, "methodName"

    move-object/from16 v0, v24

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/Integer;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Integer;->intValue()I

    move-result v50

    move-object/from16 v0, v20

    move/from16 v1, v50

    invoke-static {v0, v1}, Lcom/newrelic/mobile/fbs/hex/Frame;->addMethodName(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 102
    :cond_6
    const-string v50, "fileName"

    move-object/from16 v0, v24

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    if-eqz v50, :cond_7

    .line 103
    const-string v50, "fileName"

    move-object/from16 v0, v24

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/Integer;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Integer;->intValue()I

    move-result v50

    move-object/from16 v0, v20

    move/from16 v1, v50

    invoke-static {v0, v1}, Lcom/newrelic/mobile/fbs/hex/Frame;->addFileName(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 105
    :cond_7
    const-string v50, "lineNumber"

    move-object/from16 v0, v21

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    if-eqz v50, :cond_8

    .line 106
    const-string v50, "lineNumber"

    move-object/from16 v0, v21

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/Integer;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Integer;->intValue()I

    move-result v50

    move/from16 v0, v50

    int-to-long v0, v0

    move-wide/from16 v52, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v52

    invoke-static {v0, v1, v2}, Lcom/newrelic/mobile/fbs/hex/Frame;->addLineNumber(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;J)V

    .line 109
    :cond_8
    invoke-static/range {v20 .. v20}, Lcom/newrelic/mobile/fbs/hex/Frame;->endFrame(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)I

    move-result v23

    .line 110
    .local v23, "frameOffset":I
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    move-object/from16 v0, v26

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 115
    .end local v21    # "frame":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v23    # "frameOffset":I
    .end local v24    # "frameValStringIndexMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_9
    invoke-static/range {v26 .. v26}, Lcom/newrelic/agent/android/agentdata/builder/AgentDataBuilder;->toArray(Ljava/util/Collection;)[I

    move-result-object v50

    move-object/from16 v0, v20

    move-object/from16 v1, v50

    invoke-static {v0, v1}, Lcom/newrelic/mobile/fbs/hex/Thread;->createFramesVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v25

    .line 116
    .local v25, "framesOffset":I
    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-static {v0, v1}, Lcom/newrelic/mobile/fbs/hex/Thread;->createThread(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)I

    move-result v44

    .line 117
    .local v44, "threadOffset":I
    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    move-object/from16 v0, v46

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-static/range {v46 .. v46}, Lcom/newrelic/agent/android/agentdata/builder/AgentDataBuilder;->toArray(Ljava/util/Collection;)[I

    move-result-object v50

    move-object/from16 v0, v20

    move-object/from16 v1, v50

    invoke-static {v0, v1}, Lcom/newrelic/mobile/fbs/hex/HandledException;->createThreadsVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v45

    .line 121
    .local v45, "threadVectorOffset":I
    new-instance v41, Ljava/util/HashSet;

    invoke-direct/range {v41 .. v41}, Ljava/util/HashSet;-><init>()V

    .line 122
    .local v41, "stringSessionAttributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 123
    .local v17, "doubleSessionAttributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v33, Ljava/util/HashSet;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashSet;-><init>()V

    .line 124
    .local v33, "longSessionAttributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 126
    .local v14, "boolSessionAttributes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v50

    invoke-interface/range {v50 .. v50}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v51

    :cond_a
    :goto_4
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_f

    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 127
    .restart local v13    # "attribute":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 128
    .restart local v31    # "key":Ljava/lang/String;
    move-object/from16 v0, v40

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/Integer;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Integer;->intValue()I

    move-result v32

    .line 129
    .local v32, "keyIndex":I
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v47

    .line 131
    .restart local v47    # "val":Ljava/lang/Object;
    move-object/from16 v0, v47

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v50, v0

    if-eqz v50, :cond_b

    .line 132
    move-object/from16 v0, v40

    move-object/from16 v1, v47

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/Integer;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Integer;->intValue()I

    move-result v50

    move-object/from16 v0, v20

    move/from16 v1, v32

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Lcom/newrelic/mobile/fbs/StringSessionAttribute;->createStringSessionAttribute(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;II)I

    move-result v50

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    move-object/from16 v0, v41

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 136
    :cond_b
    move-object/from16 v0, v47

    instance-of v0, v0, Ljava/lang/Double;

    move/from16 v50, v0

    if-nez v50, :cond_c

    move-object/from16 v0, v47

    instance-of v0, v0, Ljava/lang/Float;

    move/from16 v50, v0

    if-eqz v50, :cond_d

    :cond_c
    move-object/from16 v36, v47

    .line 137
    check-cast v36, Ljava/lang/Number;

    .line 138
    .local v36, "n":Ljava/lang/Number;
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v52

    move-object/from16 v0, v20

    move/from16 v1, v32

    move-wide/from16 v2, v52

    invoke-static {v0, v1, v2, v3}, Lcom/newrelic/mobile/fbs/DoubleSessionAttribute;->createDoubleSessionAttribute(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;ID)I

    move-result v50

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    move-object/from16 v0, v17

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 142
    .end local v36    # "n":Ljava/lang/Number;
    :cond_d
    move-object/from16 v0, v47

    instance-of v0, v0, Ljava/lang/Number;

    move/from16 v50, v0

    if-eqz v50, :cond_e

    move-object/from16 v36, v47

    .line 143
    check-cast v36, Ljava/lang/Number;

    .line 144
    .restart local v36    # "n":Ljava/lang/Number;
    invoke-virtual/range {v36 .. v36}, Ljava/lang/Number;->longValue()J

    move-result-wide v52

    move-object/from16 v0, v20

    move/from16 v1, v32

    move-wide/from16 v2, v52

    invoke-static {v0, v1, v2, v3}, Lcom/newrelic/mobile/fbs/LongSessionAttribute;->createLongSessionAttribute(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;IJ)I

    move-result v50

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    move-object/from16 v0, v33

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 148
    .end local v36    # "n":Ljava/lang/Number;
    :cond_e
    move-object/from16 v0, v47

    instance-of v0, v0, Ljava/lang/Boolean;

    move/from16 v50, v0

    if-eqz v50, :cond_a

    .line 149
    check-cast v47, Ljava/lang/Boolean;

    .end local v47    # "val":Ljava/lang/Object;
    invoke-virtual/range {v47 .. v47}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v50

    move-object/from16 v0, v20

    move/from16 v1, v32

    move/from16 v2, v50

    invoke-static {v0, v1, v2}, Lcom/newrelic/mobile/fbs/BoolSessionAttribute;->createBoolSessionAttribute(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;IZ)I

    move-result v50

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-interface {v14, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 155
    .end local v13    # "attribute":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v31    # "key":Ljava/lang/String;
    .end local v32    # "keyIndex":I
    :cond_f
    const/16 v42, -0x1

    .line 156
    .local v42, "stringSessionAttributesVector":I
    invoke-interface/range {v41 .. v41}, Ljava/util/Set;->isEmpty()Z

    move-result v50

    if-nez v50, :cond_10

    .line 157
    invoke-static/range {v41 .. v41}, Lcom/newrelic/agent/android/agentdata/builder/AgentDataBuilder;->toArray(Ljava/util/Collection;)[I

    move-result-object v50

    move-object/from16 v0, v20

    move-object/from16 v1, v50

    invoke-static {v0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->createStringAttributesVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v42

    .line 160
    :cond_10
    const/16 v18, -0x1

    .line 161
    .local v18, "doubleSessionAttributesVector":I
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->isEmpty()Z

    move-result v50

    if-nez v50, :cond_11

    .line 162
    invoke-static/range {v17 .. v17}, Lcom/newrelic/agent/android/agentdata/builder/AgentDataBuilder;->toArray(Ljava/util/Collection;)[I

    move-result-object v50

    move-object/from16 v0, v20

    move-object/from16 v1, v50

    invoke-static {v0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->createDoubleAttributesVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v18

    .line 165
    :cond_11
    const/16 v34, -0x1

    .line 166
    .local v34, "longSessionAttributesVector":I
    invoke-interface/range {v33 .. v33}, Ljava/util/Set;->isEmpty()Z

    move-result v50

    if-nez v50, :cond_12

    .line 167
    invoke-static/range {v33 .. v33}, Lcom/newrelic/agent/android/agentdata/builder/AgentDataBuilder;->toArray(Ljava/util/Collection;)[I

    move-result-object v50

    move-object/from16 v0, v20

    move-object/from16 v1, v50

    invoke-static {v0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->createLongAttributesVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v34

    .line 170
    :cond_12
    const/4 v15, -0x1

    .line 171
    .local v15, "booleanSessionAttributesVector":I
    invoke-interface {v14}, Ljava/util/Set;->isEmpty()Z

    move-result v50

    if-nez v50, :cond_13

    .line 172
    invoke-static {v14}, Lcom/newrelic/agent/android/agentdata/builder/AgentDataBuilder;->toArray(Ljava/util/Collection;)[I

    move-result-object v50

    move-object/from16 v0, v20

    move-object/from16 v1, v50

    invoke-static {v0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->createBoolAttributesVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v15

    .line 176
    :cond_13
    new-instance v28, Ljava/util/HashSet;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashSet;-><init>()V

    .line 178
    .local v28, "handledExceptionOffsets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->isEmpty()Z

    move-result v50

    if-nez v50, :cond_19

    .line 179
    invoke-interface/range {p1 .. p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v51

    :goto_5
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v50

    if-eqz v50, :cond_19

    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/util/Map;

    .line 180
    .restart local v30    # "hex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v50, "name"

    move-object/from16 v0, v30

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    move-object/from16 v0, v40

    move-object/from16 v1, v50

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/agentdata/builder/AgentDataBuilder;->stringIndexMapOffset(Ljava/util/Map;Ljava/lang/Object;)I

    move-result v37

    .line 181
    .local v37, "nameOffset":I
    const-string v50, "message"

    move-object/from16 v0, v30

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    move-object/from16 v0, v40

    move-object/from16 v1, v50

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/agentdata/builder/AgentDataBuilder;->stringIndexMapOffset(Ljava/util/Map;Ljava/lang/Object;)I

    move-result v35

    .line 182
    .local v35, "messageOffset":I
    const-string v50, "cause"

    move-object/from16 v0, v30

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    move-object/from16 v0, v40

    move-object/from16 v1, v50

    invoke-static {v0, v1}, Lcom/newrelic/agent/android/agentdata/builder/AgentDataBuilder;->stringIndexMapOffset(Ljava/util/Map;Ljava/lang/Object;)I

    move-result v16

    .line 184
    .local v16, "causeOffset":I
    const-string v50, "timestampMs"

    move-object/from16 v0, v30

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v50

    if-eqz v50, :cond_18

    const-string v50, "timestampMs"

    .line 185
    move-object/from16 v0, v30

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    :goto_6
    check-cast v50, Ljava/lang/Long;

    .line 184
    invoke-virtual/range {v50 .. v50}, Ljava/lang/Long;->longValue()J

    move-result-wide v48

    .line 186
    .local v48, "timeStampMs":J
    const-wide/16 v8, 0x0

    .line 187
    .local v8, "appUuidHigh":J
    const-wide/16 v10, 0x0

    .line 190
    .local v10, "appUuidLow":J
    :try_start_0
    const-string v50, "appUuidHigh"

    move-object/from16 v0, v30

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/Long;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 191
    const-string v50, "appUuidLow"

    move-object/from16 v0, v30

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/lang/Long;

    invoke-virtual/range {v50 .. v50}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    .line 197
    :goto_7
    invoke-static/range {v20 .. v20}, Lcom/newrelic/mobile/fbs/hex/HandledException;->startHandledException(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)V

    .line 198
    move-object/from16 v0, v20

    invoke-static {v0, v8, v9}, Lcom/newrelic/mobile/fbs/hex/HandledException;->addAppUuidHigh(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;J)V

    .line 199
    move-object/from16 v0, v20

    invoke-static {v0, v10, v11}, Lcom/newrelic/mobile/fbs/hex/HandledException;->addAppUuidLow(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;J)V

    .line 201
    const-wide/16 v52, -0x1

    cmp-long v50, v52, v48

    if-eqz v50, :cond_14

    .line 202
    move-object/from16 v0, v20

    move-wide/from16 v1, v48

    invoke-static {v0, v1, v2}, Lcom/newrelic/mobile/fbs/hex/HandledException;->addTimestampMs(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;J)V

    .line 204
    :cond_14
    const/16 v50, -0x1

    move/from16 v0, v50

    move/from16 v1, v37

    if-eq v0, v1, :cond_15

    .line 205
    move-object/from16 v0, v20

    move/from16 v1, v37

    invoke-static {v0, v1}, Lcom/newrelic/mobile/fbs/hex/HandledException;->addName(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 207
    :cond_15
    const/16 v50, -0x1

    move/from16 v0, v50

    move/from16 v1, v35

    if-eq v0, v1, :cond_16

    .line 208
    move-object/from16 v0, v20

    move/from16 v1, v35

    invoke-static {v0, v1}, Lcom/newrelic/mobile/fbs/hex/HandledException;->addMessage(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 210
    :cond_16
    const/16 v50, -0x1

    move/from16 v0, v50

    move/from16 v1, v16

    if-eq v0, v1, :cond_17

    .line 211
    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/newrelic/mobile/fbs/hex/HandledException;->addCause(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 214
    :cond_17
    move-object/from16 v0, v20

    move/from16 v1, v45

    invoke-static {v0, v1}, Lcom/newrelic/mobile/fbs/hex/HandledException;->addThreads(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 216
    invoke-static/range {v20 .. v20}, Lcom/newrelic/mobile/fbs/hex/HandledException;->endHandledException(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)I

    move-result v27

    .line 217
    .local v27, "handledExceptionOffset":I
    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    move-object/from16 v0, v28

    move-object/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    .line 185
    .end local v8    # "appUuidHigh":J
    .end local v10    # "appUuidLow":J
    .end local v27    # "handledExceptionOffset":I
    .end local v48    # "timeStampMs":J
    :cond_18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v52

    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v50

    goto/16 :goto_6

    .line 192
    .restart local v8    # "appUuidHigh":J
    .restart local v10    # "appUuidLow":J
    .restart local v48    # "timeStampMs":J
    :catch_0
    move-exception v19

    .line 193
    .local v19, "e":Ljava/lang/ClassCastException;
    const-wide/16 v8, 0x0

    .line 194
    const-wide/16 v10, 0x0

    goto :goto_7

    .line 222
    .end local v8    # "appUuidHigh":J
    .end local v10    # "appUuidLow":J
    .end local v16    # "causeOffset":I
    .end local v19    # "e":Ljava/lang/ClassCastException;
    .end local v30    # "hex":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v35    # "messageOffset":I
    .end local v37    # "nameOffset":I
    .end local v48    # "timeStampMs":J
    :cond_19
    const/16 v29, -0x1

    .line 224
    .local v29, "handledExceptionVector":I
    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->isEmpty()Z

    move-result v50

    if-nez v50, :cond_1a

    .line 225
    invoke-static/range {v28 .. v28}, Lcom/newrelic/agent/android/agentdata/builder/AgentDataBuilder;->toArray(Ljava/util/Collection;)[I

    move-result-object v50

    move-object/from16 v0, v20

    move-object/from16 v1, v50

    invoke-static {v0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->createHandledExceptionsVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v29

    .line 228
    :cond_1a
    invoke-static/range {v20 .. v20}, Lcom/newrelic/mobile/fbs/ApplicationInfo;->startApplicationInfo(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)V

    .line 229
    const/16 v50, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v50

    invoke-static {v0, v1}, Lcom/newrelic/mobile/fbs/ApplicationInfo;->addPlatform(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 231
    invoke-static/range {v20 .. v20}, Lcom/newrelic/mobile/fbs/ApplicationInfo;->endApplicationInfo(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)I

    move-result v12

    .line 234
    .local v12, "applicationInfoOffset":I
    invoke-static/range {v20 .. v20}, Lcom/newrelic/mobile/fbs/AgentData;->startAgentData(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)V

    .line 236
    const/16 v50, -0x1

    move/from16 v0, v42

    move/from16 v1, v50

    if-eq v0, v1, :cond_1b

    .line 237
    move-object/from16 v0, v20

    move/from16 v1, v42

    invoke-static {v0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->addStringAttributes(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 240
    :cond_1b
    const/16 v50, -0x1

    move/from16 v0, v18

    move/from16 v1, v50

    if-eq v0, v1, :cond_1c

    .line 241
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->addDoubleAttributes(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 244
    :cond_1c
    const/16 v50, -0x1

    move/from16 v0, v34

    move/from16 v1, v50

    if-eq v0, v1, :cond_1d

    .line 245
    move-object/from16 v0, v20

    move/from16 v1, v34

    invoke-static {v0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->addLongAttributes(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 248
    :cond_1d
    const/16 v50, -0x1

    move/from16 v0, v50

    if-eq v15, v0, :cond_1e

    .line 249
    move-object/from16 v0, v20

    invoke-static {v0, v15}, Lcom/newrelic/mobile/fbs/AgentData;->addBoolAttributes(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 252
    :cond_1e
    const/16 v50, -0x1

    move/from16 v0, v29

    move/from16 v1, v50

    if-eq v0, v1, :cond_1f

    .line 253
    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-static {v0, v1}, Lcom/newrelic/mobile/fbs/AgentData;->addHandledExceptions(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 256
    :cond_1f
    move-object/from16 v0, v20

    invoke-static {v0, v12}, Lcom/newrelic/mobile/fbs/AgentData;->addApplicationInfo(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 258
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 260
    .local v6, "agentDataOffsets":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static/range {v20 .. v20}, Lcom/newrelic/mobile/fbs/AgentData;->endAgentData(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)I

    move-result v5

    .line 262
    .local v5, "agentDataOffset":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v50

    move-object/from16 v0, v50

    invoke-interface {v6, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 264
    invoke-static {v6}, Lcom/newrelic/agent/android/agentdata/builder/AgentDataBuilder;->toArray(Ljava/util/Collection;)[I

    move-result-object v50

    move-object/from16 v0, v20

    move-object/from16 v1, v50

    invoke-static {v0, v1}, Lcom/newrelic/mobile/fbs/AgentDataBundle;->createAgentDataVector(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;[I)I

    move-result v7

    .line 266
    .local v7, "agentDataVector":I
    invoke-static/range {v20 .. v20}, Lcom/newrelic/mobile/fbs/AgentDataBundle;->startAgentDataBundle(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)V

    .line 268
    move-object/from16 v0, v20

    invoke-static {v0, v7}, Lcom/newrelic/mobile/fbs/AgentDataBundle;->addAgentData(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;I)V

    .line 269
    invoke-static/range {v20 .. v20}, Lcom/newrelic/mobile/fbs/AgentDataBundle;->endAgentDataBundle(Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;)I

    move-result v4

    .line 270
    .local v4, "agentDataBundleOffset":I
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/newrelic/com/google/flatbuffers/FlatBufferBuilder;->finish(I)V

    .line 272
    return-object v20
.end method

.method private static stringIndexMapOffset(Ljava/util/Map;Ljava/lang/Object;)I
    .locals 3
    .param p1, "hexKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .prologue
    .line 277
    .local p0, "stringIndexMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 278
    .local v1, "offset":Ljava/lang/Integer;
    if-eqz p1, :cond_0

    .line 279
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 280
    .local v0, "index":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 281
    move-object v1, v0

    .line 284
    .end local v0    # "index":Ljava/lang/Integer;
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2
.end method

.method private static toArray(Ljava/util/Collection;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 288
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v4

    new-array v0, v4, [I

    .line 289
    .local v0, "a":[I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 290
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 291
    .local v2, "index":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 292
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v2

    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_0

    .line 294
    :cond_0
    return-object v0
.end method

.method public static toJsonString(Lcom/newrelic/mobile/fbs/AgentDataBundle;I)Ljava/lang/String;
    .locals 3
    .param p0, "agentDataBundle"    # Lcom/newrelic/mobile/fbs/AgentDataBundle;
    .param p1, "index"    # I

    .prologue
    .line 298
    new-instance v2, Lcom/newrelic/com/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/newrelic/com/google/gson/GsonBuilder;-><init>()V

    .line 299
    invoke-virtual {v2}, Lcom/newrelic/com/google/gson/GsonBuilder;->enableComplexMapKeySerialization()Lcom/newrelic/com/google/gson/GsonBuilder;

    move-result-object v2

    .line 300
    invoke-virtual {v2}, Lcom/newrelic/com/google/gson/GsonBuilder;->serializeNulls()Lcom/newrelic/com/google/gson/GsonBuilder;

    move-result-object v2

    .line 301
    invoke-virtual {v2}, Lcom/newrelic/com/google/gson/GsonBuilder;->setPrettyPrinting()Lcom/newrelic/com/google/gson/GsonBuilder;

    move-result-object v2

    .line 302
    invoke-virtual {v2}, Lcom/newrelic/com/google/gson/GsonBuilder;->create()Lcom/newrelic/com/google/gson/Gson;

    move-result-object v1

    .line 304
    .local v1, "gson":Lcom/newrelic/com/google/gson/Gson;
    invoke-virtual {p0, p1}, Lcom/newrelic/mobile/fbs/AgentDataBundle;->agentData(I)Lcom/newrelic/mobile/fbs/AgentData;

    move-result-object v0

    .line 305
    .local v0, "agentData":Lcom/newrelic/mobile/fbs/AgentData;
    invoke-static {v0}, Lcom/newrelic/agent/android/agentdata/builder/AgentDataBuilder;->attributesMapFromAgentData(Lcom/newrelic/mobile/fbs/AgentData;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/newrelic/com/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
