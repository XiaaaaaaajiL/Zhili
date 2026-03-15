"""
智历 - AI智能简历诊断助手（桌面版）
双击 启动智历.bat 即可运行
"""
import webview
import os
import sys

def get_html_path():
    if getattr(sys, 'frozen', False):
        base = sys._MEIPASS
    else:
        base = os.path.dirname(os.path.abspath(__file__))
    return os.path.join(base, 'index.html')

if __name__ == '__main__':
    html_path = get_html_path()

    if not os.path.exists(html_path):
        print(f"错误：找不到 index.html 文件，请确保它和本脚本在同一目录下")
        input("按回车键退出...")
        sys.exit(1)

    window = webview.create_window(
        title='智历 - AI智能简历诊断助手',
        url=html_path,
        width=1000,
        height=750,
        min_size=(800, 600),
        resizable=True,
        text_select=True,
    )

    webview.start(debug=False)
