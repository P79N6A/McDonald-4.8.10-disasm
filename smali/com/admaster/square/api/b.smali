.class final Lcom/admaster/square/api/b;
.super Landroid/os/Handler;
.source "ConvMobiHandler.java"


# static fields
.field private static synthetic b:[I


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/admaster/square/api/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/os/Looper;Lcom/admaster/square/api/a;)V
    .locals 1

    .prologue
    .line 467
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 468
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/admaster/square/api/b;->a:Ljava/lang/ref/WeakReference;

    .line 469
    return-void
.end method

.method private a(Lcom/admaster/square/api/a;Landroid/os/Bundle;Lcom/admaster/square/api/CustomEvent;)V
    .locals 7

    .prologue
    .line 483
    .line 487
    :try_start_0
    const-string/jumbo v0, "userId"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 492
    :goto_0
    :try_start_1
    const-string v0, "timer"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v4

    .line 497
    :goto_1
    :try_start_2
    const-string v0, "order"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/admaster/square/utils/Order;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v0

    .line 503
    :goto_2
    invoke-static {}, Lcom/admaster/square/api/b;->a()[I

    move-result-object v0

    invoke-virtual {p3}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 539
    :goto_3
    :pswitch_0
    return-void

    .line 488
    :catch_0
    move-exception v0

    .line 489
    const-string v2, ""

    goto :goto_0

    .line 493
    :catch_1
    move-exception v0

    .line 494
    const-wide/16 v4, 0x0

    goto :goto_1

    .line 498
    :catch_2
    move-exception v0

    .line 499
    const/4 v3, 0x0

    .line 500
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 506
    :pswitch_1
    invoke-static {p1}, Lcom/admaster/square/api/a;->a(Lcom/admaster/square/api/a;)V

    move-object v1, p1

    move-object v6, p3

    .line 507
    invoke-static/range {v1 .. v6}, Lcom/admaster/square/api/a;->a(Lcom/admaster/square/api/a;Ljava/lang/String;Lcom/admaster/square/utils/Order;JLcom/admaster/square/api/CustomEvent;)V

    .line 509
    invoke-static {p1}, Lcom/admaster/square/api/a;->b(Lcom/admaster/square/api/a;)V

    goto :goto_3

    .line 513
    :pswitch_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    const-string v0, "AdMasterConvMobi userId can\'t be null!,register or login request is failed"

    invoke-static {v0}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_0
    move-object v1, p1

    move-object v6, p3

    .line 517
    invoke-static/range {v1 .. v6}, Lcom/admaster/square/api/a;->a(Lcom/admaster/square/api/a;Ljava/lang/String;Lcom/admaster/square/utils/Order;JLcom/admaster/square/api/CustomEvent;)V

    goto :goto_3

    .line 521
    :pswitch_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 522
    const-string v0, "AdMasterConvMobi userId can\'t be null! order or purchase is failed!"

    invoke-static {v0}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V

    goto :goto_3

    .line 525
    :cond_1
    if-nez v3, :cond_2

    .line 526
    const-string v0, "AdMasterConvMobi order can\'t be null!"

    invoke-static {v0}, Lcom/admaster/square/api/m;->b(Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    move-object v1, p1

    move-object v6, p3

    .line 529
    invoke-static/range {v1 .. v6}, Lcom/admaster/square/api/a;->a(Lcom/admaster/square/api/a;Ljava/lang/String;Lcom/admaster/square/utils/Order;JLcom/admaster/square/api/CustomEvent;)V

    goto :goto_3

    :pswitch_4
    move-object v1, p1

    move-object v6, p3

    .line 536
    invoke-static/range {v1 .. v6}, Lcom/admaster/square/api/a;->a(Lcom/admaster/square/api/a;Ljava/lang/String;Lcom/admaster/square/utils/Order;JLcom/admaster/square/api/CustomEvent;)V

    goto :goto_3

    .line 503
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic a()[I
    .locals 3

    .prologue
    .line 463
    sget-object v0, Lcom/admaster/square/api/b;->b:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/admaster/square/api/CustomEvent;->values()[Lcom/admaster/square/api/CustomEvent;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADACTIVE:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_d

    :goto_1
    :try_start_1
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADAPPLIST:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_c

    :goto_2
    :try_start_2
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADCRASH:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_b

    :goto_3
    :try_start_3
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADCUSTOM1:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_a

    :goto_4
    :try_start_4
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADCUSTOM2:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_9

    :goto_5
    :try_start_5
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADCUSTOM3:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_8

    :goto_6
    :try_start_6
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADCUSTOM4:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_7

    :goto_7
    :try_start_7
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADCUSTOM5:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_6

    :goto_8
    :try_start_8
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADLOGIN:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_5

    :goto_9
    :try_start_9
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADORDER:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_4

    :goto_a
    :try_start_a
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADPLIST:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_3

    :goto_b
    :try_start_b
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADPURCHASE:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2

    :goto_c
    :try_start_c
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADREG:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_1

    :goto_d
    :try_start_d
    sget-object v1, Lcom/admaster/square/api/CustomEvent;->ADSTART:Lcom/admaster/square/api/CustomEvent;

    invoke-virtual {v1}, Lcom/admaster/square/api/CustomEvent;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_0

    :goto_e
    sput-object v0, Lcom/admaster/square/api/b;->b:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_e

    :catch_1
    move-exception v1

    goto :goto_d

    :catch_2
    move-exception v1

    goto :goto_c

    :catch_3
    move-exception v1

    goto :goto_b

    :catch_4
    move-exception v1

    goto :goto_a

    :catch_5
    move-exception v1

    goto :goto_9

    :catch_6
    move-exception v1

    goto :goto_8

    :catch_7
    move-exception v1

    goto :goto_7

    :catch_8
    move-exception v1

    goto :goto_6

    :catch_9
    move-exception v1

    goto :goto_5

    :catch_a
    move-exception v1

    goto :goto_4

    :catch_b
    move-exception v1

    goto/16 :goto_3

    :catch_c
    move-exception v1

    goto/16 :goto_2

    :catch_d
    move-exception v1

    goto/16 :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 473
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 475
    iget-object v0, p0, Lcom/admaster/square/api/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/admaster/square/api/a;

    .line 476
    if-nez v0, :cond_0

    .line 480
    :goto_0
    return-void

    .line 479
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {}, Lcom/admaster/square/api/CustomEvent;->values()[Lcom/admaster/square/api/CustomEvent;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    aget-object v2, v2, v3

    invoke-direct {p0, v0, v1, v2}, Lcom/admaster/square/api/b;->a(Lcom/admaster/square/api/a;Landroid/os/Bundle;Lcom/admaster/square/api/CustomEvent;)V

    goto :goto_0
.end method
