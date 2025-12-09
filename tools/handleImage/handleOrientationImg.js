function handleImageRotation(file) {
    return new Promise((resolve) => {
        const reader = new FileReader();
        reader.onload = function (e) {
            const img = new Image();
            img.onload = function () {
                EXIF.getData(img, function () {
                    const orientation = EXIF.getTag(this, "Orientation") || 1;
                    const canvas = document.createElement("canvas");
                    const ctx = canvas.getContext("2d");
                    let width = img.width;
                    let height = img.height;

                    if (orientation > 4 && orientation < 9) {
                        canvas.width = height;
                        canvas.height = width;
                    } else {
                        canvas.width = width;
                        canvas.height = height;
                    }

                    switch (orientation) {
                        case 2:
                            ctx.transform(-1, 0, 0, 1, width, 0);
                            break;
                        case 3:
                            ctx.transform(-1, 0, 0, -1, width, height);
                            break;
                        case 4:
                            ctx.transform(1, 0, 0, -1, 0, height);
                            break;
                        case 5:
                            ctx.transform(0, 1, 1, 0, 0, 0);
                            break;
                        case 6:
                            ctx.transform(0, 1, -1, 0, height, 0);
                            break;
                        case 7:
                            ctx.transform(0, -1, -1, 0, height, width);
                            break;
                        case 8:
                            ctx.transform(0, -1, 1, 0, 0, width);
                            break;
                        default:
                            break;
                    }

                    ctx.drawImage(img, 0, 0);

                    canvas.toBlob(function (blob) {
                        resolve({ name: file.name, blob });
                    }, file.type);
                });
            };
            img.src = e.target.result;
        };
        reader.readAsDataURL(file);
    });
}

document.getElementById("fileInput").addEventListener("change", async function (e) {
    const files = Array.from(e.target.files);
    const zip = new JSZip();

    // Xử lý từng ảnh
    for (const file of files) {
        const { name, blob } = await handleImageRotation(file);
        zip.file(name, blob);
    }

    // Xuất file zip
    const zipBlob = await zip.generateAsync({ type: "blob" });
    const url = URL.createObjectURL(zipBlob);

    const a = document.createElement("a");
    a.href = url;
    a.download = "images.zip";
    a.click();
    URL.revokeObjectURL(url);
});
