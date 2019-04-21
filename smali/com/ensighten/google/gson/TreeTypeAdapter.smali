.class final Lcom/ensighten/google/gson/TreeTypeAdapter;
.super Lcom/ensighten/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ensighten/google/gson/TreeTypeAdapter$1;,
        Lcom/ensighten/google/gson/TreeTypeAdapter$SingleTypeFactory;
    }
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
.field private delegate:Lcom/ensighten/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ensighten/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final deserializer:Lcom/ensighten/google/gson/JsonDeserializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ensighten/google/gson/JsonDeserializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final gson:Lcom/ensighten/google/gson/Gson;

.field private final serializer:Lcom/ensighten/google/gson/JsonSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ensighten/google/gson/JsonSerializer",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final skipPast:Lcom/ensighten/google/gson/TypeAdapterFactory;

.field private final typeToken:Lcom/ensighten/google/gson/reflect/TypeToken;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ensighten/google/gson/reflect/TypeToken",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/ensighten/google/gson/JsonSerializer;Lcom/ensighten/google/gson/JsonDeserializer;Lcom/ensighten/google/gson/Gson;Lcom/ensighten/google/gson/reflect/TypeToken;Lcom/ensighten/google/gson/TypeAdapterFactory;)V
    .locals 0
    .param p3, "gson"    # Lcom/ensighten/google/gson/Gson;
    .param p5, "skipPast"    # Lcom/ensighten/google/gson/TypeAdapterFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/JsonSerializer",
            "<TT;>;",
            "Lcom/ensighten/google/gson/JsonDeserializer",
            "<TT;>;",
            "Lcom/ensighten/google/gson/Gson;",
            "Lcom/ensighten/google/gson/reflect/TypeToken",
            "<TT;>;",
            "Lcom/ensighten/google/gson/TypeAdapterFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Lcom/ensighten/google/gson/TreeTypeAdapter;, "Lcom/ensighten/google/gson/TreeTypeAdapter<TT;>;"
    .local p1, "serializer":Lcom/ensighten/google/gson/JsonSerializer;, "Lcom/ensighten/google/gson/JsonSerializer<TT;>;"
    .local p2, "deserializer":Lcom/ensighten/google/gson/JsonDeserializer;, "Lcom/ensighten/google/gson/JsonDeserializer<TT;>;"
    .local p4, "typeToken":Lcom/ensighten/google/gson/reflect/TypeToken;, "Lcom/ensighten/google/gson/reflect/TypeToken<TT;>;"
    invoke-direct {p0}, Lcom/ensighten/google/gson/TypeAdapter;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/ensighten/google/gson/TreeTypeAdapter;->serializer:Lcom/ensighten/google/gson/JsonSerializer;

    .line 47
    iput-object p2, p0, Lcom/ensighten/google/gson/TreeTypeAdapter;->deserializer:Lcom/ensighten/google/gson/JsonDeserializer;

    .line 48
    iput-object p3, p0, Lcom/ensighten/google/gson/TreeTypeAdapter;->gson:Lcom/ensighten/google/gson/Gson;

    .line 49
    iput-object p4, p0, Lcom/ensighten/google/gson/TreeTypeAdapter;->typeToken:Lcom/ensighten/google/gson/reflect/TypeToken;

    .line 50
    iput-object p5, p0, Lcom/ensighten/google/gson/TreeTypeAdapter;->skipPast:Lcom/ensighten/google/gson/TypeAdapterFactory;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Lcom/ensighten/google/gson/JsonSerializer;Lcom/ensighten/google/gson/JsonDeserializer;Lcom/ensighten/google/gson/Gson;Lcom/ensighten/google/gson/reflect/TypeToken;Lcom/ensighten/google/gson/TypeAdapterFactory;Lcom/ensighten/google/gson/TreeTypeAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ensighten/google/gson/JsonSerializer;
    .param p2, "x1"    # Lcom/ensighten/google/gson/JsonDeserializer;
    .param p3, "x2"    # Lcom/ensighten/google/gson/Gson;
    .param p4, "x3"    # Lcom/ensighten/google/gson/reflect/TypeToken;
    .param p5, "x4"    # Lcom/ensighten/google/gson/TypeAdapterFactory;
    .param p6, "x5"    # Lcom/ensighten/google/gson/TreeTypeAdapter$1;

    .prologue
    .line 32
    .local p0, "this":Lcom/ensighten/google/gson/TreeTypeAdapter;, "Lcom/ensighten/google/gson/TreeTypeAdapter<TT;>;"
    invoke-direct/range {p0 .. p5}, Lcom/ensighten/google/gson/TreeTypeAdapter;-><init>(Lcom/ensighten/google/gson/JsonSerializer;Lcom/ensighten/google/gson/JsonDeserializer;Lcom/ensighten/google/gson/Gson;Lcom/ensighten/google/gson/reflect/TypeToken;Lcom/ensighten/google/gson/TypeAdapterFactory;)V

    return-void
.end method

.method private delegate()Lcom/ensighten/google/gson/TypeAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ensighten/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ensighten/google/gson/TreeTypeAdapter;->delegate:Lcom/ensighten/google/gson/TypeAdapter;

    .line 108
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/ensighten/google/gson/TreeTypeAdapter;->gson:Lcom/ensighten/google/gson/Gson;

    iget-object v1, p0, Lcom/ensighten/google/gson/TreeTypeAdapter;->skipPast:Lcom/ensighten/google/gson/TypeAdapterFactory;

    iget-object v2, p0, Lcom/ensighten/google/gson/TreeTypeAdapter;->typeToken:Lcom/ensighten/google/gson/reflect/TypeToken;

    invoke-virtual {v0, v1, v2}, Lcom/ensighten/google/gson/Gson;->getDelegateAdapter(Lcom/ensighten/google/gson/TypeAdapterFactory;Lcom/ensighten/google/gson/reflect/TypeToken;)Lcom/ensighten/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/ensighten/google/gson/TreeTypeAdapter;->delegate:Lcom/ensighten/google/gson/TypeAdapter;

    goto :goto_0
.end method

.method public static newFactory(Lcom/ensighten/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/ensighten/google/gson/TypeAdapterFactory;
    .locals 6
    .param p1, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/ensighten/google/gson/TypeAdapterFactory;"
        }
    .end annotation

    .prologue
    .local p0, "exactType":Lcom/ensighten/google/gson/reflect/TypeToken;, "Lcom/ensighten/google/gson/reflect/TypeToken<*>;"
    const/4 v4, 0x0

    .line 57
    new-instance v0, Lcom/ensighten/google/gson/TreeTypeAdapter$SingleTypeFactory;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/ensighten/google/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/ensighten/google/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/ensighten/google/gson/TreeTypeAdapter$1;)V

    return-object v0
.end method

.method public static newFactoryWithMatchRawType(Lcom/ensighten/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/ensighten/google/gson/TypeAdapterFactory;
    .locals 6
    .param p1, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/reflect/TypeToken",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/ensighten/google/gson/TypeAdapterFactory;"
        }
    .end annotation

    .prologue
    .local p0, "exactType":Lcom/ensighten/google/gson/reflect/TypeToken;, "Lcom/ensighten/google/gson/reflect/TypeToken<*>;"
    const/4 v4, 0x0

    .line 67
    invoke-virtual {p0}, Lcom/ensighten/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ensighten/google/gson/reflect/TypeToken;->getRawType()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v3, 0x1

    .line 68
    :goto_0
    new-instance v0, Lcom/ensighten/google/gson/TreeTypeAdapter$SingleTypeFactory;

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/ensighten/google/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/ensighten/google/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/ensighten/google/gson/TreeTypeAdapter$1;)V

    return-object v0

    .line 67
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static newTypeHierarchyFactory(Ljava/lang/Class;Ljava/lang/Object;)Lcom/ensighten/google/gson/TypeAdapterFactory;
    .locals 6
    .param p1, "typeAdapter"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/ensighten/google/gson/TypeAdapterFactory;"
        }
    .end annotation

    .prologue
    .local p0, "hierarchyType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 77
    new-instance v0, Lcom/ensighten/google/gson/TreeTypeAdapter$SingleTypeFactory;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v4, p0

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/ensighten/google/gson/TreeTypeAdapter$SingleTypeFactory;-><init>(Ljava/lang/Object;Lcom/ensighten/google/gson/reflect/TypeToken;ZLjava/lang/Class;Lcom/ensighten/google/gson/TreeTypeAdapter$1;)V

    return-object v0
.end method


# virtual methods
.method public final read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 4
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
    .line 82
    .local p0, "this":Lcom/ensighten/google/gson/TreeTypeAdapter;, "Lcom/ensighten/google/gson/TreeTypeAdapter<TT;>;"
    iget-object v0, p0, Lcom/ensighten/google/gson/TreeTypeAdapter;->deserializer:Lcom/ensighten/google/gson/JsonDeserializer;

    if-nez v0, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/ensighten/google/gson/TreeTypeAdapter;->delegate()Lcom/ensighten/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ensighten/google/gson/TypeAdapter;->read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    .line 89
    :goto_0
    return-object v0

    .line 85
    :cond_0
    invoke-static {p1}, Lcom/ensighten/google/gson/internal/Streams;->parse(Lcom/ensighten/google/gson/stream/JsonReader;)Lcom/ensighten/google/gson/JsonElement;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/ensighten/google/gson/JsonElement;->isJsonNull()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 87
    const/4 v0, 0x0

    goto :goto_0

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/ensighten/google/gson/TreeTypeAdapter;->deserializer:Lcom/ensighten/google/gson/JsonDeserializer;

    iget-object v2, p0, Lcom/ensighten/google/gson/TreeTypeAdapter;->typeToken:Lcom/ensighten/google/gson/reflect/TypeToken;

    invoke-virtual {v2}, Lcom/ensighten/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/ensighten/google/gson/TreeTypeAdapter;->gson:Lcom/ensighten/google/gson/Gson;

    iget-object v3, v3, Lcom/ensighten/google/gson/Gson;->deserializationContext:Lcom/ensighten/google/gson/JsonDeserializationContext;

    invoke-interface {v1, v0, v2, v3}, Lcom/ensighten/google/gson/JsonDeserializer;->deserialize(Lcom/ensighten/google/gson/JsonElement;Ljava/lang/reflect/Type;Lcom/ensighten/google/gson/JsonDeserializationContext;)Ljava/lang/Object;

    move-result-object v0

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
    .line 94
    .local p0, "this":Lcom/ensighten/google/gson/TreeTypeAdapter;, "Lcom/ensighten/google/gson/TreeTypeAdapter<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/ensighten/google/gson/TreeTypeAdapter;->serializer:Lcom/ensighten/google/gson/JsonSerializer;

    if-nez v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/ensighten/google/gson/TreeTypeAdapter;->delegate()Lcom/ensighten/google/gson/TypeAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ensighten/google/gson/TypeAdapter;->write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 104
    :goto_0
    return-void

    .line 98
    :cond_0
    if-nez p2, :cond_1

    .line 99
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->nullValue()Lcom/ensighten/google/gson/stream/JsonWriter;

    goto :goto_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/ensighten/google/gson/TreeTypeAdapter;->serializer:Lcom/ensighten/google/gson/JsonSerializer;

    iget-object v1, p0, Lcom/ensighten/google/gson/TreeTypeAdapter;->typeToken:Lcom/ensighten/google/gson/reflect/TypeToken;

    invoke-virtual {v1}, Lcom/ensighten/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/ensighten/google/gson/TreeTypeAdapter;->gson:Lcom/ensighten/google/gson/Gson;

    iget-object v2, v2, Lcom/ensighten/google/gson/Gson;->serializationContext:Lcom/ensighten/google/gson/JsonSerializationContext;

    invoke-interface {v0, p2, v1, v2}, Lcom/ensighten/google/gson/JsonSerializer;->serialize(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/ensighten/google/gson/JsonSerializationContext;)Lcom/ensighten/google/gson/JsonElement;

    move-result-object v0

    .line 103
    invoke-static {v0, p1}, Lcom/ensighten/google/gson/internal/Streams;->write(Lcom/ensighten/google/gson/JsonElement;Lcom/ensighten/google/gson/stream/JsonWriter;)V

    goto :goto_0
.end method
