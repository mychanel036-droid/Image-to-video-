<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
  <title>Image to Video Creator | Slideshow Maker with Quality Control</title>
  <meta name="description" content="Convert multiple images into a video slideshow. Adjust duration, resolution, FPS, and compression level. Client-side, fast, and privacy-friendly.">
  <meta name="keywords" content="image to video, slideshow maker, create video from images, video compressor, online video tool">
  <meta name="author" content="VideoSlideshow Tool">
  <meta name="robots" content="index, follow">
  <link rel="canonical" href="https://www.yourdomain.com/image-to-video">
  <!-- Open Graph -->
  <meta property="og:title" content="Image to Video Converter - Create Slideshows Instantly">
  <meta property="og:description" content="Turn your photos into videos with custom duration, resolution, and bitrate. Free and no uploads.">
  <meta property="og:type" content="website">
  <meta property="og:image" content="https://via.placeholder.com/1200x630?text=Image+To+Video">
  <meta name="twitter:card" content="summary_large_image">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Segoe UI', Roboto, 'Helvetica Neue', sans-serif;
      background: #f4f7fc;
      color: #1e293b;
      line-height: 1.5;
      padding: 24px 20px;
    }

    .container {
      max-width: 1400px;
      margin: 0 auto;
    }

    /* header */
    .header {
      text-align: center;
      margin-bottom: 28px;
    }
    h1 {
      font-size: 1.9rem;
      font-weight: 700;
      background: linear-gradient(135deg, #0f2b3d, #1b4f72);
      background-clip: text;
      -webkit-background-clip: text;
      color: transparent;
    }
    .sub {
      color: #2c3e50;
      margin-top: 8px;
      font-size: 1rem;
    }

    /* ad containers */
    .ad-top {
      background: #ffffffdd;
      backdrop-filter: blur(2px);
      border-radius: 24px;
      padding: 12px 16px;
      margin-bottom: 32px;
      text-align: center;
      border: 1px solid #e0e7ef;
      min-height: 110px;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
    }
    .ad-label {
      font-size: 0.7rem;
      color: #7f8c8d;
      margin-bottom: 6px;
      letter-spacing: 1px;
    }
    .ad-slot-placeholder {
      background: #f1f5f9;
      border-radius: 16px;
      padding: 8px;
      width: 100%;
      text-align: center;
      font-size: 0.8rem;
      color: #4a627a;
    }

    /* two column layout */
    .two-col {
      display: grid;
      grid-template-columns: 1fr 300px;
      gap: 32px;
      margin-bottom: 40px;
    }

    /* main card */
    .tool-card {
      background: white;
      border-radius: 32px;
      box-shadow: 0 20px 35px -12px rgba(0,0,0,0.08);
      padding: 28px 24px;
      border: 1px solid #eef2ff;
    }

    /* upload section */
    .upload-area {
      background: #f8fafc;
      border: 2px dashed #cbd5e1;
      border-radius: 24px;
      padding: 28px 20px;
      text-align: center;
      cursor: pointer;
      transition: 0.2s;
      margin-bottom: 24px;
    }
    .upload-area:hover {
      border-color: #3b82f6;
      background: #f0f4fe;
    }
    .file-input {
      display: none;
    }
    .upload-icon {
      font-size: 2.5rem;
      margin-bottom: 8px;
    }

    /* images preview gallery */
    .gallery {
      display: flex;
      flex-wrap: wrap;
      gap: 14px;
      margin: 20px 0 24px;
      max-height: 260px;
      overflow-y: auto;
      padding: 8px 4px;
      background: #fefefe;
      border-radius: 20px;
    }
    .gallery-item {
      position: relative;
      width: 100px;
      height: 100px;
      border-radius: 16px;
      overflow: hidden;
      box-shadow: 0 4px 10px rgba(0,0,0,0.05);
      border: 1px solid #e2e8f0;
      background: #fff;
    }
    .gallery-item img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    .remove-img {
      position: absolute;
      top: 4px;
      right: 4px;
      background: rgba(0,0,0,0.6);
      color: white;
      border-radius: 30px;
      width: 22px;
      height: 22px;
      font-size: 14px;
      text-align: center;
      line-height: 20px;
      cursor: pointer;
      font-weight: bold;
    }
    .empty-gallery {
      font-size: 0.85rem;
      color: #94a3b8;
      padding: 16px;
      text-align: center;
    }

    /* controls grid */
    .settings-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
      gap: 20px;
      margin: 20px 0 24px;
    }
    .control-group {
      display: flex;
      flex-direction: column;
      gap: 8px;
    }
    .control-group label {
      font-weight: 600;
      font-size: 0.85rem;
      display: flex;
      justify-content: space-between;
    }
    select, input[type="range"] {
      padding: 10px 12px;
      border-radius: 40px;
      border: 1px solid #cbd5e1;
      background: white;
    }
    .value-badge {
      background: #eef2ff;
      padding: 2px 10px;
      border-radius: 40px;
      font-size: 0.75rem;
    }
    button {
      background: #1e3a5f;
      color: white;
      border: none;
      padding: 14px 18px;
      border-radius: 60px;
      font-weight: 700;
      font-size: 1rem;
      cursor: pointer;
      transition: 0.2s;
      width: 100%;
      margin-top: 12px;
    }
    button:hover:not(:disabled) {
      background: #0f2c44;
      transform: scale(0.98);
    }
    button:disabled {
      background: #b9c8e0;
      cursor: not-allowed;
    }
    .video-preview {
      margin-top: 28px;
      background: #f1f5f9;
      border-radius: 28px;
      padding: 16px;
      text-align: center;
    }
    video {
      max-width: 100%;
      border-radius: 20px;
      background: #000;
      max-height: 280px;
    }
    .download-link {
      display: inline-block;
      margin-top: 14px;
      background: #2c6e2f;
      padding: 10px 24px;
      border-radius: 40px;
      color: white;
      text-decoration: none;
      font-weight: 600;
    }
    .progress-text {
      font-size: 0.85rem;
      margin-top: 12px;
      color: #2c5282;
    }
    /* sidebar ad */
    .sidebar-ad {
      background: white;
      border-radius: 28px;
      padding: 20px 16px;
      text-align: center;
      border: 1px solid #e2e8f0;
      height: fit-content;
      position: sticky;
      top: 20px;
    }
    footer {
      text-align: center;
      margin-top: 40px;
      font-size: 0.75rem;
      color: #6c7a91;
      border-top: 1px solid #e2e8f0;
      padding-top: 24px;
    }
    @media (max-width: 780px) {
      .two-col { grid-template-columns: 1fr; }
      .sidebar-ad { position: static; margin-top: 20px; }
      body { padding: 16px; }
    }
    .warning {
      color: #c2410c;
      background: #fff1e6;
      padding: 8px;
      border-radius: 24px;
      margin: 12px 0;
      font-size: 0.8rem;
    }
  </style>
</head>
<body>
<div class="container">
  <div class="header">
    <h1>🎬 Image to Video Studio</h1>
    <div class="sub">Create custom slideshows · Adjust FPS · Duration · Compression (Bitrate)</div>
  </div>

  <!-- TOP AD SPACE (Google AdSense ready) -->
  <div class="ad-top">
    <div class="ad-label">Advertisement</div>
    <!-- Replace with your AdSense ad unit code. Example ins tag with data-ad-client and data-ad-slot -->
    <div class="ad-slot-placeholder" id="topAdPlaceholder">
      🔹 Ad Space - Insert AdSense Code Here 🔹<br>
      &lt;ins data-ad-client="ca-pub-XXXXXXXXXXXX" data-ad-slot="1234567890"&gt;&lt;/ins&gt;
    </div>
    <!-- For actual AdSense, replace the above div with standard ins block. -->
  </div>

  <div class="two-col">
    <!-- MAIN TOOL CARD -->
    <div class="tool-card">
      <div class="upload-area" id="uploadArea">
        <div class="upload-icon">🖼️📸</div>
        <p>Click or drag & drop images (JPEG, PNG, WebP)</p>
        <input type="file" id="imageInput" multiple accept="image/jpeg,image/png,image/webp,image/jpg" class="file-input">
        <p style="font-size:0.7rem; margin-top:8px;">Select images in order (they will appear in slideshow sequence)</p>
      </div>

      <!-- Gallery preview -->
      <div id="galleryContainer" class="gallery">
        <div class="empty-gallery">No images selected yet. Upload images to build slideshow.</div>
      </div>

      <!-- Settings -->
      <div class="settings-grid">
        <div class="control-group">
          <label>📐 Resolution <span id="resolutionLabel" class="value-badge">854x480</span></label>
          <select id="resolutionSelect">
            <option value="640x360">640x360 (SD)</option>
            <option value="854x480" selected>854x480 (480p)</option>
            <option value="1280x720">1280x720 (HD Ready)</option>
          </select>
        </div>
        <div class="control-group">
          <label>🎞️ Frames per second <span id="fpsValue" class="value-badge">24</span></label>
          <select id="fpsSelect">
            <option value="15">15 fps</option>
            <option value="24" selected>24 fps (film)</option>
            <option value="30">30 fps</option>
          </select>
        </div>
        <div class="control-group">
          <label>⏱️ Duration per image (sec) <span id="durationValue" class="value-badge">2.0 s</span></label>
          <input type="range" id="durationSlider" min="0.8" max="5.0" step="0.1" value="2.0">
        </div>
        <div class="control-group">
          <label>🗜️ Compression / Quality <span id="bitrateLabel" class="value-badge">Medium (1.2 Mbps)</span></label>
          <input type="range" id="compressionSlider" min="0" max="100" value="50">
          <div style="display: flex; justify-content: space-between; font-size:0.7rem;"><span>High compression (small file)</span><span>Low compression (best quality)</span></div>
        </div>
      </div>

      <button id="generateBtn" disabled>📹 Generate Video Slideshow</button>
      <div id="progressMsg" class="progress-text"></div>

      <!-- Output video preview -->
      <div id="videoOutputArea" class="video-preview" style="display: none;">
        <video id="outputVideo" controls playsinline></video><br>
        <a id="downloadLink" class="download-link" download="slideshow.webm">⬇️ Download Video (WebM)</a>
      </div>
      <div id="errorMsg" class="warning" style="display: none;"></div>
    </div>

    <!-- SIDEBAR AD SPACE -->
    <div class="sidebar-ad">
      <div class="ad-label">Sponsor</div>
      <div class="ad-slot-placeholder" style="min-height: 250px; display: flex; align-items: center; justify-content: center; flex-direction: column;">
        🔹 AdSense Sidebar Unit 🔹<br>
        &lt;ins data-ad-client="ca-pub-XXXX" data-ad-slot="987654321"&gt;&lt;/ins&gt;<br>
        <small style="margin-top:12px;">Replace with your ad code</small>
      </div>
      <hr style="margin: 18px 0; border-color:#eef2ff;">
      <div style="font-size:0.75rem;">💡 Tip: Higher FPS & duration = smoother but larger file.</div>
    </div>
  </div>
  <footer>
    <p>🔒 All processing happens in your browser – no uploads, private and secure. Supports WebM video output with adjustable bitrate.</p>
    <p>© ImageToVideo Tool | Optimized for modern browsers (Chrome, Edge, Firefox)</p>
  </footer>
</div>

<script>
  // DOM elements
  const imageInput = document.getElementById('imageInput');
  const uploadArea = document.getElementById('uploadArea');
  const galleryDiv = document.getElementById('galleryContainer');
  const generateBtn = document.getElementById('generateBtn');
  const resolutionSelect = document.getElementById('resolutionSelect');
  const fpsSelect = document.getElementById('fpsSelect');
  const durationSlider = document.getElementById('durationSlider');
  const durationValue = document.getElementById('durationValue');
  const compressionSlider = document.getElementById('compressionSlider');
  const bitrateLabel = document.getElementById('bitrateLabel');
  const progressMsg = document.getElementById('progressMsg');
  const videoOutputArea = document.getElementById('videoOutputArea');
  const outputVideo = document.getElementById('outputVideo');
  const downloadLink = document.getElementById('downloadLink');
  const errorMsgDiv = document.getElementById('errorMsg');
  const resolutionLabel = document.getElementById('resolutionLabel');
  const fpsValueSpan = document.getElementById('fpsValue');

  let imageFiles = [];      // store File objects in order
  let imageElements = [];   // store preloaded HTMLImageElements for generation

  // Update UI for gallery
  function updateGallery() {
    if (imageFiles.length === 0) {
      galleryDiv.innerHTML = '<div class="empty-gallery">📭 No images selected. Upload images to start.</div>';
      generateBtn.disabled = true;
      return;
    }
    generateBtn.disabled = false;
    let html = '';
    imageFiles.forEach((file, idx) => {
      const url = URL.createObjectURL(file);
      html += `
        <div class="gallery-item" data-index="${idx}">
          <img src="${url}" alt="preview">
          <div class="remove-img" data-idx="${idx}">✕</div>
        </div>
      `;
    });
    galleryDiv.innerHTML = html;
    // attach remove events
    document.querySelectorAll('.remove-img').forEach(btn => {
      btn.addEventListener('click', (e) => {
        e.stopPropagation();
        const idx = parseInt(btn.getAttribute('data-idx'));
        removeImageAtIndex(idx);
      });
    });
    // revoke object URLs after rendering to avoid memory leaks (keep for preview but revoke later when removed)
    imageFiles.forEach((_, idx) => {
      const imgElement = galleryDiv.querySelector(`.gallery-item[data-index="${idx}"] img`);
      if (imgElement && imgElement.src) {
        // keep blob url but will revoke on remove or new upload
      }
    });
  }

  function removeImageAtIndex(idx) {
    // revoke object url to free memory
    const item = document.querySelector(`.gallery-item[data-index="${idx}"] img`);
    if (item && item.src) URL.revokeObjectURL(item.src);
    imageFiles.splice(idx, 1);
    updateGallery();
    // reset preloaded images
    imageElements = [];
  }

  // preload all images into Image objects for canvas drawing
  async function preloadImages() {
    imageElements = [];
    for (let file of imageFiles) {
      const img = new Image();
      const promise = new Promise((resolve, reject) => {
        img.onload = () => resolve(img);
        img.onerror = () => reject(new Error(`Failed to load ${file.name}`));
      });
      img.src = URL.createObjectURL(file);
      await promise;
      imageElements.push(img);
    }
    return true;
  }

  // map compression slider to video bitrate (approx)
  function getBitrateFromCompression(value) {
    // value 0..100 => low compres = high bitrate: max 2.8 Mbps, min 0.5 Mbps
    const maxBitrate = 2800; // kbps
    const minBitrate = 500;
    const bitrate = maxBitrate - (value / 100) * (maxBitrate - minBitrate);
    return Math.floor(bitrate);
  }

  function updateCompressionLabel() {
    const val = parseInt(compressionSlider.value);
    const bitrate = getBitrateFromCompression(val);
    let label = '';
    if (val <= 25) label = '🎬 High quality (low compression)';
    else if (val <= 60) label = '⚖️ Balanced (medium)';
    else label = '🗜️ High compression (small file)';
    bitrateLabel.innerText = `${label} ~${bitrate} kbps`;
  }

  // update displayed values
  durationSlider.addEventListener('input', () => {
    durationValue.innerText = `${parseFloat(durationSlider.value).toFixed(1)} s`;
  });
  resolutionSelect.addEventListener('change', () => {
    const [w, h] = resolutionSelect.value.split('x');
    resolutionLabel.innerText = `${w}x${h}`;
  });
  fpsSelect.addEventListener('change', () => {
    fpsValueSpan.innerText = fpsSelect.value;
  });
  compressionSlider.addEventListener('input', updateCompressionLabel);
  
  // initial calls
  durationSlider.dispatchEvent(new Event('input'));
  resolutionSelect.dispatchEvent(new Event('change'));
  updateCompressionLabel();

  // handle file upload
  uploadArea.addEventListener('click', () => imageInput.click());
  imageInput.addEventListener('change', (e) => {
    const files = Array.from(e.target.files);
    if (files.length === 0) return;
    // append new images (maintain order)
    for (let file of files) {
      if (file.type.startsWith('image/')) {
        imageFiles.push(file);
      } else {
        errorMsgDiv.innerText = 'Only image files (JPEG, PNG, WebP) are allowed.';
        errorMsgDiv.style.display = 'block';
        setTimeout(() => errorMsgDiv.style.display = 'none', 2000);
      }
    }
    updateGallery();
    imageInput.value = ''; // allow re-upload same files
    // reset video output
    videoOutputArea.style.display = 'none';
    errorMsgDiv.style.display = 'none';
    imageElements = [];
  });

  // drag and drop
  uploadArea.addEventListener('dragover', (e) => { e.preventDefault(); uploadArea.style.borderColor = '#3b82f6'; });
  uploadArea.addEventListener('dragleave', () => { uploadArea.style.borderColor = '#cbd5e1'; });
  uploadArea.addEventListener('drop', (e) => {
    e.preventDefault();
    uploadArea.style.borderColor = '#cbd5e1';
    const files = Array.from(e.dataTransfer.files);
    for (let file of files) {
      if (file.type.startsWith('image/')) imageFiles.push(file);
      else showTemporaryError('Only images allowed');
    }
    updateGallery();
  });

  function showTemporaryError(msg) {
    errorMsgDiv.innerText = msg;
    errorMsgDiv.style.display = 'block';
    setTimeout(() => errorMsgDiv.style.display = 'none', 2500);
  }

  // ---------- VIDEO GENERATION LOGIC (MediaRecorder + Canvas Stream) ----------
  async function generateVideo() {
    if (imageFiles.length === 0) {
      showTemporaryError('Please add at least one image.');
      return;
    }
    generateBtn.disabled = true;
    generateBtn.innerText = '⏳ Preloading images...';
    progressMsg.innerText = 'Loading images, please wait...';
    videoOutputArea.style.display = 'none';
    errorMsgDiv.style.display = 'none';
    
    try {
      await preloadImages();
      const durationPerImage = parseFloat(durationSlider.value);
      const fps = parseInt(fpsSelect.value);
      const [targetWidth, targetHeight] = resolutionSelect.value.split('x').map(Number);
      const compressionVal = parseInt(compressionSlider.value);
      const bitrateKbps = getBitrateFromCompression(compressionVal);
      const bitrateBps = bitrateKbps * 1000;
      
      // create canvas and stream
      const canvas = document.createElement('canvas');
      canvas.width = targetWidth;
      canvas.height = targetHeight;
      const ctx = canvas.getContext('2d');
      // fill background black
      ctx.fillStyle = '#000000';
      ctx.fillRect(0, 0, canvas.width, canvas.height);
      
      const stream = canvas.captureStream(fps);
      const mediaRecorder = new MediaRecorder(stream, {
        mimeType: 'video/webm; codecs=vp9',
        videoBitsPerSecond: bitrateBps
      });
      
      // fallback for codec support
      if (!MediaRecorder.isTypeSupported('video/webm; codecs=vp9')) {
        console.warn('VP9 not supported, falling back to default WebM');
        mediaRecorder = new MediaRecorder(stream, { videoBitsPerSecond: bitrateBps });
      }
      
      let chunks = [];
      mediaRecorder.ondataavailable = (e) => {
        if (e.data.size > 0) chunks.push(e.data);
      };
      
      const finishPromise = new Promise((resolve) => {
        mediaRecorder.onstop = () => {
          const blob = new Blob(chunks, { type: 'video/webm' });
          resolve(blob);
        };
      });
      
      // start recording
      mediaRecorder.start(100);
      generateBtn.innerText = '🎥 Generating video...';
      progressMsg.innerText = `Rendering ${imag<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover">
  <title>Image to Video Creator | Slideshow Maker with Quality Control</title>
  <meta name="description" content="Convert multiple images into a video slideshow. Adjust duration, resolution, FPS, and compression level. Client-side, fast, and privacy-friendly.">
  <meta name="keywords" content="image to video, slideshow maker, create video from images, video compressor, online video tool">
  <meta name="author" content="VideoSlideshow Tool">
  <meta name="robots" content="index, follow">
  <link rel="canonical" href="https://www.yourdomain.com/image-to-video">
  <!-- Open Graph -->
  <meta property="og:title" content="Image to Video Converter - Create Slideshows Instantly">
  <meta property="og:description" content="Turn your photos into videos with custom duration, resolution, and bitrate. Free and no uploads.">
  <meta property="og:type" content="website">
  <meta property="og:image" content="https://via.placeholder.com/1200x630?text=Image+To+Video">
  <meta name="twitter:card" content="summary_large_image">
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Segoe UI', Roboto, 'Helvetica Neue', sans-serif;
      background: #f4f7fc;
      color: #1e293b;
      line-height: 1.5;
      padding: 24px 20px;
    }

    .container {
      max-width: 1400px;
      margin: 0 auto;
    }

    /* header */
    .header {
      text-align: center;
      margin-bottom: 28px;
    }
    h1 {
      font-size: 1.9rem;
      font-weight: 700;
      background: linear-gradient(135deg, #0f2b3d, #1b4f72);
      background-clip: text;
      -webkit-background-clip: text;
      color: transparent;
    }
    .sub {
      color: #2c3e50;
      margin-top: 8px;
      font-size: 1rem;
    }

    /* ad containers */
    .ad-top {
      background: #ffffffdd;
      backdrop-filter: blur(2px);
      border-radius: 24px;
      padding: 12px 16px;
      margin-bottom: 32px;
      text-align: center;
      border: 1px solid #e0e7ef;
      min-height: 110px;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
    }
    .ad-label {
      font-size: 0.7rem;
      color: #7f8c8d;
      margin-bottom: 6px;
      letter-spacing: 1px;
    }
    .ad-slot-placeholder {
      background: #f1f5f9;
      border-radius: 16px;
      padding: 8px;
      width: 100%;
      text-align: center;
      font-size: 0.8rem;
      color: #4a627a;
    }

    /* two column layout */
    .two-col {
      display: grid;
      grid-template-columns: 1fr 300px;
      gap: 32px;
      margin-bottom: 40px;
    }

    /* main card */
    .tool-card {
      background: white;
      border-radius: 32px;
      box-shadow: 0 20px 35px -12px rgba(0,0,0,0.08);
      padding: 28px 24px;
      border: 1px solid #eef2ff;
    }

    /* upload section */
    .upload-area {
      background: #f8fafc;
      border: 2px dashed #cbd5e1;
      border-radius: 24px;
      padding: 28px 20px;
      text-align: center;
      cursor: pointer;
      transition: 0.2s;
      margin-bottom: 24px;
    }
    .upload-area:hover {
      border-color: #3b82f6;
      background: #f0f4fe;
    }
    .file-input {
      display: none;
    }
    .upload-icon {
      font-size: 2.5rem;
      margin-bottom: 8px;
    }

    /* images preview gallery */
    .gallery {
      display: flex;
      flex-wrap: wrap;
      gap: 14px;
      margin: 20px 0 24px;
      max-height: 260px;
      overflow-y: auto;
      padding: 8px 4px;
      background: #fefefe;
      border-radius: 20px;
    }
    .gallery-item {
      position: relative;
      width: 100px;
      height: 100px;
      border-radius: 16px;
      overflow: hidden;
      box-shadow: 0 4px 10px rgba(0,0,0,0.05);
      border: 1px solid #e2e8f0;
      background: #fff;
    }
    .gallery-item img {
      width: 100%;
      height: 100%;
      object-fit: cover;
    }
    .remove-img {
      position: absolute;
      top: 4px;
      right: 4px;
      background: rgba(0,0,0,0.6);
      color: white;
      border-radius: 30px;
      width: 22px;
      height: 22px;
      font-size: 14px;
      text-align: center;
      line-height: 20px;
      cursor: pointer;
      font-weight: bold;
    }
    .empty-gallery {
      font-size: 0.85rem;
      color: #94a3b8;
      padding: 16px;
      text-align: center;
    }

    /* controls grid */
    .settings-grid {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
      gap: 20px;
      margin: 20px 0 24px;
    }
    .control-group {
      display: flex;
      flex-direction: column;
      gap: 8px;
    }
    .control-group label {
      font-weight: 600;
      font-size: 0.85rem;
      display: flex;
      justify-content: space-between;
    }
    select, input[type="range"] {
      padding: 10px 12px;
      border-radius: 40px;
      border: 1px solid #cbd5e1;
      background: white;
    }
    .value-badge {
      background: #eef2ff;
      padding: 2px 10px;
      border-radius: 40px;
      font-size: 0.75rem;
    }
    button {
      background: #1e3a5f;
      color: white;
      border: none;
      padding: 14px 18px;
      border-radius: 60px;
      font-weight: 700;
      font-size: 1rem;
      cursor: pointer;
      transition: 0.2s;
      width: 100%;
      margin-top: 12px;
    }
    button:hover:not(:disabled) {
      background: #0f2c44;
      transform: scale(0.98);
    }
    button:disabled {
      background: #b9c8e0;
      cursor: not-allowed;
    }
    .video-preview {
      margin-top: 28px;
      background: #f1f5f9;
      border-radius: 28px;
      padding: 16px;
      text-align: center;
    }
    video {
      max-width: 100%;
      border-radius: 20px;
      background: #000;
      max-height: 280px;
    }
    .download-link {
      display: inline-block;
      margin-top: 14px;
      background: #2c6e2f;
      padding: 10px 24px;
      border-radius: 40px;
      color: white;
      text-decoration: none;
      font-weight: 600;
    }
    .progress-text {
      font-size: 0.85rem;
      margin-top: 12px;
      color: #2c5282;
    }
    /* sidebar ad */
    .sidebar-ad {
      background: white;
      border-radius: 28px;
      padding: 20px 16px;
      text-align: center;
      border: 1px solid #e2e8f0;
      height: fit-content;
      position: sticky;
      top: 20px;
    }
    footer {
      text-align: center;
      margin-top: 40px;
      font-size: 0.75rem;
      color: #6c7a91;
      border-top: 1px solid #e2e8f0;
      padding-top: 24px;
    }
    @media (max-width: 780px) {
      .two-col { grid-template-columns: 1fr; }
      .sidebar-ad { position: static; margin-top: 20px; }
      body { padding: 16px; }
    }
    .warning {
      color: #c2410c;
      background: #fff1e6;
      padding: 8px;
      border-radius: 24px;
      margin: 12px 0;
      font-size: 0.8rem;
    }
  </style>
</head>
<body>
<div class="container">
  <div class="header">
    <h1>🎬 Image to Video Studio</h1>
    <div class="sub">Create custom slideshows · Adjust FPS · Duration · Compression (Bitrate)</div>
  </div>

  <!-- TOP AD SPACE (Google AdSense ready) -->
  <div class="ad-top">
    <div class="ad-label">Advertisement</div>
    <!-- Replace with your AdSense ad unit code. Example ins tag with data-ad-client and data-ad-slot -->
    <div class="ad-slot-placeholder" id="topAdPlaceholder">
      🔹 Ad Space - Insert AdSense Code Here 🔹<br>
      &lt;ins data-ad-client="ca-pub-XXXXXXXXXXXX" data-ad-slot="1234567890"&gt;&lt;/ins&gt;
    </div>
    <!-- For actual AdSense, replace the above div with standard ins block. -->
  </div>

  <div class="two-col">
    <!-- MAIN TOOL CARD -->
    <div class="tool-card">
      <div class="upload-area" id="uploadArea">
        <div class="upload-icon">🖼️📸</div>
        <p>Click or drag & drop images (JPEG, PNG, WebP)</p>
        <input type="file" id="imageInput" multiple accept="image/jpeg,image/png,image/webp,image/jpg" class="file-input">
        <p style="font-size:0.7rem; margin-top:8px;">Select images in order (they will appear in slideshow sequence)</p>
      </div>

      <!-- Gallery preview -->
      <div id="galleryContainer" class="gallery">
        <div class="empty-gallery">No images selected yet. Upload images to build slideshow.</div>
      </div>

      <!-- Settings -->
      <div class="settings-grid">
        <div class="control-group">
          <label>📐 Resolution <span id="resolutionLabel" class="value-badge">854x480</span></label>
          <select id="resolutionSelect">
            <option value="640x360">640x360 (SD)</option>
            <option value="854x480" selected>854x480 (480p)</option>
            <option value="1280x720">1280x720 (HD Ready)</option>
          </select>
        </div>
        <div class="control-group">
          <label>🎞️ Frames per second <span id="fpsValue" class="value-badge">24</span></label>
          <select id="fpsSelect">
            <option value="15">15 fps</option>
            <option value="24" selected>24 fps (film)</option>
            <option value="30">30 fps</option>
          </select>
        </div>
        <div class="control-group">
          <label>⏱️ Duration per image (sec) <span id="durationValue" class="value-badge">2.0 s</span></label>
          <input type="range" id="durationSlider" min="0.8" max="5.0" step="0.1" value="2.0">
        </div>
        <div class="control-group">
          <label>🗜️ Compression / Quality <span id="bitrateLabel" class="value-badge">Medium (1.2 Mbps)</span></label>
          <input type="range" id="compressionSlider" min="0" max="100" value="50">
          <div style="display: flex; justify-content: space-between; font-size:0.7rem;"><span>High compression (small file)</span><span>Low compression (best quality)</span></div>
        </div>
      </div>

      <button id="generateBtn" disabled>📹 Generate Video Slideshow</button>
      <div id="progressMsg" class="progress-text"></div>

      <!-- Output video preview -->
      <div id="videoOutputArea" class="video-preview" style="display: none;">
        <video id="outputVideo" controls playsinline></video><br>
        <a id="downloadLink" class="download-link" download="slideshow.webm">⬇️ Download Video (WebM)</a>
      </div>
      <div id="errorMsg" class="warning" style="display: none;"></div>
    </div>

    <!-- SIDEBAR AD SPACE -->
    <div class="sidebar-ad">
      <div class="ad-label">Sponsor</div>
      <div class="ad-slot-placeholder" style="min-height: 250px; display: flex; align-items: center; justify-content: center; flex-direction: column;">
        🔹 AdSense Sidebar Unit 🔹<br>
        &lt;ins data-ad-client="ca-pub-XXXX" data-ad-slot="987654321"&gt;&lt;/ins&gt;<br>
        <small style="margin-top:12px;">Replace with your ad code</small>
      </div>
      <hr style="margin: 18px 0; border-color:#eef2ff;">
      <div style="font-size:0.75rem;">💡 Tip: Higher FPS & duration = smoother but larger file.</div>
    </div>
  </div>
  <footer>
    <p>🔒 All processing happens in your browser – no uploads, private and secure. Supports WebM video output with adjustable bitrate.</p>
    <p>© ImageToVideo Tool | Optimized for modern browsers (Chrome, Edge, Firefox)</p>
  </footer>
</div>

<script>
  // DOM elements
  const imageInput = document.getElementById('imageInput');
  const uploadArea = document.getElementById('uploadArea');
  const galleryDiv = document.getElementById('galleryContainer');
  const generateBtn = document.getElementById('generateBtn');
  const resolutionSelect = document.getElementById('resolutionSelect');
  const fpsSelect = document.getElementById('fpsSelect');
  const durationSlider = document.getElementById('durationSlider');
  const durationValue = document.getElementById('durationValue');
  const compressionSlider = document.getElementById('compressionSlider');
  const bitrateLabel = document.getElementById('bitrateLabel');
  const progressMsg = document.getElementById('progressMsg');
  const videoOutputArea = document.getElementById('videoOutputArea');
  const outputVideo = document.getElementById('outputVideo');
  const downloadLink = document.getElementById('downloadLink');
  const errorMsgDiv = document.getElementById('errorMsg');
  const resolutionLabel = document.getElementById('resolutionLabel');
  const fpsValueSpan = document.getElementById('fpsValue');

  let imageFiles = [];      // store File objects in order
  let imageElements = [];   // store preloaded HTMLImageElements for generation

  // Update UI for gallery
  function updateGallery() {
    if (imageFiles.length === 0) {
      galleryDiv.innerHTML = '<div class="empty-gallery">📭 No images selected. Upload images to start.</div>';
      generateBtn.disabled = true;
      return;
    }
    generateBtn.disabled = false;
    let html = '';
    imageFiles.forEach((file, idx) => {
      const url = URL.createObjectURL(file);
      html += `
        <div class="gallery-item" data-index="${idx}">
          <img src="${url}" alt="preview">
          <div class="remove-img" data-idx="${idx}">✕</div>
        </div>
      `;
    });
    galleryDiv.innerHTML = html;
    // attach remove events
    document.querySelectorAll('.remove-img').forEach(btn => {
      btn.addEventListener('click', (e) => {
        e.stopPropagation();
        const idx = parseInt(btn.getAttribute('data-idx'));
        removeImageAtIndex(idx);
      });
    });
    // revoke object URLs after rendering to avoid memory leaks (keep for preview but revoke later when removed)
    imageFiles.forEach((_, idx) => {
      const imgElement = galleryDiv.querySelector(`.gallery-item[data-index="${idx}"] img`);
      if (imgElement && imgElement.src) {
        // keep blob url but will revoke on remove or new upload
      }
    });
  }

  function removeImageAtIndex(idx) {
    // revoke object url to free memory
    const item = document.querySelector(`.gallery-item[data-index="${idx}"] img`);
    if (item && item.src) URL.revokeObjectURL(item.src);
    imageFiles.splice(idx, 1);
    updateGallery();
    // reset preloaded images
    imageElements = [];
  }

  // preload all images into Image objects for canvas drawing
  async function preloadImages() {
    imageElements = [];
    for (let file of imageFiles) {
      const img = new Image();
      const promise = new Promise((resolve, reject) => {
        img.onload = () => resolve(img);
        img.onerror = () => reject(new Error(`Failed to load ${file.name}`));
      });
      img.src = URL.createObjectURL(file);
      await promise;
      imageElements.push(img);
    }
    return true;
  }

  // map compression slider to video bitrate (approx)
  function getBitrateFromCompression(value) {
    // value 0..100 => low compres = high bitrate: max 2.8 Mbps, min 0.5 Mbps
    const maxBitrate = 2800; // kbps
    const minBitrate = 500;
    const bitrate = maxBitrate - (value / 100) * (maxBitrate - minBitrate);
    return Math.floor(bitrate);
  }

  function updateCompressionLabel() {
    const val = parseInt(compressionSlider.value);
    const bitrate = getBitrateFromCompression(val);
    let label = '';
    if (val <= 25) label = '🎬 High quality (low compression)';
    else if (val <= 60) label = '⚖️ Balanced (medium)';
    else label = '🗜️ High compression (small file)';
    bitrateLabel.innerText = `${label} ~${bitrate} kbps`;
  }

  // update displayed values
  durationSlider.addEventListener('input', () => {
    durationValue.innerText = `${parseFloat(durationSlider.value).toFixed(1)} s`;
  });
  resolutionSelect.addEventListener('change', () => {
    const [w, h] = resolutionSelect.value.split('x');
    resolutionLabel.innerText = `${w}x${h}`;
  });
  fpsSelect.addEventListener('change', () => {
    fpsValueSpan.innerText = fpsSelect.value;
  });
  compressionSlider.addEventListener('input', updateCompressionLabel);
  
  // initial calls
  durationSlider.dispatchEvent(new Event('input'));
  resolutionSelect.dispatchEvent(new Event('change'));
  updateCompressionLabel();

  // handle file upload
  uploadArea.addEventListener('click', () => imageInput.click());
  imageInput.addEventListener('change', (e) => {
    const files = Array.from(e.target.files);
    if (files.length === 0) return;
    // append new images (maintain order)
    for (let file of files) {
      if (file.type.startsWith('image/')) {
        imageFiles.push(file);
      } else {
        errorMsgDiv.innerText = 'Only image files (JPEG, PNG, WebP) are allowed.';
        errorMsgDiv.style.display = 'block';
        setTimeout(() => errorMsgDiv.style.display = 'none', 2000);
      }
    }
    updateGallery();
    imageInput.value = ''; // allow re-upload same files
    // reset video output
    videoOutputArea.style.display = 'none';
    errorMsgDiv.style.display = 'none';
    imageElements = [];
  });

  // drag and drop
  uploadArea.addEventListener('dragover', (e) => { e.preventDefault(); uploadArea.style.borderColor = '#3b82f6'; });
  uploadArea.addEventListener('dragleave', () => { uploadArea.style.borderColor = '#cbd5e1'; });
  uploadArea.addEventListener('drop', (e) => {
    e.preventDefault();
    uploadArea.style.borderColor = '#cbd5e1';
    const files = Array.from(e.dataTransfer.files);
    for (let file of files) {
      if (file.type.startsWith('image/')) imageFiles.push(file);
      else showTemporaryError('Only images allowed');
    }
    updateGallery();
  });

  function showTemporaryError(msg) {
    errorMsgDiv.innerText = msg;
    errorMsgDiv.style.display = 'block';
    setTimeout(() => errorMsgDiv.style.display = 'none', 2500);
  }

  // ---------- VIDEO GENERATION LOGIC (MediaRecorder + Canvas Stream) ----------
  async function generateVideo() {
    if (imageFiles.length === 0) {
      showTemporaryError('Please add at least one image.');
      return;
    }
    generateBtn.disabled = true;
    generateBtn.innerText = '⏳ Preloading images...';
    progressMsg.innerText = 'Loading images, please wait...';
    videoOutputArea.style.display = 'none';
    errorMsgDiv.style.display = 'none';
    
    try {
      await preloadImages();
      const durationPerImage = parseFloat(durationSlider.value);
      const fps = parseInt(fpsSelect.value);
      const [targetWidth, targetHeight] = resolutionSelect.value.split('x').map(Number);
      const compressionVal = parseInt(compressionSlider.value);
      const bitrateKbps = getBitrateFromCompression(compressionVal);
      const bitrateBps = bitrateKbps * 1000;
      
      // create canvas and stream
      const canvas = document.createElement('canvas');
      canvas.width = targetWidth;
      canvas.height = targetHeight;
      const ctx = canvas.getContext('2d');
      // fill background black
      ctx.fillStyle = '#000000';
      ctx.fillRect(0, 0, canvas.width, canvas.height);
      
      const stream = canvas.captureStream(fps);
      const mediaRecorder = new MediaRecorder(stream, {
        mimeType: 'video/webm; codecs=vp9',
        videoBitsPerSecond: bitrateBps
      });
      
      // fallback for codec support
      if (!MediaRecorder.isTypeSupported('video/webm; codecs=vp9')) {
        console.warn('VP9 not supported, falling back to default WebM');
        mediaRecorder = new MediaRecorder(stream, { videoBitsPerSecond: bitrateBps });
      }
      
      let chunks = [];
      mediaRecorder.ondataavailable = (e) => {
        if (e.data.size > 0) chunks.push(e.data);
      };
      
      const finishPromise = new Promise((resolve) => {
        mediaRecorder.onstop = () => {
          const blob = new Blob(chunks, { type: 'video/webm' });
          resolve(blob);
        };
      });
      
      // start recording
      mediaRecorder.start(100);
      generateBtn.innerText = '🎥 Generating video...';
      progressMsg.innerText = `Rendering ${imag
