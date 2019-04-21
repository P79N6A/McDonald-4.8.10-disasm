.class final Lcom/ensighten/google/gson/internal/bind/TypeAdapters$15;
.super Lcom/ensighten/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/google/gson/internal/bind/TypeAdapters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ensighten/google/gson/TypeAdapter",
        "<",
        "Ljava/math/BigInteger;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0}, Lcom/ensighten/google/gson/TypeAdapter;-><init>()V

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
    .line 376
    invoke-virtual {p0, p1}, Lcom/ensighten/google/gson/internal/bind/TypeAdapters$15;->read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public final read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/math/BigInteger;
    .locals 2
    .param p1, "in"    # Lcom/ensighten/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 379
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->peek()Lcom/ensighten/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/ensighten/google/gson/stream/JsonToken;->NULL:Lcom/ensighten/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 380
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->nextNull()V

    .line 381
    const/4 v0, 0x0

    .line 384
    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    new-instance v1, Lcom/ensighten/google/gson/JsonSyntaxException;

    invoke-direct {v1, v0}, Lcom/ensighten/google/gson/JsonSyntaxException;-><init>(Ljava/lang/Throwable;)V

    throw v1
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
    .line 376
    check-cast p2, Ljava/math/BigInteger;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/ensighten/google/gson/internal/bind/TypeAdapters$15;->write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/math/BigInteger;)V

    return-void
.end method

.method public final write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "out"    # Lcom/ensighten/google/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-virtual {p1, p2}, Lcom/ensighten/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 393
    return-void
.end method
