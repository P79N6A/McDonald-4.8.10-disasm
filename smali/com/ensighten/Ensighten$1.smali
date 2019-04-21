.class final Lcom/ensighten/Ensighten$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ensighten/Ensighten;->bootstrap(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/locks/Lock;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z

.field final synthetic f:Ljava/util/concurrent/locks/Condition;


# direct methods
.method constructor <init>(Ljava/util/concurrent/locks/Lock;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/util/concurrent/locks/Condition;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/ensighten/Ensighten$1;->a:Ljava/util/concurrent/locks/Lock;

    iput-object p2, p0, Lcom/ensighten/Ensighten$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/ensighten/Ensighten$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/ensighten/Ensighten$1;->d:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/ensighten/Ensighten$1;->e:Z

    iput-object p6, p0, Lcom/ensighten/Ensighten$1;->f:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 179
    iget-object v0, p0, Lcom/ensighten/Ensighten$1;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 180
    invoke-static {}, Lcom/ensighten/Ensighten;->getInstance()Lcom/ensighten/Ensighten;

    move-result-object v0

    iget-object v1, p0, Lcom/ensighten/Ensighten$1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/ensighten/Ensighten$1;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/ensighten/Ensighten$1;->d:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/ensighten/Ensighten$1;->e:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/ensighten/Ensighten;->a(Lcom/ensighten/Ensighten;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 181
    iget-object v0, p0, Lcom/ensighten/Ensighten$1;->f:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 182
    iget-object v0, p0, Lcom/ensighten/Ensighten$1;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 183
    return-void
.end method
