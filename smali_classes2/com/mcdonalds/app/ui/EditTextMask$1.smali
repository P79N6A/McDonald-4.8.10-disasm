.class Lcom/mcdonalds/app/ui/EditTextMask$1;
.super Ljava/lang/Object;
.source "EditTextMask.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mcdonalds/app/ui/EditTextMask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field isUpdating:Z

.field old:Ljava/lang/String;

.field final synthetic this$0:Lcom/mcdonalds/app/ui/EditTextMask;


# direct methods
.method constructor <init>(Lcom/mcdonalds/app/ui/EditTextMask;)V
    .locals 1
    .param p1, "this$0"    # Lcom/mcdonalds/app/ui/EditTextMask;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/mcdonalds/app/ui/EditTextMask$1;->this$0:Lcom/mcdonalds/app/ui/EditTextMask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/mcdonalds/app/ui/EditTextMask$1;->old:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    const-string v0, "afterTextChanged"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    const-string v0, "beforeTextChanged"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 11
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    const-string v6, "onTextChanged"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v5

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v7, v10

    const/4 v8, 0x2

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    const/4 v8, 0x3

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    invoke-static {p0, v6, v7}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iget-object v6, p0, Lcom/mcdonalds/app/ui/EditTextMask$1;->this$0:Lcom/mcdonalds/app/ui/EditTextMask;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mcdonalds/app/ui/EditTextMask;->access$000(Lcom/mcdonalds/app/ui/EditTextMask;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 38
    .local v4, "str":Ljava/lang/String;
    const-string v3, ""

    .line 39
    .local v3, "mask":Ljava/lang/String;
    iget-boolean v6, p0, Lcom/mcdonalds/app/ui/EditTextMask$1;->isUpdating:Z

    if-eqz v6, :cond_0

    .line 40
    iput-object v4, p0, Lcom/mcdonalds/app/ui/EditTextMask$1;->old:Ljava/lang/String;

    .line 41
    iput-boolean v5, p0, Lcom/mcdonalds/app/ui/EditTextMask$1;->isUpdating:Z

    .line 60
    :goto_0
    return-void

    .line 44
    :cond_0
    const/4 v1, 0x0

    .line 45
    .local v1, "i":I
    iget-object v6, p0, Lcom/mcdonalds/app/ui/EditTextMask$1;->this$0:Lcom/mcdonalds/app/ui/EditTextMask;

    invoke-static {v6}, Lcom/mcdonalds/app/ui/EditTextMask;->access$100(Lcom/mcdonalds/app/ui/EditTextMask;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toCharArray()[C

    move-result-object v6

    array-length v7, v6

    :goto_1
    if-ge v5, v7, :cond_2

    aget-char v2, v6, v5

    .line 46
    .local v2, "m":C
    const/16 v8, 0x23

    if-eq v2, v8, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    iget-object v9, p0, Lcom/mcdonalds/app/ui/EditTextMask$1;->old:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-le v8, v9, :cond_1

    .line 47
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 45
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 51
    :cond_1
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 52
    :catch_0
    move-exception v0

    .line 57
    .end local v2    # "m":C
    :cond_2
    iput-boolean v10, p0, Lcom/mcdonalds/app/ui/EditTextMask$1;->isUpdating:Z

    .line 58
    iget-object v5, p0, Lcom/mcdonalds/app/ui/EditTextMask$1;->this$0:Lcom/mcdonalds/app/ui/EditTextMask;

    invoke-static {v5}, Lcom/mcdonalds/app/ui/EditTextMask;->access$200(Lcom/mcdonalds/app/ui/EditTextMask;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v5, p0, Lcom/mcdonalds/app/ui/EditTextMask$1;->this$0:Lcom/mcdonalds/app/ui/EditTextMask;

    invoke-static {v5}, Lcom/mcdonalds/app/ui/EditTextMask;->access$200(Lcom/mcdonalds/app/ui/EditTextMask;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method
