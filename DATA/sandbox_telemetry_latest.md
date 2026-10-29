# sandbox_telemetry_parse — 2026-10-29 13:48:14 CET
- Log: `/tmp/sand-box-telemetry.log` bytes=392691 lines=998
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 810 |
| `chrome_profile_sample` | 107 |
| `egress_tunnel_connect` | 37 |
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
| `chromeBrowserPssKb` | {'int': 810} |
| `chromeGpuPssKb` | {'int': 810} |
| `chromeOtherPssKb` | {'int': 810} |
| `chromeProcesses` | {'int': 810} |
| `chromeProfiles` | {'int': 810} |
| `chromeRendererMaxPssKb` | {'int': 810} |
| `chromeRendererPssKb` | {'int': 810} |
| `chromeRenderers` | {'int': 810} |
| `chromeTabs` | {'int': 810} |
| `chromeTabsProbedProfiles` | {'int': 810} |
| `chromeUtilityPssKb` | {'int': 810} |
| `desktopPssKb` | {'int': 810} |
| `hostPssKb` | {'int': 810} |
| `kind` | {'str': 810} |
| `memAvailableKb` | {'int': 810} |
| `memTotalKb` | {'int': 810} |
| `otherPssKb` | {'int': 810} |
| `processes` | {'int': 810} |
| `pssFallbackProcesses` | {'int': 810} |

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
| `cpuMillicores` | {'int': 105} |
| `display` | {'int': 107} |
| `kind` | {'str': 107} |
| `processes` | {'int': 107} |
| `pssKb` | {'int': 107} |
| `rendererMaxPssKb` | {'int': 107} |
| `renderers` | {'int': 107} |
| `tabs` | {'int': 107} |

### `egress_tunnel_connect`

| key | types |
|-----|-------|
| `count` | {'int': 37} |
| `failClosed` | {'bool': 37} |
| `kind` | {'str': 37} |
| `route` | {'str': 37} |
| `strict` | {'bool': 37} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
