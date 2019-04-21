.class public abstract Lcom/ensighten/google/gson/TypeAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJson(Ljava/io/Reader;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    .local p0, "this":Lcom/ensighten/google/gson/TypeAdapter;, "Lcom/ensighten/google/gson/TypeAdapter<TT;>;"
    new-instance v0, Lcom/ensighten/google/gson/stream/JsonReader;

    invoke-direct {v0, p1}, Lcom/ensighten/google/gson/stream/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 260
    invoke-virtual {p0, v0}, Lcom/ensighten/google/gson/TypeAdapter;->read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final fromJson(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    .local p0, "this":Lcom/ensighten/google/gson/TypeAdapter;, "Lcom/ensighten/google/gson/TypeAdapter<TT;>;"
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ensighten/google/gson/TypeAdapter;->fromJson(Ljava/io/Reader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final fromJsonTree(Lcom/ensighten/google/gson/JsonElement;)Ljava/lang/Object;
    .locals 2
    .param p1, "jsonTree"    # Lcom/ensighten/google/gson/JsonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/google/gson/JsonElement;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, "this":Lcom/ensighten/google/gson/TypeAdapter;, "Lcom/ensighten/google/gson/TypeAdapter<TT;>;"
    :try_start_0
    new-instance v0, Lcom/ensighten/google/gson/internal/bind/JsonTreeReader;

    invoke-direct {v0, p1}, Lcom/ensighten/google/gson/internal/bind/JsonTreeReader;-><init>(Lcom/ensighten/google/gson/JsonElement;)V

    .line 285
    invoke-virtual {p0, v0}, Lcom/ensighten/google/gson/TypeAdapter;->read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 286
    :catch_0
    move-exception v0

    .line 287
    new-instance v1, Lcom/ensighten/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/ensighten/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final nullSafe()Lcom/ensighten/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ensighten/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 187
    new-instance v0, Lcom/ensighten/google/gson/TypeAdapter$1;

    invoke-direct {v0, p0}, Lcom/ensighten/google/gson/TypeAdapter$1;-><init>(Lcom/ensighten/google/gson/TypeAdapter;)V

    return-object v0
.end method

.method public abstract read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/lang/Object;
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
.end method

.method public final toJson(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "this":Lcom/ensighten/google/gson/TypeAdapter;, "Lcom/ensighten/google/gson/TypeAdapter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 220
    invoke-virtual {p0, v0, p1}, Lcom/ensighten/google/gson/TypeAdapter;->toJson(Ljava/io/Writer;Ljava/lang/Object;)V

    .line 221
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toJson(Ljava/io/Writer;Ljava/lang/Object;)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    .local p0, "this":Lcom/ensighten/google/gson/TypeAdapter;, "Lcom/ensighten/google/gson/TypeAdapter<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/ensighten/google/gson/stream/JsonWriter;

    invoke-direct {v0, p1}, Lcom/ensighten/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 143
    invoke-virtual {p0, v0, p2}, Lcom/ensighten/google/gson/TypeAdapter;->write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public final toJsonTree(Ljava/lang/Object;)Lcom/ensighten/google/gson/JsonElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/ensighten/google/gson/JsonElement;"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, "this":Lcom/ensighten/google/gson/TypeAdapter;, "Lcom/ensighten/google/gson/TypeAdapter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    :try_start_0
    new-instance v0, Lcom/ensighten/google/gson/internal/bind/JsonTreeWriter;

    invoke-direct {v0}, Lcom/ensighten/google/gson/internal/bind/JsonTreeWriter;-><init>()V

    .line 234
    invoke-virtual {p0, v0, p1}, Lcom/ensighten/google/gson/TypeAdapter;->write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 235
    invoke-virtual {v0}, Lcom/ensighten/google/gson/internal/bind/JsonTreeWriter;->get()Lcom/ensighten/google/gson/JsonElement;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    new-instance v1, Lcom/ensighten/google/gson/JsonIOException;

    invoke-direct {v1, v0}, Lcom/ensighten/google/gson/JsonIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
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
.end method
