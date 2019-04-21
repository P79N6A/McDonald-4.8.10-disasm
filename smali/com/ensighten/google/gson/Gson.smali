.class public final Lcom/ensighten/google/gson/Gson;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ensighten/google/gson/Gson$FutureTypeAdapter;
    }
.end annotation


# static fields
.field static final DEFAULT_JSON_NON_EXECUTABLE:Z = false

.field private static final JSON_NON_EXECUTABLE_PREFIX:Ljava/lang/String; = ")]}\'\n"


# instance fields
.field private final calls:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Lcom/ensighten/google/gson/reflect/TypeToken",
            "<*>;",
            "Lcom/ensighten/google/gson/Gson$FutureTypeAdapter",
            "<*>;>;>;"
        }
    .end annotation
.end field

.field private final constructorConstructor:Lcom/ensighten/google/gson/internal/ConstructorConstructor;

.field final deserializationContext:Lcom/ensighten/google/gson/JsonDeserializationContext;

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

.field private final generateNonExecutableJson:Z

.field private final htmlSafe:Z

.field private final prettyPrinting:Z

.field final serializationContext:Lcom/ensighten/google/gson/JsonSerializationContext;

.field private final serializeNulls:Z

.field private final typeTokenCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/ensighten/google/gson/reflect/TypeToken",
            "<*>;",
            "Lcom/ensighten/google/gson/TypeAdapter",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 173
    sget-object v1, Lcom/ensighten/google/gson/internal/Excluder;->DEFAULT:Lcom/ensighten/google/gson/internal/Excluder;

    sget-object v2, Lcom/ensighten/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/ensighten/google/gson/FieldNamingPolicy;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    const/4 v7, 0x1

    sget-object v10, Lcom/ensighten/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/ensighten/google/gson/LongSerializationPolicy;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    move-object v0, p0

    move v5, v4

    move v6, v4

    move v8, v4

    move v9, v4

    invoke-direct/range {v0 .. v11}, Lcom/ensighten/google/gson/Gson;-><init>(Lcom/ensighten/google/gson/internal/Excluder;Lcom/ensighten/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZLcom/ensighten/google/gson/LongSerializationPolicy;Ljava/util/List;)V

    .line 177
    return-void
.end method

.method constructor <init>(Lcom/ensighten/google/gson/internal/Excluder;Lcom/ensighten/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZLcom/ensighten/google/gson/LongSerializationPolicy;Ljava/util/List;)V
    .locals 4
    .param p1, "excluder"    # Lcom/ensighten/google/gson/internal/Excluder;
    .param p2, "fieldNamingPolicy"    # Lcom/ensighten/google/gson/FieldNamingStrategy;
    .param p4, "serializeNulls"    # Z
    .param p5, "complexMapKeySerialization"    # Z
    .param p6, "generateNonExecutableGson"    # Z
    .param p7, "htmlSafe"    # Z
    .param p8, "prettyPrinting"    # Z
    .param p9, "serializeSpecialFloatingPointValues"    # Z
    .param p10, "longSerializationPolicy"    # Lcom/ensighten/google/gson/LongSerializationPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/internal/Excluder;",
            "Lcom/ensighten/google/gson/FieldNamingStrategy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/ensighten/google/gson/InstanceCreator",
            "<*>;>;ZZZZZZ",
            "Lcom/ensighten/google/gson/LongSerializationPolicy;",
            "Ljava/util/List",
            "<",
            "Lcom/ensighten/google/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p3, "instanceCreators":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Type;Lcom/ensighten/google/gson/InstanceCreator<*>;>;"
    .local p11, "typeAdapterFactories":Ljava/util/List;, "Ljava/util/List<Lcom/ensighten/google/gson/TypeAdapterFactory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/ensighten/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/google/gson/Gson;->typeTokenCache:Ljava/util/Map;

    .line 117
    new-instance v0, Lcom/ensighten/google/gson/Gson$1;

    invoke-direct {v0, p0}, Lcom/ensighten/google/gson/Gson$1;-><init>(Lcom/ensighten/google/gson/Gson;)V

    iput-object v0, p0, Lcom/ensighten/google/gson/Gson;->deserializationContext:Lcom/ensighten/google/gson/JsonDeserializationContext;

    .line 126
    new-instance v0, Lcom/ensighten/google/gson/Gson$2;

    invoke-direct {v0, p0}, Lcom/ensighten/google/gson/Gson$2;-><init>(Lcom/ensighten/google/gson/Gson;)V

    iput-object v0, p0, Lcom/ensighten/google/gson/Gson;->serializationContext:Lcom/ensighten/google/gson/JsonSerializationContext;

    .line 185
    new-instance v0, Lcom/ensighten/google/gson/internal/ConstructorConstructor;

    invoke-direct {v0, p3}, Lcom/ensighten/google/gson/internal/ConstructorConstructor;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/ensighten/google/gson/Gson;->constructorConstructor:Lcom/ensighten/google/gson/internal/ConstructorConstructor;

    .line 186
    iput-boolean p4, p0, Lcom/ensighten/google/gson/Gson;->serializeNulls:Z

    .line 187
    iput-boolean p6, p0, Lcom/ensighten/google/gson/Gson;->generateNonExecutableJson:Z

    .line 188
    iput-boolean p7, p0, Lcom/ensighten/google/gson/Gson;->htmlSafe:Z

    .line 189
    iput-boolean p8, p0, Lcom/ensighten/google/gson/Gson;->prettyPrinting:Z

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    sget-object v1, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->JSON_ELEMENT_FACTORY:Lcom/ensighten/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v1, Lcom/ensighten/google/gson/internal/bind/ObjectTypeAdapter;->FACTORY:Lcom/ensighten/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-interface {v0, p11}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 204
    sget-object v1, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->STRING_FACTORY:Lcom/ensighten/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v1, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->INTEGER_FACTORY:Lcom/ensighten/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v1, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->BOOLEAN_FACTORY:Lcom/ensighten/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v1, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->BYTE_FACTORY:Lcom/ensighten/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v1, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->SHORT_FACTORY:Lcom/ensighten/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-direct {p0, p10}, Lcom/ensighten/google/gson/Gson;->longAdapter(Lcom/ensighten/google/gson/LongSerializationPolicy;)Lcom/ensighten/google/gson/TypeAdapter;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/ensighten/google/gson/TypeAdapter;)Lcom/ensighten/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-direct {p0, p9}, Lcom/ensighten/google/gson/Gson;->doubleAdapter(Z)Lcom/ensighten/google/gson/TypeAdapter;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/ensighten/google/gson/TypeAdapter;)Lcom/ensighten/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-direct {p0, p9}, Lcom/ensighten/google/gson/Gson;->floatAdapter(Z)Lcom/ensighten/google/gson/TypeAdapter;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Ljava/lang/Class;Lcom/ensighten/google/gson/TypeAdapter;)Lcom/ensighten/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v1, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->NUMBER_FACTORY:Lcom/ensighten/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v1, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->CHARACTER_FACTORY:Lcom/ensighten/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v1, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->STRING_BUILDER_FACTORY:Lcom/ensighten/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v1, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->STRING_BUFFER_FACTORY:Lcom/ensighten/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 219
    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->BIG_DECIMAL:Lcom/ensighten/google/gson/TypeAdapter;

    invoke-static {v1, v2}, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/ensighten/google/gson/TypeAdapter;)Lcom/ensighten/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 220
    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->BIG_INTEGER:Lcom/ensighten/google/gson/TypeAdapter;

    invoke-static {v1, v2}, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->newFactory(Ljava/lang/Class;Lcom/ensighten/google/gson/TypeAdapter;)Lcom/ensighten/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v1, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->URL_FACTORY:Lcom/ensighten/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v1, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->URI_FACTORY:Lcom/ensighten/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v1, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->UUID_FACTORY:Lcom/ensighten/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v1, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->LOCALE_FACTORY:Lcom/ensighten/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v1, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->INET_ADDRESS_FACTORY:Lcom/ensighten/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v1, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->BIT_SET_FACTORY:Lcom/ensighten/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v1, Lcom/ensighten/google/gson/internal/bind/DateTypeAdapter;->FACTORY:Lcom/ensighten/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v1, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->CALENDAR_FACTORY:Lcom/ensighten/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v1, Lcom/ensighten/google/gson/internal/bind/TimeTypeAdapter;->FACTORY:Lcom/ensighten/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v1, Lcom/ensighten/google/gson/internal/bind/SqlDateTypeAdapter;->FACTORY:Lcom/ensighten/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v1, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->TIMESTAMP_FACTORY:Lcom/ensighten/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    sget-object v1, Lcom/ensighten/google/gson/internal/bind/ArrayTypeAdapter;->FACTORY:Lcom/ensighten/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    sget-object v1, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->CLASS_FACTORY:Lcom/ensighten/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    new-instance v1, Lcom/ensighten/google/gson/internal/bind/CollectionTypeAdapterFactory;

    iget-object v2, p0, Lcom/ensighten/google/gson/Gson;->constructorConstructor:Lcom/ensighten/google/gson/internal/ConstructorConstructor;

    invoke-direct {v1, v2}, Lcom/ensighten/google/gson/internal/bind/CollectionTypeAdapterFactory;-><init>(Lcom/ensighten/google/gson/internal/ConstructorConstructor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    new-instance v1, Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory;

    iget-object v2, p0, Lcom/ensighten/google/gson/Gson;->constructorConstructor:Lcom/ensighten/google/gson/internal/ConstructorConstructor;

    invoke-direct {v1, v2, p5}, Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory;-><init>(Lcom/ensighten/google/gson/internal/ConstructorConstructor;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 238
    new-instance v1, Lcom/ensighten/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;

    iget-object v2, p0, Lcom/ensighten/google/gson/Gson;->constructorConstructor:Lcom/ensighten/google/gson/internal/ConstructorConstructor;

    invoke-direct {v1, v2}, Lcom/ensighten/google/gson/internal/bind/JsonAdapterAnnotationTypeAdapterFactory;-><init>(Lcom/ensighten/google/gson/internal/ConstructorConstructor;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    sget-object v1, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->ENUM_FACTORY:Lcom/ensighten/google/gson/TypeAdapterFactory;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v1, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory;

    iget-object v2, p0, Lcom/ensighten/google/gson/Gson;->constructorConstructor:Lcom/ensighten/google/gson/internal/ConstructorConstructor;

    invoke-direct {v1, v2, p2, p1}, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory;-><init>(Lcom/ensighten/google/gson/internal/ConstructorConstructor;Lcom/ensighten/google/gson/FieldNamingStrategy;Lcom/ensighten/google/gson/internal/Excluder;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/google/gson/Gson;->factories:Ljava/util/List;

    .line 244
    return-void
.end method

.method static synthetic access$000(Lcom/ensighten/google/gson/Gson;D)V
    .locals 1
    .param p0, "x0"    # Lcom/ensighten/google/gson/Gson;
    .param p1, "x1"    # D

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/ensighten/google/gson/Gson;->checkValidFloatingPoint(D)V

    return-void
.end method

.method private static assertFullConsumption(Ljava/lang/Object;Lcom/ensighten/google/gson/stream/JsonReader;)V
    .locals 2
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "reader"    # Lcom/ensighten/google/gson/stream/JsonReader;

    .prologue
    .line 248
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->peek()Lcom/ensighten/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/ensighten/google/gson/stream/JsonToken;->END_DOCUMENT:Lcom/ensighten/google/gson/stream/JsonToken;

    if-eq v0, v1, :cond_0

    .line 249
    new-instance v0, Lcom/ensighten/google/gson/JsonIOException;

    const-string v1, "JSON document was not fully consumed."

    invoke-direct {v0, v1}, Lcom/ensighten/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/ensighten/google/gson/stream/MalformedJsonException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    new-instance v1, Lcom/ensighten/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/ensighten/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 253
    :catch_1
    move-exception v0

    .line 254
    new-instance v1, Lcom/ensighten/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/ensighten/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 255
    :cond_0
    return-void
.end method

.method private checkValidFloatingPoint(D)V
    .locals 3
    .param p1, "value"    # D

    .prologue
    .line 313
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid double value as per JSON specification. To override this behavior, use GsonBuilder.serializeSpecialFloatingPointValues() method."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :cond_1
    return-void
.end method

.method private doubleAdapter(Z)Lcom/ensighten/google/gson/TypeAdapter;
    .locals 1
    .param p1, "serializeSpecialFloatingPointValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/ensighten/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    if-eqz p1, :cond_0

    .line 260
    sget-object v0, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->DOUBLE:Lcom/ensighten/google/gson/TypeAdapter;

    .line 262
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/ensighten/google/gson/Gson$3;

    invoke-direct {v0, p0}, Lcom/ensighten/google/gson/Gson$3;-><init>(Lcom/ensighten/google/gson/Gson;)V

    goto :goto_0
.end method

.method private floatAdapter(Z)Lcom/ensighten/google/gson/TypeAdapter;
    .locals 1
    .param p1, "serializeSpecialFloatingPointValues"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/ensighten/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    if-eqz p1, :cond_0

    .line 287
    sget-object v0, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->FLOAT:Lcom/ensighten/google/gson/TypeAdapter;

    .line 289
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/ensighten/google/gson/Gson$4;

    invoke-direct {v0, p0}, Lcom/ensighten/google/gson/Gson$4;-><init>(Lcom/ensighten/google/gson/Gson;)V

    goto :goto_0
.end method

.method private longAdapter(Lcom/ensighten/google/gson/LongSerializationPolicy;)Lcom/ensighten/google/gson/TypeAdapter;
    .locals 1
    .param p1, "longSerializationPolicy"    # Lcom/ensighten/google/gson/LongSerializationPolicy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/LongSerializationPolicy;",
            ")",
            "Lcom/ensighten/google/gson/TypeAdapter",
            "<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .prologue
    .line 321
    sget-object v0, Lcom/ensighten/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/ensighten/google/gson/LongSerializationPolicy;

    if-ne p1, v0, :cond_0

    .line 322
    sget-object v0, Lcom/ensighten/google/gson/internal/bind/TypeAdapters;->LONG:Lcom/ensighten/google/gson/TypeAdapter;

    .line 324
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/ensighten/google/gson/Gson$5;

    invoke-direct {v0, p0}, Lcom/ensighten/google/gson/Gson$5;-><init>(Lcom/ensighten/google/gson/Gson;)V

    goto :goto_0
.end method

.method private newJsonWriter(Ljava/io/Writer;)Lcom/ensighten/google/gson/stream/JsonWriter;
    .locals 2
    .param p1, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 664
    iget-boolean v0, p0, Lcom/ensighten/google/gson/Gson;->generateNonExecutableJson:Z

    if-eqz v0, :cond_0

    .line 665
    const-string v0, ")]}\'\n"

    invoke-virtual {p1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 667
    :cond_0
    new-instance v0, Lcom/ensighten/google/gson/stream/JsonWriter;

    invoke-direct {v0, p1}, Lcom/ensighten/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 668
    iget-boolean v1, p0, Lcom/ensighten/google/gson/Gson;->prettyPrinting:Z

    if-eqz v1, :cond_1

    .line 669
    const-string v1, "  "

    invoke-virtual {v0, v1}, Lcom/ensighten/google/gson/stream/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 671
    :cond_1
    iget-boolean v1, p0, Lcom/ensighten/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {v0, v1}, Lcom/ensighten/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 672
    return-object v0
.end method


# virtual methods
.method public final fromJson(Lcom/ensighten/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "json"    # Lcom/ensighten/google/gson/JsonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ensighten/google/gson/JsonElement;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ensighten/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 857
    .local p2, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/ensighten/google/gson/Gson;->fromJson(Lcom/ensighten/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 858
    invoke-static {p2}, Lcom/ensighten/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final fromJson(Lcom/ensighten/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .param p1, "json"    # Lcom/ensighten/google/gson/JsonElement;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ensighten/google/gson/JsonElement;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ensighten/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 881
    if-nez p1, :cond_0

    .line 882
    const/4 v0, 0x0

    .line 884
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/ensighten/google/gson/internal/bind/JsonTreeReader;

    invoke-direct {v0, p1}, Lcom/ensighten/google/gson/internal/bind/JsonTreeReader;-><init>(Lcom/ensighten/google/gson/JsonElement;)V

    invoke-virtual {p0, v0, p2}, Lcom/ensighten/google/gson/Gson;->fromJson(Lcom/ensighten/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final fromJson(Lcom/ensighten/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 3
    .param p1, "reader"    # Lcom/ensighten/google/gson/stream/JsonReader;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ensighten/google/gson/stream/JsonReader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ensighten/google/gson/JsonIOException;,
            Lcom/ensighten/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 810
    .line 811
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->isLenient()Z

    move-result v2

    .line 812
    invoke-virtual {p1, v1}, Lcom/ensighten/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 814
    :try_start_0
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->peek()Lcom/ensighten/google/gson/stream/JsonToken;

    .line 815
    const/4 v1, 0x0

    .line 816
    invoke-static {p2}, Lcom/ensighten/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/ensighten/google/gson/reflect/TypeToken;

    move-result-object v0

    .line 817
    invoke-virtual {p0, v0}, Lcom/ensighten/google/gson/Gson;->getAdapter(Lcom/ensighten/google/gson/reflect/TypeToken;)Lcom/ensighten/google/gson/TypeAdapter;

    move-result-object v0

    .line 818
    invoke-virtual {v0, p1}, Lcom/ensighten/google/gson/TypeAdapter;->read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 835
    invoke-virtual {p1, v2}, Lcom/ensighten/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 826
    :goto_0
    return-object v0

    .line 820
    :catch_0
    move-exception v0

    .line 825
    if-eqz v1, :cond_0

    .line 835
    invoke-virtual {p1, v2}, Lcom/ensighten/google/gson/stream/JsonReader;->setLenient(Z)V

    .line 826
    const/4 v0, 0x0

    goto :goto_0

    .line 828
    :cond_0
    :try_start_1
    new-instance v1, Lcom/ensighten/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/ensighten/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 835
    :catchall_0
    move-exception v0

    invoke-virtual {p1, v2}, Lcom/ensighten/google/gson/stream/JsonReader;->setLenient(Z)V

    throw v0

    .line 829
    :catch_1
    move-exception v0

    .line 830
    :try_start_2
    new-instance v1, Lcom/ensighten/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/ensighten/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 831
    :catch_2
    move-exception v0

    .line 833
    new-instance v1, Lcom/ensighten/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/ensighten/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public final fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "json"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ensighten/google/gson/JsonSyntaxException;,
            Lcom/ensighten/google/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 767
    .local p2, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/ensighten/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/ensighten/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 768
    invoke-virtual {p0, v0, p2}, Lcom/ensighten/google/gson/Gson;->fromJson(Lcom/ensighten/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 769
    invoke-static {v1, v0}, Lcom/ensighten/google/gson/Gson;->assertFullConsumption(Ljava/lang/Object;Lcom/ensighten/google/gson/stream/JsonReader;)V

    .line 770
    invoke-static {p2}, Lcom/ensighten/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 2
    .param p1, "json"    # Ljava/io/Reader;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/Reader;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ensighten/google/gson/JsonIOException;,
            Lcom/ensighten/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 794
    new-instance v0, Lcom/ensighten/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/ensighten/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 795
    invoke-virtual {p0, v0, p2}, Lcom/ensighten/google/gson/Gson;->fromJson(Lcom/ensighten/google/gson/stream/JsonReader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 796
    invoke-static {v1, v0}, Lcom/ensighten/google/gson/Gson;->assertFullConsumption(Ljava/lang/Object;Lcom/ensighten/google/gson/stream/JsonReader;)V

    .line 797
    return-object v1
.end method

.method public final fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ensighten/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 716
    .local p2, "classOfT":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p2}, Lcom/ensighten/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    .line 717
    invoke-static {p2}, Lcom/ensighten/google/gson/internal/Primitives;->wrap(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
    .param p2, "typeOfT"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ensighten/google/gson/JsonSyntaxException;
        }
    .end annotation

    .prologue
    .line 740
    if-nez p1, :cond_0

    .line 741
    const/4 v0, 0x0

    .line 745
    :goto_0
    return-object v0

    .line 743
    :cond_0
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 744
    invoke-virtual {p0, v0, p2}, Lcom/ensighten/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final getAdapter(Lcom/ensighten/google/gson/reflect/TypeToken;)Lcom/ensighten/google/gson/TypeAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ensighten/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/ensighten/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 353
    .local p1, "type":Lcom/ensighten/google/gson/reflect/TypeToken;, "Lcom/ensighten/google/gson/reflect/TypeToken<TT;>;"
    iget-object v0, p0, Lcom/ensighten/google/gson/Gson;->typeTokenCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/TypeAdapter;

    .line 354
    if-eqz v0, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-object v0

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/ensighten/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 359
    const/4 v1, 0x0

    .line 360
    if-nez v0, :cond_5

    .line 361
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 362
    iget-object v0, p0, Lcom/ensighten/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 363
    const/4 v0, 0x1

    move-object v2, v1

    move v1, v0

    .line 367
    :goto_1
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/Gson$FutureTypeAdapter;

    .line 368
    if-nez v0, :cond_0

    .line 373
    :try_start_0
    new-instance v3, Lcom/ensighten/google/gson/Gson$FutureTypeAdapter;

    invoke-direct {v3}, Lcom/ensighten/google/gson/Gson$FutureTypeAdapter;-><init>()V

    .line 374
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    iget-object v0, p0, Lcom/ensighten/google/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/TypeAdapterFactory;

    .line 377
    invoke-interface {v0, p0, p1}, Lcom/ensighten/google/gson/TypeAdapterFactory;->create(Lcom/ensighten/google/gson/Gson;Lcom/ensighten/google/gson/reflect/TypeToken;)Lcom/ensighten/google/gson/TypeAdapter;

    move-result-object v0

    .line 378
    if-eqz v0, :cond_2

    .line 379
    invoke-virtual {v3, v0}, Lcom/ensighten/google/gson/Gson$FutureTypeAdapter;->setDelegate(Lcom/ensighten/google/gson/TypeAdapter;)V

    .line 380
    iget-object v3, p0, Lcom/ensighten/google/gson/Gson;->typeTokenCache:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 386
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    if-eqz v1, :cond_0

    .line 389
    iget-object v1, p0, Lcom/ensighten/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_0

    .line 384
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "GSON cannot handle "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 386
    :catchall_0
    move-exception v0

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    if-eqz v1, :cond_4

    .line 389
    iget-object v1, p0, Lcom/ensighten/google/gson/Gson;->calls:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 386
    :cond_4
    throw v0

    :cond_5
    move-object v2, v0

    goto :goto_1
.end method

.method public final getAdapter(Ljava/lang/Class;)Lcom/ensighten/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/ensighten/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 470
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/ensighten/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/ensighten/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ensighten/google/gson/Gson;->getAdapter(Lcom/ensighten/google/gson/reflect/TypeToken;)Lcom/ensighten/google/gson/TypeAdapter;

    move-result-object v0

    return-object v0
.end method

.method public final getDelegateAdapter(Lcom/ensighten/google/gson/TypeAdapterFactory;Lcom/ensighten/google/gson/reflect/TypeToken;)Lcom/ensighten/google/gson/TypeAdapter;
    .locals 4
    .param p1, "skipPast"    # Lcom/ensighten/google/gson/TypeAdapterFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/ensighten/google/gson/TypeAdapterFactory;",
            "Lcom/ensighten/google/gson/reflect/TypeToken",
            "<TT;>;)",
            "Lcom/ensighten/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p2, "type":Lcom/ensighten/google/gson/reflect/TypeToken;, "Lcom/ensighten/google/gson/reflect/TypeToken<TT;>;"
    const/4 v1, 0x1

    .line 441
    const/4 v0, 0x0

    .line 445
    iget-object v2, p0, Lcom/ensighten/google/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 447
    :cond_0
    iget-object v2, p0, Lcom/ensighten/google/gson/Gson;->factories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v2, v0

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/TypeAdapterFactory;

    .line 448
    if-nez v2, :cond_2

    .line 449
    if-ne v0, p1, :cond_1

    move v2, v1

    .line 450
    goto :goto_0

    .line 455
    :cond_2
    invoke-interface {v0, p0, p2}, Lcom/ensighten/google/gson/TypeAdapterFactory;->create(Lcom/ensighten/google/gson/Gson;Lcom/ensighten/google/gson/reflect/TypeToken;)Lcom/ensighten/google/gson/TypeAdapter;

    move-result-object v0

    .line 456
    if-eqz v0, :cond_1

    .line 457
    return-object v0

    .line 460
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GSON cannot serialize "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toJson(Lcom/ensighten/google/gson/JsonElement;)Ljava/lang/String;
    .locals 1
    .param p1, "jsonElement"    # Lcom/ensighten/google/gson/JsonElement;

    .prologue
    .line 637
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 638
    invoke-virtual {p0, p1, v0}, Lcom/ensighten/google/gson/Gson;->toJson(Lcom/ensighten/google/gson/JsonElement;Ljava/lang/Appendable;)V

    .line 639
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;

    .prologue
    .line 529
    if-nez p1, :cond_0

    .line 530
    sget-object v0, Lcom/ensighten/google/gson/JsonNull;->INSTANCE:Lcom/ensighten/google/gson/JsonNull;

    invoke-virtual {p0, v0}, Lcom/ensighten/google/gson/Gson;->toJson(Lcom/ensighten/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    .line 532
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ensighten/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;

    .prologue
    .line 551
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 552
    invoke-virtual {p0, p1, p2, v0}, Lcom/ensighten/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 553
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toJson(Lcom/ensighten/google/gson/JsonElement;Lcom/ensighten/google/gson/stream/JsonWriter;)V
    .locals 5
    .param p1, "jsonElement"    # Lcom/ensighten/google/gson/JsonElement;
    .param p2, "writer"    # Lcom/ensighten/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ensighten/google/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 681
    invoke-virtual {p2}, Lcom/ensighten/google/gson/stream/JsonWriter;->isLenient()Z

    move-result v1

    .line 682
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/ensighten/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 683
    invoke-virtual {p2}, Lcom/ensighten/google/gson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v2

    .line 684
    iget-boolean v0, p0, Lcom/ensighten/google/gson/Gson;->htmlSafe:Z

    invoke-virtual {p2, v0}, Lcom/ensighten/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 685
    invoke-virtual {p2}, Lcom/ensighten/google/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v3

    .line 686
    iget-boolean v0, p0, Lcom/ensighten/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {p2, v0}, Lcom/ensighten/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 688
    :try_start_0
    invoke-static {p1, p2}, Lcom/ensighten/google/gson/internal/Streams;->write(Lcom/ensighten/google/gson/JsonElement;Lcom/ensighten/google/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 692
    invoke-virtual {p2, v1}, Lcom/ensighten/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 693
    invoke-virtual {p2, v2}, Lcom/ensighten/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 694
    invoke-virtual {p2, v3}, Lcom/ensighten/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 695
    return-void

    .line 689
    :catch_0
    move-exception v0

    .line 690
    :try_start_1
    new-instance v4, Lcom/ensighten/google/gson/JsonIOException;

    invoke-direct {v4, v0}, Lcom/ensighten/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 692
    :catchall_0
    move-exception v0

    invoke-virtual {p2, v1}, Lcom/ensighten/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 693
    invoke-virtual {p2, v2}, Lcom/ensighten/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 694
    invoke-virtual {p2, v3}, Lcom/ensighten/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 692
    throw v0
.end method

.method public final toJson(Lcom/ensighten/google/gson/JsonElement;Ljava/lang/Appendable;)V
    .locals 2
    .param p1, "jsonElement"    # Lcom/ensighten/google/gson/JsonElement;
    .param p2, "writer"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ensighten/google/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 652
    :try_start_0
    invoke-static {p2}, Lcom/ensighten/google/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/ensighten/google/gson/stream/JsonWriter;

    move-result-object v0

    .line 653
    invoke-virtual {p0, p1, v0}, Lcom/ensighten/google/gson/Gson;->toJson(Lcom/ensighten/google/gson/JsonElement;Lcom/ensighten/google/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    return-void

    .line 654
    :catch_0
    move-exception v0

    .line 655
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toJson(Ljava/lang/Object;Ljava/lang/Appendable;)V
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "writer"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ensighten/google/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 571
    if-eqz p1, :cond_0

    .line 572
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/ensighten/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V

    .line 576
    :goto_0
    return-void

    .line 574
    :cond_0
    sget-object v0, Lcom/ensighten/google/gson/JsonNull;->INSTANCE:Lcom/ensighten/google/gson/JsonNull;

    invoke-virtual {p0, v0, p2}, Lcom/ensighten/google/gson/Gson;->toJson(Lcom/ensighten/google/gson/JsonElement;Ljava/lang/Appendable;)V

    goto :goto_0
.end method

.method public final toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/ensighten/google/gson/stream/JsonWriter;)V
    .locals 5
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;
    .param p3, "writer"    # Lcom/ensighten/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ensighten/google/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 611
    invoke-static {p2}, Lcom/ensighten/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/ensighten/google/gson/reflect/TypeToken;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ensighten/google/gson/Gson;->getAdapter(Lcom/ensighten/google/gson/reflect/TypeToken;)Lcom/ensighten/google/gson/TypeAdapter;

    move-result-object v0

    .line 612
    invoke-virtual {p3}, Lcom/ensighten/google/gson/stream/JsonWriter;->isLenient()Z

    move-result v1

    .line 613
    const/4 v2, 0x1

    invoke-virtual {p3, v2}, Lcom/ensighten/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 614
    invoke-virtual {p3}, Lcom/ensighten/google/gson/stream/JsonWriter;->isHtmlSafe()Z

    move-result v2

    .line 615
    iget-boolean v3, p0, Lcom/ensighten/google/gson/Gson;->htmlSafe:Z

    invoke-virtual {p3, v3}, Lcom/ensighten/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 616
    invoke-virtual {p3}, Lcom/ensighten/google/gson/stream/JsonWriter;->getSerializeNulls()Z

    move-result v3

    .line 617
    iget-boolean v4, p0, Lcom/ensighten/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {p3, v4}, Lcom/ensighten/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 619
    :try_start_0
    invoke-virtual {v0, p3, p1}, Lcom/ensighten/google/gson/TypeAdapter;->write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    invoke-virtual {p3, v1}, Lcom/ensighten/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 624
    invoke-virtual {p3, v2}, Lcom/ensighten/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 625
    invoke-virtual {p3, v3}, Lcom/ensighten/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 626
    return-void

    .line 620
    :catch_0
    move-exception v0

    .line 621
    :try_start_1
    new-instance v4, Lcom/ensighten/google/gson/JsonIOException;

    invoke-direct {v4, v0}, Lcom/ensighten/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 623
    :catchall_0
    move-exception v0

    invoke-virtual {p3, v1}, Lcom/ensighten/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 624
    invoke-virtual {p3, v2}, Lcom/ensighten/google/gson/stream/JsonWriter;->setHtmlSafe(Z)V

    .line 625
    invoke-virtual {p3, v3}, Lcom/ensighten/google/gson/stream/JsonWriter;->setSerializeNulls(Z)V

    .line 623
    throw v0
.end method

.method public final toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Ljava/lang/Appendable;)V
    .locals 2
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;
    .param p3, "writer"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ensighten/google/gson/JsonIOException;
        }
    .end annotation

    .prologue
    .line 596
    :try_start_0
    invoke-static {p3}, Lcom/ensighten/google/gson/internal/Streams;->writerForAppendable(Ljava/lang/Appendable;)Ljava/io/Writer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/ensighten/google/gson/stream/JsonWriter;

    move-result-object v0

    .line 597
    invoke-virtual {p0, p1, p2, v0}, Lcom/ensighten/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/ensighten/google/gson/stream/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    return-void

    .line 598
    :catch_0
    move-exception v0

    .line 599
    new-instance v1, Lcom/ensighten/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/ensighten/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final toJsonTree(Ljava/lang/Object;)Lcom/ensighten/google/gson/JsonElement;
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;

    .prologue
    .line 487
    if-nez p1, :cond_0

    .line 488
    sget-object v0, Lcom/ensighten/google/gson/JsonNull;->INSTANCE:Lcom/ensighten/google/gson/JsonNull;

    .line 490
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/ensighten/google/gson/Gson;->toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/ensighten/google/gson/JsonElement;

    move-result-object v0

    goto :goto_0
.end method

.method public final toJsonTree(Ljava/lang/Object;Ljava/lang/reflect/Type;)Lcom/ensighten/google/gson/JsonElement;
    .locals 1
    .param p1, "src"    # Ljava/lang/Object;
    .param p2, "typeOfSrc"    # Ljava/lang/reflect/Type;

    .prologue
    .line 510
    new-instance v0, Lcom/ensighten/google/gson/internal/bind/JsonTreeWriter;

    invoke-direct {v0}, Lcom/ensighten/google/gson/internal/bind/JsonTreeWriter;-><init>()V

    .line 511
    invoke-virtual {p0, p1, p2, v0}, Lcom/ensighten/google/gson/Gson;->toJson(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/ensighten/google/gson/stream/JsonWriter;)V

    .line 512
    invoke-virtual {v0}, Lcom/ensighten/google/gson/internal/bind/JsonTreeWriter;->get()Lcom/ensighten/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 889
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{serializeNulls:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/ensighten/google/gson/Gson;->serializeNulls:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "factories:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ensighten/google/gson/Gson;->factories:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",instanceCreators:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ensighten/google/gson/Gson;->constructorConstructor:Lcom/ensighten/google/gson/internal/ConstructorConstructor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
