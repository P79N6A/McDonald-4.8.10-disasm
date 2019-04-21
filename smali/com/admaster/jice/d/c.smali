.class Lcom/admaster/jice/d/c;
.super Ljava/lang/Object;
.source "HttpURLRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/admaster/jice/d/b;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/admaster/jice/d/b;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/admaster/jice/d/c;->a:Lcom/admaster/jice/d/b;

    iput-object p2, p0, Lcom/admaster/jice/d/c;->b:Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 63
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, " switch on Main Looper Thread  to getWebKitUserAgent"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/admaster/jice/d/c;->a:Lcom/admaster/jice/d/b;

    iget-object v1, p0, Lcom/admaster/jice/d/c;->b:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/admaster/jice/d/b;->a(Lcom/admaster/jice/d/b;Landroid/content/Context;)V

    .line 65
    return-void
.end method
