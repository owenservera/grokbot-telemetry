# sandbox_telemetry_parse — 2026-10-29 17:03:39 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=494022 lines=1317
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 989 |
| `chrome_profile_sample` | 193 |
| `egress_tunnel_connect` | 62 |
| `egress_tunnel_desktop` | 58 |
| `chrome_launch` | 4 |
| `egress_time_zone` | 4 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |

## schema (key → value types) by kind

### `boot_stage`

| key | types |
|-----|-------|
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `stage` | {'str': 3} |

### `egress_tunnel`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |

### `host_boot_fetch`

| key | types |
|-----|-------|
| `durationMs` | {'int': 1} |
| `fromVersion` | {'str': 1} |
| `kind` | {'str': 1} |
| `outcome` | {'str': 1} |
| `reason` | {'str': 1} |
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 989} |
| `chromeGpuPssKb` | {'int': 989} |
| `chromeOtherPssKb` | {'int': 989} |
| `chromeProcesses` | {'int': 989} |
| `chromeProfiles` | {'int': 989} |
| `chromeRendererMaxPssKb` | {'int': 989} |
| `chromeRendererPssKb` | {'int': 989} |
| `chromeRenderers` | {'int': 989} |
| `chromeTabs` | {'int': 989} |
| `chromeTabsProbedProfiles` | {'int': 989} |
| `chromeUtilityPssKb` | {'int': 989} |
| `desktopPssKb` | {'int': 989} |
| `hostPssKb` | {'int': 989} |
| `kind` | {'str': 989} |
| `memAvailableKb` | {'int': 989} |
| `memTotalKb` | {'int': 989} |
| `otherPssKb` | {'int': 989} |
| `processes` | {'int': 989} |
| `pssFallbackProcesses` | {'int': 989} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 58} |
| `graceS` | {'int': 32} |
| `kind` | {'str': 58} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 4} |
| `display` | {'int': 4} |
| `durationMs` | {'int': 4} |
| `kind` | {'str': 4} |
| `launcher` | {'int': 4} |
| `launcherSource` | {'str': 4} |
| `mode` | {'str': 4} |
| `outcome` | {'str': 4} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 4} |
| `kind` | {'str': 4} |
| `outcome` | {'str': 4} |
| `provider` | {'str': 4} |
| `source` | {'str': 4} |

### `cookie_persist`

| key | types |
|-----|-------|
| `attempts` | {'int': 1} |
| `injected` | {'int': 1} |
| `kind` | {'str': 2} |
| `missingAfter` | {'int': 1} |
| `outcome` | {'str': 2} |
| `phase` | {'str': 2} |
| `seedCookies` | {'int': 2} **REDACT values** |

### `chrome_profile_sample`

| key | types |
|-----|-------|
| `cpuMillicores` | {'int': 189} |
| `display` | {'int': 193} |
| `kind` | {'str': 193} |
| `processes` | {'int': 193} |
| `pssKb` | {'int': 193} |
| `rendererMaxPssKb` | {'int': 193} |
| `renderers` | {'int': 193} |
| `tabs` | {'int': 193} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 62} |
| `failClosed` | {'bool': 62} |
| `kind` | {'str': 62} |
| `route` | {'str': 62} |
| `strict` | {'bool': 62} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
