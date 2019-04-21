.class public final Lcom/ensighten/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final b:J

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ensighten/R;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:Lcom/ensighten/T;


# direct methods
.method public constructor <init>(Lcom/ensighten/T;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ensighten/T;",
            "Ljava/util/List",
            "<",
            "Lcom/ensighten/R;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-wide/16 v0, 0x3b6

    iput-wide v0, p0, Lcom/ensighten/S;->b:J

    .line 24
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/ensighten/S;->d:I

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ensighten/S;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    iput-object p1, p0, Lcom/ensighten/S;->f:Lcom/ensighten/T;

    .line 32
    iput-object p2, p0, Lcom/ensighten/S;->c:Ljava/util/List;

    .line 33
    return-void
.end method

.method private a(IIIILjava/lang/String;Landroid/os/Handler;)V
    .locals 9

    .prologue
    .line 221
    add-int/lit8 v4, p4, -0x1

    .line 223
    invoke-static {}, Lcom/ensighten/Ensighten;->getEventManager()Lcom/ensighten/l;

    move-result-object v0

    .line 7911
    iget-object v0, v0, Lcom/ensighten/l;->b:Landroid/util/SparseArray;

    .line 223
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 224
    if-eqz v0, :cond_7

    .line 225
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 227
    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-ge v3, v5, :cond_7

    .line 228
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ensighten/U;

    .line 229
    iget v6, v1, Lcom/ensighten/U;->e:I

    .line 230
    iget-object v7, v1, Lcom/ensighten/U;->b:Ljava/lang/String;

    .line 231
    sget-object v2, Lcom/ensighten/T;->c:Lcom/ensighten/U;

    iget v2, v2, Lcom/ensighten/U;->e:I

    if-eq v6, v2, :cond_5

    const/4 v2, 0x1

    .line 232
    :goto_1
    sget-object v8, Lcom/ensighten/T;->c:Lcom/ensighten/U;

    iget-object v8, v8, Lcom/ensighten/U;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 235
    if-nez v2, :cond_0

    if-nez v8, :cond_4

    .line 236
    :cond_0
    invoke-static {p5, v7, p1, p3}, Lcom/ensighten/T;->a(Ljava/lang/String;Ljava/lang/String;II)Landroid/os/Message;

    move-result-object v2

    .line 237
    const-string v8, "chapterStart"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 239
    iget-object v8, p0, Lcom/ensighten/S;->f:Lcom/ensighten/T;

    invoke-virtual {v8}, Lcom/ensighten/T;->a()Z

    move-result v8

    if-nez v8, :cond_1

    if-eqz v7, :cond_6

    .line 240
    :cond_1
    sget-object v8, Lcom/ensighten/T;->e:Landroid/os/Message;

    if-eqz v8, :cond_2

    .line 241
    sget-object v8, Lcom/ensighten/T;->e:Landroid/os/Message;

    invoke-virtual {p6, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 242
    const/4 v8, 0x0

    sput-object v8, Lcom/ensighten/T;->e:Landroid/os/Message;

    .line 245
    :cond_2
    if-eqz v7, :cond_3

    .line 246
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Bootstrapper.mobile.dataModel[\'chapterStartTime\'] = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v1, Lcom/ensighten/U;->c:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ensighten/Ensighten;->evaluateJS(Ljava/lang/String;)V

    .line 247
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Bootstrapper.mobile.dataModel[\'chapterLength\'] = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v1, Lcom/ensighten/U;->d:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ensighten/Ensighten;->evaluateJS(Ljava/lang/String;)V

    .line 248
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Bootstrapper.mobile.dataModel[\'chapterPosition\'] = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ensighten/Ensighten;->evaluateJS(Ljava/lang/String;)V

    .line 250
    :cond_3
    invoke-virtual {p6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 255
    :cond_4
    :goto_2
    sput-object v1, Lcom/ensighten/T;->c:Lcom/ensighten/U;

    .line 227
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_0

    .line 231
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 252
    :cond_6
    sput-object v2, Lcom/ensighten/T;->e:Landroid/os/Message;

    goto :goto_2

    .line 260
    :cond_7
    if-ne p2, v4, :cond_f

    .line 261
    invoke-static {}, Lcom/ensighten/Ensighten;->getVideoHeartbeatChapters()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 262
    if-eqz v0, :cond_f

    .line 263
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 265
    const/4 v1, 0x0

    move v3, v1

    :goto_3
    if-ge v3, v4, :cond_f

    .line 266
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ensighten/U;

    .line 267
    iget v5, v1, Lcom/ensighten/U;->e:I

    .line 268
    iget-object v6, v1, Lcom/ensighten/U;->b:Ljava/lang/String;

    .line 269
    sget-object v2, Lcom/ensighten/T;->c:Lcom/ensighten/U;

    iget v2, v2, Lcom/ensighten/U;->e:I

    if-eq v5, v2, :cond_d

    const/4 v2, 0x1

    .line 270
    :goto_4
    sget-object v7, Lcom/ensighten/T;->c:Lcom/ensighten/U;

    iget-object v7, v7, Lcom/ensighten/U;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    .line 272
    if-nez v2, :cond_8

    if-nez v7, :cond_c

    .line 273
    :cond_8
    invoke-static {p5, v6, p1, p3}, Lcom/ensighten/T;->a(Ljava/lang/String;Ljava/lang/String;II)Landroid/os/Message;

    move-result-object v2

    .line 274
    const-string v7, "chapterStart"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 276
    iget-object v7, p0, Lcom/ensighten/S;->f:Lcom/ensighten/T;

    invoke-virtual {v7}, Lcom/ensighten/T;->a()Z

    move-result v7

    if-nez v7, :cond_9

    if-eqz v6, :cond_e

    .line 277
    :cond_9
    sget-object v7, Lcom/ensighten/T;->e:Landroid/os/Message;

    if-eqz v7, :cond_a

    .line 278
    sget-object v7, Lcom/ensighten/T;->e:Landroid/os/Message;

    invoke-virtual {p6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 279
    const/4 v7, 0x0

    sput-object v7, Lcom/ensighten/T;->e:Landroid/os/Message;

    .line 282
    :cond_a
    if-eqz v6, :cond_b

    .line 283
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Bootstrapper.mobile.dataModel[\'chapterStartTime\'] = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v1, Lcom/ensighten/U;->c:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ensighten/Ensighten;->evaluateJS(Ljava/lang/String;)V

    .line 284
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Bootstrapper.mobile.dataModel[\'chapterLength\'] = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v1, Lcom/ensighten/U;->d:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ensighten/Ensighten;->evaluateJS(Ljava/lang/String;)V

    .line 285
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Bootstrapper.mobile.dataModel[\'chapterPosition\'] = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ensighten/Ensighten;->evaluateJS(Ljava/lang/String;)V

    .line 287
    :cond_b
    invoke-virtual {p6, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 292
    :cond_c
    :goto_5
    sput-object v1, Lcom/ensighten/T;->c:Lcom/ensighten/U;

    .line 265
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_3

    .line 269
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 289
    :cond_e
    sput-object v2, Lcom/ensighten/T;->e:Landroid/os/Message;

    goto :goto_5

    .line 296
    :cond_f
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 18

    .prologue
    .line 46
    const/4 v2, 0x0

    .line 47
    const/4 v6, -0x1

    move v10, v2

    move v2, v6

    .line 1040
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ensighten/S;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    .line 50
    if-eqz v3, :cond_1

    .line 135
    :cond_0
    :goto_1
    return-void

    .line 54
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ensighten/S;->f:Lcom/ensighten/T;

    .line 1075
    iget-object v7, v3, Lcom/ensighten/T;->g:Ljava/lang/String;

    .line 55
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ensighten/S;->f:Lcom/ensighten/T;

    .line 1115
    invoke-virtual {v3}, Lcom/ensighten/T;->b()Landroid/media/MediaPlayer;

    move-result-object v3

    .line 1116
    if-nez v3, :cond_7

    .line 1117
    const/high16 v3, -0x80000000

    .line 56
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/ensighten/S;->f:Lcom/ensighten/T;

    .line 1124
    invoke-virtual {v4}, Lcom/ensighten/T;->b()Landroid/media/MediaPlayer;

    move-result-object v4

    .line 1125
    if-nez v4, :cond_8

    .line 1126
    const/high16 v5, -0x80000000

    .line 57
    :goto_3
    div-int/lit16 v4, v3, 0x3e8

    .line 58
    div-int/lit16 v6, v5, 0x3e8

    .line 59
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/ensighten/S;->f:Lcom/ensighten/T;

    .line 2071
    iget-object v8, v8, Lcom/ensighten/T;->f:Landroid/os/Handler;

    .line 62
    if-eq v2, v4, :cond_1b

    .line 2139
    add-int/lit8 v13, v6, -0x1

    .line 2141
    invoke-static {}, Lcom/ensighten/Ensighten;->getEventManager()Lcom/ensighten/l;

    move-result-object v2

    .line 2903
    iget-object v2, v2, Lcom/ensighten/l;->a:Landroid/util/SparseArray;

    .line 2141
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2142
    if-eqz v2, :cond_b

    .line 2143
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 2145
    const/4 v9, 0x0

    move v12, v9

    :goto_4
    if-ge v12, v14, :cond_b

    .line 2146
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ensighten/U;

    .line 2147
    iget v15, v9, Lcom/ensighten/U;->e:I

    .line 2148
    iget-object v0, v9, Lcom/ensighten/U;->b:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 2149
    sget-object v11, Lcom/ensighten/T;->b:Lcom/ensighten/U;

    iget v11, v11, Lcom/ensighten/U;->e:I

    if-eq v15, v11, :cond_9

    const/4 v11, 0x1

    .line 2150
    :goto_5
    sget-object v17, Lcom/ensighten/T;->b:Lcom/ensighten/U;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/ensighten/U;->b:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    .line 2153
    if-nez v11, :cond_2

    if-nez v17, :cond_6

    .line 2154
    :cond_2
    move-object/from16 v0, v16

    invoke-static {v7, v0, v3, v5}, Lcom/ensighten/T;->a(Ljava/lang/String;Ljava/lang/String;II)Landroid/os/Message;

    move-result-object v11

    .line 2155
    const-string v17, "adStart"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 2157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ensighten/S;->f:Lcom/ensighten/T;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ensighten/T;->a()Z

    move-result v17

    if-nez v17, :cond_3

    if-eqz v16, :cond_a

    .line 2158
    :cond_3
    sget-object v17, Lcom/ensighten/T;->d:Landroid/os/Message;

    if-eqz v17, :cond_4

    .line 2159
    sget-object v17, Lcom/ensighten/T;->d:Landroid/os/Message;

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2160
    const/16 v17, 0x0

    sput-object v17, Lcom/ensighten/T;->d:Landroid/os/Message;

    .line 2163
    :cond_4
    if-eqz v16, :cond_5

    .line 2164
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Bootstrapper.mobile.dataModel[\'adStartTime\'] = "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v9, Lcom/ensighten/U;->c:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/ensighten/Ensighten;->evaluateJS(Ljava/lang/String;)V

    .line 2165
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Bootstrapper.mobile.dataModel[\'adLength\'] = "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v9, Lcom/ensighten/U;->d:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/ensighten/Ensighten;->evaluateJS(Ljava/lang/String;)V

    .line 2166
    const-string v16, "Bootstrapper.mobile.dataModel[\'adPlayerName\'] = \'MediaPlayer\';"

    invoke-static/range {v16 .. v16}, Lcom/ensighten/Ensighten;->evaluateJS(Ljava/lang/String;)V

    .line 2167
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Bootstrapper.mobile.dataModel[\'adPosition\'] = "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/ensighten/Ensighten;->evaluateJS(Ljava/lang/String;)V

    .line 2169
    :cond_5
    invoke-virtual {v8, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2174
    :cond_6
    :goto_6
    sput-object v9, Lcom/ensighten/T;->b:Lcom/ensighten/U;

    .line 2145
    add-int/lit8 v9, v12, 0x1

    move v12, v9

    goto/16 :goto_4

    .line 1119
    :cond_7
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v3

    goto/16 :goto_2

    .line 1128
    :cond_8
    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v5

    goto/16 :goto_3

    .line 2149
    :cond_9
    const/4 v11, 0x0

    goto/16 :goto_5

    .line 2171
    :cond_a
    sput-object v11, Lcom/ensighten/T;->d:Landroid/os/Message;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 131
    :catch_0
    move-exception v2

    .line 132
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 133
    invoke-static {v2}, Lcom/ensighten/i;->c(Ljava/lang/Exception;)V

    goto/16 :goto_1

    .line 2179
    :cond_b
    if-ne v4, v13, :cond_13

    .line 2180
    :try_start_1
    invoke-static {}, Lcom/ensighten/Ensighten;->getEventManager()Lcom/ensighten/l;

    move-result-object v2

    .line 3903
    iget-object v2, v2, Lcom/ensighten/l;->a:Landroid/util/SparseArray;

    .line 2180
    invoke-virtual {v2, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2181
    if-eqz v2, :cond_13

    .line 2182
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 2184
    const/4 v9, 0x0

    move v12, v9

    :goto_7
    if-ge v12, v13, :cond_13

    .line 2185
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/ensighten/U;

    .line 2186
    iget v14, v9, Lcom/ensighten/U;->e:I

    .line 2187
    iget-object v15, v9, Lcom/ensighten/U;->b:Ljava/lang/String;

    .line 2188
    sget-object v11, Lcom/ensighten/T;->b:Lcom/ensighten/U;

    iget v11, v11, Lcom/ensighten/U;->e:I

    if-eq v14, v11, :cond_11

    const/4 v11, 0x1

    .line 2189
    :goto_8
    sget-object v16, Lcom/ensighten/T;->b:Lcom/ensighten/U;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/ensighten/U;->b:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 2192
    if-nez v11, :cond_c

    if-nez v16, :cond_10

    .line 2193
    :cond_c
    invoke-static {v7, v15, v3, v5}, Lcom/ensighten/T;->a(Ljava/lang/String;Ljava/lang/String;II)Landroid/os/Message;

    move-result-object v11

    .line 2194
    const-string v16, "adStart"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 2196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ensighten/S;->f:Lcom/ensighten/T;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/ensighten/T;->a()Z

    move-result v17

    if-nez v17, :cond_d

    const-string v17, "adStart"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_12

    .line 2197
    :cond_d
    sget-object v15, Lcom/ensighten/T;->d:Landroid/os/Message;

    if-eqz v15, :cond_e

    .line 2198
    sget-object v15, Lcom/ensighten/T;->d:Landroid/os/Message;

    invoke-virtual {v8, v15}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2199
    const/4 v15, 0x0

    sput-object v15, Lcom/ensighten/T;->d:Landroid/os/Message;

    .line 2202
    :cond_e
    if-eqz v16, :cond_f

    .line 2203
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Bootstrapper.mobile.dataModel[\'adStartTime\'] = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v9, Lcom/ensighten/U;->c:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/ensighten/Ensighten;->evaluateJS(Ljava/lang/String;)V

    .line 2204
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Bootstrapper.mobile.dataModel[\'adLength\'] = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v9, Lcom/ensighten/U;->d:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ";"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/ensighten/Ensighten;->evaluateJS(Ljava/lang/String;)V

    .line 2205
    const-string v15, "Bootstrapper.mobile.dataModel[\'adPlayerName\'] = \'MediaPlayer\';"

    invoke-static {v15}, Lcom/ensighten/Ensighten;->evaluateJS(Ljava/lang/String;)V

    .line 2206
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "Bootstrapper.mobile.dataModel[\'adPosition\'] = "

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ";"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/ensighten/Ensighten;->evaluateJS(Ljava/lang/String;)V

    .line 2208
    :cond_f
    invoke-virtual {v8, v11}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2213
    :cond_10
    :goto_9
    sput-object v9, Lcom/ensighten/T;->b:Lcom/ensighten/U;

    .line 2184
    add-int/lit8 v9, v12, 0x1

    move v12, v9

    goto/16 :goto_7

    .line 2188
    :cond_11
    const/4 v11, 0x0

    goto/16 :goto_8

    .line 2210
    :cond_12
    sput-object v11, Lcom/ensighten/T;->d:Landroid/os/Message;

    goto :goto_9

    :cond_13
    move-object/from16 v2, p0

    .line 64
    invoke-direct/range {v2 .. v8}, Lcom/ensighten/S;->a(IIIILjava/lang/String;Landroid/os/Handler;)V

    move v6, v4

    .line 70
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ensighten/S;->f:Lcom/ensighten/T;

    invoke-virtual {v2}, Lcom/ensighten/T;->a()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 71
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ensighten/S;->f:Lcom/ensighten/T;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/ensighten/T;->b(Z)V

    .line 74
    invoke-static {}, Lcom/ensighten/Ensighten;->getEventManager()Lcom/ensighten/l;

    move-result-object v2

    .line 4895
    iget-boolean v2, v2, Lcom/ensighten/l;->d:Z

    .line 74
    if-eqz v2, :cond_1a

    sget-object v2, Lcom/ensighten/T;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Bootstrapper.mobile.dataModel[\'videoLength\'] = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ensighten/Ensighten;->evaluateJS(Ljava/lang/String;)V

    .line 76
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Bootstrapper.mobile.dataModel[\'videoName\'] = \'"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\';"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ensighten/Ensighten;->evaluateJS(Ljava/lang/String;)V

    .line 77
    const-string v2, "Bootstrapper.mobile.dataModel[\'videoPlayerName\'] = \'MediaPlayer\';"

    invoke-static {v2}, Lcom/ensighten/Ensighten;->evaluateJS(Ljava/lang/String;)V

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Bootstrapper.mobile.dataModel[\'videoPlayhead\'] = "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ensighten/Ensighten;->evaluateJS(Ljava/lang/String;)V

    .line 79
    const-string/jumbo v2, "videoLoad"

    invoke-static {v7, v2, v3, v5}, Lcom/ensighten/T;->a(Ljava/lang/String;Ljava/lang/String;II)Landroid/os/Message;

    move-result-object v2

    .line 80
    invoke-virtual {v8, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 81
    sget-object v2, Lcom/ensighten/T;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 83
    const-string v2, "resume"

    invoke-static {v7, v2, v3, v5}, Lcom/ensighten/T;->a(Ljava/lang/String;Ljava/lang/String;II)Landroid/os/Message;

    move-result-object v2

    .line 84
    invoke-virtual {v8, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 85
    const/4 v10, 0x1

    move v4, v10

    .line 88
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ensighten/S;->f:Lcom/ensighten/T;

    .line 5083
    iget-object v2, v2, Lcom/ensighten/T;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    .line 88
    if-eqz v2, :cond_15

    .line 89
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ensighten/S;->f:Lcom/ensighten/T;

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Lcom/ensighten/T;->a(Z)V

    .line 91
    if-nez v4, :cond_14

    .line 92
    const-string v2, "resume"

    invoke-static {v7, v2, v3, v5}, Lcom/ensighten/T;->a(Ljava/lang/String;Ljava/lang/String;II)Landroid/os/Message;

    move-result-object v2

    .line 93
    invoke-virtual {v8, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 96
    :cond_14
    const/4 v4, 0x0

    .line 100
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ensighten/S;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_16
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ensighten/R;

    .line 6024
    const/4 v10, 0x2

    new-array v10, v10, [I

    .line 6026
    iget v11, v2, Lcom/ensighten/R;->a:I

    mul-int/2addr v11, v5

    div-int/lit8 v11, v11, 0x64

    .line 6028
    const/4 v12, 0x0

    add-int/lit16 v13, v11, -0x1f4

    aput v13, v10, v12

    .line 6029
    const/4 v12, 0x1

    add-int/lit16 v11, v11, 0x1f4

    aput v11, v10, v12

    .line 102
    const/4 v11, 0x0

    aget v11, v10, v11

    if-gt v11, v3, :cond_16

    const/4 v11, 0x1

    aget v10, v10, v11

    if-gt v3, v10, :cond_16

    .line 6039
    iget-wide v10, v2, Lcom/ensighten/R;->b:J

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 105
    sub-long v10, v12, v10

    const-wide/16 v12, 0x3e8

    cmp-long v10, v10, v12

    if-lez v10, :cond_16

    .line 107
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "keyframe:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7035
    iget v10, v2, Lcom/ensighten/R;->a:I

    .line 107
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9, v3, v5}, Lcom/ensighten/T;->a(Ljava/lang/String;Ljava/lang/String;II)Landroid/os/Message;

    move-result-object v7

    .line 108
    invoke-virtual {v8, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 109
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 7043
    iput-wide v8, v2, Lcom/ensighten/R;->b:J

    .line 116
    :cond_17
    move-object/from16 v0, p0

    iput v3, v0, Lcom/ensighten/S;->d:I

    .line 117
    move-object/from16 v0, p0

    iput v5, v0, Lcom/ensighten/S;->e:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v2, v4

    .line 127
    :goto_c
    const-wide/16 v4, 0x3b6

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move v10, v2

    move v2, v6

    .line 129
    goto/16 :goto_0

    .line 119
    :cond_18
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ensighten/S;->f:Lcom/ensighten/T;

    .line 7083
    iget-object v2, v2, Lcom/ensighten/T;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    .line 119
    if-nez v2, :cond_19

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ensighten/S;->d:I

    const/high16 v3, -0x80000000

    if-eq v2, v3, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ensighten/S;->f:Lcom/ensighten/T;

    .line 7091
    iget-object v2, v2, Lcom/ensighten/T;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    .line 119
    if-nez v2, :cond_19

    .line 120
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/ensighten/S;->f:Lcom/ensighten/T;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/ensighten/T;->a(Z)V

    .line 121
    const-string v2, "pause"

    move-object/from16 v0, p0

    iget v3, v0, Lcom/ensighten/S;->d:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/ensighten/S;->e:I

    invoke-static {v7, v2, v3, v4}, Lcom/ensighten/T;->a(Ljava/lang/String;Ljava/lang/String;II)Landroid/os/Message;

    move-result-object v2

    .line 122
    invoke-virtual {v8, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_19
    move v2, v10

    goto :goto_c

    .line 129
    :catch_1
    move-exception v3

    move v10, v2

    move v2, v6

    goto/16 :goto_0

    :cond_1a
    move v4, v10

    goto/16 :goto_b

    :cond_1b
    move v6, v2

    goto/16 :goto_a
.end method
