.class Lcom/admaster/jice/a/r;
.super Ljava/lang/Object;
.source "JicePushView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/admaster/jice/a/o;


# direct methods
.method constructor <init>(Lcom/admaster/jice/a/o;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/admaster/jice/a/r;->a:Lcom/admaster/jice/a/o;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 93
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/admaster/jice/a/r;->a:Lcom/admaster/jice/a/o;

    invoke-virtual {v0}, Lcom/admaster/jice/a/o;->b()V

    .line 96
    :cond_0
    return v1
.end method
