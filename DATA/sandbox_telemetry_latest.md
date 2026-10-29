# sandbox_telemetry_parse — 2026-10-29 17:08:29 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=496863 lines=1328
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 993 |
| `chrome_profile_sample` | 197 |
| `egress_tunnel_connect` | 65 |
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
| `chromeBrowserPssKb` | {'int': 993} |
| `chromeGpuPssKb` | {'int': 993} |
| `chromeOtherPssKb` | {'int': 993} |
| `chromeProcesses` | {'int': 993} |
| `chromeProfiles` | {'int': 993} |
| `chromeRendererMaxPssKb` | {'int': 993} |
| `chromeRendererPssKb` | {'int': 993} |
| `chromeRenderers` | {'int': 993} |
| `chromeTabs` | {'int': 993} |
| `chromeTabsProbedProfiles` | {'int': 993} |
| `chromeUtilityPssKb` | {'int': 993} |
| `desktopPssKb` | {'int': 993} |
| `hostPssKb` | {'int': 993} |
| `kind` | {'str': 993} |
| `memAvailableKb` | {'int': 993} |
| `memTotalKb` | {'int': 993} |
| `otherPssKb` | {'int': 993} |
| `processes` | {'int': 993} |
| `pssFallbackProcesses` | {'int': 993} |

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
| `cpuMillicores` | {'int': 193} |
| `display` | {'int': 197} |
| `kind` | {'str': 197} |
| `processes` | {'int': 197} |
| `pssKb` | {'int': 197} |
| `rendererMaxPssKb` | {'int': 197} |
| `renderers` | {'int': 197} |
| `tabs` | {'int': 197} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 65} |
| `failClosed` | {'bool': 65} |
| `kind` | {'str': 65} |
| `route` | {'str': 65} |
| `strict` | {'bool': 65} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
