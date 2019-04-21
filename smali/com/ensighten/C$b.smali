.class final Lcom/ensighten/C$b;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ensighten/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/ensighten/C;


# direct methods
.method private constructor <init>(Lcom/ensighten/C;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/ensighten/C$b;->a:Lcom/ensighten/C;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ensighten/C;B)V
    .locals 0

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/ensighten/C$b;-><init>(Lcom/ensighten/C;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/ensighten/C$b;->a:Lcom/ensighten/C;

    invoke-static {v0}, Lcom/ensighten/C;->a(Lcom/ensighten/C;)I

    move-result v0

    sget v1, Lcom/ensighten/C$a;->c:I

    if-eq v0, v1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/ensighten/C$b;->a:Lcom/ensighten/C;

    sget v1, Lcom/ensighten/C$a;->c:I

    invoke-static {v0, v1}, Lcom/ensighten/C;->a(Lcom/ensighten/C;I)I

    .line 143
    iget-object v0, p0, Lcom/ensighten/C$b;->a:Lcom/ensighten/C;

    invoke-static {v0}, Lcom/ensighten/C;->b(Lcom/ensighten/C;)Lcom/ensighten/model/EnsightenGestureRecognizerCompletionHandler;

    move-result-object v0

    invoke-interface {v0}, Lcom/ensighten/model/EnsightenGestureRecognizerCompletionHandler;->doAction()V

    .line 145
    :cond_0
    return-void
.end method
