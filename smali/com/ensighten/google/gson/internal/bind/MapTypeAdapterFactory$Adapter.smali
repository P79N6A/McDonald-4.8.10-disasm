.class final Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;
.super Lcom/ensighten/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/ensighten/google/gson/TypeAdapter",
        "<",
        "Ljava/util/Map",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final constructor:Lcom/ensighten/google/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ensighten/google/gson/internal/ObjectConstructor",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final keyTypeAdapter:Lcom/ensighten/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ensighten/google/gson/TypeAdapter",
            "<TK;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory;

.field private final valueTypeAdapter:Lcom/ensighten/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ensighten/google/gson/TypeAdapter",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory;Lcom/ensighten/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/ensighten/google/gson/TypeAdapter;Ljava/lang/reflect/Type;Lcom/ensighten/google/gson/TypeAdapter;Lcom/ensighten/google/gson/internal/ObjectConstructor;)V
    .locals 1
    .param p2, "context"    # Lcom/ensighten/google/gson/Gson;
    .param p3, "keyType"    # Ljava/lang/reflect/Type;
    .param p5, "valueType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/Gson;",
            "Ljava/lang/reflect/Type;",
            "Lcom/ensighten/google/gson/TypeAdapter",
            "<TK;>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/ensighten/google/gson/TypeAdapter",
            "<TV;>;",
            "Lcom/ensighten/google/gson/internal/ObjectConstructor",
            "<+",
            "Ljava/util/Map",
            "<TK;TV;>;>;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "this":Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;, "Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    .local p4, "keyTypeAdapter":Lcom/ensighten/google/gson/TypeAdapter;, "Lcom/ensighten/google/gson/TypeAdapter<TK;>;"
    .local p6, "valueTypeAdapter":Lcom/ensighten/google/gson/TypeAdapter;, "Lcom/ensighten/google/gson/TypeAdapter<TV;>;"
    .local p7, "constructor":Lcom/ensighten/google/gson/internal/ObjectConstructor;, "Lcom/ensighten/google/gson/internal/ObjectConstructor<+Ljava/util/Map<TK;TV;>;>;"
    iput-object p1, p0, Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->this$0:Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory;

    invoke-direct {p0}, Lcom/ensighten/google/gson/TypeAdapter;-><init>()V

    .line 154
    new-instance v0, Lcom/ensighten/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {v0, p2, p4, p3}, Lcom/ensighten/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/ensighten/google/gson/Gson;Lcom/ensighten/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/ensighten/google/gson/TypeAdapter;

    .line 156
    new-instance v0, Lcom/ensighten/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {v0, p2, p6, p5}, Lcom/ensighten/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/ensighten/google/gson/Gson;Lcom/ensighten/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/ensighten/google/gson/TypeAdapter;

    .line 158
    iput-object p7, p0, Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->constructor:Lcom/ensighten/google/gson/internal/ObjectConstructor;

    .line 159
    return-void
.end method

.method private keyToString(Lcom/ensighten/google/gson/JsonElement;)Ljava/lang/String;
    .locals 2
    .param p1, "keyElement"    # Lcom/ensighten/google/gson/JsonElement;

    .prologue
    .line 247
    .local p0, "this":Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;, "Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    invoke-virtual {p1}, Lcom/ensighten/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 248
    invoke-virtual {p1}, Lcom/ensighten/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/ensighten/google/gson/JsonPrimitive;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lcom/ensighten/google/gson/JsonPrimitive;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {v0}, Lcom/ensighten/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 259
    :goto_0
    return-object v0

    .line 251
    :cond_0
    invoke-virtual {v0}, Lcom/ensighten/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 252
    invoke-virtual {v0}, Lcom/ensighten/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {v0}, Lcom/ensighten/google/gson/JsonPrimitive;->isString()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    invoke-virtual {v0}, Lcom/ensighten/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 256
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 258
    :cond_3
    invoke-virtual {p1}, Lcom/ensighten/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 259
    const-string v0, "null"

    goto :goto_0

    .line 261
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public final bridge synthetic read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/ensighten/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;, "Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    invoke-virtual {p0, p1}, Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/util/Map;
    .locals 4
    .param p1, "in"    # Lcom/ensighten/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/stream/JsonReader;",
            ")",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "this":Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;, "Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->peek()Lcom/ensighten/google/gson/stream/JsonToken;

    move-result-object v1

    .line 163
    sget-object v0, Lcom/ensighten/google/gson/stream/JsonToken;->NULL:Lcom/ensighten/google/gson/stream/JsonToken;

    if-ne v1, v0, :cond_0

    .line 164
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->nextNull()V

    .line 165
    const/4 v0, 0x0

    .line 196
    :goto_0
    return-object v0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->constructor:Lcom/ensighten/google/gson/internal/ObjectConstructor;

    invoke-interface {v0}, Lcom/ensighten/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 170
    sget-object v2, Lcom/ensighten/google/gson/stream/JsonToken;->BEGIN_ARRAY:Lcom/ensighten/google/gson/stream/JsonToken;

    if-ne v1, v2, :cond_3

    .line 171
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->beginArray()V

    .line 172
    :goto_1
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->beginArray()V

    .line 174
    iget-object v1, p0, Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/ensighten/google/gson/TypeAdapter;

    invoke-virtual {v1, p1}, Lcom/ensighten/google/gson/TypeAdapter;->read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    .line 175
    iget-object v2, p0, Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/ensighten/google/gson/TypeAdapter;

    invoke-virtual {v2, p1}, Lcom/ensighten/google/gson/TypeAdapter;->read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    .line 176
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 177
    if-eqz v2, :cond_1

    .line 178
    new-instance v0, Lcom/ensighten/google/gson/JsonSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "duplicate key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ensighten/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_1
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->endArray()V

    goto :goto_1

    .line 182
    :cond_2
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->endArray()V

    goto :goto_0

    .line 184
    :cond_3
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->beginObject()V

    .line 185
    :cond_4
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 186
    sget-object v1, Lcom/ensighten/google/gson/internal/JsonReaderInternalAccess;->INSTANCE:Lcom/ensighten/google/gson/internal/JsonReaderInternalAccess;

    invoke-virtual {v1, p1}, Lcom/ensighten/google/gson/internal/JsonReaderInternalAccess;->promoteNameToValue(Lcom/ensighten/google/gson/stream/JsonReader;)V

    .line 187
    iget-object v1, p0, Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/ensighten/google/gson/TypeAdapter;

    invoke-virtual {v1, p1}, Lcom/ensighten/google/gson/TypeAdapter;->read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    .line 188
    iget-object v2, p0, Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/ensighten/google/gson/TypeAdapter;

    invoke-virtual {v2, p1}, Lcom/ensighten/google/gson/TypeAdapter;->read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    .line 189
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 190
    if-eqz v2, :cond_4

    .line 191
    new-instance v0, Lcom/ensighten/google/gson/JsonSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "duplicate key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ensighten/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_5
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->endObject()V

    goto :goto_0
.end method

.method public final bridge synthetic write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Lcom/ensighten/google/gson/stream/JsonWriter;
    .param p2, "x1"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;, "Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    check-cast p2, Ljava/util/Map;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/util/Map;)V

    return-void
.end method

.method public final write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/util/Map;)V
    .locals 8
    .param p1, "out"    # Lcom/ensighten/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/stream/JsonWriter;",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;, "Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter<TK;TV;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v2, 0x0

    .line 200
    if-nez p2, :cond_0

    .line 201
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->nullValue()Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 244
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->this$0:Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory;

    invoke-static {v0}, Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory;->access$000(Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 206
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->beginObject()Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 207
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 208
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/ensighten/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 209
    iget-object v2, p0, Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/ensighten/google/gson/TypeAdapter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, p1, v0}, Lcom/ensighten/google/gson/TypeAdapter;->write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_1

    .line 211
    :cond_1
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->endObject()Lcom/ensighten/google/gson/stream/JsonWriter;

    goto :goto_0

    .line 216
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 219
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v1, v2

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 220
    iget-object v6, p0, Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyTypeAdapter:Lcom/ensighten/google/gson/TypeAdapter;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/ensighten/google/gson/TypeAdapter;->toJsonTree(Ljava/lang/Object;)Lcom/ensighten/google/gson/JsonElement;

    move-result-object v6

    .line 221
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-virtual {v6}, Lcom/ensighten/google/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v6}, Lcom/ensighten/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    :goto_3
    or-int/2addr v0, v1

    move v1, v0

    .line 224
    goto :goto_2

    :cond_4
    move v0, v2

    .line 223
    goto :goto_3

    .line 226
    :cond_5
    if-eqz v1, :cond_7

    .line 227
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->beginArray()Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 228
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 229
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->beginArray()Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 230
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/JsonElement;

    invoke-static {v0, p1}, Lcom/ensighten/google/gson/internal/Streams;->write(Lcom/ensighten/google/gson/JsonElement;Lcom/ensighten/google/gson/stream/JsonWriter;)V

    .line 231
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/ensighten/google/gson/TypeAdapter;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ensighten/google/gson/TypeAdapter;->write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 232
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->endArray()Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 234
    :cond_6
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->endArray()Lcom/ensighten/google/gson/stream/JsonWriter;

    goto/16 :goto_0

    .line 236
    :cond_7
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->beginObject()Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 237
    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 238
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/JsonElement;

    .line 239
    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->keyToString(Lcom/ensighten/google/gson/JsonElement;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ensighten/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 240
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;->valueTypeAdapter:Lcom/ensighten/google/gson/TypeAdapter;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/ensighten/google/gson/TypeAdapter;->write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 237
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 242
    :cond_8
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->endObject()Lcom/ensighten/google/gson/stream/JsonWriter;

    goto/16 :goto_0
.end method
