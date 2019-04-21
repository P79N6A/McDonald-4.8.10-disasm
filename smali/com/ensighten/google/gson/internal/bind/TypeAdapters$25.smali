.class final Lcom/ensighten/google/gson/internal/bind/TypeAdapters$25;
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
        "Lcom/ensighten/google/gson/JsonElement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/ensighten/google/gson/TypeAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final read(Lcom/ensighten/google/gson/stream/JsonReader;)Lcom/ensighten/google/gson/JsonElement;
    .locals 3
    .param p1, "in"    # Lcom/ensighten/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 629
    sget-object v0, Lcom/ensighten/google/gson/internal/bind/TypeAdapters$32;->$SwitchMap$com$ensighten$google$gson$stream$JsonToken:[I

    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->peek()Lcom/ensighten/google/gson/stream/JsonToken;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ensighten/google/gson/stream/JsonToken;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 661
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 631
    :pswitch_0
    new-instance v0, Lcom/ensighten/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ensighten/google/gson/JsonPrimitive;-><init>(Ljava/lang/String;)V

    .line 655
    :goto_0
    return-object v0

    .line 633
    :pswitch_1
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v1

    .line 634
    new-instance v0, Lcom/ensighten/google/gson/JsonPrimitive;

    new-instance v2, Lcom/ensighten/google/gson/internal/LazilyParsedNumber;

    invoke-direct {v2, v1}, Lcom/ensighten/google/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/ensighten/google/gson/JsonPrimitive;-><init>(Ljava/lang/Number;)V

    goto :goto_0

    .line 636
    :pswitch_2
    new-instance v0, Lcom/ensighten/google/gson/JsonPrimitive;

    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ensighten/google/gson/JsonPrimitive;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 638
    :pswitch_3
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->nextNull()V

    .line 639
    sget-object v0, Lcom/ensighten/google/gson/JsonNull;->INSTANCE:Lcom/ensighten/google/gson/JsonNull;

    goto :goto_0

    .line 641
    :pswitch_4
    new-instance v0, Lcom/ensighten/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/ensighten/google/gson/JsonArray;-><init>()V

    .line 642
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->beginArray()V

    .line 643
    :goto_1
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 644
    invoke-virtual {p0, p1}, Lcom/ensighten/google/gson/internal/bind/TypeAdapters$25;->read(Lcom/ensighten/google/gson/stream/JsonReader;)Lcom/ensighten/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ensighten/google/gson/JsonArray;->add(Lcom/ensighten/google/gson/JsonElement;)V

    goto :goto_1

    .line 646
    :cond_0
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->endArray()V

    goto :goto_0

    .line 649
    :pswitch_5
    new-instance v0, Lcom/ensighten/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/ensighten/google/gson/JsonObject;-><init>()V

    .line 650
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->beginObject()V

    .line 651
    :goto_2
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 652
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/ensighten/google/gson/internal/bind/TypeAdapters$25;->read(Lcom/ensighten/google/gson/stream/JsonReader;)Lcom/ensighten/google/gson/JsonElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ensighten/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/ensighten/google/gson/JsonElement;)V

    goto :goto_2

    .line 654
    :cond_1
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->endObject()V

    goto :goto_0

    .line 629
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
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
    .line 626
    invoke-virtual {p0, p1}, Lcom/ensighten/google/gson/internal/bind/TypeAdapters$25;->read(Lcom/ensighten/google/gson/stream/JsonReader;)Lcom/ensighten/google/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public final write(Lcom/ensighten/google/gson/stream/JsonWriter;Lcom/ensighten/google/gson/JsonElement;)V
    .locals 3
    .param p1, "out"    # Lcom/ensighten/google/gson/stream/JsonWriter;
    .param p2, "value"    # Lcom/ensighten/google/gson/JsonElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 667
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/ensighten/google/gson/JsonElement;->isJsonNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 668
    :cond_0
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->nullValue()Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 697
    :goto_0
    return-void

    .line 669
    :cond_1
    invoke-virtual {p2}, Lcom/ensighten/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 670
    invoke-virtual {p2}, Lcom/ensighten/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/ensighten/google/gson/JsonPrimitive;

    move-result-object v0

    .line 671
    invoke-virtual {v0}, Lcom/ensighten/google/gson/JsonPrimitive;->isNumber()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 672
    invoke-virtual {v0}, Lcom/ensighten/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ensighten/google/gson/stream/JsonWriter;->value(Ljava/lang/Number;)Lcom/ensighten/google/gson/stream/JsonWriter;

    goto :goto_0

    .line 673
    :cond_2
    invoke-virtual {v0}, Lcom/ensighten/google/gson/JsonPrimitive;->isBoolean()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 674
    invoke-virtual {v0}, Lcom/ensighten/google/gson/JsonPrimitive;->getAsBoolean()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ensighten/google/gson/stream/JsonWriter;->value(Z)Lcom/ensighten/google/gson/stream/JsonWriter;

    goto :goto_0

    .line 676
    :cond_3
    invoke-virtual {v0}, Lcom/ensighten/google/gson/JsonPrimitive;->getAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ensighten/google/gson/stream/JsonWriter;->value(Ljava/lang/String;)Lcom/ensighten/google/gson/stream/JsonWriter;

    goto :goto_0

    .line 679
    :cond_4
    invoke-virtual {p2}, Lcom/ensighten/google/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 680
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->beginArray()Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 681
    invoke-virtual {p2}, Lcom/ensighten/google/gson/JsonElement;->getAsJsonArray()Lcom/ensighten/google/gson/JsonArray;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ensighten/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/JsonElement;

    .line 682
    invoke-virtual {p0, p1, v0}, Lcom/ensighten/google/gson/internal/bind/TypeAdapters$25;->write(Lcom/ensighten/google/gson/stream/JsonWriter;Lcom/ensighten/google/gson/JsonElement;)V

    goto :goto_1

    .line 684
    :cond_5
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->endArray()Lcom/ensighten/google/gson/stream/JsonWriter;

    goto :goto_0

    .line 686
    :cond_6
    invoke-virtual {p2}, Lcom/ensighten/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 687
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->beginObject()Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 688
    invoke-virtual {p2}, Lcom/ensighten/google/gson/JsonElement;->getAsJsonObject()Lcom/ensighten/google/gson/JsonObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ensighten/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 689
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/ensighten/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 690
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ensighten/google/gson/JsonElement;

    invoke-virtual {p0, p1, v0}, Lcom/ensighten/google/gson/internal/bind/TypeAdapters$25;->write(Lcom/ensighten/google/gson/stream/JsonWriter;Lcom/ensighten/google/gson/JsonElement;)V

    goto :goto_2

    .line 692
    :cond_7
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->endObject()Lcom/ensighten/google/gson/stream/JsonWriter;

    goto/16 :goto_0

    .line 695
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Couldn\'t write "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
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
    .line 626
    check-cast p2, Lcom/ensighten/google/gson/JsonElement;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/ensighten/google/gson/internal/bind/TypeAdapters$25;->write(Lcom/ensighten/google/gson/stream/JsonWriter;Lcom/ensighten/google/gson/JsonElement;)V

    return-void
.end method
