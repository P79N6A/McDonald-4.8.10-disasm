.class final Lcom/ensighten/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;
.super Lcom/ensighten/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/google/gson/internal/bind/CollectionTypeAdapterFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/ensighten/google/gson/TypeAdapter",
        "<",
        "Ljava/util/Collection",
        "<TE;>;>;"
    }
.end annotation


# instance fields
.field private final constructor:Lcom/ensighten/google/gson/internal/ObjectConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ensighten/google/gson/internal/ObjectConstructor",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private final elementTypeAdapter:Lcom/ensighten/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ensighten/google/gson/TypeAdapter",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ensighten/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/ensighten/google/gson/TypeAdapter;Lcom/ensighten/google/gson/internal/ObjectConstructor;)V
    .locals 1
    .param p1, "context"    # Lcom/ensighten/google/gson/Gson;
    .param p2, "elementType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/Gson;",
            "Ljava/lang/reflect/Type;",
            "Lcom/ensighten/google/gson/TypeAdapter",
            "<TE;>;",
            "Lcom/ensighten/google/gson/internal/ObjectConstructor",
            "<+",
            "Ljava/util/Collection",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, "this":Lcom/ensighten/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;, "Lcom/ensighten/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    .local p3, "elementTypeAdapter":Lcom/ensighten/google/gson/TypeAdapter;, "Lcom/ensighten/google/gson/TypeAdapter<TE;>;"
    .local p4, "constructor":Lcom/ensighten/google/gson/internal/ObjectConstructor;, "Lcom/ensighten/google/gson/internal/ObjectConstructor<+Ljava/util/Collection<TE;>;>;"
    invoke-direct {p0}, Lcom/ensighten/google/gson/TypeAdapter;-><init>()V

    .line 68
    new-instance v0, Lcom/ensighten/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;

    invoke-direct {v0, p1, p3, p2}, Lcom/ensighten/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;-><init>(Lcom/ensighten/google/gson/Gson;Lcom/ensighten/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V

    iput-object v0, p0, Lcom/ensighten/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->elementTypeAdapter:Lcom/ensighten/google/gson/TypeAdapter;

    .line 70
    iput-object p4, p0, Lcom/ensighten/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->constructor:Lcom/ensighten/google/gson/internal/ObjectConstructor;

    .line 71
    return-void
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
    .line 61
    .local p0, "this":Lcom/ensighten/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;, "Lcom/ensighten/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    invoke-virtual {p0, p1}, Lcom/ensighten/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/util/Collection;
    .locals 2
    .param p1, "in"    # Lcom/ensighten/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/stream/JsonReader;",
            ")",
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Lcom/ensighten/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;, "Lcom/ensighten/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->peek()Lcom/ensighten/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/ensighten/google/gson/stream/JsonToken;->NULL:Lcom/ensighten/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 75
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->nextNull()V

    .line 76
    const/4 v0, 0x0

    .line 86
    :goto_0
    return-object v0

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->constructor:Lcom/ensighten/google/gson/internal/ObjectConstructor;

    invoke-interface {v0}, Lcom/ensighten/google/gson/internal/ObjectConstructor;->construct()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 80
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->beginArray()V

    .line 81
    :goto_1
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    iget-object v1, p0, Lcom/ensighten/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->elementTypeAdapter:Lcom/ensighten/google/gson/TypeAdapter;

    invoke-virtual {v1, p1}, Lcom/ensighten/google/gson/TypeAdapter;->read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    .line 83
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 85
    :cond_1
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->endArray()V

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
    .line 61
    .local p0, "this":Lcom/ensighten/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;, "Lcom/ensighten/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    check-cast p2, Ljava/util/Collection;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/ensighten/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/util/Collection;)V

    return-void
.end method

.method public final write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/util/Collection;)V
    .locals 3
    .param p1, "out"    # Lcom/ensighten/google/gson/stream/JsonWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/stream/JsonWriter;",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    .local p0, "this":Lcom/ensighten/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;, "Lcom/ensighten/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter<TE;>;"
    .local p2, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    if-nez p2, :cond_0

    .line 91
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->nullValue()Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 100
    :goto_0
    return-void

    .line 95
    :cond_0
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->beginArray()Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 96
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/ensighten/google/gson/internal/bind/CollectionTypeAdapterFactory$Adapter;->elementTypeAdapter:Lcom/ensighten/google/gson/TypeAdapter;

    invoke-virtual {v2, p1, v1}, Lcom/ensighten/google/gson/TypeAdapter;->write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_1

    .line 99
    :cond_1
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->endArray()Lcom/ensighten/google/gson/stream/JsonWriter;

    goto :goto_0
.end method
