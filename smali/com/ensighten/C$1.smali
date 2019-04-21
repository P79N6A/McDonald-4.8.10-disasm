.class final Lcom/ensighten/C$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ensighten/model/EnsightenGestureRecognizerCompletionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ensighten/C;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ensighten/C;


# direct methods
.method constructor <init>(Lcom/ensighten/C;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/ensighten/C$1;->a:Lcom/ensighten/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doAction()V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/ensighten/i;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "Running complete action for the four-finger press action."

    invoke-static {v0}, Lcom/ensighten/i;->a(Ljava/lang/String;)V

    .line 60
    :cond_0
    const-string v0, "Bootstrapper.insertScript(\'https://nexus.ensighten.com/mobile2/device.js\')"

    invoke-static {v0}, Lcom/ensighten/Ensighten;->evaluateJS(Ljava/lang/String;)V

    .line 61
    return-void
.end method
