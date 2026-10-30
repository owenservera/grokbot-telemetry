# sandbox_telemetry_parse — 2026-10-30 17:53:48 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=1201630 lines=3281
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2349 |
| `chrome_profile_sample` | 605 |
| `egress_tunnel_connect` | 222 |
| `egress_tunnel_desktop` | 82 |
| `chrome_launch` | 8 |
| `egress_time_zone` | 8 |
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
| `chromeBrowserPssKb` | {'int': 2349} |
| `chromeGpuPssKb` | {'int': 2349} |
| `chromeOtherPssKb` | {'int': 2349} |
| `chromeProcesses` | {'int': 2349} |
| `chromeProfiles` | {'int': 2349} |
| `chromeRendererMaxPssKb` | {'int': 2349} |
| `chromeRendererPssKb` | {'int': 2349} |
| `chromeRenderers` | {'int': 2349} |
| `chromeTabs` | {'int': 2349} |
| `chromeTabsProbedProfiles` | {'int': 2349} |
| `chromeUtilityPssKb` | {'int': 2349} |
| `desktopPssKb` | {'int': 2349} |
| `hostPssKb` | {'int': 2349} |
| `kind` | {'str': 2349} |
| `memAvailableKb` | {'int': 2349} |
| `memTotalKb` | {'int': 2349} |
| `otherPssKb` | {'int': 2349} |
| `processes` | {'int': 2349} |
| `pssFallbackProcesses` | {'int': 2349} |

### `egress_tunnel_desktop`

| key | types |
|-----|-------|
| `event` | {'str': 82} |
| `graceS` | {'int': 47} |
| `kind` | {'str': 82} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 8} |
| `display` | {'int': 8} |
| `durationMs` | {'int': 8} |
| `kind` | {'str': 8} |
| `launcher` | {'int': 8} |
| `launcherSource` | {'str': 8} |
| `mode` | {'str': 8} |
| `outcome` | {'str': 8} |

### `egress_time_zone`

| key | types |
|-----|-------|
| `boxClockUtc` | {'bool': 8} |
| `kind` | {'str': 8} |
| `outcome` | {'str': 8} |
| `provider` | {'str': 8} |
| `source` | {'str': 8} |

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
| `cpuMillicores` | {'int': 596} |
| `display` | {'int': 605} |
| `kind` | {'str': 605} |
| `processes` | {'int': 605} |
| `pssKb` | {'int': 605} |
| `rendererMaxPssKb` | {'int': 605} |
| `renderers` | {'int': 605} |
| `tabs` | {'int': 605} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 222} |
| `failClosed` | {'bool': 222} |
| `kind` | {'str': 222} |
| `route` | {'str': 222} |
| `strict` | {'bool': 222} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
