.class Lcom/aps/f$1;
.super Ljava/lang/Object;
.source "ConnectionServiceManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aps/f;->a(Lcom/aps/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aps/f$a;

.field final synthetic b:Lcom/aps/f;


# direct methods
.method constructor <init>(Lcom/aps/f;Lcom/aps/f$a;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/aps/f$1;->b:Lcom/aps/f;

    iput-object p2, p0, Lcom/aps/f$1;->a:Lcom/aps/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/aps/f$1;->b:Lcom/aps/f;

    invoke-static {p2}, Lcom/aps/a$a;->a(Landroid/os/IBinder;)Lcom/aps/a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aps/f;->a(Lcom/aps/f;Lcom/aps/a;)Lcom/aps/a;

    .line 90
    iget-object v0, p0, Lcom/aps/f$1;->a:Lcom/aps/f$a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/aps/f$a;->a(I)V

    .line 91
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 95
    iget-object v0, p0, Lcom/aps/f$1;->b:Lcom/aps/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/aps/f;->a(Lcom/aps/f;Lcom/aps/a;)Lcom/aps/a;

    .line 96
    return-void
.end method
