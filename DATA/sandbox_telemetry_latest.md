# sandbox_telemetry_parse — 2026-10-14 09:43:25 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=218234 lines=487
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 482 |
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
| `chromeBrowserPssKb` | {'int': 482} |
| `chromeGpuPssKb` | {'int': 482} |
| `chromeOtherPssKb` | {'int': 482} |
| `chromeProcesses` | {'int': 482} |
| `chromeProfiles` | {'int': 482} |
| `chromeRendererMaxPssKb` | {'int': 482} |
| `chromeRendererPssKb` | {'int': 482} |
| `chromeRenderers` | {'int': 482} |
| `chromeTabs` | {'int': 482} |
| `chromeTabsProbedProfiles` | {'int': 482} |
| `chromeUtilityPssKb` | {'int': 482} |
| `desktopPssKb` | {'int': 482} |
| `hostPssKb` | {'int': 482} |
| `kind` | {'str': 482} |
| `memAvailableKb` | {'int': 482} |
| `memTotalKb` | {'int': 482} |
| `otherPssKb` | {'int': 482} |
| `processes` | {'int': 482} |
| `pssFallbackProcesses` | {'int': 482} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
