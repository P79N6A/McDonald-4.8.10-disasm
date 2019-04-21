.class Lcom/mcdonalds/app/ordering/ThirdPartActivity$4;
.super Landroid/webkit/WebChromeClient;
.source "ThirdPartActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/ThirdPartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private lastProgress:I

.field final synthetic this$0:Lcom/mcdonalds/app/ordering/ThirdPartActivity;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/ThirdPartActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/ThirdPartActivity;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/ThirdPartActivity$4;->this$0:Lcom/mcdonalds/app/ordering/ThirdPartActivity;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 160
    const/4 v0, 0x0

    iput v0, p0, Lcom/mcdonalds/app/ordering/ThirdPartActivity$4;->lastProgress:I

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "newProgress"    # I

    .prologue
    const/4 v4, 0x0

    const-string v0, "onProgressChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    iget v0, p0, Lcom/mcdonalds/app/ordering/ThirdPartActivity$4;->lastProgress:I

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/mcdonalds/app/ordering/ThirdPartActivity$4;->this$0:Lcom/mcdonalds/app/ordering/ThirdPartActivity;

    const v1, 0x7f09040e

    invoke-static {v0, v1}, Lcom/mcdonalds/app/util/UIUtils;->startActivityIndicator(Landroid/content/Context;I)V

    .line 169
    :cond_0
    iput p2, p0, Lcom/mcdonalds/app/ordering/ThirdPartActivity$4;->lastProgress:I

    .line 170
    const/16 v0, 0x64

    if-lt p2, v0, :cond_1

    .line 171
    invoke-static {}, Lcom/mcdonalds/app/util/UIUtils;->stopActivityIndicator()V

    .line 172
    iput v4, p0, Lcom/mcdonalds/app/ordering/ThirdPartActivity$4;->lastProgress:I

    .line 174
    :cond_1
    return-void
.end method
