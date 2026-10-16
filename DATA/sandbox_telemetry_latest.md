# sandbox_telemetry_parse — 2026-10-16 12:52:59 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=460213 lines=1720
## kind counts
| kind | count |
|------|------:|
| `chrome_profile_sample` | 1134 |
| `memory_sample` | 577 |
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
| `chromeBrowserPssKb` | {'int': 577} |
| `chromeGpuPssKb` | {'int': 577} |
| `chromeOtherPssKb` | {'int': 577} |
| `chromeProcesses` | {'int': 577} |
| `chromeProfiles` | {'int': 577} |
| `chromeRendererMaxPssKb` | {'int': 577} |
| `chromeRendererPssKb` | {'int': 577} |
| `chromeRenderers` | {'int': 577} |
| `chromeTabs` | {'int': 577} |
| `chromeTabsProbedProfiles` | {'int': 577} |
| `chromeUtilityPssKb` | {'int': 577} |
| `desktopPssKb` | {'int': 577} |
| `hostPssKb` | {'int': 577} |
| `kind` | {'str': 577} |
| `memAvailableKb` | {'int': 577} |
| `memTotalKb` | {'int': 577} |
| `otherPssKb` | {'int': 577} |
| `processes` | {'int': 577} |
| `pssFallbackProcesses` | {'int': 577} |

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
| `cpuMillicores` | {'int': 1131} |
| `display` | {'int': 1134} |
| `kind` | {'str': 1134} |
| `processes` | {'int': 1134} |
| `pssKb` | {'int': 1134} |
| `rendererMaxPssKb` | {'int': 1134} |
| `renderers` | {'int': 1134} |
| `tabs` | {'int': 1133} |

## redaction summary

- `cookie_persist.seedCookies` type=int seen=2 (values omitted)

## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
