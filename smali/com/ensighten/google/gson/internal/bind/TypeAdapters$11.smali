.class final Lcom/ensighten/google/gson/internal/bind/TypeAdapters$11;
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
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/ensighten/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/lang/Number;
    .locals 4
    .param p1, "in"    # Lcom/ensighten/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->peek()Lcom/ensighten/google/gson/stream/JsonToken;

    move-result-object v0

    .line 299
    sget-object v1, Lcom/ensighten/google/gson/internal/bind/TypeAdapters$32;->$SwitchMap$com$ensighten$google$gson$stream$JsonToken:[I

    invoke-virtual {v0}, Lcom/ensighten/google/gson/stream/JsonToken;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 306
    :pswitch_0
    new-instance v1, Lcom/ensighten/google/gson/JsonSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expecting number, got: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ensighten/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    :pswitch_1
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->nextNull()V

    .line 302
    const/4 v0, 0x0

    .line 304
    :goto_0
    return-object v0

    :pswitch_2
    new-instance v0, Lcom/ensighten/google/gson/internal/LazilyParsedNumber;

    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ensighten/google/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 299
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final bridge synthetic read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Lcom/ensighten/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lcom/ensighten/google/gson/internal/bind/TypeAdapters$11;->read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method

.method public final write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/lang/Number;)V
    .locals 0
    .param p1, "out"    # Lcom/ensighten/google/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-virtual {p1, p2}, Lcom/ensighten/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 313
    return-void
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
    .line 295
    check-cast p2, Ljava/lang/Number;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/ensighten/google/gson/internal/bind/TypeAdapters$11;->write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/lang/Number;)V

    return-void
.end method