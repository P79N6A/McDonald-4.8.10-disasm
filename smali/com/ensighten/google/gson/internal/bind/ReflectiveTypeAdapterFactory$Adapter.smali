.class public final Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;
.super Lcom/ensighten/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/ensighten/google/gson/TypeAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final boundFields:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;"
        }
    .end annotation
.end field

.field private final constructor:Lcom/ensighten/google/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ensighten/google/gson/internal/ObjectConstructor",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/ensighten/google/gson/internal/ObjectConstructor;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/internal/ObjectConstructor",
            "<TT;>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 185
    .local p0, "this":Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;, "Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter<TT;>;"
    .local p1, "constructor":Lcom/ensighten/google/gson/internal/ObjectConstructor;, "Lcom/ensighten/google/gson/internal/ObjectConstructor<TT;>;"
    .local p2, "boundFields":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;>;"
    invoke-direct {p0}, Lcom/ensighten/google/gson/TypeAdapter;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->constructor:Lcom/ensighten/google/gson/internal/ObjectConstructor;

    .line 187
    iput-object p2, p0, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    .line 188
    return-void
.end method

.method synthetic constructor <init>(Lcom/ensighten/google/gson/internal/ObjectConstructor;Ljava/util/Map;Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ensighten/google/gson/internal/ObjectConstructor;
    .param p2, "x1"    # Ljava/util/Map;
    .param p3, "x2"    # Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$1;

    .prologue
    .line 181
    .local p0, "this":Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;, "Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;-><init>(Lcom/ensighten/google/gson/internal/ObjectConstructor;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public final read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 3
    .param p1, "in"    # Lcom/ensighten/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/stream/JsonReader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    .local p0, "this":Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;, "Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter<TT;>;"
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->peek()Lcom/ensighten/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/ensighten/google/gson/stream/JsonToken;->NULL:Lcom/ensighten/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 193
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->nextNull()V

    .line 194
    const/4 v0, 0x0

    .line 216
    :goto_0
    return-object v0

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->constructor:Lcom/ensighten/google/gson/internal/ObjectConstructor;

    invoke-interface {v0}, Lcom/ensighten/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v1

    .line 200
    :try_start_0
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->beginObject()V

    .line 201
    :goto_1
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 202
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 203
    iget-object v2, p0, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    .line 204
    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->deserialized:Z

    if-nez v2, :cond_2

    .line 205
    :cond_1
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->skipValue()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 210
    :catch_0
    move-exception v0

    .line 211
    new-instance v1, Lcom/ensighten/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/ensighten/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 207
    :cond_2
    :try_start_1
    invoke-virtual {v0, p1, v1}, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->read(Lcom/ensighten/google/gson/stream/JsonReader;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 212
    :catch_1
    move-exception v0

    .line 213
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 215
    :cond_3
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->endObject()V

    move-object v0, v1

    .line 216
    goto :goto_0
.end method

.method public final write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 3
    .param p1, "out"    # Lcom/ensighten/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/stream/JsonWriter;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "this":Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;, "Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_0

    .line 222
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->nullValue()Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 238
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->beginObject()Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;->boundFields:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;

    .line 229
    invoke-virtual {v0, p2}, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->writeField(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 230
    iget-object v2, v0, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/ensighten/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 231
    invoke-virtual {v0, p1, p2}, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$BoundField;->write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 235
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 237
    :cond_2
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->endObject()Lcom/ensighten/google/gson/stream/JsonWriter;

    goto :goto_0
.end method
