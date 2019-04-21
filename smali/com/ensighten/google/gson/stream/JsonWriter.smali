.class public Lcom/ensighten/google/gson/stream/JsonWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# static fields
.field private static final HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

.field private static final REPLACEMENT_CHARS:[Ljava/lang/String;


# instance fields
.field private deferredName:Ljava/lang/String;

.field private htmlSafe:Z

.field private indent:Ljava/lang/String;

.field private lenient:Z

.field private final out:Ljava/io/Writer;

.field private separator:Ljava/lang/String;

.field private serializeNulls:Z

.field private stack:[I

.field private stackSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 146
    const/16 v0, 0x80

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/ensighten/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    move v0, v1

    .line 147
    :goto_0
    const/16 v2, 0x1f

    if-gt v0, v2, :cond_0

    .line 148
    sget-object v2, Lcom/ensighten/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const-string v3, "\\u%04x"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    sget-object v0, Lcom/ensighten/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "\\\""

    aput-object v2, v0, v1

    .line 151
    sget-object v0, Lcom/ensighten/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x5c

    const-string v2, "\\\\"

    aput-object v2, v0, v1

    .line 152
    sget-object v0, Lcom/ensighten/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "\\t"

    aput-object v2, v0, v1

    .line 153
    sget-object v0, Lcom/ensighten/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "\\b"

    aput-object v2, v0, v1

    .line 154
    sget-object v0, Lcom/ensighten/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "\\n"

    aput-object v2, v0, v1

    .line 155
    sget-object v0, Lcom/ensighten/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "\\r"

    aput-object v2, v0, v1

    .line 156
    sget-object v0, Lcom/ensighten/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "\\f"

    aput-object v2, v0, v1

    .line 157
    sget-object v0, Lcom/ensighten/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 158
    sput-object v0, Lcom/ensighten/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x3c

    const-string v2, "\\u003c"

    aput-object v2, v0, v1

    .line 159
    sget-object v0, Lcom/ensighten/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x3e

    const-string v2, "\\u003e"

    aput-object v2, v0, v1

    .line 160
    sget-object v0, Lcom/ensighten/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x26

    const-string v2, "\\u0026"

    aput-object v2, v0, v1

    .line 161
    sget-object v0, Lcom/ensighten/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x3d

    const-string v2, "\\u003d"

    aput-object v2, v0, v1

    .line 162
    sget-object v0, Lcom/ensighten/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    const/16 v1, 0x27

    const-string v2, "\\u0027"

    aput-object v2, v0, v1

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    const/16 v0, 0x20

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->stack:[I

    .line 171
    const/4 v0, 0x0

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->stackSize:I

    .line 180
    const-string v0, ":"

    iput-object v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->serializeNulls:Z

    .line 187
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonWriter;->push(I)V

    .line 196
    if-nez p1, :cond_0

    .line 197
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "out == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :cond_0
    iput-object p1, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    .line 200
    return-void
.end method

.method private beforeName()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonWriter;->peek()I

    move-result v0

    .line 579
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 580
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(I)V

    .line 584
    :cond_0
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonWriter;->newline()V

    .line 585
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonWriter;->replaceTop(I)V

    .line 586
    return-void

    .line 581
    :cond_1
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 582
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private beforeValue(Z)V
    .locals 2
    .param p1, "root"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 598
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonWriter;->peek()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 629
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :pswitch_1
    iget-boolean v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->lenient:Z

    if-nez v0, :cond_0

    .line 601
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must have only one top-level value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 606
    :cond_0
    :pswitch_2
    iget-boolean v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->lenient:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 607
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JSON must start with an array or an object."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :cond_1
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonWriter;->replaceTop(I)V

    .line 626
    :goto_0
    return-void

    .line 614
    :pswitch_3
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonWriter;->replaceTop(I)V

    .line 615
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonWriter;->newline()V

    goto :goto_0

    .line 619
    :pswitch_4
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 620
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonWriter;->newline()V

    goto :goto_0

    .line 624
    :pswitch_5
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    iget-object v1, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 625
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonWriter;->replaceTop(I)V

    goto :goto_0

    .line 598
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private close(IILjava/lang/String;)Lcom/ensighten/google/gson/stream/JsonWriter;
    .locals 3
    .param p1, "empty"    # I
    .param p2, "nonempty"    # I
    .param p3, "closeBracket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonWriter;->peek()I

    move-result v0

    .line 336
    if-eq v0, p2, :cond_0

    if-eq v0, p1, :cond_0

    .line 337
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Nesting problem."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_0
    iget-object v1, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 340
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Dangling name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_1
    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->stackSize:I

    .line 344
    if-ne v0, p2, :cond_2

    .line 345
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonWriter;->newline()V

    .line 347
    :cond_2
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 348
    return-object p0
.end method

.method private newline()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 563
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 571
    :cond_0
    return-void

    .line 567
    :cond_1
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 568
    const/4 v0, 0x1

    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->stackSize:I

    :goto_0
    if-ge v0, v1, :cond_0

    .line 569
    iget-object v2, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    iget-object v3, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 568
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private open(ILjava/lang/String;)Lcom/ensighten/google/gson/stream/JsonWriter;
    .locals 1
    .param p1, "empty"    # I
    .param p2, "openBracket"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 323
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonWriter;->beforeValue(Z)V

    .line 324
    invoke-direct {p0, p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->push(I)V

    .line 325
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 326
    return-object p0
.end method

.method private peek()I
    .locals 2

    .prologue
    .line 364
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->stackSize:I

    if-nez v0, :cond_0

    .line 365
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->stack:[I

    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method private push(I)V
    .locals 4
    .param p1, "newTop"    # I

    .prologue
    const/4 v3, 0x0

    .line 352
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->stackSize:I

    iget-object v1, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->stack:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 353
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->stackSize:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    .line 354
    iget-object v1, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->stack:[I

    iget v2, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->stackSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 355
    iput-object v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->stack:[I

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->stack:[I

    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->stackSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->stackSize:I

    aput p1, v0, v1

    .line 358
    return-void
.end method

.method private replaceTop(I)V
    .locals 2
    .param p1, "topOfStack"    # I

    .prologue
    .line 374
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->stack:[I

    iget v1, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->stackSize:I

    add-int/lit8 v1, v1, -0x1

    aput p1, v0, v1

    .line 375
    return-void
.end method

.method private string(Ljava/lang/String;)V
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 531
    iget-boolean v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->htmlSafe:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ensighten/google/gson/stream/JsonWriter;->HTML_SAFE_REPLACEMENT_CHARS:[Ljava/lang/String;

    .line 532
    :goto_0
    iget-object v2, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 534
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    move v3, v1

    .line 535
    :goto_1
    if-ge v3, v4, :cond_6

    .line 536
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 538
    const/16 v5, 0x80

    if-ge v2, v5, :cond_2

    .line 539
    aget-object v2, v0, v2

    .line 540
    if-nez v2, :cond_3

    .line 535
    :cond_0
    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    .line 531
    :cond_1
    sget-object v0, Lcom/ensighten/google/gson/stream/JsonWriter;->REPLACEMENT_CHARS:[Ljava/lang/String;

    goto :goto_0

    .line 543
    :cond_2
    const/16 v5, 0x2028

    if-ne v2, v5, :cond_5

    .line 544
    const-string v2, "\\u2028"

    .line 550
    :cond_3
    :goto_3
    if-ge v1, v3, :cond_4

    .line 551
    iget-object v5, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    sub-int v6, v3, v1

    invoke-virtual {v5, p1, v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 553
    :cond_4
    iget-object v1, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 554
    add-int/lit8 v1, v3, 0x1

    goto :goto_2

    .line 545
    :cond_5
    const/16 v5, 0x2029

    if-ne v2, v5, :cond_0

    .line 546
    const-string v2, "\\u2029"

    goto :goto_3

    .line 556
    :cond_6
    if-ge v1, v4, :cond_7

    .line 557
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    sub-int v2, v4, v1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 559
    :cond_7
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 560
    return-void
.end method

.method private writeDeferredName()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 398
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 399
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonWriter;->beforeName()V

    .line 400
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonWriter;->string(Ljava/lang/String;)V

    .line 401
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 403
    :cond_0
    return-void
.end method


# virtual methods
.method public beginArray()Lcom/ensighten/google/gson/stream/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 286
    const/4 v0, 0x1

    const-string v1, "["

    invoke-direct {p0, v0, v1}, Lcom/ensighten/google/gson/stream/JsonWriter;->open(ILjava/lang/String;)Lcom/ensighten/google/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public beginObject()Lcom/ensighten/google/gson/stream/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 306
    const/4 v0, 0x3

    const-string/jumbo v1, "{"

    invoke-direct {p0, v0, v1}, Lcom/ensighten/google/gson/stream/JsonWriter;->open(ILjava/lang/String;)Lcom/ensighten/google/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 521
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 523
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->stackSize:I

    .line 524
    if-gt v0, v1, :cond_0

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->stack:[I

    add-int/lit8 v0, v0, -0x1

    aget v0, v1, v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    .line 525
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Incomplete document"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->stackSize:I

    .line 528
    return-void
.end method

.method public endArray()Lcom/ensighten/google/gson/stream/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    const/4 v0, 0x1

    const/4 v1, 0x2

    const-string v2, "]"

    invoke-direct {p0, v0, v1, v2}, Lcom/ensighten/google/gson/stream/JsonWriter;->close(IILjava/lang/String;)Lcom/ensighten/google/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public endObject()Lcom/ensighten/google/gson/stream/JsonWriter;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    const/4 v0, 0x3

    const/4 v1, 0x5

    const-string/jumbo v2, "}"

    invoke-direct {p0, v0, v1, v2}, Lcom/ensighten/google/gson/stream/JsonWriter;->close(IILjava/lang/String;)Lcom/ensighten/google/gson/stream/JsonWriter;

    move-result-object v0

    return-object v0
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 509
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->stackSize:I

    if-nez v0, :cond_0

    .line 510
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 513
    return-void
.end method

.method public final getSerializeNulls()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->serializeNulls:Z

    return v0
.end method

.method public final isHtmlSafe()Z
    .locals 1

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->htmlSafe:Z

    return v0
.end method

.method public isLenient()Z
    .locals 1

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->lenient:Z

    return v0
.end method

.method public name(Ljava/lang/String;)Lcom/ensighten/google/gson/stream/JsonWriter;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    if-nez p1, :cond_0

    .line 385
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_0
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 388
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 390
    :cond_1
    iget v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->stackSize:I

    if-nez v0, :cond_2

    .line 391
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "JsonWriter is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_2
    iput-object p1, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    .line 394
    return-object p0
.end method

.method public nullValue()Lcom/ensighten/google/gson/stream/JsonWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 427
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 428
    iget-boolean v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->serializeNulls:Z

    if-eqz v0, :cond_1

    .line 429
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 435
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonWriter;->beforeValue(Z)V

    .line 436
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 437
    :goto_0
    return-object p0

    .line 431
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->deferredName:Ljava/lang/String;

    goto :goto_0
.end method

.method public final setHtmlSafe(Z)V
    .locals 0
    .param p1, "htmlSafe"    # Z

    .prologue
    .line 259
    iput-boolean p1, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->htmlSafe:Z

    .line 260
    return-void
.end method

.method public final setIndent(Ljava/lang/String;)V
    .locals 1
    .param p1, "indent"    # Ljava/lang/String;

    .prologue
    .line 211
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    .line 213
    const-string v0, ":"

    iput-object v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    .line 218
    :goto_0
    return-void

    .line 215
    :cond_0
    iput-object p1, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->indent:Ljava/lang/String;

    .line 216
    const-string v0, ": "

    iput-object v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->separator:Ljava/lang/String;

    goto :goto_0
.end method

.method public final setLenient(Z)V
    .locals 0
    .param p1, "lenient"    # Z

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->lenient:Z

    .line 241
    return-void
.end method

.method public final setSerializeNulls(Z)V
    .locals 0
    .param p1, "serializeNulls"    # Z

    .prologue
    .line 275
    iput-boolean p1, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->serializeNulls:Z

    .line 276
    return-void
.end method

.method public value(D)Lcom/ensighten/google/gson/stream/JsonWriter;
    .locals 3
    .param p1, "value"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 460
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Numeric values must be finite, but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_1
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 464
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonWriter;->beforeValue(Z)V

    .line 465
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 466
    return-object p0
.end method

.method public value(J)Lcom/ensighten/google/gson/stream/JsonWriter;
    .locals 3
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 476
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonWriter;->beforeValue(Z)V

    .line 477
    iget-object v0, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 478
    return-object p0
.end method

.method public value(Ljava/lang/Number;)Lcom/ensighten/google/gson/stream/JsonWriter;
    .locals 3
    .param p1, "value"    # Ljava/lang/Number;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 489
    if-nez p1, :cond_0

    .line 490
    invoke-virtual {p0}, Lcom/ensighten/google/gson/stream/JsonWriter;->nullValue()Lcom/ensighten/google/gson/stream/JsonWriter;

    move-result-object p0

    .line 501
    .end local p0    # "this":Lcom/ensighten/google/gson/stream/JsonWriter;
    :goto_0
    return-object p0

    .line 493
    .restart local p0    # "this":Lcom/ensighten/google/gson/stream/JsonWriter;
    :cond_0
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 494
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    iget-boolean v1, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->lenient:Z

    if-nez v1, :cond_2

    const-string v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 497
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Numeric values must be finite, but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 499
    :cond_2
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/ensighten/google/gson/stream/JsonWriter;->beforeValue(Z)V

    .line 500
    iget-object v1, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    invoke-virtual {v1, v0}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    goto :goto_0
.end method

.method public value(Ljava/lang/String;)Lcom/ensighten/google/gson/stream/JsonWriter;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 412
    if-nez p1, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/ensighten/google/gson/stream/JsonWriter;->nullValue()Lcom/ensighten/google/gson/stream/JsonWriter;

    move-result-object p0

    .line 418
    .end local p0    # "this":Lcom/ensighten/google/gson/stream/JsonWriter;
    :goto_0
    return-object p0

    .line 415
    .restart local p0    # "this":Lcom/ensighten/google/gson/stream/JsonWriter;
    :cond_0
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 416
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonWriter;->beforeValue(Z)V

    .line 417
    invoke-direct {p0, p1}, Lcom/ensighten/google/gson/stream/JsonWriter;->string(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public value(Z)Lcom/ensighten/google/gson/stream/JsonWriter;
    .locals 2
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/ensighten/google/gson/stream/JsonWriter;->writeDeferredName()V

    .line 447
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ensighten/google/gson/stream/JsonWriter;->beforeValue(Z)V

    .line 448
    iget-object v1, p0, Lcom/ensighten/google/gson/stream/JsonWriter;->out:Ljava/io/Writer;

    if-eqz p1, :cond_0

    const-string/jumbo v0, "true"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 449
    return-object p0

    .line 448
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
