.class final Lcom/ensighten/q$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ensighten/q;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ensighten/q;


# direct methods
.method constructor <init>(Lcom/ensighten/q;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/ensighten/q$1;->a:Lcom/ensighten/q;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ensighten/q$1;->a:Lcom/ensighten/q;

    invoke-virtual {v0, p1}, Lcom/ensighten/q;->a(Landroid/os/Message;)V

    .line 88
    return-void
.end method
