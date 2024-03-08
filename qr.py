import qrcode

def generate_qr_code(text):
    qr = qrcode.QRCode(
        version=1,
        error_correction=qrcode.constants.ERROR_CORRECT_L,
        box_size=10,
        border=4,
    )
    qr.add_data(text)
    qr.make(fit=True)

    qr_code_img = qr.make_image(fill_color="black", back_color="white")

    return qr_code_img

if __name__ == "__main__":
    text = input("Enter text to encode in QR-code: ")
    qr_code_img = generate_qr_code(text)
    qr_code_img.show()
