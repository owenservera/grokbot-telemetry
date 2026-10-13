# sandbox_telemetry_parse — 2026-10-14 00:25:15 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1328635 lines=3531
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2531 |
| `chrome_profile_sample` | 992 |
| `boot_stage` | 3 |
| `cookie_persist` | 2 |
| `egress_tunnel` | 1 |
| `host_boot_fetch` | 1 |
| `chrome_launch` | 1 |

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
| `chromeBrowserPssKb` | {'int': 2531} |
| `chromeGpuPssKb` | {'int': 2531} |
| `chromeOtherPssKb` | {'int': 2531} |
| `chromeProcesses` | {'int': 2531} |
| `chromeProfiles` | {'int': 2531} |
| `chromeRendererMaxPssKb` | {'int': 2531} |
| `chromeRendererPssKb` | {'int': 2531} |
| `chromeRenderers` | {'int': 2531} |
| `chromeTabs` | {'int': 2531} |
| `chromeTabsProbedProfiles` | {'int': 2531} |
| `chromeUtilityPssKb` | {'int': 2531} |
| `desktopPssKb` | {'int': 2531} |
| `hostPssKb` | {'int': 2531} |
| `kind` | {'str': 2531} |
| `memAvailableKb` | {'int': 2531} |
| `memTotalKb` | {'int': 2531} |
| `otherPssKb` | {'int': 2531} |
| `processes` | {'int': 2531} |
| `pssFallbackProcesses` | {'int': 2531} |

### `chrome_launch`

| key | types |
|-----|-------|
| `attempt` | {'int': 1} |
| `display` | {'int': 1} |
| `durationMs` | {'int': 1} |
| `kind` | {'str': 1} |
| `launcher` | {'int': 1} |
| `launcherSource` | {'str': 1} |
| `mode` | {'str': 1} |
| `outcome` | {'str': 1} |

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
| `cpuMillicores` | {'int': 991} |
| `display` | {'int': 992} |
| `kind` | {'str': 992} |
| `processes` | {'int': 992} |
| `pssKb` | {'int': 992} |
| `rendererMaxPssKb` | {'int': 992} |
| `renderers` | {'int': 992} |
| `tabs` | {'int': 992} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
