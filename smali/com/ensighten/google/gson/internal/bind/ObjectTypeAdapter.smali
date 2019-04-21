.class public final Lcom/ensighten/google/gson/internal/bind/ObjectTypeAdapter;
.super Lcom/ensighten/google/gson/TypeAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ensighten/google/gson/internal/bind/ObjectTypeAdapter$2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ensighten/google/gson/TypeAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final FACTORY:Lcom/ensighten/google/gson/TypeAdapterFactory;


# instance fields
.field private final gson:Lcom/ensighten/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/ensighten/google/gson/internal/bind/ObjectTypeAdapter$1;

    invoke-direct {v0}, Lcom/ensighten/google/gson/internal/bind/ObjectTypeAdapter$1;-><init>()V

    sput-object v0, Lcom/ensighten/google/gson/internal/bind/ObjectTypeAdapter;->FACTORY:Lcom/ensighten/google/gson/TypeAdapterFactory;

    return-void
.end method

.method private constructor <init>(Lcom/ensighten/google/gson/Gson;)V
    .locals 0
    .param p1, "gson"    # Lcom/ensighten/google/gson/Gson;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/ensighten/google/gson/TypeAdapter;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/ensighten/google/gson/internal/bind/ObjectTypeAdapter;->gson:Lcom/ensighten/google/gson/Gson;

    .line 52
    return-void
.end method

.method synthetic constructor <init>(Lcom/ensighten/google/gson/Gson;Lcom/ensighten/google/gson/internal/bind/ObjectTypeAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/ensighten/google/gson/Gson;
    .param p2, "x1"    # Lcom/ensighten/google/gson/internal/bind/ObjectTypeAdapter$1;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/ensighten/google/gson/internal/bind/ObjectTypeAdapter;-><init>(Lcom/ensighten/google/gson/Gson;)V

    return-void
.end method


# virtual methods
.method public final read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 3
    .param p1, "in"    # Lcom/ensighten/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->peek()Lcom/ensighten/google/gson/stream/JsonToken;

    move-result-object v0

    .line 57
    sget-object v1, Lcom/ensighten/google/gson/internal/bind/ObjectTypeAdapter$2;->$SwitchMap$com$ensighten$google$gson$stream$JsonToken:[I

    invoke-virtual {v0}, Lcom/ensighten/google/gson/stream/JsonToken;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 59
    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->beginArray()V

    .line 61
    :goto_0
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {p0, p1}, Lcom/ensighten/google/gson/internal/bind/ObjectTypeAdapter;->read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->endArray()V

    .line 87
    :goto_1
    return-object v0

    .line 68
    :pswitch_1
    new-instance v0, Lcom/ensighten/google/gson/internal/LinkedTreeMap;

    invoke-direct {v0}, Lcom/ensighten/google/gson/internal/LinkedTreeMap;-><init>()V

    .line 69
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->beginObject()V

    .line 70
    :goto_2
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/ensighten/google/gson/internal/bind/ObjectTypeAdapter;->read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 73
    :cond_1
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->endObject()V

    goto :goto_1

    .line 77
    :pswitch_2
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 80
    :pswitch_3
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    .line 83
    :pswitch_4
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->nextBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    .line 86
    :pswitch_5
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->nextNull()V

    .line 87
    const/4 v0, 0x0

    goto :goto_1

    .line 57
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 2
    .param p1, "out"    # Lcom/ensighten/google/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    if-nez p2, :cond_0

    .line 98
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->nullValue()Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 110
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/ensighten/google/gson/internal/bind/ObjectTypeAdapter;->gson:Lcom/ensighten/google/gson/Gson;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ensighten/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/ensighten/google/gson/TypeAdapter;

    move-result-object v0

    .line 103
    instance-of v1, v0, Lcom/ensighten/google/gson/internal/bind/ObjectTypeAdapter;

    if-eqz v1, :cond_1

    .line 104
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->beginObject()Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 105
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->endObject()Lcom/ensighten/google/gson/stream/JsonWriter;

    goto :goto_0

    .line 109
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/ensighten/google/gson/TypeAdapter;->write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    goto :goto_0
.end method
