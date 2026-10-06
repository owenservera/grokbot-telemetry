# sandbox_telemetry_parse — 2026-10-06 06:39:19 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=211322 lines=468
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 463 |
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
| `swapMs` | {'int': 1} |
| `toVersion` | {'str': 1} |

### `memory_sample`

| key | types |
|-----|-------|
| `chromeBrowserPssKb` | {'int': 463} |
| `chromeGpuPssKb` | {'int': 463} |
| `chromeOtherPssKb` | {'int': 463} |
| `chromeProcesses` | {'int': 463} |
| `chromeProfiles` | {'int': 463} |
| `chromeRendererMaxPssKb` | {'int': 463} |
| `chromeRendererPssKb` | {'int': 463} |
| `chromeRenderers` | {'int': 463} |
| `chromeTabs` | {'int': 463} |
| `chromeTabsProbedProfiles` | {'int': 463} |
| `chromeUtilityPssKb` | {'int': 463} |
| `desktopPssKb` | {'int': 463} |
| `hostPssKb` | {'int': 463} |
| `kind` | {'str': 463} |
| `memAvailableKb` | {'int': 463} |
| `memTotalKb` | {'int': 463} |
| `otherPssKb` | {'int': 463} |
| `processes` | {'int': 463} |
| `pssFallbackProcesses` | {'int': 463} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
