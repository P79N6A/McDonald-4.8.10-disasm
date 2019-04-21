.class Lcom/threatmetrix/TrustDefender/d;
.super Lcom/threatmetrix/TrustDefender/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/threatmetrix/TrustDefender/d$a;
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String;


# instance fields
.field private j:Landroid/content/Context;

.field private k:Z

.field private l:Z

.field private m:Lcom/threatmetrix/TrustDefender/u;

.field private n:Lcom/threatmetrix/TrustDefender/t;

.field private o:Ljava/util/concurrent/CountDownLatch;

.field private p:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/threatmetrix/TrustDefender/d;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/threatmetrix/TrustDefender/d;->i:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Lcom/threatmetrix/TrustDefender/c;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/d;->j:Landroid/content/Context;

    .line 18
    iput-boolean v1, p0, Lcom/threatmetrix/TrustDefender/d;->k:Z

    .line 19
    iput-boolean v1, p0, Lcom/threatmetrix/TrustDefender/d;->l:Z

    .line 20
    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/d;->m:Lcom/threatmetrix/TrustDefender/u;

    .line 21
    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/d;->n:Lcom/threatmetrix/TrustDefender/t;

    .line 22
    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/d;->o:Ljava/util/concurrent/CountDownLatch;

    .line 23
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/threatmetrix/TrustDefender/d;->p:J

    .line 25
    return-void
.end method

.method static synthetic a(Lcom/threatmetrix/TrustDefender/d;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefender/d;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/d;->j:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/threatmetrix/TrustDefender/d;Lcom/threatmetrix/TrustDefender/t;)Lcom/threatmetrix/TrustDefender/t;
    .locals 0
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefender/d;
    .param p1, "x1"    # Lcom/threatmetrix/TrustDefender/t;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/d;->n:Lcom/threatmetrix/TrustDefender/t;

    return-object p1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "description"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 99
    .local p2, "pluginArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v2, "false"

    .line 100
    .local v2, "version":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "name"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 102
    .local v1, "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    if-eqz v1, :cond_1

    .line 105
    const-string v3, "name"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 106
    .local v0, "n":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 108
    const-string v3, "[abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXY -]"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 109
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 111
    const-string v2, "true"

    .line 116
    .end local v0    # "n":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "^"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 100
    .end local v1    # "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)V
    .locals 11
    .param p1, "jsPluginList"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 350
    const-string v8, "(<FIELD_SEP>|<REC_SEP>)"

    const-string v9, ""

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/threatmetrix/TrustDefender/d;->c:Ljava/lang/String;

    .line 351
    iget-object v8, p0, Lcom/threatmetrix/TrustDefender/d;->c:Ljava/lang/String;

    invoke-static {v8}, Lcom/threatmetrix/TrustDefender/ai;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/threatmetrix/TrustDefender/d;->d:Ljava/lang/String;

    .line 353
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 355
    .local v5, "pluginArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v8, "<REC_SEP>"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v6, v1, v2

    .line 357
    .local v6, "pluginString":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 391
    .end local v6    # "pluginString":Ljava/lang/String;
    :goto_1
    return-void

    .line 358
    .restart local v6    # "pluginString":Ljava/lang/String;
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 360
    .local v4, "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "<FIELD_SEP>"

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 361
    .local v0, "arr":[Ljava/lang/String;
    array-length v8, v0

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1

    .line 363
    const-string v8, "name"

    const/4 v9, 0x0

    aget-object v9, v0, v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    const-string v8, "description"

    const/4 v9, 0x1

    aget-object v9, v0, v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    const-string v8, "filename"

    const/4 v9, 0x2

    aget-object v9, v0, v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v8, "length"

    const/4 v9, 0x3

    aget-object v9, v0, v9

    invoke-virtual {v4, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 372
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v4    # "p":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "pluginString":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/threatmetrix/TrustDefender/d;->b:Ljava/lang/String;

    .line 374
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 376
    .local v7, "plugins":Ljava/lang/StringBuilder;
    const-string v8, "QuickTime Plug-in"

    const-string v9, "plugin_quicktime"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefender/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    const-string v8, "Adobe Acrobat"

    const-string v9, "plugin_adobe_acrobat"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefender/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    const-string v8, "Java"

    const-string v9, "plugin_java"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefender/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    const-string v8, "SVG Viewer"

    const-string v9, "plugin_svg_viewer"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefender/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    const-string v8, "Flash"

    const-string v9, "plugin_flash"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefender/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    const-string v8, "Windows Media Player"

    const-string v9, "plugin_windows_media_player"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefender/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    const-string v8, "Silverlight"

    const-string v9, "plugin_silverlight"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefender/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    const-string v8, "Real Player"

    const-string v9, "plugin_realplayer"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefender/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const-string v8, "ShockWave Director"

    const-string v9, "plugin_shockwave"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefender/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    const-string v8, "VLC"

    const-string v9, "plugin_vlc_player"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefender/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    const-string v8, "DevalVR"

    const-string v9, "plugin_devalvr"

    invoke-static {v8, v9, v5}, Lcom/threatmetrix/TrustDefender/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/threatmetrix/TrustDefender/d;->a:Ljava/lang/String;

    .line 390
    sget-object v9, Lcom/threatmetrix/TrustDefender/d;->i:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, "Got"

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/threatmetrix/TrustDefender/d;->b:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, ":"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v8, p0, Lcom/threatmetrix/TrustDefender/d;->a:Ljava/lang/String;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/threatmetrix/TrustDefender/d;->a:Ljava/lang/String;

    :goto_2
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_3
    const-string v8, ""

    goto :goto_2
.end method

.method static synthetic b(Lcom/threatmetrix/TrustDefender/d;)Lcom/threatmetrix/TrustDefender/u;
    .locals 1
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefender/d;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/d;->m:Lcom/threatmetrix/TrustDefender/u;

    return-object v0
.end method

.method static synthetic c(Lcom/threatmetrix/TrustDefender/d;)Z
    .locals 1
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefender/d;

    .prologue
    .line 14
    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefender/d;->k:Z

    return v0
.end method

.method static synthetic d(Lcom/threatmetrix/TrustDefender/d;)Lcom/threatmetrix/TrustDefender/t;
    .locals 1
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefender/d;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/d;->n:Lcom/threatmetrix/TrustDefender/t;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/threatmetrix/TrustDefender/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/threatmetrix/TrustDefender/d;)V
    .locals 6
    .param p0, "x0"    # Lcom/threatmetrix/TrustDefender/d;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 14
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/threatmetrix/TrustDefender/d;->p:J

    const-wide/16 v2, 0x20

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/d;->n:Lcom/threatmetrix/TrustDefender/t;

    const-string v1, "(function () { var plugins_string=\'\', i=0; for (p=navigator.plugins[0]; i< navigator.plugins.length;p=navigator.plugins[i++]) {  plugins_string += p.name + \'<FIELD_SEP>\' + p.description + \'<FIELD_SEP>\' + p.filename + \'<FIELD_SEP>\' + p.length.toString() + \'<REC_SEP>\'; } return plugins_string;})();"

    invoke-virtual {v0, v1}, Lcom/threatmetrix/TrustDefender/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/threatmetrix/TrustDefender/d;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/threatmetrix/TrustDefender/d;->p:J

    const-wide/16 v2, 0x4

    and-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/d;->n:Lcom/threatmetrix/TrustDefender/t;

    const-string v1, "navigator.mimeTypes.length"

    invoke-virtual {v0, v1}, Lcom/threatmetrix/TrustDefender/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/threatmetrix/TrustDefender/d;->f:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const-string v0, "(function () { var mime_string=\'\', i=0; for (var m=navigator.mimeTypes[0]; i< navigator.mimeTypes.length;m=navigator.mimeTypes[i++]) {  mime_string += m.type; } return mime_string;})();"

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/d;->n:Lcom/threatmetrix/TrustDefender/t;

    invoke-virtual {v1, v0}, Lcom/threatmetrix/TrustDefender/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/d;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/d;->g:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/d;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/threatmetrix/TrustDefender/ai;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/d;->h:Ljava/lang/String;

    sget-object v0, Lcom/threatmetrix/TrustDefender/d;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Got:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/d;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/threatmetrix/TrustDefender/d;->i:Ljava/lang/String;

    const-string v2, "failed to convert"

    invoke-static {v1, v2, v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    const-string v0, ""

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/d;->h:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/d;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/d;->n:Lcom/threatmetrix/TrustDefender/t;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/threatmetrix/TrustDefender/d;->l:Z

    if-eqz v0, :cond_2

    .line 52
    :cond_0
    invoke-static {}, Lcom/threatmetrix/TrustDefender/t;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/d;->e:Ljava/lang/String;

    .line 59
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/d;->e:Ljava/lang/String;

    return-object v0

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/threatmetrix/TrustDefender/d;->n:Lcom/threatmetrix/TrustDefender/t;

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/d;->j:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/threatmetrix/TrustDefender/t;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/threatmetrix/TrustDefender/d;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method final a(Z)V
    .locals 10
    .param p1, "parseResult"    # Z

    .prologue
    const-wide/16 v8, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 204
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/d;->o:Ljava/util/concurrent/CountDownLatch;

    if-eqz v3, :cond_2

    .line 208
    :try_start_0
    sget-object v3, Lcom/threatmetrix/TrustDefender/d;->i:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "waiting for getBrowserInfo to finished, latch: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/d;->o:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/d;->o:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/d;->o:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v4, 0xa

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 211
    if-eqz p1, :cond_2

    invoke-static {}, Lcom/threatmetrix/TrustDefender/t;->b()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/threatmetrix/TrustDefender/t;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 214
    :cond_0
    iget-wide v4, p0, Lcom/threatmetrix/TrustDefender/d;->p:J

    const-wide/16 v6, 0x20

    and-long/2addr v4, v6

    cmp-long v3, v4, v8

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/d;->m:Lcom/threatmetrix/TrustDefender/u;

    iget-object v3, v3, Lcom/threatmetrix/TrustDefender/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_8

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/d;->m:Lcom/threatmetrix/TrustDefender/u;

    iget-object v1, v1, Lcom/threatmetrix/TrustDefender/u;->c:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-direct {p0, v1}, Lcom/threatmetrix/TrustDefender/d;->a(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    if-nez v1, :cond_2

    iget-wide v4, p0, Lcom/threatmetrix/TrustDefender/d;->p:J

    const-wide/16 v6, 0x4

    and-long/2addr v4, v6

    cmp-long v1, v4, v8

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/d;->m:Lcom/threatmetrix/TrustDefender/u;

    iget-object v1, v1, Lcom/threatmetrix/TrustDefender/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/d;->m:Lcom/threatmetrix/TrustDefender/u;

    iget-object v1, v1, Lcom/threatmetrix/TrustDefender/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_4

    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/threatmetrix/TrustDefender/d;->f:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    iget v1, p0, Lcom/threatmetrix/TrustDefender/d;->f:I

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/d;->m:Lcom/threatmetrix/TrustDefender/u;

    iget-object v1, v1, Lcom/threatmetrix/TrustDefender/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/d;->m:Lcom/threatmetrix/TrustDefender/u;

    iget-object v1, v1, Lcom/threatmetrix/TrustDefender/u;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/d;->g:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/d;->g:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/d;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/threatmetrix/TrustDefender/ai;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/d;->h:Ljava/lang/String;

    sget-object v1, Lcom/threatmetrix/TrustDefender/d;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Got:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/d;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    sget-object v2, Lcom/threatmetrix/TrustDefender/d;->i:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Got mime "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/threatmetrix/TrustDefender/d;->f:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/d;->g:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/threatmetrix/TrustDefender/d;->g:Ljava/lang/String;

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_2
    :goto_4
    return-void

    .line 214
    :cond_3
    const-string v1, ""

    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/d;->d:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Ljava/lang/InterruptedException;
    sget-object v1, Lcom/threatmetrix/TrustDefender/d;->i:Ljava/lang/String;

    const-string v2, "getBrowserInfo interrupted"

    invoke-static {v1, v2, v0}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 214
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    :try_start_3
    sget-object v3, Lcom/threatmetrix/TrustDefender/d;->i:Ljava/lang/String;

    const-string v4, "failed to convert"

    invoke-static {v3, v4, v1}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    const/4 v1, 0x0

    iput v1, p0, Lcom/threatmetrix/TrustDefender/d;->f:I

    goto :goto_1

    :cond_5
    const-string v1, ""

    iput-object v1, p0, Lcom/threatmetrix/TrustDefender/d;->h:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const-string v1, ""

    goto :goto_3

    .line 219
    :cond_7
    sget-object v1, Lcom/threatmetrix/TrustDefender/d;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getBrowserInfo no response from UI thread before timeout using latch: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/d;->o:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/d;->o:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/threatmetrix/TrustDefender/d;->l:Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :cond_8
    move v2, v1

    goto/16 :goto_0
.end method

.method final a(Landroid/content/Context;ZJ)Z
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "needWebview"    # Z
    .param p3, "options"    # J

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 128
    iput-object p1, p0, Lcom/threatmetrix/TrustDefender/d;->j:Landroid/content/Context;

    .line 129
    iput-boolean p2, p0, Lcom/threatmetrix/TrustDefender/d;->k:Z

    .line 130
    iput-wide p3, p0, Lcom/threatmetrix/TrustDefender/d;->p:J

    .line 132
    iget-boolean v3, p0, Lcom/threatmetrix/TrustDefender/d;->k:Z

    if-nez v3, :cond_0

    .line 196
    :goto_0
    return v4

    .line 135
    :cond_0
    sget-object v6, Lcom/threatmetrix/TrustDefender/d;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "initJSExecutor: jsProblem = "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, p0, Lcom/threatmetrix/TrustDefender/d;->l:Z

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", jsExec = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lcom/threatmetrix/TrustDefender/d;->n:Lcom/threatmetrix/TrustDefender/t;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ", hasBadOptions = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/d;->n:Lcom/threatmetrix/TrustDefender/t;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/d;->n:Lcom/threatmetrix/TrustDefender/t;

    invoke-virtual {v3, p2}, Lcom/threatmetrix/TrustDefender/t;->a(Z)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_1
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-boolean v3, p0, Lcom/threatmetrix/TrustDefender/d;->l:Z

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/d;->n:Lcom/threatmetrix/TrustDefender/t;

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/d;->n:Lcom/threatmetrix/TrustDefender/t;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/d;->n:Lcom/threatmetrix/TrustDefender/t;

    iget-boolean v6, p0, Lcom/threatmetrix/TrustDefender/d;->k:Z

    invoke-virtual {v3, v6}, Lcom/threatmetrix/TrustDefender/t;->a(Z)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 140
    :cond_2
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v2, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 141
    .local v2, "latch":Ljava/util/concurrent/CountDownLatch;
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 143
    .local v1, "handler":Landroid/os/Handler;
    invoke-static {}, Lcom/threatmetrix/TrustDefender/t;->b()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/threatmetrix/TrustDefender/t;->a()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    move v0, v5

    .line 145
    .local v0, "altJSInterface":Z
    :goto_2
    new-instance v6, Lcom/threatmetrix/TrustDefender/u;

    if-eqz v0, :cond_6

    move-object v3, v2

    :goto_3
    invoke-direct {v6, v3}, Lcom/threatmetrix/TrustDefender/u;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    iput-object v6, p0, Lcom/threatmetrix/TrustDefender/d;->m:Lcom/threatmetrix/TrustDefender/u;

    .line 147
    sget-object v3, Lcom/threatmetrix/TrustDefender/d;->i:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Firing off initJSExecutor on UI thread using latch: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v3, Lcom/threatmetrix/TrustDefender/d$1;

    invoke-direct {v3, p0, p0, v2}, Lcom/threatmetrix/TrustDefender/d$1;-><init>(Lcom/threatmetrix/TrustDefender/d;Lcom/threatmetrix/TrustDefender/d;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    const-wide/16 v6, 0xa

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v6, v7, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 180
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/threatmetrix/TrustDefender/d;->l:Z

    .line 181
    sget-object v3, Lcom/threatmetrix/TrustDefender/d;->i:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "initJSExecutor no response from UI thread before timeout using init latch: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 187
    :catch_0
    move-exception v3

    sget-object v3, Lcom/threatmetrix/TrustDefender/d;->i:Ljava/lang/String;

    const-string v5, "Interrupted initing js engine"

    invoke-static {v3, v5}, Lcom/threatmetrix/TrustDefender/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 135
    .end local v0    # "altJSInterface":Z
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_4
    const-string v3, "true"

    goto/16 :goto_1

    .restart local v1    # "handler":Landroid/os/Handler;
    .restart local v2    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_5
    move v0, v4

    .line 143
    goto :goto_2

    .line 145
    .restart local v0    # "altJSInterface":Z
    :cond_6
    const/4 v3, 0x0

    goto :goto_3

    .line 190
    .end local v0    # "altJSInterface":Z
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "latch":Ljava/util/concurrent/CountDownLatch;
    :cond_7
    sget-object v3, Lcom/threatmetrix/TrustDefender/d;->i:Ljava/lang/String;

    const-string v4, "reused JS Interface"

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    move v4, v5

    .line 196
    goto/16 :goto_0
.end method

.method final b()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 232
    iget-object v2, p0, Lcom/threatmetrix/TrustDefender/d;->n:Lcom/threatmetrix/TrustDefender/t;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefender/d;->l:Z

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/threatmetrix/TrustDefender/d;->k:Z

    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method final c()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 244
    invoke-static {}, Lcom/threatmetrix/TrustDefender/t;->b()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/threatmetrix/TrustDefender/t;->a()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 251
    .local v0, "altJSInterface":Z
    :goto_0
    const/4 v2, 0x1

    .line 252
    .local v2, "latchCount":I
    if-eqz v0, :cond_2

    .line 254
    iget-wide v4, p0, Lcom/threatmetrix/TrustDefender/d;->p:J

    const-wide/16 v6, 0x20

    and-long/2addr v4, v6

    cmp-long v3, v4, v8

    if-eqz v3, :cond_1

    .line 255
    add-int/lit8 v2, v2, 0x1

    .line 257
    :cond_1
    iget-wide v4, p0, Lcom/threatmetrix/TrustDefender/d;->p:J

    const-wide/16 v6, 0x4

    and-long/2addr v4, v6

    cmp-long v3, v4, v8

    if-eqz v3, :cond_2

    .line 258
    add-int/lit8 v2, v2, 0x2

    .line 260
    :cond_2
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v3, p0, Lcom/threatmetrix/TrustDefender/d;->o:Ljava/util/concurrent/CountDownLatch;

    .line 261
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 263
    .local v1, "handler":Landroid/os/Handler;
    sget-object v3, Lcom/threatmetrix/TrustDefender/d;->i:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Firing off getBrowserInfo on UI thread using latch: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/threatmetrix/TrustDefender/d;->o:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " with count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/threatmetrix/TrustDefender/w;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/d;->m:Lcom/threatmetrix/TrustDefender/u;

    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/threatmetrix/TrustDefender/d;->o:Ljava/util/concurrent/CountDownLatch;

    :goto_1
    invoke-virtual {v4, v3}, Lcom/threatmetrix/TrustDefender/u;->a(Ljava/util/concurrent/CountDownLatch;)V

    .line 268
    new-instance v3, Lcom/threatmetrix/TrustDefender/d$2;

    iget-object v4, p0, Lcom/threatmetrix/TrustDefender/d;->o:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v3, p0, p0, v4}, Lcom/threatmetrix/TrustDefender/d$2;-><init>(Lcom/threatmetrix/TrustDefender/d;Lcom/threatmetrix/TrustDefender/d;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 290
    return-void

    .line 244
    .end local v0    # "altJSInterface":Z
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "latchCount":I
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 266
    .restart local v0    # "altJSInterface":Z
    .restart local v1    # "handler":Landroid/os/Handler;
    .restart local v2    # "latchCount":I
    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method
