.class public final Lcom/ensighten/k$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/ensighten/k;


# direct methods
.method public constructor <init>(Lcom/ensighten/k;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/ensighten/k$1;->d:Lcom/ensighten/k;

    iput-object p2, p0, Lcom/ensighten/k$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/ensighten/k$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ensighten/k$1;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .prologue
    .line 201
    iget-object v2, p0, Lcom/ensighten/k$1;->d:Lcom/ensighten/k;

    .line 2067
    iget-object v2, v2, Lcom/ensighten/k;->o:Ljava/util/concurrent/locks/Lock;

    .line 201
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 202
    const-wide/16 v2, 0x0

    .line 203
    invoke-static {}, Lcom/ensighten/j;->b()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 205
    const-string v4, "Screen Dump Performance:"

    invoke-static {v4}, Lcom/ensighten/j;->a(Ljava/lang/String;)V

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v6, "EnsightenInstrumentation:UIThreadScheduling"

    invoke-static {v6}, Lcom/ensighten/j;->b(Ljava/lang/String;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 207
    const-string v6, "\tThread scheduling took %s."

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Lcom/ensighten/Utils;->durationToString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ensighten/j;->a(Ljava/lang/String;)V

    :cond_0
    move-wide v10, v2

    .line 213
    :try_start_0
    invoke-static {}, Lcom/ensighten/Ensighten;->getJavascriptProcessor()Lcom/ensighten/h;

    move-result-object v2

    const-string v3, "socket.sendMessage(\'screen.dump.start\',\'\');"

    invoke-virtual {v2, v3}, Lcom/ensighten/h;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_1
    :goto_0
    :try_start_1
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 219
    iget-object v2, p0, Lcom/ensighten/k$1;->d:Lcom/ensighten/k;

    iget-object v3, p0, Lcom/ensighten/k$1;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/ensighten/k$1;->d:Lcom/ensighten/k;

    .line 3067
    iget-object v4, v4, Lcom/ensighten/k;->k:Landroid/view/ViewGroup;

    .line 219
    iget-object v5, p0, Lcom/ensighten/k$1;->d:Lcom/ensighten/k;

    .line 4067
    iget-object v5, v5, Lcom/ensighten/k;->j:Landroid/view/View;

    .line 219
    iget-object v6, p0, Lcom/ensighten/k$1;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/ensighten/k$1;->c:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/ensighten/k;->a(Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    .line 220
    if-nez v3, :cond_6

    .line 259
    :goto_1
    return-void

    .line 215
    :catch_0
    move-exception v2

    invoke-static {}, Lcom/ensighten/i;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 216
    const-string v2, "The screen dump start javascript message encountered an exception."

    invoke-static {v2}, Lcom/ensighten/i;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 238
    :catch_1
    move-exception v2

    .line 239
    invoke-static {}, Lcom/ensighten/i;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 240
    invoke-static {v2}, Lcom/ensighten/i;->b(Ljava/lang/Exception;)V

    .line 243
    :cond_2
    :goto_2
    invoke-static {}, Lcom/ensighten/j;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 244
    const-string v2, "EnsightenInstrumentation:UIThreadScheduling"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/ensighten/j;->a(Ljava/lang/String;J)V

    .line 247
    :cond_3
    iget-object v2, p0, Lcom/ensighten/k$1;->d:Lcom/ensighten/k;

    .line 6350
    iget v3, v2, Lcom/ensighten/k;->i:I

    iget v4, v2, Lcom/ensighten/k;->h:I

    sub-int/2addr v3, v4

    int-to-long v4, v3

    .line 6351
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_a

    .line 6352
    const/4 v3, 0x0

    iput v3, v2, Lcom/ensighten/k;->i:I

    .line 6353
    const/4 v3, 0x0

    iput v3, v2, Lcom/ensighten/k;->h:I

    .line 6354
    const/16 v3, 0x19

    iput v3, v2, Lcom/ensighten/k;->n:I

    .line 249
    :goto_3
    iget-object v2, p0, Lcom/ensighten/k$1;->d:Lcom/ensighten/k;

    .line 7067
    iget-boolean v2, v2, Lcom/ensighten/k;->c:Z

    .line 249
    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ensighten/k$1;->d:Lcom/ensighten/k;

    .line 8067
    iget-boolean v2, v2, Lcom/ensighten/k;->f:Z

    .line 249
    if-eqz v2, :cond_4

    .line 250
    iget-object v2, p0, Lcom/ensighten/k$1;->d:Lcom/ensighten/k;

    .line 9067
    iget-object v2, v2, Lcom/ensighten/k;->b:Landroid/os/Handler;

    .line 250
    iget-object v3, p0, Lcom/ensighten/k$1;->d:Lcom/ensighten/k;

    .line 10067
    iget-object v3, v3, Lcom/ensighten/k;->m:Ljava/lang/Runnable;

    .line 250
    iget-object v4, p0, Lcom/ensighten/k$1;->d:Lcom/ensighten/k;

    .line 11067
    iget v4, v4, Lcom/ensighten/k;->n:I

    .line 250
    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 253
    :cond_4
    invoke-static {}, Lcom/ensighten/j;->b()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 255
    sub-long/2addr v2, v10

    .line 256
    const-string v4, "\tThe screen dump took %s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Lcom/ensighten/Utils;->durationToString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ensighten/j;->a(Ljava/lang/String;)V

    .line 258
    :cond_5
    iget-object v2, p0, Lcom/ensighten/k$1;->d:Lcom/ensighten/k;

    .line 12067
    iget-object v2, v2, Lcom/ensighten/k;->o:Ljava/util/concurrent/locks/Lock;

    .line 258
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_1

    .line 222
    :cond_6
    const-wide/16 v4, 0x0

    .line 223
    :try_start_2
    invoke-static {}, Lcom/ensighten/j;->b()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 226
    :cond_7
    instance-of v2, v3, Lorg/json/JSONObject;

    if-nez v2, :cond_9

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 227
    :goto_4
    invoke-static {}, Lcom/ensighten/j;->b()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    .line 229
    const-string v6, "\tThe conversion from json to string took %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Lcom/ensighten/Utils;->durationToString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ensighten/j;->a(Ljava/lang/String;)V

    .line 231
    :cond_8
    invoke-static {}, Lcom/ensighten/Ensighten;->getJavascriptProcessor()Lcom/ensighten/h;

    const-string v4, "socket.ws.emit(\'message\',JSON.stringify({\"command\": \'screen.receipt\', \"data\": %s}), function() { prompt(\"opcode\",\"{ opcode : \'callStaticMethod\', arg1 : \'com.ensighten.Ensighten\', arg2 : \'onFrameReceived\', arg3 : \'int\', arg4 : \'%d\' }\"); });"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/ensighten/k$1;->d:Lcom/ensighten/k;

    .line 5067
    iget v8, v7, Lcom/ensighten/k;->i:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v7, Lcom/ensighten/k;->i:I

    .line 231
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ensighten/h;->a(Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/ensighten/j;->c()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 233
    const-string v4, "Screen Dump Size:"

    invoke-static {v4}, Lcom/ensighten/j;->a(Ljava/lang/String;)V

    .line 234
    const-string v4, "\tThe size of the screen.receipt message is %s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Lcom/ensighten/Utils;->objectSizeToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ensighten/j;->a(Ljava/lang/String;)V

    .line 235
    iget-object v2, p0, Lcom/ensighten/k$1;->d:Lcom/ensighten/k;

    const-string v4, ""

    .line 6067
    invoke-virtual {v2, v4, v3}, Lcom/ensighten/k;->a(Ljava/lang/String;Lorg/json/JSONObject;)J

    move-result-wide v2

    .line 236
    const-string v4, "\tThe total size of all the images is %s."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2, v3}, Lcom/ensighten/Utils;->bytesToString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ensighten/j;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 226
    :cond_9
    move-object v0, v3

    check-cast v0, Lorg/json/JSONObject;

    move-object v2, v0

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    goto/16 :goto_4

    .line 6355
    :cond_a
    const-wide/16 v6, 0x5

    cmp-long v3, v4, v6

    if-gez v3, :cond_b

    .line 6356
    const/16 v3, 0x19

    iput v3, v2, Lcom/ensighten/k;->n:I

    goto/16 :goto_3

    .line 6357
    :cond_b
    const-wide/16 v6, 0xa

    cmp-long v3, v4, v6

    if-gez v3, :cond_c

    .line 6358
    const/16 v3, 0x32

    iput v3, v2, Lcom/ensighten/k;->n:I

    goto/16 :goto_3

    .line 6359
    :cond_c
    const-wide/16 v6, 0xf

    cmp-long v3, v4, v6

    if-gez v3, :cond_d

    .line 6360
    const/16 v3, 0x64

    iput v3, v2, Lcom/ensighten/k;->n:I

    goto/16 :goto_3

    .line 6361
    :cond_d
    const-wide/16 v6, 0x14

    cmp-long v3, v4, v6

    if-gez v3, :cond_e

    .line 6362
    const/16 v3, 0x1f4

    iput v3, v2, Lcom/ensighten/k;->n:I

    goto/16 :goto_3

    .line 6363
    :cond_e
    const-wide/16 v6, 0x19

    cmp-long v3, v4, v6

    if-gez v3, :cond_f

    .line 6364
    const/16 v3, 0x3e8

    iput v3, v2, Lcom/ensighten/k;->n:I

    goto/16 :goto_3

    .line 6366
    :cond_f
    const/16 v3, 0x3e8

    iput v3, v2, Lcom/ensighten/k;->n:I

    .line 6367
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/ensighten/k;->f:Z

    goto/16 :goto_3
.end method
