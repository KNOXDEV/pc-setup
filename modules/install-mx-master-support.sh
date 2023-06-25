sudo apt install -y logiops

sudo tee /etc/logid.cfg > /dev/null <<'EOF'
devices: (
{
    name: "Wireless Mouse MX Master 2S";
    smartshift:
    {
        on: true;
        threshold: 30;
    };
    dpi: 1000;
    hiresscroll: { hires: true; invert: false; target: false; };

    buttons: (
        {
            cid: 0xc3;
            action =
            {
                type: "Gestures";
                gestures: (
                    {
                        direction: "Left";
                        mode: "OnRelease";
                        action =
                        {
                            type: "Keypress";
                            keys: ["KEY_LEFTMETA", "KEY_PAGEUP"];
                        };
                    },
                    {
                        direction: "Right";
                        mode: "OnRelease";
                        action =
                        {
                            type: "Keypress";
                            keys: ["KEY_LEFTMETA", "KEY_PAGEDOWN"];
                        };
                    },
                    {
                        direction: "None";
                        mode: "OnRelease";
                        action =
                        {
                            type: "Keypress";
                            keys: ["KEY_LEFTMETA"]
                        };

                    }
                );
            };
        }
    );
}
);
EOF

sudo systemctl enable --now logid