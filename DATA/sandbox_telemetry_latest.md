# sandbox_telemetry_parse — 2026-10-16 21:59:59 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=864019 lines=3229
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 2140 |
| `memory_sample` | 1080 |
| `boot_stage` | 3 |
| `chrome_launch` | 2 |
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
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 1080} |
| `chromeGpuPssKb` | {'int': 1080} |
| `chromeOtherPssKb` | {'int': 1080} |
| `chromeProcesses` | {'int': 1080} |
| `chromeProfiles` | {'int': 1080} |
| `chromeRendererMaxPssKb` | {'int': 1080} |
| `chromeRendererPssKb` | {'int': 1080} |
| `chromeRenderers` | {'int': 1080} |
| `chromeTabs` | {'int': 1080} |
| `chromeTabsProbedProfiles` | {'int': 1080} |
| `chromeUtilityPssKb` | {'int': 1080} |
| `desktopPssKb` | {'int': 1080} |
| `hostPssKb` | {'int': 1080} |
| `kind` | {'str': 1080} |
| `memAvailableKb` | {'int': 1080} |
| `memTotalKb` | {'int': 1080} |
| `otherPssKb` | {'int': 1080} |
| `processes` | {'int': 1080} |
| `pssFallbackProcesses` | {'int': 1080} |

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
| `cpuMillicores` | {'int': 2137} |
| `display` | {'int': 2140} |
| `kind` | {'str': 2140} |
| `processes` | {'int': 2140} |
| `pssKb` | {'int': 2140} |
| `rendererMaxPssKb` | {'int': 2140} |
| `renderers` | {'int': 2140} |
| `tabs` | {'int': 2139} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
