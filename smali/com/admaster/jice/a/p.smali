.class Lcom/admaster/jice/a/p;
.super Ljava/lang/Object;
.source "JicePushView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/admaster/jice/a/o;


# direct methods
.method constructor <init>(Lcom/admaster/jice/a/o;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/admaster/jice/a/p;->a:Lcom/admaster/jice/a/o;

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 268
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/admaster/jice/a/p;->a:Lcom/admaster/jice/a/o;

    invoke-virtual {v0}, Lcom/admaster/jice/a/o;->b()V

    .line 271
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 272
    iget-object v0, p0, Lcom/admaster/jice/a/p;->a:Lcom/admaster/jice/a/o;

    invoke-virtual {v0}, Lcom/admaster/jice/a/o;->b()V

    .line 274
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
