.class final Lcom/ensighten/google/gson/internal/bind/TypeAdapters$23;
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
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field private static final DAY_OF_MONTH:Ljava/lang/String; = "dayOfMonth"

.field private static final HOUR_OF_DAY:Ljava/lang/String; = "hourOfDay"

.field private static final MINUTE:Ljava/lang/String; = "minute"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final SECOND:Ljava/lang/String; = "second"

.field private static final YEAR:Ljava/lang/String; = "year"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 524
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
    .line 524
    invoke-virtual {p0, p1}, Lcom/ensighten/google/gson/internal/bind/TypeAdapters$23;->read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public final read(Lcom/ensighten/google/gson/stream/JsonReader;)Ljava/util/Calendar;
    .locals 9
    .param p1, "in"    # Lcom/ensighten/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 534
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->peek()Lcom/ensighten/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/ensighten/google/gson/stream/JsonToken;->NULL:Lcom/ensighten/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 535
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->nextNull()V

    .line 536
    const/4 v0, 0x0

    .line 563
    :goto_0
    return-object v0

    .line 538
    :cond_0
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->beginObject()V

    move v5, v6

    move v4, v6

    move v3, v6

    move v2, v6

    move v1, v6

    .line 545
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->peek()Lcom/ensighten/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v7, Lcom/ensighten/google/gson/stream/JsonToken;->END_OBJECT:Lcom/ensighten/google/gson/stream/JsonToken;

    if-eq v0, v7, :cond_7

    .line 546
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v7

    .line 547
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->nextInt()I

    move-result v0

    .line 548
    const-string/jumbo v8, "year"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v1, v0

    .line 549
    goto :goto_1

    .line 550
    :cond_2
    const-string v8, "month"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v2, v0

    .line 551
    goto :goto_1

    .line 552
    :cond_3
    const-string v8, "dayOfMonth"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v3, v0

    .line 553
    goto :goto_1

    .line 554
    :cond_4
    const-string v8, "hourOfDay"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    move v4, v0

    .line 555
    goto :goto_1

    .line 556
    :cond_5
    const-string v8, "minute"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v5, v0

    .line 557
    goto :goto_1

    .line 558
    :cond_6
    const-string v8, "second"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v6, v0

    .line 559
    goto :goto_1

    .line 562
    :cond_7
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonReader;->endObject()V

    .line 563
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

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
    .line 524
    check-cast p2, Ljava/util/Calendar;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/ensighten/google/gson/internal/bind/TypeAdapters$23;->write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/util/Calendar;)V

    return-void
.end method

.method public final write(Lcom/ensighten/google/gson/stream/JsonWriter;Ljava/util/Calendar;)V
    .locals 2
    .param p1, "out"    # Lcom/ensighten/google/gson/stream/JsonWriter;
    .param p2, "value"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 568
    if-nez p2, :cond_0

    .line 569
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->nullValue()Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 586
    :goto_0
    return-void

    .line 572
    :cond_0
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->beginObject()Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 573
    const-string/jumbo v0, "year"

    invoke-virtual {p1, v0}, Lcom/ensighten/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 574
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/ensighten/google/gson/stream/JsonWriter;->value(J)Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 575
    const-string v0, "month"

    invoke-virtual {p1, v0}, Lcom/ensighten/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 576
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/ensighten/google/gson/stream/JsonWriter;->value(J)Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 577
    const-string v0, "dayOfMonth"

    invoke-virtual {p1, v0}, Lcom/ensighten/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 578
    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/ensighten/google/gson/stream/JsonWriter;->value(J)Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 579
    const-string v0, "hourOfDay"

    invoke-virtual {p1, v0}, Lcom/ensighten/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 580
    const/16 v0, 0xb

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/ensighten/google/gson/stream/JsonWriter;->value(J)Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 581
    const-string v0, "minute"

    invoke-virtual {p1, v0}, Lcom/ensighten/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 582
    const/16 v0, 0xc

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/ensighten/google/gson/stream/JsonWriter;->value(J)Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 583
    const-string v0, "second"

    invoke-virtual {p1, v0}, Lcom/ensighten/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 584
    const/16 v0, 0xd

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/ensighten/google/gson/stream/JsonWriter;->value(J)Lcom/ensighten/google/gson/stream/JsonWriter;

    .line 585
    invoke-virtual {p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->endObject()Lcom/ensighten/google/gson/stream/JsonWriter;

    goto :goto_0
.end method
