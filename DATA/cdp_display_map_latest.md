# CDP ↔ Fork ↔ display map — 2026-10-05 17:10:56 CEST

**Formula:** `CDP_port = 9222 + N for display :N / chrome-profile/Fork-N (observed)`

| CDP | Display | Fork | Profile | Chrome PID | Agent | Playwright |
|-----|---------|------|---------|------------|-------|------------|
| 9224 | :2 | Fork-2 | `/home/box/chrome-profile/Fork-2` | 28187 | VOMEGA-MASTER | yes [82851] |
| 9225 | :3 | Fork-3 | `/home/box/chrome-profile/Fork-3` | 77071 | TELEMETRY-MASTER | no |
| 9226 | :4 | Fork-4 | `/home/box/chrome-profile/Fork-4` | 122685 | AUTH-MASTER | yes [123176] |
| 9227 | :5 | Fork-5 | `/home/box/chrome-profile/Fork-5` | 103760 | Daintree Master | yes [104112] |

## Xvfb

- :1 pid=562
- :2 pid=17214
- :3 pid=71765
- :4 pid=95767
- :5 pid=99636
- :6 pid=105714
- :7 pid=150461

## Disk forks

- Fork-2: `/home/box/chrome-profile/Fork-2`
- Fork-3: `/home/box/chrome-profile/Fork-3`
- Fork-4: `/home/box/chrome-profile/Fork-4`
- Fork-5: `/home/box/chrome-profile/Fork-5`
