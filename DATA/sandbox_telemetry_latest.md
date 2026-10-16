# sandbox_telemetry_parse — 2026-10-16 17:14:21 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=660050 lines=2467
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1632 |
| `memory_sample` | 826 |
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
| `chromeBrowserPssKb` | {'int': 826} |
| `chromeGpuPssKb` | {'int': 826} |
| `chromeOtherPssKb` | {'int': 826} |
| `chromeProcesses` | {'int': 826} |
| `chromeProfiles` | {'int': 826} |
| `chromeRendererMaxPssKb` | {'int': 826} |
| `chromeRendererPssKb` | {'int': 826} |
| `chromeRenderers` | {'int': 826} |
| `chromeTabs` | {'int': 826} |
| `chromeTabsProbedProfiles` | {'int': 826} |
| `chromeUtilityPssKb` | {'int': 826} |
| `desktopPssKb` | {'int': 826} |
| `hostPssKb` | {'int': 826} |
| `kind` | {'str': 826} |
| `memAvailableKb` | {'int': 826} |
| `memTotalKb` | {'int': 826} |
| `otherPssKb` | {'int': 826} |
| `processes` | {'int': 826} |
| `pssFallbackProcesses` | {'int': 826} |

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
| `cpuMillicores` | {'int': 1629} |
| `display` | {'int': 1632} |
| `kind` | {'str': 1632} |
| `processes` | {'int': 1632} |
| `pssKb` | {'int': 1632} |
| `rendererMaxPssKb` | {'int': 1632} |
| `renderers` | {'int': 1632} |
| `tabs` | {'int': 1631} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
