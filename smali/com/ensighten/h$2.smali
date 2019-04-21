.class public final Lcom/ensighten/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/locks/Lock;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/util/concurrent/locks/Condition;

.field final synthetic d:Lcom/ensighten/h;


# direct methods
.method public constructor <init>(Lcom/ensighten/h;Ljava/util/concurrent/locks/Lock;Ljava/lang/String;Ljava/util/concurrent/locks/Condition;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/ensighten/h$2;->d:Lcom/ensighten/h;

    iput-object p2, p0, Lcom/ensighten/h$2;->a:Ljava/util/concurrent/locks/Lock;

    iput-object p3, p0, Lcom/ensighten/h$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/ensighten/h$2;->c:Ljava/util/concurrent/locks/Condition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 396
    iget-object v0, p0, Lcom/ensighten/h$2;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 397
    const-string v0, "%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ensighten/h$2;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ensighten/h;->a(Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/ensighten/h$2;->c:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signal()V

    .line 399
    iget-object v0, p0, Lcom/ensighten/h$2;->a:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 400
    return-void
.end method
