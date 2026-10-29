# sandbox_telemetry_parse — 2026-10-29 13:27:53 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=379816 lines=957
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 790 |
| `chrome_profile_sample` | 87 |
| `egress_tunnel_connect` | 36 |
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
| `chromeBrowserPssKb` | {'int': 790} |
| `chromeGpuPssKb` | {'int': 790} |
| `chromeOtherPssKb` | {'int': 790} |
| `chromeProcesses` | {'int': 790} |
| `chromeProfiles` | {'int': 790} |
| `chromeRendererMaxPssKb` | {'int': 790} |
| `chromeRendererPssKb` | {'int': 790} |
| `chromeRenderers` | {'int': 790} |
| `chromeTabs` | {'int': 790} |
| `chromeTabsProbedProfiles` | {'int': 790} |
| `chromeUtilityPssKb` | {'int': 790} |
| `desktopPssKb` | {'int': 790} |
| `hostPssKb` | {'int': 790} |
| `kind` | {'str': 790} |
| `memAvailableKb` | {'int': 790} |
| `memTotalKb` | {'int': 790} |
| `otherPssKb` | {'int': 790} |
| `processes` | {'int': 790} |
| `pssFallbackProcesses` | {'int': 790} |

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
| `cpuMillicores` | {'int': 85} |
| `display` | {'int': 87} |
| `kind` | {'str': 87} |
| `processes` | {'int': 87} |
| `pssKb` | {'int': 87} |
| `rendererMaxPssKb` | {'int': 87} |
| `renderers` | {'int': 87} |
| `tabs` | {'int': 87} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 36} |
| `failClosed` | {'bool': 36} |
| `kind` | {'str': 36} |
| `route` | {'str': 36} |
| `strict` | {'bool': 36} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
