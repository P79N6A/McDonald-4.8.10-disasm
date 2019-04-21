.class public Lcom/mcdonalds/app/msa/MsaMainFragment;
.super Lcom/mcdonalds/app/ui/URLNavigationFragment;
.source "MsaMainFragment.java"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;-><init>()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/mcdonalds/app/msa/MsaMainFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/msa/MsaMainFragment;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # Landroid/widget/TextView;
    .param p3, "x3"    # Landroid/widget/TextView;
    .param p4, "x4"    # Landroid/widget/TextView;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MsaMainFragment"

    const-string v2, "access$000"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    const/4 v4, 0x4

    aput-object p4, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mcdonalds/app/msa/MsaMainFragment;->showUsageDialog(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mcdonalds/app/msa/MsaMainFragment;Z)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/msa/MsaMainFragment;
    .param p1, "x1"    # Z

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MsaMainFragment"

    const-string v2, "access$100"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/lang/Boolean;

    invoke-direct {v5, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/msa/MsaMainFragment;->saveMSAStatus(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/mcdonalds/app/msa/MsaMainFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;II)V
    .locals 6
    .param p0, "x0"    # Lcom/mcdonalds/app/msa/MsaMainFragment;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # Landroid/widget/TextView;
    .param p3, "x3"    # Landroid/widget/TextView;
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MsaMainFragment"

    const-string v2, "access$200"

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/mcdonalds/app/msa/MsaMainFragment;->setTimeUI(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;II)V

    return-void
.end method

.method static synthetic access$300(Lcom/mcdonalds/app/msa/MsaMainFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/msa/MsaMainFragment;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # Landroid/widget/TextView;
    .param p3, "x3"    # Landroid/widget/TextView;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MsaMainFragment"

    const-string v2, "access$300"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    aput-object p3, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/mcdonalds/app/msa/MsaMainFragment;->setupRefresh(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mcdonalds/app/msa/MsaMainFragment;Landroid/widget/TextView;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/msa/MsaMainFragment;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MsaMainFragment"

    const-string v2, "access$400"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/msa/MsaMainFragment;->showNextAlarmTime(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$500(Lcom/mcdonalds/app/msa/MsaMainFragment;)Landroid/os/Handler;
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/msa/MsaMainFragment;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MsaMainFragment"

    const-string v2, "access$500"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MsaMainFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mcdonalds/app/msa/MsaMainFragment;Landroid/widget/Switch;)V
    .locals 5
    .param p0, "x0"    # Lcom/mcdonalds/app/msa/MsaMainFragment;
    .param p1, "x1"    # Landroid/widget/Switch;

    .prologue
    const/4 v0, 0x0

    const-string v1, "com.mcdonalds.app.msa.MsaMainFragment"

    const-string v2, "access$600"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    invoke-direct {p0, p1}, Lcom/mcdonalds/app/msa/MsaMainFragment;->showOfferSubscriptionDialog(Landroid/widget/Switch;)V

    return-void
.end method

.method private saveMSAStatus(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const/4 v5, 0x0

    const-string v2, "saveMSAStatus"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, p1}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v4, v3, v5

    invoke-static {p0, v2, v3}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 314
    invoke-virtual {p0}, Lcom/mcdonalds/app/msa/MsaMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {}, Lcom/mcdonalds/app/msa/MSASettings;->getPrefName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 315
    .local v1, "pref":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 316
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v2, "IS_MSA_TURNED_ON"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 317
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 318
    return-void
.end method

.method private setTimeUI(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;II)V
    .locals 7
    .param p1, "amPmView"    # Landroid/widget/TextView;
    .param p2, "hourView"    # Landroid/widget/TextView;
    .param p3, "minuteView"    # Landroid/widget/TextView;
    .param p4, "hour"    # I
    .param p5, "minute"    # I

    .prologue
    const v6, 0x7f090554

    const/16 v5, 0xc

    const-string v1, "setTimeUI"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 332
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/mcdonalds/app/msa/MsaMainFragment;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 336
    :cond_1
    if-ne p4, v5, :cond_2

    .line 337
    invoke-virtual {p0, v6}, Lcom/mcdonalds/app/msa/MsaMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    :goto_1
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 347
    .local v0, "df":Ljava/text/DecimalFormat;
    int-to-long v2, p5

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 338
    .end local v0    # "df":Ljava/text/DecimalFormat;
    :cond_2
    if-le p4, v5, :cond_3

    .line 339
    invoke-virtual {p0, v6}, Lcom/mcdonalds/app/msa/MsaMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    add-int/lit8 p4, p4, -0xc

    goto :goto_1

    .line 342
    :cond_3
    const v1, 0x7f090553

    invoke-virtual {p0, v1}, Lcom/mcdonalds/app/msa/MsaMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private setupRefresh(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 10
    .param p1, "amPmView"    # Landroid/widget/TextView;
    .param p2, "hourView"    # Landroid/widget/TextView;
    .param p3, "minuteView"    # Landroid/widget/TextView;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v1, "setupRefresh"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v8

    aput-object p2, v6, v9

    const/4 v7, 0x2

    aput-object p3, v6, v7

    invoke-static {p0, v1, v6}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    iget-object v1, p0, Lcom/mcdonalds/app/msa/MsaMainFragment;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 306
    :goto_0
    return-void

    .line 290
    :cond_0
    iget-object v1, p0, Lcom/mcdonalds/app/msa/MsaMainFragment;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 291
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 292
    .local v0, "c":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 293
    .local v4, "timeInMillisNow":J
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v9}, Ljava/util/Calendar;->add(II)V

    .line 294
    const/16 v1, 0xd

    invoke-virtual {v0, v1, v8}, Ljava/util/Calendar;->set(II)V

    .line 295
    const/16 v1, 0xe

    const/16 v6, 0x64

    invoke-virtual {v0, v1, v6}, Ljava/util/Calendar;->set(II)V

    .line 296
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 297
    .local v2, "timeInMillisNext":J
    iget-object v1, p0, Lcom/mcdonalds/app/msa/MsaMainFragment;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/mcdonalds/app/msa/MsaMainFragment$9;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/mcdonalds/app/msa/MsaMainFragment$9;-><init>(Lcom/mcdonalds/app/msa/MsaMainFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    sub-long v8, v2, v4

    invoke-virtual {v1, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private shouldShowNextAlarmTime()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, -0x1

    const-string v4, "shouldShowNextAlarmTime"

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 351
    invoke-virtual {p0}, Lcom/mcdonalds/app/msa/MsaMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {}, Lcom/mcdonalds/app/msa/MSASettings;->getPrefName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 352
    .local v2, "pref":Landroid/content/SharedPreferences;
    const-string v4, "HOUR"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 353
    .local v0, "hour":I
    const-string v4, "MINUTE"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 354
    .local v1, "minute":I
    if-ltz v0, :cond_0

    if-ltz v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method private showAlarmDays([Landroid/widget/TextView;)V
    .locals 9
    .param p1, "days"    # [Landroid/widget/TextView;

    .prologue
    const/4 v8, 0x7

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v4, "showAlarmDays"

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p1, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 370
    invoke-virtual {p0}, Lcom/mcdonalds/app/msa/MsaMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {}, Lcom/mcdonalds/app/msa/MSASettings;->getPrefName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 371
    .local v3, "pref":Landroid/content/SharedPreferences;
    new-array v0, v8, [Z

    .line 372
    .local v0, "alarmDays":[Z
    const-string v4, "IS_REPEAT_ON_SUNDAY"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    aput-boolean v4, v0, v6

    .line 373
    const-string v4, "IS_REPEAT_ON_MONDAY"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    aput-boolean v4, v0, v7

    .line 374
    const/4 v4, 0x2

    const-string v5, "IS_REPEAT_ON_TUESDAY"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    aput-boolean v5, v0, v4

    .line 375
    const/4 v4, 0x3

    const-string v5, "IS_REPEAT_ON_WEDNESDAY"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    aput-boolean v5, v0, v4

    .line 376
    const/4 v4, 0x4

    const-string v5, "IS_REPEAT_ON_THURSDAY"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    aput-boolean v5, v0, v4

    .line 377
    const/4 v4, 0x5

    const-string v5, "IS_REPEAT_ON_FRIDAY"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    aput-boolean v5, v0, v4

    .line 378
    const/4 v4, 0x6

    const-string v5, "IS_REPEAT_ON_SATURDAY"

    invoke-interface {v3, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    aput-boolean v5, v0, v4

    .line 380
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v8, :cond_1

    .line 381
    aget-object v1, p1, v2

    .line 383
    .local v1, "day":Landroid/widget/TextView;
    aget-boolean v4, v0, v2

    if-eqz v4, :cond_0

    .line 384
    const v4, -0x10b6ac

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 385
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 380
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 387
    :cond_0
    const v4, 0x7f020203

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 388
    const/high16 v4, -0x1000000

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 391
    .end local v1    # "day":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method private showEnableDialog(Landroid/widget/Switch;)V
    .locals 6
    .param p1, "sw"    # Landroid/widget/Switch;

    .prologue
    const/4 v5, 0x0

    const-string v3, "showEnableDialog"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 216
    new-instance v2, Lcom/mcdonalds/app/msa/MsaMainFragment$5;

    invoke-direct {v2, p0, p1}, Lcom/mcdonalds/app/msa/MsaMainFragment$5;-><init>(Lcom/mcdonalds/app/msa/MsaMainFragment;Landroid/widget/Switch;)V

    .line 223
    .local v2, "positiveClick":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/mcdonalds/app/msa/MsaMainFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/mcdonalds/app/msa/MsaMainFragment$6;-><init>(Lcom/mcdonalds/app/msa/MsaMainFragment;Landroid/widget/Switch;)V

    .line 232
    .local v1, "negativeClick":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mcdonalds/app/msa/MsaMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 233
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f090530

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 234
    const v3, 0x7f09052d

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 235
    const v3, 0x7f09052c

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 236
    const v3, 0x7f090145

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 237
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 238
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 239
    return-void
.end method

.method private showNextAlarmTime(Landroid/widget/TextView;)V
    .locals 18
    .param p1, "nextAlarm"    # Landroid/widget/TextView;

    .prologue
    const-string v9, "showNextAlarmTime"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object p1, v14, v15

    move-object/from16 v0, p0

    invoke-static {v0, v9, v14}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 358
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/msa/MsaMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9}, Lcom/mcdonalds/app/msa/MSASettings;->findNextAlarm(Landroid/content/Context;)Ljava/util/Calendar;

    move-result-object v8

    .line 359
    .local v8, "nextAlarmDate":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 360
    .local v12, "timeNow":J
    if-eqz v8, :cond_0

    .line 361
    invoke-virtual {v8}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 362
    .local v10, "timeNextAlarm":J
    sub-long v2, v10, v12

    .line 363
    .local v2, "diff":J
    const-wide/32 v14, 0x36ee80

    div-long v4, v2, v14

    .line 364
    .local v4, "diffHours":J
    const-wide/32 v14, 0x36ee80

    mul-long/2addr v14, v4

    sub-long v14, v2, v14

    const-wide/32 v16, 0xea60

    div-long v6, v14, v16

    .line 365
    .local v6, "diffMinutes":J
    const v9, 0x7f09053b

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v14, v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v14}, Lcom/mcdonalds/app/msa/MsaMainFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    .end local v2    # "diff":J
    .end local v4    # "diffHours":J
    .end local v6    # "diffMinutes":J
    .end local v10    # "timeNextAlarm":J
    :cond_0
    return-void
.end method

.method private showOfferSubscriptionDialog(Landroid/widget/Switch;)V
    .locals 6
    .param p1, "sw"    # Landroid/widget/Switch;

    .prologue
    const/4 v5, 0x0

    const-string v3, "showOfferSubscriptionDialog"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v5

    invoke-static {p0, v3, v4}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 246
    new-instance v2, Lcom/mcdonalds/app/msa/MsaMainFragment$7;

    invoke-direct {v2, p0}, Lcom/mcdonalds/app/msa/MsaMainFragment$7;-><init>(Lcom/mcdonalds/app/msa/MsaMainFragment;)V

    .line 261
    .local v2, "positiveClick":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/mcdonalds/app/msa/MsaMainFragment$8;

    invoke-direct {v1, p0, p1}, Lcom/mcdonalds/app/msa/MsaMainFragment$8;-><init>(Lcom/mcdonalds/app/msa/MsaMainFragment;Landroid/widget/Switch;)V

    .line 270
    .local v1, "negativeClick":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mcdonalds/app/msa/MsaMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 271
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const v3, 0x7f090530

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 272
    const v3, 0x7f09052e

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 273
    const v3, 0x7f0905d4

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 274
    const v3, 0x7f090145

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 275
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 276
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 277
    return-void
.end method

.method private showUsageDialog(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 8
    .param p1, "nextAlarm"    # Landroid/widget/TextView;
    .param p2, "amPmView"    # Landroid/widget/TextView;
    .param p3, "hourView"    # Landroid/widget/TextView;
    .param p4, "minuteView"    # Landroid/widget/TextView;

    .prologue
    const/4 v7, 0x0

    const-string v1, "showUsageDialog"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v7

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    new-instance v0, Lcom/mcdonalds/app/msa/MsaMainFragment$4;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mcdonalds/app/msa/MsaMainFragment$4;-><init>(Lcom/mcdonalds/app/msa/MsaMainFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 204
    .local v0, "positiveClick":Landroid/content/DialogInterface$OnClickListener;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mcdonalds/app/msa/MsaMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v6, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 205
    .local v6, "b":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f09052b

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 206
    const v1, 0x7f09052a

    invoke-virtual {v6, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 207
    const v1, 0x7f0905d4

    invoke-virtual {v6, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 208
    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 209
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 210
    return-void
.end method


# virtual methods
.method protected getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    const-string v0, "getTitle"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/ensighten/Ensighten;->evaluateEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    const v0, 0x7f0900e6

    invoke-virtual {p0, v0}, Lcom/mcdonalds/app/msa/MsaMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 21
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    const v2, 0x7f0400dd

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v2, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    .line 58
    .local v19, "rootView":Landroid/view/View;
    const v2, 0x7f1102f9

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 61
    .local v10, "nextAlarm":Landroid/widget/TextView;
    const/4 v2, 0x7

    new-array v14, v2, [Landroid/widget/TextView;

    const/4 v8, 0x0

    const v2, 0x7f1102fb

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v14, v8

    const/4 v8, 0x1

    const v2, 0x7f1102fc

    .line 62
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v14, v8

    const/4 v8, 0x2

    const v2, 0x7f1102fd

    .line 63
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v14, v8

    const/4 v8, 0x3

    const v2, 0x7f1102fe

    .line 64
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v14, v8

    const/4 v8, 0x4

    const v2, 0x7f1102ff

    .line 65
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v14, v8

    const/4 v8, 0x5

    const v2, 0x7f110300

    .line 66
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v14, v8

    const/4 v8, 0x6

    const v2, 0x7f110301

    .line 67
    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v14, v8

    .line 68
    .local v14, "alarmDayBoxes":[Landroid/widget/TextView;
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/mcdonalds/app/msa/MsaMainFragment;->showAlarmDays([Landroid/widget/TextView;)V

    .line 71
    const v2, 0x7f110464

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 72
    .local v3, "amPmView":Landroid/widget/TextView;
    const v2, 0x7f110461

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 73
    .local v4, "hourView":Landroid/widget/TextView;
    const v2, 0x7f110463

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 74
    .local v5, "minuteView":Landroid/widget/TextView;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    .line 75
    .local v17, "now":Ljava/util/Calendar;
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/mcdonalds/app/msa/MsaMainFragment;->mHandler:Landroid/os/Handler;

    .line 76
    const/16 v2, 0xb

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v2, 0xc

    .line 77
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v7

    move-object/from16 v2, p0

    .line 76
    invoke-direct/range {v2 .. v7}, Lcom/mcdonalds/app/msa/MsaMainFragment;->setTimeUI(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;II)V

    .line 78
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v5}, Lcom/mcdonalds/app/msa/MsaMainFragment;->setupRefresh(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/mcdonalds/app/msa/MsaMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    .line 81
    invoke-static {}, Lcom/mcdonalds/app/msa/MSASettings;->getPrefName()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    .line 80
    invoke-virtual {v2, v8, v9}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v18

    .line 82
    .local v18, "pref":Landroid/content/SharedPreferences;
    const v2, 0x7f110302

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Switch;

    .line 83
    .local v20, "sw":Landroid/widget/Switch;
    const-string v2, "IS_MSA_TURNED_ON"

    const/4 v8, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 84
    .local v15, "alarmOn":Z
    if-eqz v15, :cond_4

    .line 85
    invoke-direct/range {p0 .. p0}, Lcom/mcdonalds/app/msa/MsaMainFragment;->shouldShowNextAlarmTime()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    const/4 v2, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 87
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/mcdonalds/app/msa/MsaMainFragment;->showNextAlarmTime(Landroid/widget/TextView;)V

    .line 89
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/msa/MsaMainFragment;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 90
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/mcdonalds/app/msa/MsaMainFragment;->mHandler:Landroid/os/Handler;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 92
    :cond_0
    const-string v2, "HOUR"

    const/4 v8, -0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 93
    .local v6, "hour":I
    const-string v2, "MINUTE"

    const/4 v8, -0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .local v7, "minute":I
    move-object/from16 v2, p0

    .line 94
    invoke-direct/range {v2 .. v7}, Lcom/mcdonalds/app/msa/MsaMainFragment;->setTimeUI(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;II)V

    .line 102
    .end local v6    # "hour":I
    .end local v7    # "minute":I
    :cond_1
    :goto_0
    const-string v2, "HOUR"

    const/4 v8, -0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_2

    .line 103
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 106
    :cond_2
    new-instance v8, Lcom/mcdonalds/app/msa/MsaMainFragment$1;

    move-object/from16 v9, p0

    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    invoke-direct/range {v8 .. v13}, Lcom/mcdonalds/app/msa/MsaMainFragment$1;-><init>(Lcom/mcdonalds/app/msa/MsaMainFragment;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 132
    const v2, 0x7f11011d

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v8, Lcom/mcdonalds/app/msa/MsaMainFragment$2;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/mcdonalds/app/msa/MsaMainFragment$2;-><init>(Lcom/mcdonalds/app/msa/MsaMainFragment;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    const v2, 0x7f110303

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v8, Lcom/mcdonalds/app/msa/MsaMainFragment$3;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/mcdonalds/app/msa/MsaMainFragment$3;-><init>(Lcom/mcdonalds/app/msa/MsaMainFragment;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const-string v2, "customer"

    invoke-static {v2}, Lcom/mcdonalds/sdk/modules/ModuleManager;->getModule(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;

    .line 153
    .local v16, "cm":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    invoke-virtual/range {v16 .. v16}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/mcdonalds/sdk/modules/customer/CustomerModule;->getCurrentProfile()Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mcdonalds/sdk/modules/customer/CustomerProfile;->isSubscribedToOffers()Z

    move-result v2

    if-nez v2, :cond_3

    .line 154
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/mcdonalds/app/msa/MsaMainFragment;->showEnableDialog(Landroid/widget/Switch;)V

    .line 157
    :cond_3
    return-object v19

    .line 97
    .end local v16    # "cm":Lcom/mcdonalds/sdk/modules/customer/CustomerModule;
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 98
    const-string v2, ""

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 172
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onDestroy()V

    .line 173
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MsaMainFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/mcdonalds/app/msa/MsaMainFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 175
    iput-object v1, p0, Lcom/mcdonalds/app/msa/MsaMainFragment;->mHandler:Landroid/os/Handler;

    .line 177
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 162
    invoke-super {p0}, Lcom/mcdonalds/app/ui/URLNavigationFragment;->onResume()V

    .line 163
    invoke-virtual {p0}, Lcom/mcdonalds/app/msa/MsaMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {}, Lcom/mcdonalds/app/msa/MSASettings;->getPrefName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 164
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v2, "IS_MSA_TURNED_ON"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 165
    .local v0, "alarmOn":Z
    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/mcdonalds/app/msa/MsaMainFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/mcdonalds/app/msa/MSASettings;->scheduleNextAlarm(Landroid/content/Context;)V

    .line 168
    :cond_0
    return-void
.end method
