.class public Lcom/mcdonalds/app/msa/MsaEditFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "MsaEditFragment.java"


# instance fields
.field private mAlarmDayBoxes:[Landroid/widget/TextView;

.field private mAlarmDays:[Z

.field private mHour:I

.field private mHrPicker:Landroid/widget/NumberPicker;

.field private mMinPicker:Landroid/widget/NumberPicker;

.field private mMinute:I

.field private mSaveBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/msa/MsaEditFragment;)Landroid/widget/NumberPicker;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/msa/MsaEditFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MsaEditFragment"

    const-string v2, "access$000"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mMinPicker:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/msa/MsaEditFragment;)Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/msa/MsaEditFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MsaEditFragment"

    const-string v2, "access$100"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-direct {p0}, Lcom/mcdonalds/app/msa/MsaEditFragment;->isXiaomi()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/msa/MsaEditFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/msa/MsaEditFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MsaEditFragment"

    const-string v2, "access$200"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-direct {p0}, Lcom/mcdonalds/app/msa/MsaEditFragment;->onSaveClicked()V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/msa/MsaEditFragment;)[Z
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/msa/MsaEditFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MsaEditFragment"

    const-string v2, "access$300"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mAlarmDays:[Z

    return-object v0
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/msa/MsaEditFragment;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/msa/MsaEditFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MsaEditFragment"

    const-string v2, "access$400"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 23
    invoke-direct {p0}, Lcom/mcdonalds/app/msa/MsaEditFragment;->setupSaveButtonState()V

    return-void
.end method

.method private getMsaSettings()V
    .locals 5

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x0

    const-string v1, "getMsaSettings"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    invoke-virtual {p0}, Lcom/mcdonalds/app/msa/MsaEditFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v1

    .line 188
    invoke-static {}, Lcom/mcdonalds/app/msa/MSASettings;->getPrefName()Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-virtual {v1, v2, v4}, Lcom/mcdonalds/app/ui/URLNavigationActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 190
    .local v0, "mSharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "HOUR"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mHour:I

    .line 191
    const-string v1, "MINUTE"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mMinute:I

    .line 193
    iget-object v1, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mAlarmDays:[Z

    const-string v2, "IS_REPEAT_ON_SUNDAY"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    aput-boolean v2, v1, v4

    .line 194
    iget-object v1, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mAlarmDays:[Z

    const/4 v2, 0x1

    const-string v3, "IS_REPEAT_ON_MONDAY"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 195
    iget-object v1, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mAlarmDays:[Z

    const/4 v2, 0x2

    const-string v3, "IS_REPEAT_ON_TUESDAY"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 196
    iget-object v1, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mAlarmDays:[Z

    const/4 v2, 0x3

    const-string v3, "IS_REPEAT_ON_WEDNESDAY"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 197
    iget-object v1, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mAlarmDays:[Z

    const/4 v2, 0x4

    const-string v3, "IS_REPEAT_ON_THURSDAY"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 198
    iget-object v1, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mAlarmDays:[Z

    const/4 v2, 0x5

    const-string v3, "IS_REPEAT_ON_FRIDAY"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 199
    iget-object v1, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mAlarmDays:[Z

    const/4 v2, 0x6

    const-string v3, "IS_REPEAT_ON_SATURDAY"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 200
    return-void
.end method

.method private isXiaomi()Z
    .locals 3

    .prologue
    const-string v1, "isXiaomi"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 137
    .local v0, "mfc":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private onSaveClicked()V
    .locals 2

    .prologue
    const-string v0, "onSaveClicked"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-virtual {p0}, Lcom/mcdonalds/app/msa/MsaEditFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/mcdonalds/app/msa/MsaActivity;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/mcdonalds/app/msa/MsaEditFragment;->getNavigationActivity()Lcom/mcdonalds/app/ui/URLNavigationActivity;

    move-result-object v0

    check-cast v0, Lcom/mcdonalds/app/msa/MsaActivity;

    const-string v1, "msa"

    invoke-virtual {v0, v1}, Lcom/mcdonalds/app/msa/MsaActivity;->changeFragment(Ljava/lang/String;)V

    .line 146
    :goto_0
    return-void

    .line 144
    :cond_0
    const-class v0, Lcom/mcdonalds/app/msa/MsaActivity;

    const-string v1, "msa"

    invoke-virtual {p0, v0, v1}, Lcom/mcdonalds/app/msa/MsaEditFragment;->startActivity(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private setupAlarmDays([Landroid/widget/TextView;)V
    .locals 6
    .param p1, "days"    # [Landroid/widget/TextView;

    .prologue
    const-string v3, "setupAlarmDays"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v3, 0x7

    if-ge v1, v3, :cond_0

    .line 155
    aget-object v0, p1, v1

    .line 156
    .local v0, "day":Landroid/widget/TextView;
    move v2, v1

    .line 157
    .local v2, "index":I
    new-instance v3, Lcom/mcdonalds/app/msa/MsaEditFragment$4;

    invoke-direct {v3, p0, v2, v0}, Lcom/mcdonalds/app/msa/MsaEditFragment$4;-><init>(Lcom/mcdonalds/app/msa/MsaEditFragment;ILandroid/widget/TextView;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    .end local v0    # "day":Landroid/widget/TextView;
    .end local v2    # "index":I
    :cond_0
    return-void
.end method

.method private setupSaveButtonState()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const-string v2, "setupSaveButtonState"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 177
    iget-object v2, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mSaveBtn:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 178
    iget-object v2, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mAlarmDays:[Z

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-boolean v0, v2, v1

    .line 179
    .local v0, "b":Z
    if-eqz v0, :cond_1

    .line 180
    iget-object v1, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mSaveBtn:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 184
    .end local v0    # "b":Z
    :cond_0
    return-void

    .line 178
    .restart local v0    # "b":Z
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private showAlarmDays([Landroid/widget/TextView;)V
    .locals 6
    .param p1, "days"    # [Landroid/widget/TextView;

    .prologue
    const/4 v5, -0x1

    const-string v2, "showAlarmDays"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 203
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    .line 204
    aget-object v0, p1, v1

    .line 206
    .local v0, "day":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mAlarmDays:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    .line 207
    const v2, -0x10b6ac

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 208
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 203
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    :cond_0
    const v2, 0x7f020203

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 211
    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 215
    .end local v0    # "day":Landroid/widget/TextView;
    :cond_1
    iget v2, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mHour:I

    if-eq v2, v5, :cond_2

    .line 216
    iget-object v2, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mHrPicker:Landroid/widget/NumberPicker;

    iget v3, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mHour:I

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 218
    :cond_2
    iget v2, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mMinute:I

    if-eq v2, v5, :cond_3

    .line 219
    iget-object v2, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mMinPicker:Landroid/widget/NumberPicker;

    iget v3, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mMinute:I

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 220
    iget v2, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mHour:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    .line 221
    iget-object v2, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mMinPicker:Landroid/widget/NumberPicker;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 224
    :cond_3
    return-void
.end method


# virtual methods
.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    const v0, 0x7f0900e6

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/msa/MsaEditFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const/4 v0, 0x7

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mAlarmDays:[Z

    .line 52
    invoke-direct {p0}, Lcom/mcdonalds/app/msa/MsaEditFragment;->getMsaSettings()V

    .line 53
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    .line 57
    const v4, 0x7f0400e1

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 59
    .local v3, "rootView":Landroid/view/View;
    const/4 v4, 0x7

    new-array v5, v4, [Landroid/widget/TextView;

    const v4, 0x7f1102fb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v7

    const/4 v6, 0x1

    const v4, 0x7f1102fc

    .line 60
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    const/4 v6, 0x2

    const v4, 0x7f1102fd

    .line 61
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    const/4 v6, 0x3

    const v4, 0x7f1102fe

    .line 62
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    const/4 v6, 0x4

    const v4, 0x7f1102ff

    .line 63
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    const v4, 0x7f110300

    .line 64
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v8

    const/4 v6, 0x6

    const v4, 0x7f110301

    .line 65
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    aput-object v4, v5, v6

    iput-object v5, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mAlarmDayBoxes:[Landroid/widget/TextView;

    .line 67
    iget-object v4, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mAlarmDayBoxes:[Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/mcdonalds/app/msa/MsaEditFragment;->setupAlarmDays([Landroid/widget/TextView;)V

    .line 70
    const v4, 0x7f110310

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mMinPicker:Landroid/widget/NumberPicker;

    .line 71
    iget-object v4, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mMinPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v7}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 72
    iget-object v4, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mMinPicker:Landroid/widget/NumberPicker;

    const/16 v5, 0x3b

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 73
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v4, "00"

    invoke-direct {v0, v4}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, "df":Ljava/text/DecimalFormat;
    iget-object v4, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mMinPicker:Landroid/widget/NumberPicker;

    new-instance v5, Lcom/mcdonalds/app/msa/MsaEditFragment$1;

    invoke-direct {v5, p0, v0}, Lcom/mcdonalds/app/msa/MsaEditFragment$1;-><init>(Lcom/mcdonalds/app/msa/MsaEditFragment;Ljava/text/DecimalFormat;)V

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 81
    const v4, 0x7f11030e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/NumberPicker;

    iput-object v4, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mHrPicker:Landroid/widget/NumberPicker;

    .line 82
    iget-object v4, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mHrPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v4, v8}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 83
    iget-object v4, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mHrPicker:Landroid/widget/NumberPicker;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 84
    iget-object v4, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mHrPicker:Landroid/widget/NumberPicker;

    new-instance v5, Lcom/mcdonalds/app/msa/MsaEditFragment$2;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/msa/MsaEditFragment$2;-><init>(Lcom/mcdonalds/app/msa/MsaEditFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 95
    const v4, 0x7f110318

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mSaveBtn:Landroid/widget/Button;

    .line 96
    iget-object v4, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mSaveBtn:Landroid/widget/Button;

    new-instance v5, Lcom/mcdonalds/app/msa/MsaEditFragment$3;

    invoke-direct {v5, p0}, Lcom/mcdonalds/app/msa/MsaEditFragment$3;-><init>(Lcom/mcdonalds/app/msa/MsaEditFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    sget-object v1, Lcom/mcdonalds/app/msa/MSASettings;->FIXED_TUNE:Lcom/mcdonalds/app/msa/MSATuneItem;

    .line 119
    .local v1, "item":Lcom/mcdonalds/app/msa/MSATuneItem;
    invoke-virtual {p0}, Lcom/mcdonalds/app/msa/MsaEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v1}, Lcom/mcdonalds/app/msa/MSATuneItem;->getType()I

    move-result v5

    invoke-virtual {v1}, Lcom/mcdonalds/app/msa/MSATuneItem;->getTuneId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/mcdonalds/app/msa/MSATuneItem;->getChoice()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v5, v6, v7}, Lcom/mcdonalds/app/msa/MSASettings;->saveAlarmId(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 120
    const v4, 0x7f110316

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 121
    .local v2, "ringToneLabel":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/mcdonalds/app/msa/MsaEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/mcdonalds/app/msa/MSASettings;->getAlarmDesc(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v4, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mAlarmDayBoxes:[Landroid/widget/TextView;

    invoke-direct {p0, v4}, Lcom/mcdonalds/app/msa/MsaEditFragment;->showAlarmDays([Landroid/widget/TextView;)V

    .line 125
    return-object v3
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 130
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onResume()V

    .line 132
    invoke-direct {p0}, Lcom/mcdonalds/app/msa/MsaEditFragment;->setupSaveButtonState()V

    .line 133
    return-void
.end method

.method public saveSettings()V
    .locals 4

    .prologue
    const-string v0, "saveSettings"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    invoke-virtual {p0}, Lcom/mcdonalds/app/msa/MsaEditFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mHrPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    iget-object v2, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mMinPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2}, Landroid/widget/NumberPicker;->getValue()I

    move-result v2

    iget-object v3, p0, Lcom/mcdonalds/app/msa/MsaEditFragment;->mAlarmDays:[Z

    invoke-static {v0, v1, v2, v3}, Lcom/mcdonalds/app/msa/MSASettings;->saveSettings(Landroid/content/Context;II[Z)V

    .line 229
    return-void
.end method
