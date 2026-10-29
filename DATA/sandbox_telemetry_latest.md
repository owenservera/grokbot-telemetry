# sandbox_telemetry_parse — 2026-10-29 14:58:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=434230 lines=1137
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 877 |
| `chrome_profile_sample` | 158 |
| `egress_tunnel_connect` | 47 |
| `egress_tunnel_desktop` | 42 |
| `boot_stage` | 3 |
| `chrome_launch` | 3 |
| `egress_time_zone` | 3 |
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
| `chromeBrowserPssKb` | {'int': 877} |
| `chromeGpuPssKb` | {'int': 877} |
| `chromeOtherPssKb` | {'int': 877} |
| `chromeProcesses` | {'int': 877} |
| `chromeProfiles` | {'int': 877} |
| `chromeRendererMaxPssKb` | {'int': 877} |
| `chromeRendererPssKb` | {'int': 877} |
| `chromeRenderers` | {'int': 877} |
| `chromeTabs` | {'int': 877} |
| `chromeTabsProbedProfiles` | {'int': 877} |
| `chromeUtilityPssKb` | {'int': 877} |
| `desktopPssKb` | {'int': 877} |
| `hostPssKb` | {'int': 877} |
| `kind` | {'str': 877} |
| `memAvailableKb` | {'int': 877} |
| `memTotalKb` | {'int': 877} |
| `otherPssKb` | {'int': 877} |
| `processes` | {'int': 877} |
| `pssFallbackProcesses` | {'int': 877} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 42} |
| `graceS` | {'int': 23} |
| `kind` | {'str': 42} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 3} |
| `display` | {'int': 3} |
| `durationMs` | {'int': 3} |
| `kind` | {'str': 3} |
| `launcher` | {'int': 3} |
| `launcherSource` | {'str': 3} |
| `mode` | {'str': 3} |
| `outcome` | {'str': 3} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 3} |
| `kind` | {'str': 3} |
| `outcome` | {'str': 3} |
| `provider` | {'str': 3} |
| `source` | {'str': 3} |

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
| `cpuMillicores` | {'int': 155} |
| `display` | {'int': 158} |
| `kind` | {'str': 158} |
| `processes` | {'int': 158} |
| `pssKb` | {'int': 158} |
| `rendererMaxPssKb` | {'int': 158} |
| `renderers` | {'int': 158} |
| `tabs` | {'int': 158} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 47} |
| `failClosed` | {'bool': 47} |
| `kind` | {'str': 47} |
| `route` | {'str': 47} |
| `strict` | {'bool': 47} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
