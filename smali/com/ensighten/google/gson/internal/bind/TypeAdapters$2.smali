.class final Lcom/ensighten/google/gson/internal/bind/TypeAdapters$2;
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
        "Ljava/util/BitSet;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
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
    .line 82
    invoke-virtual {p0, p1}, Lcom/ensighten/google/gson/internal/bind/TypeAdapters$2;->read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method public final read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/util/BitSet;
    .locals 7
    .param p1, "in"    # Lcom/ensighten/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 84
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->peek()Lcom/ensighten/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/ensighten/google/gson/stream/JsonToken;->NULL:Lcom/ensighten/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 85
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->nextNull()V

    .line 86
    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    .line 89
    :cond_0
    new-instance v4, Ljava/util/BitSet;

    invoke-direct {v4}, Ljava/util/BitSet;-><init>()V

    .line 90
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->beginArray()V

    .line 92
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->peek()Lcom/ensighten/google/gson/stream/JsonToken;

    move-result-object v0

    move v1, v2

    .line 93
    :goto_1
    sget-object v5, Lcom/ensighten/google/gson/stream/JsonToken;->END_ARRAY:Lcom/ensighten/google/gson/stream/JsonToken;

    if-eq v0, v5, :cond_4

    .line 95
    sget-object v5, Lcom/ensighten/google/gson/internal/bind/TypeAdapters$32;->$SwitchMap$com$ensighten$google$gson$stream$JsonToken:[I

    invoke-virtual {v0}, Lcom/ensighten/google/gson/stream/JsonToken;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 112
    new-instance v1, Lcom/ensighten/google/gson/JsonSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid bitset value type: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ensighten/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    :pswitch_0
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->nextInt()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    .line 114
    :goto_2
    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v4, v1}, Ljava/util/BitSet;->set(I)V

    .line 117
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 118
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->peek()Lcom/ensighten/google/gson/stream/JsonToken;

    move-result-object v0

    goto :goto_1

    :cond_2
    move v0, v2

    .line 97
    goto :goto_2

    .line 100
    :pswitch_1
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v0

    goto :goto_2

    .line 103
    :pswitch_2
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    .line 105
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_2

    :cond_3
    move v0, v2

    goto :goto_2

    .line 107
    :catch_0
    move-exception v1

    new-instance v1, Lcom/ensighten/google/gson/JsonSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error: Expecting: bitset number value (1, 0), Found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ensighten/google/gson/JsonSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_4
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->endArray()V

    move-object v0, v4

    .line 121
    goto :goto_0

    .line 95
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
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
    .line 82
    check-cast p2, Ljava/util/BitSet;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/ensighten/google/gson/internal/bind/TypeAdapters$2;->write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/util/BitSet;)V

    return-void
.end method

.method public final write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/util/BitSet;)V
    .locals 4
    .param p1, "out"    # Lcom/ensighten/google/gson/stream/JsonWriter;
    .param p2, "src"    # Ljava/util/BitSet;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 125
    if-nez p2, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->nullValue()Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 136
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->beginArray()Lcom/ensighten/google/gson/stream/JsonWriter;

    move v0, v1

    .line 131
    :goto_1
    invoke-virtual {p2}, Ljava/util/BitSet;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 132
    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 133
    :goto_2
    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lcom/ensighten/google/gson/stream/JsonWriter;->value(J)Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    .line 132
    goto :goto_2

    .line 135
    :cond_2
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->endArray()Lcom/ensighten/google/gson/stream/JsonWriter;

    goto :goto_0
.end method
