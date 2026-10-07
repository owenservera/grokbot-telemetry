# sandbox_telemetry_parse — 2026-10-07 10:16:02 CEST
- Log: `/tmp/sand-box-telemetry.log` bytes=958429 lines=2106
## kind counts
| kind | count |
|------|------:|
| `memory_sample` | 2101 |
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
| `chromeBrowserPssKb` | {'int': 2101} |
| `chromeGpuPssKb` | {'int': 2101} |
| `chromeOtherPssKb` | {'int': 2101} |
| `chromeProcesses` | {'int': 2101} |
| `chromeProfiles` | {'int': 2101} |
| `chromeRendererMaxPssKb` | {'int': 2101} |
| `chromeRendererPssKb` | {'int': 2101} |
| `chromeRenderers` | {'int': 2101} |
| `chromeTabs` | {'int': 2101} |
| `chromeTabsProbedProfiles` | {'int': 2101} |
| `chromeUtilityPssKb` | {'int': 2101} |
| `desktopPssKb` | {'int': 2101} |
| `hostPssKb` | {'int': 2101} |
| `kind` | {'str': 2101} |
| `memAvailableKb` | {'int': 2101} |
| `memTotalKb` | {'int': 2101} |
| `otherPssKb` | {'int': 2101} |
| `processes` | {'int': 2101} |
| `pssFallbackProcesses` | {'int': 2101} |

## redaction summary


## policy

- Omit values for keys matching token|secret|password|cookie|credential|bearer|otp|seedCookies
- Emit only kind counts, key names, value types, and numeric aggregates
- Do not copy cookie payloads or auth material even if present as ints/objects
