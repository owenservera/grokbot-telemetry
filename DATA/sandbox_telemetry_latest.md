# sandbox_telemetry_parse — 2026-10-29 13:53:19 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=396620 lines=1011
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 816 |
| `chrome_profile_sample` | 113 |
| `egress_tunnel_connect` | 38 |
| `egress_tunnel_desktop` | 33 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
| `egress_time_zone` | 2 |
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
| `chromeBrowserPssKb` | {'int': 816} |
| `chromeGpuPssKb` | {'int': 816} |
| `chromeOtherPssKb` | {'int': 816} |
| `chromeProcesses` | {'int': 816} |
| `chromeProfiles` | {'int': 816} |
| `chromeRendererMaxPssKb` | {'int': 816} |
| `chromeRendererPssKb` | {'int': 816} |
| `chromeRenderers` | {'int': 816} |
| `chromeTabs` | {'int': 816} |
| `chromeTabsProbedProfiles` | {'int': 816} |
| `chromeUtilityPssKb` | {'int': 816} |
| `desktopPssKb` | {'int': 816} |
| `hostPssKb` | {'int': 816} |
| `kind` | {'str': 816} |
| `memAvailableKb` | {'int': 816} |
| `memTotalKb` | {'int': 816} |
| `otherPssKb` | {'int': 816} |
| `processes` | {'int': 816} |
| `pssFallbackProcesses` | {'int': 816} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 33} |
| `graceS` | {'int': 18} |
| `kind` | {'str': 33} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 2} |
| `display` | {'int': 2} |
| `durationMs` | {'int': 2} |
| `kind` | {'str': 2} |
| `launcher` | {'int': 2} |
| `launcherSource` | {'str': 2} |
| `mode` | {'str': 2} |
| `outcome` | {'str': 2} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 2} |
| `kind` | {'str': 2} |
| `outcome` | {'str': 2} |
| `provider` | {'str': 2} |
| `source` | {'str': 2} |

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
| `cpuMillicores` | {'int': 111} |
| `display` | {'int': 113} |
| `kind` | {'str': 113} |
| `processes` | {'int': 113} |
| `pssKb` | {'int': 113} |
| `rendererMaxPssKb` | {'int': 113} |
| `renderers` | {'int': 113} |
| `tabs` | {'int': 113} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 38} |
| `failClosed` | {'bool': 38} |
| `kind` | {'str': 38} |
| `route` | {'str': 38} |
| `strict` | {'bool': 38} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
