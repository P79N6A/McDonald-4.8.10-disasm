.class Lcom/mcdonalds/app/widget/ValidationListener$1;
.super Ljava/lang/Object;
.source "ValidationListener.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/widget/ValidationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/widget/ValidationListener;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/widget/ValidationListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/widget/ValidationListener;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/mcdonalds/app/widget/ValidationListener$1;->this$0:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "onKey"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v1

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iget-object v3, p0, Lcom/mcdonalds/app/widget/ValidationListener$1;->this$0:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-static {v3}, Lcom/mcdonalds/app/widget/ValidationListener;->access$000(Lcom/mcdonalds/app/widget/ValidationListener;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "fieldString":Ljava/lang/String;
    iget-object v3, p0, Lcom/mcdonalds/app/widget/ValidationListener$1;->this$0:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-static {v3}, Lcom/mcdonalds/app/widget/ValidationListener;->access$100(Lcom/mcdonalds/app/widget/ValidationListener;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 133
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lcom/mcdonalds/app/widget/ValidationListener$1;->this$0:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-static {v4}, Lcom/mcdonalds/app/widget/ValidationListener;->access$100(Lcom/mcdonalds/app/widget/ValidationListener;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    if-gt v3, v4, :cond_1

    const/16 v3, 0x43

    if-ne p2, v3, :cond_1

    .line 135
    iget-object v3, p0, Lcom/mcdonalds/app/widget/ValidationListener$1;->this$0:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    invoke-static {v3, v1}, Lcom/mcdonalds/app/widget/ValidationListener;->access$202(Lcom/mcdonalds/app/widget/ValidationListener;Z)Z

    .line 139
    :goto_1
    return v2

    :cond_0
    move v1, v2

    .line 135
    goto :goto_0

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/mcdonalds/app/widget/ValidationListener$1;->this$0:Lcom/mcdonalds/app/widget/ValidationListener;

    invoke-static {v1, v2}, Lcom/mcdonalds/app/widget/ValidationListener;->access$202(Lcom/mcdonalds/app/widget/ValidationListener;Z)Z

    goto :goto_1
.end method
