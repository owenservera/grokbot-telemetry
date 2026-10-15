# sandbox_telemetry_parse — 2026-10-16 00:02:54 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1120878 lines=2484
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2479 |
| `boot_stage` | 3 |
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
| `chromeBrowserPssKb` | {'int': 2479} |
| `chromeGpuPssKb` | {'int': 2479} |
| `chromeOtherPssKb` | {'int': 2479} |
| `chromeProcesses` | {'int': 2479} |
| `chromeProfiles` | {'int': 2479} |
| `chromeRendererMaxPssKb` | {'int': 2479} |
| `chromeRendererPssKb` | {'int': 2479} |
| `chromeRenderers` | {'int': 2479} |
| `chromeTabs` | {'int': 2479} |
| `chromeTabsProbedProfiles` | {'int': 2479} |
| `chromeUtilityPssKb` | {'int': 2479} |
| `desktopPssKb` | {'int': 2479} |
| `hostPssKb` | {'int': 2479} |
| `kind` | {'str': 2479} |
| `memAvailableKb` | {'int': 2479} |
| `memTotalKb` | {'int': 2479} |
| `otherPssKb` | {'int': 2479} |
| `processes` | {'int': 2479} |
| `pssFallbackProcesses` | {'int': 2479} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
