.class Lcom/mcdonalds/app/ordering/menu/MenuActivity$1;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ordering/menu/MenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mcdonalds/app/ordering/menu/MenuActivity;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ordering/menu/MenuActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$1;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 7
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "onEditorAction"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object p1, v4, v2

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v4, v1

    const/4 v5, 0x2

    aput-object p3, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 121
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "searchString":Ljava/lang/String;
    if-ne p2, v6, :cond_0

    .line 123
    iget-object v2, p0, Lcom/mcdonalds/app/ordering/menu/MenuActivity$1;->this$0:Lcom/mcdonalds/app/ordering/menu/MenuActivity;

    invoke-static {v2, v0}, Lcom/mcdonalds/app/ordering/menu/MenuActivity;->access$000(Lcom/mcdonalds/app/ordering/menu/MenuActivity;Ljava/lang/String;)V

    .line 126
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method
