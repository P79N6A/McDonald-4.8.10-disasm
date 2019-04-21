.class final Lcom/ensighten/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;
.super Lcom/ensighten/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
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
.field private final context:Lcom/ensighten/google/gson/Gson;

.field private final delegate:Lcom/ensighten/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ensighten/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/ensighten/google/gson/Gson;Lcom/ensighten/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V
    .locals 0
    .param p1, "context"    # Lcom/ensighten/google/gson/Gson;
    .param p3, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/Gson;",
            "Lcom/ensighten/google/gson/TypeAdapter",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    .local p0, "this":Lcom/ensighten/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;, "Lcom/ensighten/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper<TT;>;"
    .local p2, "delegate":Lcom/ensighten/google/gson/TypeAdapter;, "Lcom/ensighten/google/gson/TypeAdapter<TT;>;"
    invoke-direct {p0}, Lcom/ensighten/google/gson/TypeAdapter;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/ensighten/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->context:Lcom/ensighten/google/gson/Gson;

    .line 35
    iput-object p2, p0, Lcom/ensighten/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/ensighten/google/gson/TypeAdapter;

    .line 36
    iput-object p3, p0, Lcom/ensighten/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    .line 37
    return-void
.end method

.method private getRuntimeTypeIfMoreSpecific(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 76
    .local p0, "this":Lcom/ensighten/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;, "Lcom/ensighten/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper<TT;>;"
    if-eqz p2, :cond_1

    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 78
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 80
    :cond_1
    return-object p1
.end method


# virtual methods
.method public final read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
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
    .line 41
    .local p0, "this":Lcom/ensighten/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;, "Lcom/ensighten/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper<TT;>;"
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/ensighten/google/gson/TypeAdapter;

    invoke-virtual {v0, p1}, Lcom/ensighten/google/gson/TypeAdapter;->read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    .line 53
    .local p0, "this":Lcom/ensighten/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;, "Lcom/ensighten/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/ensighten/google/gson/TypeAdapter;

    .line 54
    iget-object v1, p0, Lcom/ensighten/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    invoke-direct {p0, v1, p2}, Lcom/ensighten/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->getRuntimeTypeIfMoreSpecific(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/ensighten/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_0

    .line 56
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->context:Lcom/ensighten/google/gson/Gson;

    invoke-static {v1}, Lcom/ensighten/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/ensighten/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ensighten/google/gson/Gson;->getAdapter(Lcom/ensighten/google/gson/reflect/TypeToken;)Lcom/ensighten/google/gson/TypeAdapter;

    move-result-object v0

    .line 57
    instance-of v1, v0, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/ensighten/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/ensighten/google/gson/TypeAdapter;

    instance-of v1, v1, Lcom/ensighten/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    if-nez v1, :cond_0

    .line 63
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/ensighten/google/gson/TypeAdapter;

    .line 69
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/ensighten/google/gson/TypeAdapter;->write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 70
    return-void
.end method
