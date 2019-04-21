.class public final Lcom/ensighten/google/gson/GsonBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private complexMapKeySerialization:Z

.field private datePattern:Ljava/lang/String;

.field private dateStyle:I

.field private escapeHtmlChars:Z

.field private excluder:Lcom/ensighten/google/gson/internal/Excluder;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ensighten/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private fieldNamingPolicy:Lcom/ensighten/google/gson/FieldNamingStrategy;

.field private generateNonExecutableJson:Z

.field private final hierarchyFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ensighten/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/ensighten/google/gson/InstanceCreator",
            "<*>;>;"
        }
    .end annotation
.end field

.field private longSerializationPolicy:Lcom/ensighten/google/gson/LongSerializationPolicy;

.field private prettyPrinting:Z

.field private serializeNulls:Z

.field private serializeSpecialFloatingPointValues:Z

.field private timeStyle:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->factories:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    .line 76
    sget-object v0, Lcom/ensighten/google/gson/internal/Excluder;->DEFAULT:Lcom/ensighten/google/gson/internal/Excluder;

    iput-object v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->excluder:Lcom/ensighten/google/gson/internal/Excluder;

    .line 77
    sget-object v0, Lcom/ensighten/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/ensighten/google/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/ensighten/google/gson/LongSerializationPolicy;

    .line 78
    sget-object v0, Lcom/ensighten/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/ensighten/google/gson/FieldNamingPolicy;

    iput-object v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/ensighten/google/gson/FieldNamingStrategy;

    .line 81
    iput v1, p0, Lcom/ensighten/google/gson/GsonBuilder;->dateStyle:I

    .line 82
    iput v1, p0, Lcom/ensighten/google/gson/GsonBuilder;->timeStyle:I

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 96
    return-void
.end method

.method private addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V
    .locals 3
    .param p1, "datePattern"    # Ljava/lang/String;
    .param p2, "dateStyle"    # I
    .param p3, "timeStyle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/ensighten/google/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/ensighten/google/gson/TypeAdapterFactory;>;"
    const/4 v2, 0x2

    .line 556
    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 557
    new-instance v0, Lcom/ensighten/google/gson/DefaultDateTypeAdapter;

    invoke-direct {v0, p1}, Lcom/ensighten/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/String;)V

    .line 564
    :goto_0
    const-class v1, Ljava/util/Date;

    invoke-static {v1}, Lcom/ensighten/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/ensighten/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ensighten/google/gson/TreeTypeAdapter;->newFactory(Lcom/ensighten/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/ensighten/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 565
    const-class v1, Ljava/sql/Timestamp;

    invoke-static {v1}, Lcom/ensighten/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/ensighten/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ensighten/google/gson/TreeTypeAdapter;->newFactory(Lcom/ensighten/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/ensighten/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    const-class v1, Ljava/sql/Date;

    invoke-static {v1}, Lcom/ensighten/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/ensighten/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/ensighten/google/gson/TreeTypeAdapter;->newFactory(Lcom/ensighten/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/ensighten/google/gson/TypeAdapterFactory;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    :cond_0
    return-void

    .line 558
    :cond_1
    if-eq p2, v2, :cond_0

    if-eq p3, v2, :cond_0

    .line 559
    new-instance v0, Lcom/ensighten/google/gson/DefaultDateTypeAdapter;

    invoke-direct {v0, p2, p3}, Lcom/ensighten/google/gson/DefaultDateTypeAdapter;-><init>(II)V

    goto :goto_0
.end method


# virtual methods
.method public final addDeserializationExclusionStrategy(Lcom/ensighten/google/gson/ExclusionStrategy;)Lcom/ensighten/google/gson/GsonBuilder;
    .locals 3
    .param p1, "strategy"    # Lcom/ensighten/google/gson/ExclusionStrategy;

    .prologue
    .line 341
    iget-object v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->excluder:Lcom/ensighten/google/gson/internal/Excluder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Lcom/ensighten/google/gson/internal/Excluder;->withExclusionStrategy(Lcom/ensighten/google/gson/ExclusionStrategy;ZZ)Lcom/ensighten/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->excluder:Lcom/ensighten/google/gson/internal/Excluder;

    .line 342
    return-object p0
.end method

.method public final addSerializationExclusionStrategy(Lcom/ensighten/google/gson/ExclusionStrategy;)Lcom/ensighten/google/gson/GsonBuilder;
    .locals 3
    .param p1, "strategy"    # Lcom/ensighten/google/gson/ExclusionStrategy;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->excluder:Lcom/ensighten/google/gson/internal/Excluder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/ensighten/google/gson/internal/Excluder;->withExclusionStrategy(Lcom/ensighten/google/gson/ExclusionStrategy;ZZ)Lcom/ensighten/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->excluder:Lcom/ensighten/google/gson/internal/Excluder;

    .line 325
    return-object p0
.end method

.method public final create()Lcom/ensighten/google/gson/Gson;
    .locals 12

    .prologue
    .line 541
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 542
    iget-object v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 543
    invoke-static {v11}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 544
    iget-object v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-interface {v11, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 545
    iget-object v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    iget v1, p0, Lcom/ensighten/google/gson/GsonBuilder;->dateStyle:I

    iget v2, p0, Lcom/ensighten/google/gson/GsonBuilder;->timeStyle:I

    invoke-direct {p0, v0, v1, v2, v11}, Lcom/ensighten/google/gson/GsonBuilder;->addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V

    .line 547
    new-instance v0, Lcom/ensighten/google/gson/Gson;

    iget-object v1, p0, Lcom/ensighten/google/gson/GsonBuilder;->excluder:Lcom/ensighten/google/gson/internal/Excluder;

    iget-object v2, p0, Lcom/ensighten/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/ensighten/google/gson/FieldNamingStrategy;

    iget-object v3, p0, Lcom/ensighten/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    iget-boolean v4, p0, Lcom/ensighten/google/gson/GsonBuilder;->serializeNulls:Z

    iget-boolean v5, p0, Lcom/ensighten/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    iget-boolean v6, p0, Lcom/ensighten/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    iget-boolean v7, p0, Lcom/ensighten/google/gson/GsonBuilder;->escapeHtmlChars:Z

    iget-boolean v8, p0, Lcom/ensighten/google/gson/GsonBuilder;->prettyPrinting:Z

    iget-boolean v9, p0, Lcom/ensighten/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    iget-object v10, p0, Lcom/ensighten/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/ensighten/google/gson/LongSerializationPolicy;

    invoke-direct/range {v0 .. v11}, Lcom/ensighten/google/gson/Gson;-><init>(Lcom/ensighten/google/gson/internal/Excluder;Lcom/ensighten/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZLcom/ensighten/google/gson/LongSerializationPolicy;Ljava/util/List;)V

    return-object v0
.end method

.method public final disableHtmlEscaping()Lcom/ensighten/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 365
    return-object p0
.end method

.method public final disableInnerClassSerialization()Lcom/ensighten/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->excluder:Lcom/ensighten/google/gson/internal/Excluder;

    invoke-virtual {v0}, Lcom/ensighten/google/gson/internal/Excluder;->disableInnerClassSerialization()Lcom/ensighten/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->excluder:Lcom/ensighten/google/gson/internal/Excluder;

    .line 252
    return-object p0
.end method

.method public final enableComplexMapKeySerialization()Lcom/ensighten/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    .line 241
    return-object p0
.end method

.method public final varargs excludeFieldsWithModifiers([I)Lcom/ensighten/google/gson/GsonBuilder;
    .locals 1
    .param p1, "modifiers"    # [I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->excluder:Lcom/ensighten/google/gson/internal/Excluder;

    invoke-virtual {v0, p1}, Lcom/ensighten/google/gson/internal/Excluder;->withModifiers([I)Lcom/ensighten/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->excluder:Lcom/ensighten/google/gson/internal/Excluder;

    .line 123
    return-object p0
.end method

.method public final excludeFieldsWithoutExposeAnnotation()Lcom/ensighten/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->excluder:Lcom/ensighten/google/gson/internal/Excluder;

    invoke-virtual {v0}, Lcom/ensighten/google/gson/internal/Excluder;->excludeFieldsWithoutExposeAnnotation()Lcom/ensighten/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->excluder:Lcom/ensighten/google/gson/internal/Excluder;

    .line 148
    return-object p0
.end method

.method public final generateNonExecutableJson()Lcom/ensighten/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    .line 137
    return-object p0
.end method

.method public final registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/ensighten/google/gson/GsonBuilder;
    .locals 2
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "typeAdapter"    # Ljava/lang/Object;

    .prologue
    .line 450
    instance-of v0, p2, Lcom/ensighten/google/gson/JsonSerializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/ensighten/google/gson/JsonDeserializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/ensighten/google/gson/InstanceCreator;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/ensighten/google/gson/TypeAdapter;

    if-eqz v0, :cond_5

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/ensighten/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 454
    instance-of v0, p2, Lcom/ensighten/google/gson/InstanceCreator;

    if-eqz v0, :cond_1

    .line 455
    iget-object v1, p0, Lcom/ensighten/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    move-object v0, p2

    check-cast v0, Lcom/ensighten/google/gson/InstanceCreator;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    :cond_1
    instance-of v0, p2, Lcom/ensighten/google/gson/JsonSerializer;

    if-nez v0, :cond_2

    instance-of v0, p2, Lcom/ensighten/google/gson/JsonDeserializer;

    if-eqz v0, :cond_3

    .line 458
    :cond_2
    invoke-static {p1}, Lcom/ensighten/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/ensighten/google/gson/reflect/TypeToken;

    move-result-object v0

    .line 459
    iget-object v1, p0, Lcom/ensighten/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-static {v0, p2}, Lcom/ensighten/google/gson/TreeTypeAdapter;->newFactoryWithMatchRawType(Lcom/ensighten/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/ensighten/google/gson/TypeAdapterFactory;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    :cond_3
    instance-of v0, p2, Lcom/ensighten/google/gson/TypeAdapter;

    if-eqz v0, :cond_4

    .line 462
    iget-object v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-static {p1}, Lcom/ensighten/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/ensighten/google/gson/reflect/TypeToken;

    move-result-object v1

    check-cast p2, Lcom/ensighten/google/gson/TypeAdapter;

    .end local p2    # "typeAdapter":Ljava/lang/Object;
    invoke-static {v1, p2}, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->newFactory(Lcom/ensighten/google/gson/reflect/TypeToken;Lcom/ensighten/google/gson/TypeAdapter;)Lcom/ensighten/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    :cond_4
    return-object p0

    .line 450
    .restart local p2    # "typeAdapter":Ljava/lang/Object;
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final registerTypeAdapterFactory(Lcom/ensighten/google/gson/TypeAdapterFactory;)Lcom/ensighten/google/gson/GsonBuilder;
    .locals 1
    .param p1, "factory"    # Lcom/ensighten/google/gson/TypeAdapterFactory;

    .prologue
    .line 476
    iget-object v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 477
    return-object p0
.end method

.method public final registerTypeHierarchyAdapter(Ljava/lang/Class;Ljava/lang/Object;)Lcom/ensighten/google/gson/GsonBuilder;
    .locals 3
    .param p2, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/ensighten/google/gson/GsonBuilder;"
        }
    .end annotation

    .prologue
    .local p1, "baseType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 496
    instance-of v0, p2, Lcom/ensighten/google/gson/JsonSerializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/ensighten/google/gson/JsonDeserializer;

    if-nez v0, :cond_0

    instance-of v0, p2, Lcom/ensighten/google/gson/TypeAdapter;

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/ensighten/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 499
    instance-of v0, p2, Lcom/ensighten/google/gson/JsonDeserializer;

    if-nez v0, :cond_1

    instance-of v0, p2, Lcom/ensighten/google/gson/JsonSerializer;

    if-eqz v0, :cond_2

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-static {p1, p2}, Lcom/ensighten/google/gson/TreeTypeAdapter;->newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/ensighten/google/gson/TypeAdapterFactory;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 503
    :cond_2
    instance-of v0, p2, Lcom/ensighten/google/gson/TypeAdapter;

    if-eqz v0, :cond_3

    .line 504
    iget-object v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->factories:Ljava/util/List;

    check-cast p2, Lcom/ensighten/google/gson/TypeAdapter;

    .end local p2    # "typeAdapter":Ljava/lang/Object;
    invoke-static {p1, p2}, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->newTypeHierarchyFactory(Ljava/lang/Class;Lcom/ensighten/google/gson/TypeAdapter;)Lcom/ensighten/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_3
    return-object p0

    .restart local p2    # "typeAdapter":Ljava/lang/Object;
    :cond_4
    move v0, v1

    .line 496
    goto :goto_0
.end method

.method public final serializeNulls()Lcom/ensighten/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 159
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->serializeNulls:Z

    .line 160
    return-object p0
.end method

.method public final serializeSpecialFloatingPointValues()Lcom/ensighten/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    .line 531
    return-object p0
.end method

.method public final setDateFormat(I)Lcom/ensighten/google/gson/GsonBuilder;
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 405
    iput p1, p0, Lcom/ensighten/google/gson/GsonBuilder;->dateStyle:I

    .line 406
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 407
    return-object p0
.end method

.method public final setDateFormat(II)Lcom/ensighten/google/gson/GsonBuilder;
    .locals 1
    .param p1, "dateStyle"    # I
    .param p2, "timeStyle"    # I

    .prologue
    .line 426
    iput p1, p0, Lcom/ensighten/google/gson/GsonBuilder;->dateStyle:I

    .line 427
    iput p2, p0, Lcom/ensighten/google/gson/GsonBuilder;->timeStyle:I

    .line 428
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 429
    return-object p0
.end method

.method public final setDateFormat(Ljava/lang/String;)Lcom/ensighten/google/gson/GsonBuilder;
    .locals 0
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 386
    iput-object p1, p0, Lcom/ensighten/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    .line 387
    return-object p0
.end method

.method public final varargs setExclusionStrategies([Lcom/ensighten/google/gson/ExclusionStrategy;)Lcom/ensighten/google/gson/GsonBuilder;
    .locals 5
    .param p1, "strategies"    # [Lcom/ensighten/google/gson/ExclusionStrategy;

    .prologue
    const/4 v4, 0x1

    .line 305
    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 306
    iget-object v3, p0, Lcom/ensighten/google/gson/GsonBuilder;->excluder:Lcom/ensighten/google/gson/internal/Excluder;

    invoke-virtual {v3, v2, v4, v4}, Lcom/ensighten/google/gson/internal/Excluder;->withExclusionStrategy(Lcom/ensighten/google/gson/ExclusionStrategy;ZZ)Lcom/ensighten/google/gson/internal/Excluder;

    move-result-object v2

    iput-object v2, p0, Lcom/ensighten/google/gson/GsonBuilder;->excluder:Lcom/ensighten/google/gson/internal/Excluder;

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_0
    return-object p0
.end method

.method public final setFieldNamingPolicy(Lcom/ensighten/google/gson/FieldNamingPolicy;)Lcom/ensighten/google/gson/GsonBuilder;
    .locals 0
    .param p1, "namingConvention"    # Lcom/ensighten/google/gson/FieldNamingPolicy;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/ensighten/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/ensighten/google/gson/FieldNamingStrategy;

    .line 278
    return-object p0
.end method

.method public final setFieldNamingStrategy(Lcom/ensighten/google/gson/FieldNamingStrategy;)Lcom/ensighten/google/gson/GsonBuilder;
    .locals 0
    .param p1, "fieldNamingStrategy"    # Lcom/ensighten/google/gson/FieldNamingStrategy;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/ensighten/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/ensighten/google/gson/FieldNamingStrategy;

    .line 291
    return-object p0
.end method

.method public final setLongSerializationPolicy(Lcom/ensighten/google/gson/LongSerializationPolicy;)Lcom/ensighten/google/gson/GsonBuilder;
    .locals 0
    .param p1, "serializationPolicy"    # Lcom/ensighten/google/gson/LongSerializationPolicy;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/ensighten/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/ensighten/google/gson/LongSerializationPolicy;

    .line 265
    return-object p0
.end method

.method public final setPrettyPrinting()Lcom/ensighten/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 352
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->prettyPrinting:Z

    .line 353
    return-object p0
.end method

.method public final setVersion(D)Lcom/ensighten/google/gson/GsonBuilder;
    .locals 1
    .param p1, "ignoreVersionsAfter"    # D

    .prologue
    .line 106
    iget-object v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->excluder:Lcom/ensighten/google/gson/internal/Excluder;

    invoke-virtual {v0, p1, p2}, Lcom/ensighten/google/gson/internal/Excluder;->withVersion(D)Lcom/ensighten/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/google/gson/GsonBuilder;->excluder:Lcom/ensighten/google/gson/internal/Excluder;

    .line 107
    return-object p0
.end method
