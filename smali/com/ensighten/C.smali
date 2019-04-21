.class public final Lcom/ensighten/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ensighten/model/EnsightenGestureRecognizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ensighten/C$b;,
        Lcom/ensighten/C$c;,
        Lcom/ensighten/C$a;
    }
.end annotation


# instance fields
.field private a:J

.field private b:I

.field private c:Lcom/ensighten/model/EnsightenGestureRecognizerCompletionHandler;

.field private d:Ljava/util/Timer;

.field private e:Lcom/ensighten/C$b;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ensighten/C;->a:J

    .line 30
    sget v0, Lcom/ensighten/C$a;->a:I

    iput v0, p0, Lcom/ensighten/C;->b:I

    .line 52
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ensighten/C;->d:Ljava/util/Timer;

    .line 54
    new-instance v0, Lcom/ensighten/C$1;

    invoke-direct {v0, p0}, Lcom/ensighten/C$1;-><init>(Lcom/ensighten/C;)V

    iput-object v0, p0, Lcom/ensighten/C;->c:Lcom/ensighten/model/EnsightenGestureRecognizerCompletionHandler;

    .line 63
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/ensighten/C;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/ensighten/C;)I
    .locals 1

    .prologue
    .line 16
    iget v0, p0, Lcom/ensighten/C;->b:I

    return v0
.end method

.method static synthetic a(Lcom/ensighten/C;I)I
    .locals 0

    .prologue
    .line 16
    iput p1, p0, Lcom/ensighten/C;->b:I

    return p1
.end method

.method public static a()Lcom/ensighten/C;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/ensighten/C$c;->a:Lcom/ensighten/C;

    return-object v0
.end method

.method static synthetic b(Lcom/ensighten/C;)Lcom/ensighten/model/EnsightenGestureRecognizerCompletionHandler;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/ensighten/C;->c:Lcom/ensighten/model/EnsightenGestureRecognizerCompletionHandler;

    return-object v0
.end method

.method private b()Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 103
    iget-wide v4, p0, Lcom/ensighten/C;->a:J

    sub-long/2addr v2, v4

    .line 105
    invoke-static {}, Lcom/ensighten/i;->e()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 106
    const-string v4, "The four-finger press action duration is %d."

    new-array v5, v0, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 108
    :cond_0
    const-wide/16 v4, 0xfa0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 109
    invoke-static {}, Lcom/ensighten/i;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    const-string v1, "The four-finger press action was recognized."

    invoke-static {v1}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 114
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ensighten/C;->e:Lcom/ensighten/C$b;

    invoke-virtual {v0}, Lcom/ensighten/C$b;->cancel()Z

    .line 126
    return-void
.end method


# virtual methods
.method public final process(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x4

    const/4 v4, 0x0

    .line 67
    iget v0, p0, Lcom/ensighten/C;->b:I

    sget v1, Lcom/ensighten/C$a;->c:I

    if-ne v0, v1, :cond_1

    .line 68
    invoke-static {}, Lcom/ensighten/i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const-string v0, "The four-finger press action was already recognized."

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget v0, p0, Lcom/ensighten/C;->b:I

    sget v1, Lcom/ensighten/C$a;->a:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ensighten/C;->a:J

    .line 76
    sget v0, Lcom/ensighten/C$a;->b:I

    iput v0, p0, Lcom/ensighten/C;->b:I

    .line 77
    iget-object v0, p0, Lcom/ensighten/C;->e:Lcom/ensighten/C$b;

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/ensighten/C;->e:Lcom/ensighten/C$b;

    invoke-virtual {v0}, Lcom/ensighten/C$b;->cancel()Z

    .line 80
    :cond_2
    new-instance v0, Lcom/ensighten/C$b;

    invoke-direct {v0, p0, v4}, Lcom/ensighten/C$b;-><init>(Lcom/ensighten/C;B)V

    iput-object v0, p0, Lcom/ensighten/C;->e:Lcom/ensighten/C$b;

    .line 81
    iget-object v0, p0, Lcom/ensighten/C;->d:Ljava/util/Timer;

    iget-object v1, p0, Lcom/ensighten/C;->e:Lcom/ensighten/C$b;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 83
    invoke-static {}, Lcom/ensighten/i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const-string v0, "The four-finger press action has started at %d."

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/ensighten/C;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_3
    iget v0, p0, Lcom/ensighten/C;->b:I

    sget v1, Lcom/ensighten/C$a;->b:I

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 87
    invoke-direct {p0}, Lcom/ensighten/C;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-static {}, Lcom/ensighten/i;->e()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    const-string v0, "The four-finger press action was interrupted."

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 90
    :cond_4
    invoke-virtual {p0}, Lcom/ensighten/C;->reset()V

    goto :goto_0

    .line 92
    :cond_5
    iget v0, p0, Lcom/ensighten/C;->b:I

    sget v1, Lcom/ensighten/C$a;->b:I

    if-ne v0, v1, :cond_0

    .line 93
    invoke-direct {p0}, Lcom/ensighten/C;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/ensighten/C;->c()V

    .line 95
    sget v0, Lcom/ensighten/C$a;->c:I

    iput v0, p0, Lcom/ensighten/C;->b:I

    .line 96
    iget-object v0, p0, Lcom/ensighten/C;->c:Lcom/ensighten/model/EnsightenGestureRecognizerCompletionHandler;

    invoke-interface {v0}, Lcom/ensighten/model/EnsightenGestureRecognizerCompletionHandler;->doAction()V

    goto/16 :goto_0
.end method

.method public final reset()V
    .locals 2

    .prologue
    .line 119
    sget v0, Lcom/ensighten/C$a;->a:I

    iput v0, p0, Lcom/ensighten/C;->b:I

    .line 120
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ensighten/C;->a:J

    .line 121
    invoke-direct {p0}, Lcom/ensighten/C;->c()V

    .line 122
    return-void
.end method
