@echo off
title NUC8-macOS ���߰�װU��-��������

:MAINMENU
cls
color F2
echo          �X�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�[
echo          �U           macOS ���߰�װU��-��������           �U
echo          �U                         2020-03-11 by ά��-����U
echo          �U                                                �U
echo          �U     ������������Ӵ��macOS��װ��...           �U
echo          �U                   ��������׹������߰�װ...    �U
echo          �U                                                �U
echo          �U  ʹ��˵����                                    �U
echo          �U   1��׼��Fat32��ʽ��U�̣�ʣ��ռ����500MB     �U
echo          �U   2���� macOS-online-installer.zip��EFI-OC-    �U
echo          �U      xxxxxx.zip ������U�̸�Ŀ¼���ֱ��ѹ      �U
echo          �U   3������NUC8_MacOnlineInstaller�е�run-win.bat�U
echo          �U   4��������ʾ������ɺ󣬽�U�̲���NUC          �U
echo          �U   5��NUC��������סcommand/win���������㰴R��   �U
echo          �U   6��Cmd+R�ἤ��Recoveryģʽ���������밲װ     �U
echo          �U   7��������װ���̣���ο��ҵ�ͼ�Ľ̳�          �U
echo          �U                                                �U
echo          �U  �����˽���� NUC8ixBE ����Ͽ�Ȱ�װ��ƻ��֪ʶ���U
echo          �U          ������ҵ�����   http://u.nu/nuc8     �U
echo          �U                                                �U
echo          �U   ��ӭ���� Intel NUC Community QȺ��1071610369 �U
echo          �^�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�T�a                      

echo "��Ҫ������Լ500MB��Recovery���񣬱�����֧�����°汾��macOS��װ"
echo "1��macOS Catalina - 10.15.x"
echo "2��macOS Mojave   - 10.14.6"
set /p num=�������Ӧ����ѡ��汾��

if exist ..\com.apple.recovery.boot (
   rmdir /s/q ..\com.apple.recovery.boot
)
mkdir ..\com.apple.recovery.boot
echo macOS Boot From Recovery > ..\com.apple.recovery.boot\.contentDetails
echo ��ʼ���أ���ȴ�...
if "%num%"=="2" (
   python\python.exe python/macrecovery3.pyc -b Mac-7BA5B2DFE22DDD8C -m 00000000000KXPG00 -o ../com.apple.recovery.boot download
) else (
   python\python.exe python/macrecovery3.pyc -o ../com.apple.recovery.boot download
)
echo ���߰�װU��������ɣ���������˳�... & pause & exit
