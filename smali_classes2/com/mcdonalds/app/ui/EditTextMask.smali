.class public Lcom/mcdonalds/app/ui/EditTextMask;
.super Ljava/lang/Object;
.source "EditTextMask.java"


# instance fields
.field private mEditText:Landroid/widget/EditText;

.field private mMask:Ljava/lang/String;

.field private mTextWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/mcdonalds/app/ui/EditTextMask;->mMask:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/mcdonalds/app/ui/EditTextMask$1;

    invoke-direct {v0, p0}, Lcom/mcdonalds/app/ui/EditTextMask$1;-><init>(Lcom/mcdonalds/app/ui/EditTextMask;)V

    iput-object v0, p0, Lcom/mcdonalds/app/ui/EditTextMask;->mTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/ui/EditTextMask;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/EditTextMask;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.EditTextMask"

    const-string v2, "access$000"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/ui/EditTextMask;->unmask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/ui/EditTextMask;)Ljava/lang/String;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/EditTextMask;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.EditTextMask"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/mcdonalds/app/ui/EditTextMask;->mMask:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/ui/EditTextMask;)Landroid/widget/EditText;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/ui/EditTextMask;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.ui.EditTextMask"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/mcdonalds/app/ui/EditTextMask;->mEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method private unmask(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const-string v0, "unmask"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    const-string v0, "[.]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[-]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[/]"

    const-string v2, ""

    .line 27
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[(]"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "[)]"

    const-string v2, ""

    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 26
    return-object v0
.end method


# virtual methods
.method public setEditText(Landroid/widget/EditText;)V
    .locals 3
    .param p1, "editText"    # Landroid/widget/EditText;

    .prologue
    const-string v0, "setEditText"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    iput-object p1, p0, Lcom/mcdonalds/app/ui/EditTextMask;->mEditText:Landroid/widget/EditText;

    .line 22
    iget-object v0, p0, Lcom/mcdonalds/app/ui/EditTextMask;->mEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mcdonalds/app/ui/EditTextMask;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 23
    return-void
.end method

.method public setMask(Ljava/lang/String;)V
    .locals 3
    .param p1, "mask"    # Ljava/lang/String;

    .prologue
    const-string v0, "setMask"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    iput-object p1, p0, Lcom/mcdonalds/app/ui/EditTextMask;->mMask:Ljava/lang/String;

    .line 18
    return-void
.end method
