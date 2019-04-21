.class final Lcom/ensighten/h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ensighten/h;

.field private b:Z


# direct methods
.method private constructor <init>(Lcom/ensighten/h;)V
    .locals 1

    .prologue
    .line 595
    iput-object p1, p0, Lcom/ensighten/h$b;->a:Lcom/ensighten/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ensighten/h$b;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/ensighten/h;B)V
    .locals 0

    .prologue
    .line 595
    invoke-direct {p0, p1}, Lcom/ensighten/h$b;-><init>(Lcom/ensighten/h;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 605
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/ensighten/h$b;->b:Z

    if-eqz v0, :cond_0

    .line 606
    const-wide/32 v0, 0x493e0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 607
    iget-object v0, p0, Lcom/ensighten/h$b;->a:Lcom/ensighten/h;

    invoke-virtual {v0}, Lcom/ensighten/h;->a()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 609
    :catch_0
    move-exception v0

    .line 610
    invoke-static {}, Lcom/ensighten/i;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 611
    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/Exception;)V

    .line 613
    :cond_0
    return-void
.end method
