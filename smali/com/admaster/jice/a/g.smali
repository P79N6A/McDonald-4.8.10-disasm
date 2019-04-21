.class Lcom/admaster/jice/a/g;
.super Ljava/util/TimerTask;
.source "JiceCore.java"


# instance fields
.field final synthetic a:Lcom/admaster/jice/a/d;


# direct methods
.method constructor <init>(Lcom/admaster/jice/a/d;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/admaster/jice/a/g;->a:Lcom/admaster/jice/a/d;

    .line 492
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 496
    iget-object v0, p0, Lcom/admaster/jice/a/g;->a:Lcom/admaster/jice/a/d;

    iget-object v1, p0, Lcom/admaster/jice/a/g;->a:Lcom/admaster/jice/a/d;

    invoke-static {v1}, Lcom/admaster/jice/a/d;->h(Lcom/admaster/jice/a/d;)Lcom/admaster/jice/a/h;

    move-result-object v1

    sget-object v2, Lcom/admaster/jice/a/b;->FAILED:Lcom/admaster/jice/a/b;

    invoke-static {v0, v1, v2}, Lcom/admaster/jice/a/d;->a(Lcom/admaster/jice/a/d;Lcom/admaster/jice/a/h;Lcom/admaster/jice/a/b;)V

    .line 497
    return-void
.end method
