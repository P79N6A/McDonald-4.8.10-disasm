.class Lcom/admaster/jice/a/l;
.super Ljava/lang/Object;
.source "JicePushManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/admaster/jice/a/j;

.field private final synthetic b:Lcom/admaster/jice/b/d;


# direct methods
.method constructor <init>(Lcom/admaster/jice/a/j;Lcom/admaster/jice/b/d;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/admaster/jice/a/l;->a:Lcom/admaster/jice/a/j;

    iput-object p2, p0, Lcom/admaster/jice/a/l;->b:Lcom/admaster/jice/b/d;

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 342
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/admaster/jice/a/l;->a:Lcom/admaster/jice/a/j;

    invoke-static {v1}, Lcom/admaster/jice/a/j;->c(Lcom/admaster/jice/a/j;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/admaster/jice/api/JicePushActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 343
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 345
    const-string v1, "pushviewconfig"

    iget-object v2, p0, Lcom/admaster/jice/a/l;->b:Lcom/admaster/jice/b/d;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 346
    iget-object v1, p0, Lcom/admaster/jice/a/l;->a:Lcom/admaster/jice/a/j;

    iget-object v1, v1, Lcom/admaster/jice/a/j;->a:Lcom/admaster/jice/a/w;

    invoke-static {v1}, Lcom/admaster/jice/api/JicePushActivity;->a(Lcom/admaster/jice/a/w;)V

    .line 347
    iget-object v1, p0, Lcom/admaster/jice/a/l;->a:Lcom/admaster/jice/a/j;

    invoke-static {v1}, Lcom/admaster/jice/a/j;->c(Lcom/admaster/jice/a/j;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 348
    return-void
.end method
