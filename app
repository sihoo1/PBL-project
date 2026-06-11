cat > /mnt/user-data/outputs/icantdie_experience.html << 'HTMLEOF'
<!DOCTYPE html>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>체험 — ICAN'TDIE</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link href="https://fonts.googleapis.com/css2?family=Bebas+Neue&family=DM+Sans:ital,wght@0,300;0,400;0,500&family=DM+Mono:wght@400;500&display=swap" rel="stylesheet">
  <style>
    :root {
      --bg:      #04060d;
      --surface: #080d1a;
      --surface2:#0d1526;
      --accent:  #00e5ff;
      --accent2: #7b5cff;
      --accent3: #00ff94;
      --warn:    #f59e0b;
      --danger:  #ef4444;
      --text:    #e8edf7;
      --muted:   #5a6a88;
      --border:  rgba(0,229,255,0.12);
    }
    *, *::before, *::after { box-sizing:border-box; margin:0; padding:0; }
    html { scroll-behavior:smooth; }
    body {
      background:var(--bg); color:var(--text);
      font-family:'DM Sans',sans-serif; font-weight:300;
      overflow-x:hidden; cursor:none;
    }
    body::before {
      content:''; position:fixed; inset:0;
      background-image:url("data:image/svg+xml,%3Csvg viewBox='0 0 256 256' xmlns='http://www.w3.org/2000/svg'%3E%3Cfilter id='n'%3E%3CfeTurbulence type='fractalNoise' baseFrequency='0.9' numOctaves='4' stitchTiles='stitch'/%3E%3C/filter%3E%3Crect width='100%25' height='100%25' filter='url(%23n)' opacity='0.04'/%3E%3C/svg%3E");
      pointer-events:none; z-index:0; opacity:0.6;
    }
    .cursor { width:8px; height:8px; background:var(--accent); border-radius:50%; position:fixed; pointer-events:none; z-index:9999; mix-blend-mode:screen; }
    .cursor-ring { width:36px; height:36px; border:1px solid rgba(0,229,255,0.4); border-radius:50%; position:fixed; pointer-events:none; z-index:9998; transition:all 0.15s ease; mix-blend-mode:screen; }

    /* NAV */
    nav {
      position:fixed; top:0; left:0; right:0; z-index:100;
      padding:20px 60px; display:flex; justify-content:space-between; align-items:center;
      background:rgba(4,6,13,0.88); backdrop-filter:blur(14px);
      border-bottom:1px solid var(--border);
    }
    .logo { font-family:'Bebas Neue',sans-serif; font-size:26px; letter-spacing:4px; color:var(--accent); text-decoration:none; }
    .logo span { color:var(--text); }
    .back-btn { display:flex; align-items:center; gap:8px; color:var(--muted); text-decoration:none; font-family:'DM Mono',monospace; font-size:12px; letter-spacing:2px; text-transform:uppercase; transition:color 0.3s; cursor:none; }
    .back-btn:hover { color:var(--accent); }
    .back-arrow { transition:transform 0.3s; }
    .back-btn:hover .back-arrow { transform:translateX(-4px); }

    /* PAGE HERO */
    .page-hero {
      min-height:36vh; padding:130px 60px 56px;
      position:relative; overflow:hidden; border-bottom:1px solid var(--border);
      display:flex; align-items:flex-end;
    }
    .grid-bg {
      position:absolute; inset:0;
      background-image:linear-gradient(rgba(0,229,255,0.035) 1px,transparent 1px),linear-gradient(90deg,rgba(0,229,255,0.035) 1px,transparent 1px);
      background-size:60px 60px; animation:gridShift 20s linear infinite;
    }
    @keyframes gridShift { to { transform:translateY(60px); } }
    .glow-orb { position:absolute; border-radius:50%; filter:blur(110px); pointer-events:none; }
    .glow-1 { width:600px; height:600px; background:radial-gradient(circle,rgba(0,229,255,0.07) 0%,transparent 70%); top:-200px; right:-80px; animation:float1 8s ease-in-out infinite; }
    .glow-2 { width:400px; height:400px; background:radial-gradient(circle,rgba(123,92,255,0.09) 0%,transparent 70%); bottom:-100px; left:5%; animation:float2 10s ease-in-out infinite; }
    @keyframes float1 { 0%,100%{transform:translate(0,0)} 50%{transform:translate(-30px,30px)} }
    @keyframes float2 { 0%,100%{transform:translate(0,0)} 50%{transform:translate(20px,-20px)} }
    @keyframes fadeUp { from{opacity:0;transform:translateY(28px)} to{opacity:1;transform:translateY(0)} }
    .hero-content { position:relative; z-index:2; }
    .hero-badge { display:inline-flex; align-items:center; gap:8px; border:1px solid var(--border); background:rgba(0,229,255,0.06); padding:7px 16px; border-radius:40px; font-family:'DM Mono',monospace; font-size:11px; letter-spacing:2px; color:var(--accent); text-transform:uppercase; margin-bottom:24px; animation:fadeUp 0.7s ease both; }
    .badge-dot { width:6px; height:6px; background:var(--accent3); border-radius:50%; animation:pulse 2s ease-in-out infinite; }
    @keyframes pulse { 0%,100%{opacity:1;transform:scale(1)} 50%{opacity:0.4;transform:scale(0.7)} }
    .page-hero h1 { font-family:'Bebas Neue',sans-serif; font-size:clamp(52px,7vw,96px); line-height:0.92; letter-spacing:2px; animation:fadeUp 0.7s 0.1s ease both; }
    .page-hero h1 .dim { color:var(--muted); }
    .page-hero h1 .ac  { color:var(--accent); }
    .hero-sub { font-size:16px; color:#8fa3c8; line-height:1.7; max-width:500px; margin-top:20px; animation:fadeUp 0.7s 0.2s ease both; }

    /* MAIN LAYOUT */
    .wrap {
      max-width:1280px; margin:0 auto;
      padding:72px 60px 120px;
      display:grid; grid-template-columns:1fr 420px; gap:52px; align-items:start;
    }

    /* FORM SIDE */
    .form-section { display:flex; flex-direction:column; gap:44px; }
    .form-block { background:var(--surface); border:1px solid var(--border); border-radius:20px; overflow:hidden; }
    .form-block-header { padding:22px 30px; border-bottom:1px solid var(--border); display:flex; align-items:center; gap:14px; }
    .form-block-num { font-family:'DM Mono',monospace; font-size:10px; letter-spacing:2px; color:var(--accent); border:1px solid var(--border); padding:4px 8px; border-radius:4px; }
    .form-block-title { font-family:'Bebas Neue',sans-serif; font-size:22px; letter-spacing:1px; }
    .form-block-body { padding:28px 30px; display:flex; flex-direction:column; gap:22px; }

    .field-group { display:flex; flex-direction:column; gap:8px; }
    .field-label { font-family:'DM Mono',monospace; font-size:10px; letter-spacing:2px; color:var(--muted); text-transform:uppercase; }
    .field-row { display:grid; grid-template-columns:1fr 1fr; gap:16px; }

    input[type="text"],input[type="email"],input[type="number"],select,textarea {
      width:100%; background:var(--surface2); border:1px solid rgba(255,255,255,0.07); border-radius:8px;
      padding:13px 16px; color:var(--text); font-family:'DM Sans',sans-serif; font-size:14px; font-weight:300;
      outline:none; transition:border-color 0.25s,box-shadow 0.25s; -webkit-appearance:none;
    }
    input:focus,select:focus,textarea:focus { border-color:rgba(0,229,255,0.4); box-shadow:0 0 0 3px rgba(0,229,255,0.06); }
    input::placeholder,textarea::placeholder { color:var(--muted); }
    select { cursor:none; } select option { background:var(--surface2); }
    textarea { resize:vertical; min-height:80px; }

    /* chips */
    .chip-group { display:flex; gap:10px; flex-wrap:wrap; }
    .chip { padding:8px 16px; border:1px solid rgba(255,255,255,0.08); border-radius:40px; font-family:'DM Mono',monospace; font-size:11px; letter-spacing:1px; color:var(--muted); cursor:none; transition:all 0.2s; user-select:none; background:var(--surface2); }
    .chip:hover { border-color:rgba(0,229,255,0.3); color:var(--text); }
    .chip.active { background:rgba(0,229,255,0.1); border-color:rgba(0,229,255,0.4); color:var(--accent); }

    /* sliders */
    input[type="range"] { -webkit-appearance:none; width:100%; height:4px; background:linear-gradient(to right,var(--accent) var(--pct,50%),rgba(255,255,255,0.08) var(--pct,50%)); border-radius:2px; border:none; padding:0; outline:none; cursor:none; }
    input[type="range"]::-webkit-slider-thumb { -webkit-appearance:none; width:18px; height:18px; background:var(--accent); border-radius:50%; box-shadow:0 0 10px rgba(0,229,255,0.5); cursor:none; }
    .range-val { font-family:'DM Mono',monospace; font-size:13px; color:var(--accent); text-align:right; margin-bottom:6px; }
    .range-labels { display:flex; justify-content:space-between; margin-top:8px; }
    .range-labels span { font-family:'DM Mono',monospace; font-size:10px; color:var(--muted); letter-spacing:1px; }

    /* pH scale bar */
    .ph-scale {
      height:8px; border-radius:4px; margin-bottom:6px;
      background:linear-gradient(to right,
        #ff4444 0%,       /* 4.5 산성 */
        #ff8800 15%,
        #ffcc00 30%,
        #aaff00 45%,
        #00ff94 55%,      /* 7.35–7.45 정상 */
        #00ccff 70%,
        #6655ff 85%,
        #aa00ff 100%      /* 9.0 알칼리성 */
      );
      position:relative;
    }
    .ph-thumb-line {
      position:absolute; top:-4px;
      width:2px; height:16px; background:white;
      border-radius:1px; transform:translateX(-50%);
      transition:left 0.2s; box-shadow:0 0 6px rgba(255,255,255,0.8);
    }
    .ph-zone-labels { display:flex; justify-content:space-between; margin-top:4px; }
    .ph-zone-labels span { font-family:'DM Mono',monospace; font-size:9px; color:var(--muted); letter-spacing:1px; }

    /* submit */
    .btn-primary { padding:16px 40px; background:var(--accent); color:#04060d; border:none; border-radius:4px; font-family:'DM Mono',monospace; font-size:13px; letter-spacing:2px; text-transform:uppercase; cursor:none; transition:all 0.3s; font-weight:500; width:100%; }
    .btn-primary:hover { background:#40eeff; transform:translateY(-2px); box-shadow:0 0 40px rgba(0,229,255,0.35); }
    .submit-note { font-family:'DM Mono',monospace; font-size:10px; letter-spacing:1px; color:var(--muted); text-align:center; margin-top:12px; line-height:1.6; }

    /* LIVE PANEL */
    .live-panel { position:sticky; top:100px; display:flex; flex-direction:column; gap:20px; }
    .panel-card { background:var(--surface); border:1px solid var(--border); border-radius:20px; overflow:hidden; }
    .panel-header { padding:18px 24px; border-bottom:1px solid var(--border); display:flex; align-items:center; justify-content:space-between; }
    .panel-title { font-family:'Bebas Neue',sans-serif; font-size:18px; letter-spacing:1px; }

    /* pH meter visual */
    .ph-meter-body { padding:28px 24px; }
    .ph-big {
      font-family:'Bebas Neue',sans-serif; font-size:88px; line-height:1;
      letter-spacing:2px; text-align:center; transition:color 0.5s;
      margin-bottom:4px;
    }
    .ph-category { font-family:'DM Mono',monospace; font-size:12px; letter-spacing:3px; text-align:center; text-transform:uppercase; transition:color 0.5s; margin-bottom:24px; }

    /* arc gauge */
    .gauge-wrap { display:flex; justify-content:center; margin-bottom:20px; }
    .gauge-svg { width:200px; height:110px; overflow:visible; }

    /* biomarker rows inside panel */
    .bio-rows { padding:4px 0; }
    .bio-row { display:flex; align-items:center; justify-content:space-between; padding:14px 24px; border-bottom:1px solid rgba(0,229,255,0.05); transition:background 0.3s; }
    .bio-row:last-child { border-bottom:none; }
    .bio-row:hover { background:rgba(0,229,255,0.02); }
    .bio-left { display:flex; align-items:center; gap:12px; }
    .bio-icon { width:32px; height:32px; border-radius:8px; background:rgba(0,229,255,0.07); border:1px solid var(--border); display:flex; align-items:center; justify-content:center; font-size:13px; }
    .bio-name { font-family:'DM Mono',monospace; font-size:10px; letter-spacing:1px; color:var(--muted); }
    .bio-right { text-align:right; }
    .bio-val { font-family:'Bebas Neue',sans-serif; font-size:24px; letter-spacing:1px; transition:opacity 0.4s, color 0.4s; }
    .bio-unit { font-family:'DM Mono',monospace; font-size:9px; color:var(--muted); letter-spacing:1px; }
    .bio-bar-wrap { height:3px; background:rgba(255,255,255,0.06); border-radius:2px; margin-top:5px; overflow:hidden; }
    .bio-bar { height:100%; border-radius:2px; transition:width 0.7s ease, background 0.5s; }

    /* condition comment */
    .comment-body { padding:20px 24px; display:flex; flex-direction:column; gap:12px; }
    .comment-condition {
      display:flex; align-items:center; gap:10px;
      background:var(--surface2); border:1px solid var(--border);
      border-radius:10px; padding:14px 16px;
      cursor:none; transition:border-color 0.2s;
    }
    .comment-condition.has-comment { border-color:rgba(0,229,255,0.25); }
    .cond-icon { font-size:18px; min-width:24px; }
    .cond-text { flex:1; }
    .cond-name { font-size:13px; font-weight:500; margin-bottom:2px; }
    .cond-msg { font-size:12px; color:var(--muted); line-height:1.5; }
    .no-condition { font-family:'DM Mono',monospace; font-size:11px; color:var(--muted); letter-spacing:1px; text-align:center; padding:12px 0; }

    /* ref ranges */
    .ref-row { display:flex; justify-content:space-between; padding:9px 0; border-bottom:1px solid rgba(0,229,255,0.05); font-size:12px; }
    .ref-row:last-child { border-bottom:none; }
    .ref-key { font-family:'DM Mono',monospace; font-size:10px; color:var(--muted); letter-spacing:1px; }

    /* success overlay */
    .success-overlay { display:none; position:fixed; inset:0; z-index:200; background:rgba(4,6,13,0.95); backdrop-filter:blur(20px); flex-direction:column; align-items:center; justify-content:center; text-align:center; }
    .success-overlay.show { display:flex; animation:fadeUp 0.5s ease both; }
    .success-ring { width:120px; height:120px; border:2px solid var(--accent3); border-radius:50%; display:flex; align-items:center; justify-content:center; font-size:48px; margin-bottom:32px; box-shadow:0 0 60px rgba(0,255,148,0.2); animation:spinOnce 0.8s ease; }
    @keyframes spinOnce { from{transform:scale(0) rotate(-90deg)} to{transform:scale(1) rotate(0)} }
    .success-title { font-family:'Bebas Neue',sans-serif; font-size:64px; letter-spacing:2px; color:var(--accent3); margin-bottom:16px; line-height:1; }
    .success-sub { font-size:16px; color:var(--muted); line-height:1.7; max-width:420px; margin-bottom:40px; }
    .success-detail { font-family:'DM Mono',monospace; font-size:11px; color:var(--muted); letter-spacing:1px; line-height:1.8; }

    /* reveal */
    .reveal { opacity:0; transform:translateY(28px); transition:opacity 0.7s ease, transform 0.7s ease; }
    .reveal.visible { opacity:1; transform:translateY(0); }

    footer { padding:48px 60px; border-top:1px solid var(--border); display:flex; justify-content:space-between; align-items:center; background:var(--bg); }
    .footer-logo { font-family:'Bebas Neue',sans-serif; font-size:22px; letter-spacing:4px; color:var(--accent); }
    footer p { color:var(--muted); font-size:12px; font-family:'DM Mono',monospace; letter-spacing:1px; }
    .footer-links { display:flex; gap:28px; }
    .footer-links a { color:var(--muted); text-decoration:none; font-size:12px; letter-spacing:1px; transition:color 0.3s; }
    .footer-links a:hover { color:var(--accent); }

    @media (max-width:1024px) {
      nav { padding:18px 24px; }
      .page-hero,.wrap { padding-left:24px; padding-right:24px; }
      .wrap { grid-template-columns:1fr; gap:40px; padding-top:48px; padding-bottom:80px; }
      .live-panel { position:static; }
      footer { flex-direction:column; gap:20px; padding:36px 24px; text-align:center; }
      .footer-links { justify-content:center; flex-wrap:wrap; }
    }
  </style>
</head>
<body>
  <div class="cursor" id="cursor"></div>
  <div class="cursor-ring" id="cursorRing"></div>

  <!-- SUCCESS -->
  <div class="success-overlay" id="successOverlay">
    <div class="success-ring">✓</div>
    <div class="success-title">신청 완료!</div>
    <p class="success-sub">ICAN'TDIE 패치 체험 신청이 접수되었습니다.<br>입력하신 이메일로 발송 안내를 드릴게요.</p>
    <div class="success-detail" id="successSummary"></div>
    <br><br>
    <a href="index.html" style="font-family:'DM Mono',monospace;font-size:12px;letter-spacing:2px;color:var(--muted);text-decoration:none;text-transform:uppercase;border:1px solid var(--border);padding:14px 28px;border-radius:4px;cursor:none;transition:color 0.3s,border-color 0.3s"
      onmouseenter="this.style.color='var(--accent)';this.style.borderColor='rgba(0,229,255,0.4)'"
      onmouseleave="this.style.color='var(--muted)';this.style.borderColor='var(--border)'">← 메인으로</a>
  </div>

  <nav>
    <a href="index.html" class="logo">ICAN'T<span>DIE</span></a>
    <a href="index.html" class="back-btn"><span class="back-arrow">←</span> 메인으로</a>
  </nav>

  <div class="page-hero">
    <div class="grid-bg"></div>
    <div class="glow-orb glow-1"></div>
    <div class="glow-orb glow-2"></div>
    <div class="hero-content">
      <div class="hero-badge"><div class="badge-dot"></div>패치 무료 체험 신청 — 한정 수량</div>
      <h1><span class="dim">지금</span> <span class="ac">체험</span><br><span class="dim">해보세요</span></h1>
      <p class="hero-sub">정보를 입력하면 pH를 포함한 내 몸 상태를 바로 확인할 수 있습니다.</p>
    </div>
  </div>

  <div class="wrap">

    <!-- ── 왼쪽: 폼 ── -->
    <div class="form-section">

      <!-- 01 기본 정보 -->
      <div class="form-block reveal">
        <div class="form-block-header">
          <span class="form-block-num">01</span>
          <span class="form-block-title">기본 정보</span>
        </div>
        <div class="form-block-body">
          <div class="field-row">
            <div class="field-group">
              <label class="field-label">이름</label>
              <input type="text" id="f-name" placeholder="홍길동">
            </div>
            <div class="field-group">
              <label class="field-label">나이</label>
              <input type="number" id="f-age" placeholder="28" min="15" max="90">
            </div>
          </div>
          <div class="field-group">
            <label class="field-label">이메일</label>
            <input type="email" id="f-email" placeholder="hello@example.com">
          </div>
          <div class="field-group">
            <label class="field-label">성별</label>
            <div class="chip-group" id="gender-chips">
              <div class="chip" data-val="male">남성</div>
              <div class="chip" data-val="female">여성</div>
              <div class="chip" data-val="other">기타</div>
            </div>
          </div>
        </div>
      </div>

      <!-- 02 체내 수치 입력 -->
      <div class="form-block reveal">
        <div class="form-block-header">
          <span class="form-block-num">02</span>
          <span class="form-block-title">체내 수치 입력</span>
        </div>
        <div class="form-block-body">

          <!-- pH -->
          <div class="field-group">
            <label class="field-label">혈액 pH</label>
            <div class="range-val" id="ph-val-label">7.40</div>
            <div class="ph-scale" id="ph-scale-bar">
              <div class="ph-thumb-line" id="ph-thumb"></div>
            </div>
            <input type="range" id="f-ph" min="4.5" max="9.0" step="0.05" value="7.40"
              oninput="onSlider()">
            <div class="range-labels">
              <span>4.5 산성</span>
              <span>7.0 중성</span>
              <span>9.0 알칼리</span>
            </div>
          </div>

          <!-- 혈당 -->
          <div class="field-group">
            <label class="field-label">혈당 (mg/dL)</label>
            <div class="range-val" id="glucose-val-label">85 mg/dL</div>
            <input type="range" id="f-glucose" min="50" max="160" step="1" value="85"
              oninput="onSlider()">
            <div class="range-labels"><span>50</span><span>정상 70–100</span><span>160</span></div>
          </div>

          <!-- 젖산 -->
          <div class="field-group">
            <label class="field-label">젖산 (mmol/L)</label>
            <div class="range-val" id="lactate-val-label">1.2 mmol/L</div>
            <input type="range" id="f-lactate" min="0.3" max="5.5" step="0.1" value="1.2"
              oninput="onSlider()">
            <div class="range-labels"><span>0.3</span><span>정상 0.5–2.0</span><span>5.5</span></div>
          </div>

          <!-- 나트륨 -->
          <div class="field-group">
            <label class="field-label">나트륨 Na⁺ (mEq/L)</label>
            <div class="range-val" id="sodium-val-label">138 mEq/L</div>
            <input type="range" id="f-sodium" min="120" max="160" step="1" value="138"
              oninput="onSlider()">
            <div class="range-labels"><span>120</span><span>정상 136–145</span><span>160</span></div>
          </div>

        </div>
      </div>

      <!-- 03 기저질환 -->
      <div class="form-block reveal">
        <div class="form-block-header">
          <span class="form-block-num">03</span>
          <span class="form-block-title">기저질환 (복수 선택)</span>
        </div>
        <div class="form-block-body">
          <div class="chip-group" id="condition-chips">
            <div class="chip" data-val="none">없음</div>
            <div class="chip" data-val="diabetes">당뇨</div>
            <div class="chip" data-val="hypertension">고혈압</div>
            <div class="chip" data-val="hyperlipidemia">고지혈증</div>
            <div class="chip" data-val="hypothyroid">갑상선 기능 저하</div>
            <div class="chip" data-val="hyperthyroid">갑상선 기능 항진</div>
            <div class="chip" data-val="kidney">만성 신장 질환</div>
            <div class="chip" data-val="liver">간 질환</div>
            <div class="chip" data-val="heart">심장 질환</div>
            <div class="chip" data-val="anemia">빈혈</div>
            <div class="chip" data-val="gerd">위식도역류</div>
            <div class="chip" data-val="ibs">과민성 대장</div>
            <div class="chip" data-val="asthma">천식</div>
            <div class="chip" data-val="arthritis">관절염</div>
          </div>
        </div>
      </div>

      <!-- 04 라이프스타일 -->
      <div class="form-block reveal">
        <div class="form-block-header">
          <span class="form-block-num">04</span>
          <span class="form-block-title">라이프스타일</span>
        </div>
        <div class="form-block-body">
          <div class="field-group">
            <label class="field-label">주간 운동 빈도</label>
            <div class="range-val" id="exercise-val">주 3회</div>
            <input type="range" id="f-exercise" min="0" max="7" step="1" value="3"
              oninput="updateSimple(this,'exercise-val',v=>v===0?'운동 안 함':'주 '+v+'회')">
            <div class="range-labels"><span>0회</span><span>7회</span></div>
          </div>
          <div class="field-group">
            <label class="field-label">하루 평균 수면</label>
            <div class="range-val" id="sleep-val">7시간</div>
            <input type="range" id="f-sleep" min="4" max="10" step="1" value="7"
              oninput="updateSimple(this,'sleep-val',v=>v+'시간')">
            <div class="range-labels"><span>4시간</span><span>10시간</span></div>
          </div>
          <div class="field-group">
            <label class="field-label">식단 유형</label>
            <div class="chip-group" id="diet-chips">
              <div class="chip" data-val="normal">일반식</div>
              <div class="chip" data-val="low-carb">저탄수화물</div>
              <div class="chip" data-val="keto">키토제닉</div>
              <div class="chip" data-val="vegan">채식</div>
              <div class="chip" data-val="intermittent">간헐적 단식</div>
            </div>
          </div>
        </div>
      </div>

      <!-- 05 배송 -->
      <div class="form-block reveal">
        <div class="form-block-header">
          <span class="form-block-num">05</span>
          <span class="form-block-title">배송 정보</span>
        </div>
        <div class="form-block-body">
          <div class="field-group">
            <label class="field-label">주소</label>
            <input type="text" id="f-addr1" placeholder="서울특별시 강남구 테헤란로 123">
          </div>
          <div class="field-row">
            <div class="field-group">
              <label class="field-label">상세 주소</label>
              <input type="text" id="f-addr2" placeholder="101동 202호">
            </div>
            <div class="field-group">
              <label class="field-label">우편번호</label>
              <input type="text" id="f-zip" placeholder="06234">
            </div>
          </div>
          <div class="field-group">
            <label class="field-label">기대 메시지 (선택)</label>
            <textarea id="f-message" placeholder="어떤 결과를 기대하시나요?"></textarea>
          </div>
        </div>
      </div>

      <div class="reveal">
        <button class="btn-primary" onclick="handleSubmit()">체험 신청 완료하기</button>
        <p class="submit-note">개인정보는 배송 목적으로만 사용되며 체험 종료 후 즉시 파기됩니다.<br>무료 체험은 선착순 200명, 1인 1회 한정입니다.</p>
      </div>

    </div>

    <!-- ── 오른쪽: 라이브 패널 ── -->
    <div class="live-panel">

      <!-- pH 미터 -->
      <div class="panel-card reveal">
        <div class="panel-header">
          <span class="panel-title">혈액 pH 분석</span>
          <span style="font-family:'DM Mono',monospace;font-size:9px;color:var(--muted);letter-spacing:2px;">실시간</span>
        </div>
        <div class="ph-meter-body">
          <!-- arc gauge -->
          <div class="gauge-wrap">
            <svg class="gauge-svg" viewBox="0 0 200 110" xmlns="http://www.w3.org/2000/svg">
              <defs>
                <linearGradient id="gaugeGrad" x1="0%" y1="0%" x2="100%" y2="0%">
                  <stop offset="0%"   stop-color="#ff4444"/>
                  <stop offset="30%"  stop-color="#f59e0b"/>
                  <stop offset="50%"  stop-color="#00ff94"/>
                  <stop offset="70%"  stop-color="#00e5ff"/>
                  <stop offset="100%" stop-color="#7b5cff"/>
                </linearGradient>
                <filter id="needleGlow"><feGaussianBlur stdDeviation="2" result="b"/><feMerge><feMergeNode in="b"/><feMergeNode in="SourceGraphic"/></feMerge></filter>
              </defs>
              <!-- track -->
              <path d="M 10,100 A 90,90 0 0,1 190,100" fill="none" stroke="rgba(255,255,255,0.06)" stroke-width="14" stroke-linecap="round"/>
              <!-- colored arc -->
              <path d="M 10,100 A 90,90 0 0,1 190,100" fill="none" stroke="url(#gaugeGrad)" stroke-width="14" stroke-linecap="round" opacity="0.9"/>
              <!-- needle -->
              <line id="gauge-needle" x1="100" y1="100" x2="100" y2="18"
                stroke="white" stroke-width="2.5" stroke-linecap="round" filter="url(#needleGlow)"
                transform="rotate(0 100 100)"/>
              <circle cx="100" cy="100" r="6" fill="white"/>
              <circle cx="100" cy="100" r="3" fill="var(--bg)"/>
              <!-- zone labels -->
              <text x="14" y="118" font-family="'DM Mono',monospace" font-size="9" fill="#ff4444" opacity="0.8">산성</text>
              <text x="82" y="10" font-family="'DM Mono',monospace" font-size="9" fill="var(--accent3)" opacity="0.8" text-anchor="middle">정상</text>
              <text x="175" y="118" font-family="'DM Mono',monospace" font-size="9" fill="#7b5cff" opacity="0.8" text-anchor="end">알칼리</text>
            </svg>
          </div>
          <div class="ph-big" id="ph-display" style="color:var(--accent3)">7.40</div>
          <div class="ph-category" id="ph-category" style="color:var(--accent3)">정상 범위</div>
        </div>
      </div>

      <!-- 바이오마커 요약 -->
      <div class="panel-card reveal" style="transition-delay:0.08s">
        <div class="panel-header">
          <span class="panel-title">바이오마커 상태</span>
        </div>
        <div class="bio-rows">
          <div class="bio-row">
            <div class="bio-left">
              <div class="bio-icon">🩸</div>
              <div><div class="bio-name">GLUCOSE</div><div style="font-size:10px;color:var(--muted);margin-top:2px;">혈당 · mg/dL</div></div>
            </div>
            <div class="bio-right">
              <div class="bio-val" id="panel-glucose" style="color:var(--accent3)">85</div>
              <div class="bio-unit">mg/dL</div>
              <div class="bio-bar-wrap"><div class="bio-bar" id="bar-glucose" style="width:35%;background:var(--accent3)"></div></div>
            </div>
          </div>
          <div class="bio-row">
            <div class="bio-left">
              <div class="bio-icon">💪</div>
              <div><div class="bio-name">LACTATE</div><div style="font-size:10px;color:var(--muted);margin-top:2px;">젖산 · mmol/L</div></div>
            </div>
            <div class="bio-right">
              <div class="bio-val" id="panel-lactate" style="color:var(--accent3)">1.2</div>
              <div class="bio-unit">mmol/L</div>
              <div class="bio-bar-wrap"><div class="bio-bar" id="bar-lactate" style="width:40%;background:var(--accent3)"></div></div>
            </div>
          </div>
          <div class="bio-row">
            <div class="bio-left">
              <div class="bio-icon">⚗️</div>
              <div><div class="bio-name">SODIUM</div><div style="font-size:10px;color:var(--muted);margin-top:2px;">나트륨 · mEq/L</div></div>
            </div>
            <div class="bio-right">
              <div class="bio-val" id="panel-sodium" style="color:var(--accent3)">138</div>
              <div class="bio-unit">mEq/L</div>
              <div class="bio-bar-wrap"><div class="bio-bar" id="bar-sodium" style="width:50%;background:var(--accent3)"></div></div>
            </div>
          </div>
        </div>
      </div>

      <!-- 기저질환 코멘트 -->
      <div class="panel-card reveal" style="transition-delay:0.16s">
        <div class="panel-header">
          <span class="panel-title">기저질환 분석</span>
        </div>
        <div class="comment-body" id="condition-comments">
          <div class="no-condition">기저질환을 선택하면<br>맞춤 코멘트가 표시됩니다</div>
        </div>
      </div>

      <!-- 종합 상태 -->
      <div class="panel-card reveal" style="transition-delay:0.24s">
        <div class="panel-header"><span class="panel-title">종합 건강 상태</span></div>
        <div style="padding:20px 24px">
          <div style="display:flex;align-items:center;justify-content:space-between;margin-bottom:14px">
            <div>
              <div style="font-family:'DM Mono',monospace;font-size:10px;color:var(--muted);letter-spacing:2px;margin-bottom:6px">현재 상태</div>
              <div id="overall-val" style="font-family:'Bebas Neue',sans-serif;font-size:34px;letter-spacing:1px;color:var(--accent3);transition:color 0.4s">정상</div>
            </div>
            <div id="overall-icon" style="font-size:38px;transition:opacity 0.4s">✅</div>
          </div>
          <div id="overall-detail" style="background:var(--surface2);border:1px solid var(--border);border-radius:8px;padding:12px 14px;font-size:12px;color:var(--muted);line-height:1.65;transition:opacity 0.4s">
            모든 수치가 정상 범위 내에 있습니다.
          </div>
        </div>
      </div>

      <!-- 참고 범위 -->
      <div class="panel-card reveal" style="transition-delay:0.32s">
        <div class="panel-header"><span class="panel-title">정상 참고 범위</span></div>
        <div style="padding:12px 24px">
          <div class="ref-row"><span class="ref-key">혈액 pH</span><span style="color:var(--accent3)">7.35 – 7.45</span></div>
          <div class="ref-row"><span class="ref-key">혈당 (공복)</span><span style="color:var(--accent3)">70 – 100 mg/dL</span></div>
          <div class="ref-row"><span class="ref-key">젖산 (안정시)</span><span style="color:var(--accent3)">0.5 – 2.0 mmol/L</span></div>
          <div class="ref-row"><span class="ref-key">나트륨</span><span style="color:var(--accent3)">136 – 145 mEq/L</span></div>
        </div>
      </div>

    </div>
  </div>

  <footer>
    <div class="footer-logo">ICAN'TDIE</div>
    <p>© 2026 ICAN'TDIE Health Technologies. All rights reserved.</p>
    <div class="footer-links">
      <a href="#">개인정보처리방침</a>
      <a href="#">이용약관</a>
      <a href="index.html">메인으로</a>
    </div>
  </footer>

<script>
/* ── CURSOR ── */
const cursor = document.getElementById('cursor');
const ring   = document.getElementById('cursorRing');
let mx=-100,my=-100,rx=-100,ry=-100;
document.addEventListener('mousemove',e=>{ mx=e.clientX; my=e.clientY; cursor.style.left=mx-4+'px'; cursor.style.top=my-4+'px'; });
(function ar(){ rx+=(mx-rx)*0.12; ry+=(my-ry)*0.12; ring.style.left=rx-18+'px'; ring.style.top=ry-18+'px'; requestAnimationFrame(ar); })();
document.querySelectorAll('button,a,.chip,.bio-row,.comment-condition').forEach(el=>{
  el.addEventListener('mouseenter',()=>{ ring.style.transform='scale(1.6)'; ring.style.borderColor='rgba(0,229,255,0.6)'; });
  el.addEventListener('mouseleave',()=>{ ring.style.transform='scale(1)';   ring.style.borderColor='rgba(0,229,255,0.4)'; });
});

/* ── SCROLL REVEAL ── */
const obs = new IntersectionObserver(en=>en.forEach(e=>{ if(e.isIntersecting) e.target.classList.add('visible'); }),{threshold:0.1});
document.querySelectorAll('.reveal').forEach(el=>obs.observe(el));

/* ── CHIPS: single-select groups ── */
['gender-chips','diet-chips'].forEach(id=>{
  const g = document.getElementById(id);
  if(!g) return;
  g.querySelectorAll('.chip').forEach(c=>c.addEventListener('click',()=>{
    g.querySelectorAll('.chip').forEach(x=>x.classList.remove('active'));
    c.classList.toggle('active');
  }));
});

/* ── CHIPS: multi-select — condition ── */
const condGroup = document.getElementById('condition-chips');
condGroup.querySelectorAll('.chip').forEach(c=>c.addEventListener('click',()=>{
  if(c.dataset.val==='none'){
    condGroup.querySelectorAll('.chip').forEach(x=>x.classList.remove('active'));
    c.classList.add('active');
  } else {
    condGroup.querySelector('[data-val="none"]').classList.remove('active');
    c.classList.toggle('active');
  }
  renderConditionComments();
}));

/* ── SIMPLE RANGE (exercise, sleep) ── */
function updateSimple(el, labelId, fmt){
  document.getElementById(labelId).textContent = fmt(parseInt(el.value));
  const pct = ((el.value-el.min)/(el.max-el.min)*100).toFixed(1);
  el.style.setProperty('--pct', pct+'%');
}
['f-exercise','f-sleep'].forEach(id=>{ const el=document.getElementById(id); if(el) el.dispatchEvent(new Event('input')); });

/* ── BIOMARKER HELPERS ── */
const BIO = {
  glucose: { normal:[70,100], warn:[101,125], min:50,  max:160, dec:0 },
  lactate: { normal:[0.5,2.0],warn:[2.1,4.0], min:0.3, max:5.5, dec:1 },
  sodium:  { normal:[136,145],warn:[146,150], min:120, max:160, dec:0 }
};
function bioColor(key,val){
  const b=BIO[key];
  if(val>=b.normal[0]&&val<=b.normal[1]) return 'var(--accent3)';
  if(val>=b.warn[0]  &&val<=b.warn[1])   return 'var(--warn)';
  return 'var(--danger)';
}
function bioBarPct(key,val){
  const b=BIO[key]; return Math.max(4,Math.min(96,((val-b.min)/(b.max-b.min)*100)));
}

/* ── pH HELPERS ── */
function phColor(ph){
  if(ph>=7.35&&ph<=7.45) return 'var(--accent3)';
  if((ph>=7.25&&ph<7.35)||(ph>7.45&&ph<=7.55)) return 'var(--warn)';
  return 'var(--danger)';
}
function phLabel(ph){
  if(ph<6.5)  return '강산성';
  if(ph<7.0)  return '약산성';
  if(ph<7.35) return '산성 (경계)';
  if(ph<=7.45) return '정상 범위';
  if(ph<=7.55) return '알칼리성 (경계)';
  if(ph<=8.0)  return '약알칼리성';
  return '강알칼리성';
}
/* needle: pH 4.5 → -90deg, pH 9.0 → +90deg */
function phToDeg(ph){ return ((ph-4.5)/(9.0-4.5))*180 - 90; }

/* ── MAIN UPDATE FUNCTION ── */
function onSlider(){
  const ph  = parseFloat(document.getElementById('f-ph').value);
  const glu = parseFloat(document.getElementById('f-glucose').value);
  const lac = parseFloat(document.getElementById('f-lactate').value);
  const sod = parseFloat(document.getElementById('f-sodium').value);

  /* ph label */
  document.getElementById('ph-val-label').textContent = ph.toFixed(2);
  /* ph scale thumb */
  const pct = ((ph-4.5)/(9.0-4.5)*100);
  document.getElementById('ph-thumb').style.left = pct+'%';
  /* ph slider track */
  const phEl = document.getElementById('f-ph');
  phEl.style.setProperty('--pct', pct.toFixed(1)+'%');

  /* glucose label + slider */
  document.getElementById('glucose-val-label').textContent = glu+' mg/dL';
  const gEl=document.getElementById('f-glucose');
  gEl.style.setProperty('--pct',((glu-50)/110*100).toFixed(1)+'%');
  /* lactate */
  document.getElementById('lactate-val-label').textContent = lac.toFixed(1)+' mmol/L';
  const lEl=document.getElementById('f-lactate');
  lEl.style.setProperty('--pct',((lac-0.3)/5.2*100).toFixed(1)+'%');
  /* sodium */
  document.getElementById('sodium-val-label').textContent = sod+' mEq/L';
  const sEl=document.getElementById('f-sodium');
  sEl.style.setProperty('--pct',((sod-120)/40*100).toFixed(1)+'%');

  /* gauge needle */
  const deg = phToDeg(ph);
  document.getElementById('gauge-needle').setAttribute('transform','rotate('+deg+' 100 100)');

  /* ph display */
  const pc = phColor(ph);
  const phDisp = document.getElementById('ph-display');
  phDisp.textContent = ph.toFixed(2);
  phDisp.style.color = pc;
  const phCat = document.getElementById('ph-category');
  phCat.textContent = phLabel(ph);
  phCat.style.color  = pc;

  /* biomarker panel */
  const gc=bioColor('glucose',glu), lc=bioColor('lactate',lac), sc=bioColor('sodium',sod);
  const pG=document.getElementById('panel-glucose'), pL=document.getElementById('panel-lactate'), pS=document.getElementById('panel-sodium');
  pG.textContent=glu; pG.style.color=gc;
  pL.textContent=lac.toFixed(1); pL.style.color=lc;
  pS.textContent=sod; pS.style.color=sc;
  document.getElementById('bar-glucose').style.cssText=`width:${bioBarPct('glucose',glu)}%;background:${gc}`;
  document.getElementById('bar-lactate').style.cssText=`width:${bioBarPct('lactate',lac)}%;background:${lc}`;
  document.getElementById('bar-sodium').style.cssText =`width:${bioBarPct('sodium',sod)}%;background:${sc}`;

  /* overall */
  const cols=[pc,gc,lc,sc];
  const allOk = cols.every(c=>c==='var(--accent3)');
  const anyBad= cols.some(c=>c==='var(--danger)');
  const ov = allOk?'normal':anyBad?'danger':'warn';
  const ovColors={normal:'var(--accent3)',warn:'var(--warn)',danger:'var(--danger)'};
  const ovLabels={normal:'정상',warn:'경계',danger:'주의 필요'};
  const ovIcons ={normal:'✅',warn:'⚠️',danger:'🚨'};
  const ovMessages={
    normal:'모든 수치가 정상 범위 내에 있습니다. 현재 신체 상태는 양호합니다.',
    warn:'일부 수치가 경계 범위에 진입했습니다. 수분 섭취와 충분한 휴식을 권장합니다.',
    danger:'비정상 수치가 감지되었습니다. 의료 전문가 상담을 권장합니다.'
  };
  document.getElementById('overall-val').textContent=ovLabels[ov];
  document.getElementById('overall-val').style.color=ovColors[ov];
  document.getElementById('overall-icon').textContent=ovIcons[ov];
  document.getElementById('overall-detail').textContent=ovMessages[ov];
}

/* ── CONDITION COMMENTS ── */
const CONDITION_DATA = {
  diabetes: {
    icon:'💉',
    name:'당뇨',
    comment(glu,ph,lac){
      if(glu>125) return '혈당이 높습니다. 당뇨 환자의 경우 공복혈당 126 이상은 의료 상담이 필요합니다.';
      if(glu>100) return '혈당이 경계 범위입니다. 당뇨 관리 중이시라면 식이와 약물 복용을 재확인하세요.';
      return '현재 혈당은 정상 범위입니다. 당뇨 관리가 잘 이루어지고 있습니다.';
    }
  },
  hypertension: {
    icon:'❤️',
    name:'고혈압',
    comment(glu,ph,lac,sod){
      if(sod>145) return '나트륨 수치가 높습니다. 고혈압 환자에게 나트륨 과잉은 혈압 상승 위험을 높입니다.';
      if(sod>=136) return '나트륨 수치는 정상입니다. 저염식 유지와 규칙적인 측정을 권장합니다.';
      return '나트륨 수치가 낮습니다. 이뇨제 복용 중이라면 의사와 상담하세요.';
    }
  },
  hyperlipidemia: {
    icon:'🧬',
    name:'고지혈증',
    comment(glu,ph){
      if(glu>100) return '혈당 상승은 고지혈증과 복합적으로 심혈관 위험을 높일 수 있습니다. 운동과 식이 관리가 중요합니다.';
      return '혈당은 정상이나, 고지혈증 환자는 정기적인 지질 수치 모니터링을 병행하는 것이 좋습니다.';
    }
  },
  hypothyroid: {
    icon:'🦋',
    name:'갑상선 기능 저하',
    comment(glu,ph,lac){
      if(glu>100) return '갑상선 기능 저하 시 혈당 조절 능력이 떨어질 수 있습니다. 갑상선 호르몬 수치를 함께 확인하세요.';
      if(lac>2.0) return '젖산 수치가 높습니다. 갑상선 기능 저하는 대사를 느리게 해 젖산 축적을 유발할 수 있습니다.';
      return '현재 수치는 양호합니다. 갑상선 호르몬 보충제 복용 시간을 일정하게 유지하세요.';
    }
  },
  hyperthyroid: {
    icon:'⚡',
    name:'갑상선 기능 항진',
    comment(glu,ph,lac){
      if(glu>100) return '갑상선 기능 항진은 혈당을 높일 수 있습니다. 현재 혈당이 경계 범위입니다.';
      if(lac>2.0) return '빠른 대사로 인해 젖산이 빠르게 생성될 수 있습니다. 과도한 운동을 피하세요.';
      return '수치는 양호합니다. 항갑상선 약물 복용을 규칙적으로 유지하세요.';
    }
  },
  kidney: {
    icon:'🫘',
    name:'만성 신장 질환',
    comment(glu,ph,lac,sod){
      if(sod>145) return '나트륨 과잉은 만성 신장 질환을 악화시킬 수 있습니다. 수분 섭취와 식이 나트륨 제한이 필요합니다.';
      if(ph<7.35) return '혈액이 산성화되고 있습니다. 신장 기능 저하 시 산-염기 불균형이 심해질 수 있습니다.';
      return '현재 수치는 안정적입니다. 신장 질환 환자는 정기적인 creatinine·BUN 검사를 권장합니다.';
    }
  },
  liver: {
    icon:'🫀',
    name:'간 질환',
    comment(glu,ph,lac){
      if(lac>2.0) return '젖산 수치가 높습니다. 간 기능 저하 시 젖산 대사가 느려져 젖산산증 위험이 있습니다.';
      if(glu<70)  return '혈당이 낮습니다. 간은 포도당 생성에 중요한 역할을 하므로 간 질환 시 저혈당에 주의하세요.';
      if(ph<7.35) return '혈액 산성화가 감지됩니다. 간 기능과 연관될 수 있으므로 전문의 상담을 권장합니다.';
      return '현재 수치는 안정적입니다. 정기적인 간 기능 검사와 금주를 유지하세요.';
    }
  },
  heart: {
    icon:'💗',
    name:'심장 질환',
    comment(glu,ph,lac,sod){
      if(sod>145) return '나트륨 과잉은 심장에 부담을 줄 수 있습니다. 저염식과 수분 균형 유지가 중요합니다.';
      if(lac>2.0) return '젖산 수치가 높습니다. 심장 질환 시 운동 시 젖산 축적이 더 빠를 수 있습니다.';
      if(ph<7.35) return '혈액 산성화는 심장 리듬에 영향을 줄 수 있습니다. 즉시 의료 상담을 권장합니다.';
      return '현재 수치는 양호합니다. 처방된 약물 복용을 유지하고 규칙적인 경과 관찰을 받으세요.';
    }
  },
  anemia: {
    icon:'🩺',
    name:'빈혈',
    comment(glu,ph,lac){
      if(lac>2.0) return '젖산이 높습니다. 빈혈로 인한 산소 공급 부족 시 혐기성 대사가 증가해 젖산이 축적됩니다.';
      if(ph<7.35) return '산소 운반 감소로 인한 산성화가 감지됩니다. 철분·엽산 수치를 확인하세요.';
      return '현재 수치는 안정적입니다. 철분 섭취와 정기적인 혈색소 검사를 유지하세요.';
    }
  },
  gerd: {
    icon:'🔥',
    name:'위식도역류',
    comment(glu,ph){
      if(ph<7.0) return '전신 산성도가 낮습니다. 위산 역류와 복합적으로 신체 pH 균형에 영향을 줄 수 있습니다.';
      return '혈액 pH는 정상입니다. 위식도역류는 식후 눕지 않기, 소량 자주 먹기로 관리하세요.';
    }
  },
  ibs: {
    icon:'🌀',
    name:'과민성 대장',
    comment(glu,ph){
      return '장 상태와 혈액 수치는 직접 연관성이 낮으나, 스트레스와 식이는 IBS와 전반적 건강 모두에 영향을 줍니다. 식이 일지를 기록해보세요.';
    }
  },
  asthma: {
    icon:'💨',
    name:'천식',
    comment(glu,ph,lac){
      if(ph<7.35) return '혈액 산성화가 감지됩니다. 천식 발작 시 이산화탄소 축적으로 호흡성 산증이 올 수 있습니다.';
      if(lac>2.0) return '젖산 수치가 높습니다. 호흡 곤란 시 산소 공급 부족으로 젖산이 증가할 수 있습니다.';
      return '현재 수치는 안정적입니다. 발작 예방을 위해 흡입기를 항상 지참하세요.';
    }
  },
  arthritis: {
    icon:'🦴',
    name:'관절염',
    comment(glu,ph,lac){
      if(lac>2.0) return '관절 주변 젖산 축적은 염증을 악화시킬 수 있습니다. 적당한 강도의 유산소 운동을 권장합니다.';
      if(ph<7.35) return '약한 산성화가 감지됩니다. 산성 환경은 관절 염증을 증가시킬 수 있습니다.';
      return '현재 수치는 안정적입니다. 관절 부담을 줄이는 저충격 운동(수영, 자전거)을 권장합니다.';
    }
  }
};

function renderConditionComments(){
  const ph  = parseFloat(document.getElementById('f-ph').value);
  const glu = parseFloat(document.getElementById('f-glucose').value);
  const lac = parseFloat(document.getElementById('f-lactate').value);
  const sod = parseFloat(document.getElementById('f-sodium').value);
  const selected = [...document.querySelectorAll('#condition-chips .chip.active')].map(c=>c.dataset.val).filter(v=>v!=='none');
  const box = document.getElementById('condition-comments');
  if(selected.length===0){
    box.innerHTML='<div class="no-condition">기저질환을 선택하면<br>맞춤 코멘트가 표시됩니다</div>';
    return;
  }
  box.innerHTML = selected.map(val=>{
    const d = CONDITION_DATA[val]; if(!d) return '';
    const msg = d.comment(glu,ph,lac,sod);
    const isWarn = msg.includes('높') || msg.includes('낮') || msg.includes('감지') || msg.includes('상담') || msg.includes('위험') || msg.includes('주의') || msg.includes('악화');
    const borderCol = isWarn ? 'rgba(239,68,68,0.25)' : 'rgba(0,229,255,0.2)';
    return `<div class="comment-condition has-comment" style="border-color:${borderCol}">
      <div class="cond-icon">${d.icon}</div>
      <div class="cond-text">
        <div class="cond-name">${d.name}</div>
        <div class="cond-msg">${msg}</div>
      </div>
    </div>`;
  }).join('');
}

/* ── INIT ── */
onSlider();

/* re-render comments when sliders move */
['f-ph','f-glucose','f-lactate','f-sodium'].forEach(id=>{
  document.getElementById(id).addEventListener('input',renderConditionComments);
});

/* ── SUBMIT ── */
function handleSubmit(){
  const name  = document.getElementById('f-name').value.trim();
  const email = document.getElementById('f-email').value.trim();
  const addr  = document.getElementById('f-addr1').value.trim();
  if(!name||!email||!addr){
    [['f-name',name],['f-email',email],['f-addr1',addr]].forEach(([id,v])=>{
      if(!v){ const el=document.getElementById(id); el.style.borderColor='var(--danger)'; el.style.boxShadow='0 0 0 3px rgba(239,68,68,0.12)'; setTimeout(()=>{ el.style.borderColor=''; el.style.boxShadow=''; },2000); }
    });
    return;
  }
  const ph  = document.getElementById('f-ph').value;
  const glu = document.getElementById('f-glucose').value;
  const lac = document.getElementById('f-lactate').value;
  const sod = document.getElementById('f-sodium').value;
  const conds = [...document.querySelectorAll('#condition-chips .chip.active')].map(c=>c.textContent).join(', ')||'없음';
  document.getElementById('successSummary').innerHTML =
    `신청자: ${name} &nbsp;·&nbsp; ${email}<br>입력 수치: pH ${ph} · 혈당 ${glu} · 젖산 ${lac} · Na⁺ ${sod}<br>기저질환: ${conds}`;
  document.getElementById('successOverlay').classList.add('show');
}
</script>
</body>
</html>
HTMLEOF
echo "Done: $(wc -l < /mnt/user-data/outputs/icantdie_experience.html) lines"
