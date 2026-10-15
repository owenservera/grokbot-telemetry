# sandbox_telemetry_parse — 2026-10-15 23:42:43 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=1113646 lines=2468
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2463 |
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
| `chromeBrowserPssKb` | {'int': 2463} |
| `chromeGpuPssKb` | {'int': 2463} |
| `chromeOtherPssKb` | {'int': 2463} |
| `chromeProcesses` | {'int': 2463} |
| `chromeProfiles` | {'int': 2463} |
| `chromeRendererMaxPssKb` | {'int': 2463} |
| `chromeRendererPssKb` | {'int': 2463} |
| `chromeRenderers` | {'int': 2463} |
| `chromeTabs` | {'int': 2463} |
| `chromeTabsProbedProfiles` | {'int': 2463} |
| `chromeUtilityPssKb` | {'int': 2463} |
| `desktopPssKb` | {'int': 2463} |
| `hostPssKb` | {'int': 2463} |
| `kind` | {'str': 2463} |
| `memAvailableKb` | {'int': 2463} |
| `memTotalKb` | {'int': 2463} |
| `otherPssKb` | {'int': 2463} |
| `processes` | {'int': 2463} |
| `pssFallbackProcesses` | {'int': 2463} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
