"""Generate a simple app icon (icon.ico) for ZhiLi"""
try:
    from PIL import Image, ImageDraw, ImageFont
except ImportError:
    import subprocess, sys
    subprocess.check_call([sys.executable, "-m", "pip", "install", "Pillow", "-q"])
    from PIL import Image, ImageDraw, ImageFont

sizes = [16, 32, 48, 64, 128, 256]
images = []

for size in sizes:
    img = Image.new("RGBA", (size, size), (0, 0, 0, 0))
    draw = ImageDraw.Draw(img)
    
    # Background circle with gradient effect
    padding = max(1, size // 16)
    draw.ellipse([padding, padding, size-padding-1, size-padding-1], fill=(79, 95, 255))
    
    # Inner circle
    inner = max(2, size // 6)
    draw.ellipse([inner, inner, size-inner-1, size-inner-1], fill=(60, 75, 230))
    
    # Draw "Z" letter
    try:
        font_size = int(size * 0.5)
        font = ImageFont.truetype("arial.ttf", font_size)
    except:
        try:
            font = ImageFont.truetype("/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf", font_size)
        except:
            font = ImageFont.load_default()
    
    bbox = draw.textbbox((0, 0), "Z", font=font)
    tw, th = bbox[2] - bbox[0], bbox[3] - bbox[1]
    tx = (size - tw) // 2 - bbox[0]
    ty = (size - th) // 2 - bbox[1]
    draw.text((tx, ty), "Z", fill=(255, 255, 255), font=font)
    
    images.append(img)

# Save as ICO
images[-1].save("icon.ico", format="ICO", sizes=[(s, s) for s in sizes], append_images=images[:-1])
print("icon.ico created successfully!")
