# sandbox_telemetry_parse — 2026-10-16 00:10:38 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1122234 lines=2487
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2482 |
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
| `chromeBrowserPssKb` | {'int': 2482} |
| `chromeGpuPssKb` | {'int': 2482} |
| `chromeOtherPssKb` | {'int': 2482} |
| `chromeProcesses` | {'int': 2482} |
| `chromeProfiles` | {'int': 2482} |
| `chromeRendererMaxPssKb` | {'int': 2482} |
| `chromeRendererPssKb` | {'int': 2482} |
| `chromeRenderers` | {'int': 2482} |
| `chromeTabs` | {'int': 2482} |
| `chromeTabsProbedProfiles` | {'int': 2482} |
| `chromeUtilityPssKb` | {'int': 2482} |
| `desktopPssKb` | {'int': 2482} |
| `hostPssKb` | {'int': 2482} |
| `kind` | {'str': 2482} |
| `memAvailableKb` | {'int': 2482} |
| `memTotalKb` | {'int': 2482} |
| `otherPssKb` | {'int': 2482} |
| `processes` | {'int': 2482} |
| `pssFallbackProcesses` | {'int': 2482} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
