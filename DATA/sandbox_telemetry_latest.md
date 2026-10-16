# sandbox_telemetry_parse — 2026-10-16 07:52:58 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=253150 lines=946
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 618 |
| `memory_sample` | 319 |
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
| `chromeBrowserPssKb` | {'int': 319} |
| `chromeGpuPssKb` | {'int': 319} |
| `chromeOtherPssKb` | {'int': 319} |
| `chromeProcesses` | {'int': 319} |
| `chromeProfiles` | {'int': 319} |
| `chromeRendererMaxPssKb` | {'int': 319} |
| `chromeRendererPssKb` | {'int': 319} |
| `chromeRenderers` | {'int': 319} |
| `chromeTabs` | {'int': 319} |
| `chromeTabsProbedProfiles` | {'int': 319} |
| `chromeUtilityPssKb` | {'int': 319} |
| `desktopPssKb` | {'int': 319} |
| `hostPssKb` | {'int': 319} |
| `kind` | {'str': 319} |
| `memAvailableKb` | {'int': 319} |
| `memTotalKb` | {'int': 319} |
| `otherPssKb` | {'int': 319} |
| `processes` | {'int': 319} |
| `pssFallbackProcesses` | {'int': 319} |

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
| `cpuMillicores` | {'int': 615} |
| `display` | {'int': 618} |
| `kind` | {'str': 618} |
| `processes` | {'int': 618} |
| `pssKb` | {'int': 618} |
| `rendererMaxPssKb` | {'int': 618} |
| `renderers` | {'int': 618} |
| `tabs` | {'int': 617} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
